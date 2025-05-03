+++
title = 'FS:ListTitleTags'
+++

# Request

{{% ipc/request header="0x8840042" %}}
{{% ipc/param %}}u32, Number of Title IDs to retrieve{{% / %}}
{{% ipc/mapbuffer w %}}Output u64 Title IDs buffer pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x8840082" %}}
{{% ipc/result %}}
{{% ipc/param %}}u32, Number of read Title IDs{{% / %}}
{{% ipc/mapbuffer w %}}Output u64 Title IDs buffer pointer{{% / %}}
{{% / %}}

# Description

Retrieves a list of title IDs that have title tags.
