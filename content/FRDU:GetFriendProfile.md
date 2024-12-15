+++
title = 'FRDU:GetFriendProfile'
+++

# Request

{{% ipc/request header="0x00150042" %}}
{{% ipc/param %}}Count{{% / %}}
{{% ipc/staticbuffer id=0 %}}Input [FriendKey](Friend_Services#friendkey "wikilink") buffer{{% / %}}
{{% / %}}

# Request Static Buffers

# Response

{{% ipc/request header="0x00150042" %}}
{{% ipc/result %}}
{{% ipc/staticbuffer id=0 %}}Output [Profile](Friend_Services#profile "wikilink") buffer{{% / %}}
{{% / %}}

# Description

Gets the friend profile for the specified friend keys. If an input friend key is not found in the friends list, an internal default placeholder friend entry is used to populate the data.
