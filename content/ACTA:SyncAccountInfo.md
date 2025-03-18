+++
title = 'ACTA:SyncAccountInfo'
+++

# Request

{{% ipc/request header="0x041C0042" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x041C0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Reloads account information from the account server for the specified account.
