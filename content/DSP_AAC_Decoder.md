+++
title = 'DSP AAC Decoder'
+++

*Note that everything below may vary depending on the exact DSP firmware
used and different variants have slightly different behaviours.*

# Summary

Some versions of the DSP firmware contain a decoder for the AAC audio
codec. Such firmware may be dumped from specific games, like Pokemon X/Y
or Rhythm Heaven Megamix. Interfacing with the AAC decoder (sending
requests/receiving responses) happens via the DSP binary pipe (pipe 3)

# Message Format

Below is the message format used for communicating with the AAC decoder.
The same format is both when making requests and for responses, though
the "request/response data" field changes appropriately.

Size : 0x20 bytes

| Offset in bytes | Type                  | Description                                                                                         |
|-----------------|-----------------------|-----------------------------------------------------------------------------------------------------|
| 0x0             | u16                   | Mode (Seems to be 0 = None, 1 = Decode AAC, 2 = Encode AAC)                                         |
| 0x2             | DecoderCommand        | Command to be handled by the decoder (See information on DecoderCommand structure below)            |
| 0x4             | u32                   | Result Code                                                                                         |
| 0x8             | Request/Response data | A 24-byte chunk of data containing information about the request/response. See below for more info. |
|                 |                       |                                                                                                     |
