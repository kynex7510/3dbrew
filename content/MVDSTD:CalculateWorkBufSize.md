+++
title = 'MVDSTD:CalculateWorkBufSize'
+++

# Request

| Index Word | Description                |
|------------|----------------------------|
| 00         | Header code \[0x00030300\] |
| 01-03      | CalculateWorkBufSizeConfig |
| 04-10      | ???????????????            |
| 11         | u32 Video width            |
| 12         | u32 Video height           |

# Response

| Index Word | Description |
|------------|-------------|
| 0          | Header code |
| 1          | Resultcode  |

# Description

## CalculateWorkBufSizeConfig

| Offset    | Description                         |
|-----------|-------------------------------------|
| 0x00      | Unused                              |
| 0x01-0x04 | CalculateWorkBufWithLevel           |
| 0x05-0x06 | CalculateWorkBufWithNumOfRefFramesA |
| 0x07-0x08 | CalculateWorkBufWithNumOfRefFramesB |
| 0x09-0x11 | Unused                              |

### CalculateWorkBufWithLevel

| Offset | Description             |
|--------|-------------------------|
| 0x00   | bool Enable calculation |
| 0x01   | u8 Flag                 |
| 0x02   | bool Double size        |
| 0x03   | u8 H.264 level          |

#### Flag

| Bit  | Description                      |
|------|----------------------------------|
| 0x00 | FLAG_NONE                        |
| 0x01 | FLAG_ENABLE_CALCULATION          |
| 0x02 | FLAG_ENABLE_EXTRA_OP (see below) |
| 0x03 | FLAG_UNK                         |

#### H.264 level

| Index | Description |
|-------|-------------|
| 0x00  | Level 1.0   |
| 0x01  | Level 1.0b  |
| 0x02  | Level 1.1   |
| 0x03  | Level 1.2   |
| 0x04  | Level 1.3   |
| 0x05  | Level 2.0   |
| 0x06  | Level 2.1   |
| 0x07  | Level 2.2   |
| 0x08  | Level 3.0   |
| 0x09  | Level 3.1   |
| 0x0A  | Level 3.2   |
| 0x0B  | Level 4.0   |
| 0x0C  | Level 4.1   |
| 0x0D  | Level 4.2   |
| 0x0E  | Level 5.0   |
| 0x0F  | Level 5.1   |
| 0x10  | Level 5.2   |

This will calculate maximum possible buffer size (==buffer size that ***may**'' be needed to decode video) based on H.264 level and resolution, <s>so any videos that are compliant with H.264 specs should be decoded with this buffer size</s>***it seems there is some buffer overflow (some hundreds bytes according to test) when maximum number of reference frames are used**'', so adding some extra bytes (maybe around 4096Bytes is enough) is safer.

Calculation procedures are :

- Calculate **max_reference_frames** based on **H.264 level** and **resolution**, 0x10 is used if **max_reference_frames** is greater than 0x10.
- Calculate **frame_size** based on **resolution**.
- Multiply **frame_size** and **(max_reference_frames + 1)** to get **temp_buffer_size**
- If FLAG_ENABLE_EXTRA_OP is set, **temp_buffer_size += (temp_buffer_size / 6)**
- If double size (offset 0x02) is set, **temp_buffer_size \*= 2**
- Finally, **temp_buffer_size += 0xFC8**

To perform calculation, enable calculation (ofset 0x00) ***and*** flag (offset 0x01) must be non-zero, otherwise 0 is returned.

If resolution is too high for given H.264 level, 0 is returned.

Attempting to use more than 0x10 for H.264 level (offset 0x03) will likely cause out-of-bound access.

### CalculateWorkBufWithNumOfRefFramesA/B

| Offset | Description                   |
|--------|-------------------------------|
| 0x00   | bool Enable calculation       |
| 0x01   | u8 Number of reference frames |

This will calculate buffer size based on resolution and number of reference frames.

Calculation procedures are :

- Calculate **frame_size** based on **resolution**.
- Multiply **frame_size** and **number_of_reference_frames** to get **temp_buffer_size**
- Finally, for CalculateWorkBufWithNumOfRefFrames**A**, **temp_buffer_size += 0x10800**
- Finally, for CalculateWorkBufWithNumOfRefFrames**B**, **temp_buffer_size += 0x858**

To perform calculation, enable calculation (ofset 0x00) must be non-zero, otherwise 0 is returned.

If number of reference frames (offset 0x01) is less than 0x02, 0x02 is used internally, if it's greater than 0x10, 0x10 is used internally.

------------------------------------------------------------------------

It is possible to enable more than 1 calculation methods simultaneously, in that case the largest buffer size among them is returned.

SKATER uses
```
cmd.CalculateWorkBufWithLevel.enable = 0x01;
cmd.CalculateWorkBufWithLevel.flag = 0x07; //(FLAG_ENABLE_CALCULATION | FLAG_ENABLE_EXTRA_OP | FLAG_UNK).
cmd.CalculateWorkBufWithLevel.doubleSize = 0x00;
cmd.CalculateWorkBufWithLevel.level = 0x0A; //Level 3.2.
cmd.CalculateWorkBufWithNumOfRefFramesA.enable = 0x00;
cmd.CalculateWorkBufWithNumOfRefFramesA.numOfReferenceFrames = 0x00;
cmd.CalculateWorkBufWithNumOfRefFramesB.enable = 0x00;
cmd.CalculateWorkBufWithNumOfRefFramesB.numOfReferenceFrames = 0x00;
cmd.width = 854; //Regardless of input video, 854 is always used.
cmd.height = 480; //Regardless of input video, 480 is always used.
```
and result is **9438920Bytes** (0x9006C8), aka MVD_DEFAULT_WORKBUF_SIZE.

This doesn't write to MVD state / registers at all.
