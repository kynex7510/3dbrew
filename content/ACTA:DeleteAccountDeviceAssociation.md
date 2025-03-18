+++
title = 'ACTA:DeleteAccountDeviceAssociation'
+++

# Request

{{% ipc/request header="0x04320042" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04320040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Deletes the account-device association for the account. The account slot must be 0xFE. Therefore, this command can only be used with the currently loaded account.

Unlike [ACTA:InactivateAccountDeviceAssociation](ACTA:InactivateAccountDeviceAssociation "wikilink"), this will not affect the [IsServerAccountDeleted (BlkID 0x24)](ACT_Services#datablocks "wikilink") field in the account data.

This only works in debug mode (when [Configuration Block](Config_Savegame#configuration_blocks "wikilink") 0x00130000 is set to 0x100).
