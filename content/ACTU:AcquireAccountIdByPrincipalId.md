+++
title = 'ACTU:AcquireAccountIdByPrincipalId'
+++

# Request

{{% ipc/request header="0x00170084" %}}
{{% ipc/param %}}Input principal ID buffer size (count \* 4){{% / %}}
{{% ipc/param %}}u8, unknown (see description){{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% ipc/staticbuffer id=0 %}}Input principal ID buffer pointer (count \* 4){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00170040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Requests account IDs (Nintendo Network ID usernames) for the given list of principal IDs.

If the `u8, unknown` parameter is non-zero, error 0xE0A14CC8 is returned.
