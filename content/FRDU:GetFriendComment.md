+++
title = 'FRDU:GetFriendComment'
+++

# Request

{{% ipc/request header="0x00310082" %}}
{{% ipc/param %}}Total amount of UTF-16 characters the output buffer can hold (max. 0x400) (Count \* 0x11){{% / %}}
{{% ipc/param %}}Count{{% / %}}
{{% ipc/staticbuffer id=0 %}}Input [FriendKey](Friend_Services#friendkey "wikilink") buffer{{% / %}}
{{% / %}}

# Request Static Buffers

# Response

{{% ipc/request header="0x00310042" %}}
{{% ipc/result %}}
{{% ipc/staticbuffer id=0 %}}Output friend comment buffer{{% / %}}
{{% / %}}

# Description

Returns the friend comment (personal message) set in the friends list for the specified friend keys. If an input friend key was not found in the friends list, t
