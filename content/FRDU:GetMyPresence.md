+++
title = 'FRDU:GetMyPresence'
+++

# Request

| Index Word | Description                |
|------------|----------------------------|
| 0          | Header code \[0x00080000\] |

The following is located 0x100-bytes after the beginning of the above command buffer:

| Index Word | Description                                                                         |
|------------|-------------------------------------------------------------------------------------|
| 0          | (300 \<\< 14) \| 2                                                                  |
| 1          | Pointer to [FriendPresence](FRDU:GetMyPresence#friendpresence "wikilink") structure |

# Response

| Index Word | Description |
|------------|-------------|
| 0          | Header code |
| 1          | Result code |

# FriendPresence

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
