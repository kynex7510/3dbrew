+++
title = 'BOSSU:GetStorageEntryInfo'
+++

# Request

{{% ipc/request header="0x00300000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x003000c0" %}}
{{% ipc/result %}}
{{% ipc/param %}}u32, Storage size{{% / %}}
{{% ipc/param %}}u16, Entry ID?{{% / %}}
{{% / %}}

# Description

Gets information about the current storage entry being used for the program ID of the current session.
