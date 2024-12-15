+++
title = 'FRDU:GetFriendProfile'
+++

# Request

{{% ipc/request header="0x00150042" %}}
{{% ipc/param %}}Count{{% / %}}
{{% ipc/staticbuffer id=0 %}}Input \[\[Friend_Services#FriendKey\|FriendKey}} buffer{{% / %}}
{{% / %}}

# Request Static Buffers

# Response

{{% ipc/request header="0x00150042" %}}
{{% ipc/result %}}
{{% ipc/staticbuffer id=0 %}}Output \[\[Friend_Services#Profile\|Profile}} buffer{{% / %}}
{{% / %}}

# Description

Gets the friend profile for the specified friend keys. If an input friend key is not found in the friends list, an internal default placeholder friend entry is used to populate the data.
