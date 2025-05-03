+++
title = 'FS:ListSeeds'
+++

# Request

{{% ipc/request header="0x87E0042" %}}
{{% ipc/param %}}u32, Number of Title IDs to retrieve{{% / %}}
{{% ipc/mapbuffer w %}}Output u64 Title IDs buffer pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x87E0082" %}}
{{% ipc/result %}}
{{% ipc/param %}}u32, Number of retrieved Title IDs{{% / %}}
{{% ipc/mapbuffer w %}}Output u64 Title IDs buffer pointer{{% / %}}
{{% / %}}

# Description

Retrieves a list of Title IDs that have seeds.
