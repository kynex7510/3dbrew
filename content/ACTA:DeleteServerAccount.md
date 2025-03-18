+++
title = 'ACTA:DeleteServerAccount'
+++

# Request

{{% ipc/request header="0x04180042" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04180040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Deletes the Nintendo Network ID (on the server-side) for the given account slot.

This also sets the [IsServerAccountDeleted (BlkID 0x24)](ACT_Services#datablocks "wikilink") field in the account data to `true`.
