+++
title = 'ACTU:AcquireNexServiceToken'
+++

# Request

{{% ipc/request header="0x00120102" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param %}}NEX Server ID{{% / %}}
{{% ipc/param %}}bool, do parental controls check (unused){{% / %}}
{{% ipc/param %}}u32, Process ID of caller title{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00120040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Requests a NEX service token for the specified NEX server and the specified account. The Process ID is used to obtain the title ID and remaster version of the caller title.
