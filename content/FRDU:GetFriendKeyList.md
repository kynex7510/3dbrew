+++
title = 'FRDU:GetFriendKeyList'
+++

# Request

{{% ipc/request header="0x00110080" %}}
{{% ipc/param %}}Offset{{% / %}}
{{% ipc/param %}}Count (max. number of entries to get){{% / %}}
{{% / %}}

# Request Static Buffers

# Response

{{% ipc/request header="0x00110082" %}}
{{% ipc/result %}}
{{% ipc/param %}}Number of read entries{{% / %}}
{{% ipc/staticbuffer id=0 %}}Pointer to output [FriendKey](Friend_Services#friendkey "wikilink") structures{{% / %}}
{{% / %}}

# Description

Returns [FriendKey](Friend_Services#friendkey "wikilink") structures for all or part of the console's friend list.
