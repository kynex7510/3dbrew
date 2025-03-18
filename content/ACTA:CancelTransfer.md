+++
title = 'ACTA:CancelTransfer'
+++

# Request

{{% ipc/request header="0x04330042" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04330040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Cancels a reserved (initialized) Nintendo Network ID transfer that was previously initialized with [ACTA:ReserveTransfer](ACTA:ReserveTransfer "wikilink"). The account slot must be 0xFE. Therefore, this command can only be used with the currently loaded account.
