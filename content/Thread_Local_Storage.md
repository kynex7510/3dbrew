+++
title = 'Thread Local Storage'
+++

Each thread is given a 0x200-byte thread-local-storage block by the
kernel. It is used during [IPC
communications](IPC_Command_Structure "wikilink"). Each
[KProcess](KProcess "wikilink") has a linked list of
[KThreadLocalPage](KThreadLocalPage "wikilink") objects and each object
has a pointer to a page(0x1000 bytes) of FCRAM, which is used for up to
8 thread-local-storage blocks. The
[KThreadLocalPage](KThreadLocalPage "wikilink") is used to track which
thread-local-storage blocks are used so it can allocate new ones as new
threads are created.

A pointer to the thread-local-storage can be read using the ARM
instruction:

```
mrc        15, 0, rX, cr13, cr0, 3
```

Every application has RW access to its thread-local-storage.

The kernel requires the application to put IPC parameters and IPC static
buffers inside the thread-local-storage:

| Offset | Size  | Description                                                                                                                                                            |
|--------|-------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 0x00   | 0x40  | Undefined, can be used by application for any purpose                                                                                                                  |
| 0x40   | 0x44  | Exception handler return address                                                                                                                                       |
| 0x44   | 0x48  | Exception handler SP control (1 = use aligned SP, other = use arbitrary memory, must be mapped & RW)                                                                   |
| 0x48   | 0x4C  | Exception handler [context](ERR:Throw#exception "wikilink") control (0 = use SP control memory, 1 = use aligned SP, other = use arbitrary memory, must be mapped & RW) |
| 0x4C   | 0x80  | Undefined                                                                                                                                                              |
| 0x80   | 0x100 | IPC command with parameters                                                                                                                                            |
| 0x180  | 0x80  | IPC static buffers: 16 pairs of a [static buffer translation descriptor](IPC "wikilink") (specifying the buffer size) and a buffer pointer                             |
