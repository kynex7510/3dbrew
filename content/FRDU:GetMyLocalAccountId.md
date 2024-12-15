+++
title = 'FRDU:GetMyLocalAccountId'
+++

# Request

{{% ipc/request header="0x000B0000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x000B0080" %}}
{{% ipc/result %}}
{{% ipc/param %}}u8, Local account ID{{% / %}}
{{% / %}}

# Description

This returns the current local account ID being used by friends.
