+++
title = 'FRDU:GetFriendPlayingGame'
+++

# Request

{{% ipc/request header="0x00180044" %}}
{{% ipc/param %}}Count{{% / %}}
{{% ipc/staticbuffer id=0 %}}Input [FriendKey](Friend_Services#friendkey "wikilink") buffer{{% / %}}
{{% ipc/mapbuffer w %}}Output [Playing Game](FRDU:GetFriendPlayingGame#playing_game_structure "wikilink") buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00180042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer w %}}Output [Playing Game](FRDU:GetFriendPlayingGame#playing_game_structure "wikilink") buffer{{% / %}}
{{% / %}}

# Playing Game Structure

| Offset | Size  | Description                                       |
|--------|-------|---------------------------------------------------|
| 0x0    | 0x10  | [FriendKey](Friend_Services#friendkey "wikilink") |
| 0x10   | 0x100 | UTF-16 encoded Game Mode Description              |
|        |       |                                                   |

# Description

Gets information about the currently played game for the input friend keys. If an input friend key is not found in the friends list, an internal default placeholder friend entry will be used to populate the data.
