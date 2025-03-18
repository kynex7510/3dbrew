+++
title = 'ACTA:AcquireAccountTokenEx'
+++

# Request

{{% ipc/request header="0x041A01c2" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param span=5 %}}ASCII NULL-terminated account password (maximum 17 characters + NULL termination){{% / %}}
{{% ipc/param %}}bool, use NULL as password (see description){{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x041A0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Requests a refresh of the account access token (used for certain requests).

If `use NULL as password` is set to `true`, a NULL pointer will be used internally instead of the password data, even when one is given. The account password cache will be used instead (if it is enabled) in this case.
