+++
title = 'FRDA:AddFriendOnline'
+++

# Request

{{% ipc/request header="0x04060042" %}}
{{% ipc/param %}}Principal ID of friend to add{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/param %}}Completion handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04060040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Adds a friend to the local friends list and registers the friend with the friends server.
