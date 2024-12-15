+++
title = 'FRDU:GetFriendPresence'
+++

# Request

{{% ipc/request header="0x00120042" %}}
{{% ipc/param %}}Friend key count{{% / %}}
{{% ipc/staticbuffer id=0 %}}Pointer to input [FriendKey](Friend_Services#friendkey "wikilink") structures{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00120042" %}}
{{% ipc/result %}}
{{% ipc/staticbuffer id=0 %}}Pointer to output [Friend Presence](FRDU:GetFriendPresence#friend_presence_structure "wikilink") structures{{% / %}}
{{% / %}}

# Friend Presence Structure

| Offset | Size | Description                                               |
|--------|------|-----------------------------------------------------------|
| 0x0    | 0x2C | [Presence](Friend_Services#presence "wikilink") Structure |
| 0x2C   | 0x1  | bool, IsPresenceLoaded                                    |
| 0x2D   | 0x1  | bool, Has Sent invitation(?) Is game joinable(?)          |
| 0x2E   | 0x1  | bool, Found                                               |
| 0x2F   | 0x1  | padding                                                   |

# Description

Returns friend presence information for the input friend keys. For input friend keys that were not found in the friends list, a default internal placeholder friend entry will be used to populate the data, and the "found" field will be set to 0 (false).
