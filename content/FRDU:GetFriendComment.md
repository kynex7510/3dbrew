+++
title = 'FRDU:GetFriendComment'
+++

# Request

{{% ipc/request header="0x00310082" %}}
{{% ipc/param %}}<b>Number of UTF-16 characters</b> the output friend comment buffer can fit (maximum 0xC00, corresponding to a total max buffer size of 0x1800) (Count \* 17){{% / %}}
{{% ipc/param %}}Count{{% / %}}
{{% ipc/staticbuffer id=0 %}}Input [FriendKey](Friend_Services#friendkey "wikilink") buffer{{% / %}}
{{% / %}}

# Request Static Buffers

# Response

{{% ipc/request header="0x00310042" %}}
{{% ipc/result %}}
{{% ipc/staticbuffer id=0 %}}Pointer to output UTF-16 friend comments{{% / %}}
{{% / %}}

# Description

Returns the friend comment (personal message) set in the friends list for the specified friend keys. If an input friend key was not found in the friends list, an internal default placeholder friend entry will be used to populate the data.
