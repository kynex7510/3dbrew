+++
title = 'FRDU:GetFriendFavoriteGame'
+++

# Request

{{% ipc/request header="0x00190042" %}}
{{% ipc/param %}}Count{{% / %}}
{{% ipc/staticbuffer id=0 %}}Input [FriendKey](Friend_Services#friendkey "wikilink") buffer{{% / %}}
{{% / %}}

# Request Static Buffers

# Response

{{% ipc/request header="0x00190042" %}}
{{% ipc/result %}}
{{% ipc/staticbuffer id=0 %}}Output [GameKey](Friend_Services#gamekey "wikilink") buffer{{% / %}}
{{% / %}}

# Description

Gets the favorite game's GameKey for the input friend keys. If an input friend key was not found in the friends list, an internal default placeholder friend entry will be used to populate the data.
