+++
title = 'FRDU:IsIncludedInFriendList'
+++

# Request

{{% ipc/request header="0x001B0080" %}}
{{% ipc/param span=2 %}}u64, Friend Code{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x001B0080" %}}
{{% ipc/result %}}
{{% ipc/param %}}bool, is included{{% / %}}
{{% / %}}

# Description

Checks whether or not a friend exists in the friends list with the given friend code.
