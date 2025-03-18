+++
title = 'ACTA:SetHostServerSettings'
+++

# Request

{{% ipc/request header="0x040C0100" %}}
{{% ipc/param %}}u8, [NNAS Server Type](ACT_Services#nnas_nintendo_network_authentication_server_types "wikilink"){{% / %}}
{{% ipc/param %}}u8, [NFS Server Type](ACT_Services#nfs_nintendo_friend_server_types "wikilink"){{% / %}}
{{% ipc/param %}}u8, [NFS Server Number](Friend_Services#server_types "wikilink"){{% / %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x040C0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Updates the server environment settings for the specified account.

This will also update [Configuration block 0x150002](Config_Savegame#configuration_blocks "wikilink") with the NFS Type and Number.

See [Server Types](ACT_Services#server_types "wikilink") for more information.
