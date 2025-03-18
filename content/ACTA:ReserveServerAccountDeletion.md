+++
title = 'ACTA:ReserveServerAccountDeletion'
+++

# Request

{{% ipc/request header="0x04350042" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04350040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Initializes the server-side deletion of the account. (This will result in the Nintendo Network ID being deleted.)

The account slot must be 0xFE. Therefore, this command can only be used with the currently loaded account.

This also sets the [IsServerAccountDeleted (BlkID 0x24)](ACT_Services#datablocks "wikilink") field in the account data to `true`.
