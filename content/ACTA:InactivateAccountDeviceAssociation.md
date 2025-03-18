+++
title = 'ACTA:InactivateAccountDeviceAssociation'
+++

# Request

{{% ipc/request header="0x042D0042" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x042D0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Inactivates the account-device association for the account. In other words, this deletes the Nintendo Network ID associated with the account slot. The account slot must be 0xFE. Therefore, this command can only be used with the currently loaded account.

This also sets the [IsServerAccountDeleted (BlkID 0x24)](ACT_Services#datablocks "wikilink") field in the account data.
