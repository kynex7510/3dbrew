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
{{% ipc/staticbuffer id=0 %}}Pointer to [Presence](FRDU:GetMyPresence#presence_structure "wikilink") structure{{% / %}}
{{% / %}}

# Presence Structure

| Offset | Size  | Description                    |
|--------|-------|--------------------------------|
| 0x0    | 0x4   | u32 JoinAvailabilityFlag       |
| 0x4    | 0x4   | u32 MatchmakeSystemType        |
| 0x8    | 0x4   | u32 JoinGameID                 |
| 0xC    | 0x4   | u32 JoinGameMode               |
| 0x10   | 0x4   | u32 OwnerPrincipalID           |
| 0x14   | 0x4   | u32 JoinGroupID                |
| 0x18   | 0x14  | u8 ApplicationArg\[20\]        |
| 0x2C   | 0x100 | u16 GameModeDescription\[128\] |

# Description

Returns the console's friend presence.
