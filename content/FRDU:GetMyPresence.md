+++
title = 'FRDU:GetMyPresence'
+++

# Request

{{% ipc/request header="0x00080000" %}}
{{% / %}}

# Request Static Buffers

# Response

{{% ipc/request header="0x00080042" %}}
{{% ipc/result %}}
{{% ipc/staticbuffer id=0 %}}Pointer to [MyPresence](FRDU:GetMyPresence#mypresence "wikilink") structure{{% / %}}
{{% / %}}

# MyPresence

| Offset | Size  | Description                                     |
|--------|-------|-------------------------------------------------|
| 0x0    | 0x2C  | [Presence](Friend_Services#presence "wikilink") |
| 0x2C   | 0x100 | u16 GameModeDescription\[128\]                  |

# Description

Returns the console's friend presence and game mode description.
