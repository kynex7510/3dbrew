+++
title = 'BOSSU:GetStorageInfo'
+++

# Request

{{% ipc/request header="0x00040000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x00040080" %}}
{{% ipc/result %}}
{{% ipc/param %}}u32, Storage size{{% / %}}
{{% / %}}

# Description

Gets information about the current storage being used for the program ID of the current session.
