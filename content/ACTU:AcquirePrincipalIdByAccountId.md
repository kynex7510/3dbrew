+++
title = 'ACTU:AcquirePrincipalIdByAccountId'
+++

# Request

{{% ipc/request header="0x00180044" %}}
{{% ipc/param %}}Input account ID buffer size (count \* (0x10 + 1), each being max. 16 characters ASCII + NULL terminator, total max size 0x800){{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% ipc/staticbuffer id=0 %}}Input account ID buffer pointer (max total size 0x800){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00180040" %}}
{{% / %}}

# Description

Requests principal IDs corresponding to the given account IDs (Nintendo Network ID usernames).
