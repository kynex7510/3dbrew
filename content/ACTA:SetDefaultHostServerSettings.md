+++
title = 'ACTA:SetDefaultHostServerSettings'
+++

# Request

{{% ipc/request header="0x040D00c0" %}}
{{% ipc/param %}}u8, [NNAS Server Type](ACT_Services#nnas_nintendo_network_authentication_server_types "wikilink"){{% / %}}
{{% ipc/param %}}u8, [NFS Server Type](ACT_Services#nfs_nintendo_friend_server_types "wikilink"){{% / %}}
{{% ipc/param %}}u8, [NFS Server Number](Friend_Services#server_types "wikilink"){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x040D0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Updates the default server environment settings, which will be used whenever a new account is created.

See [Server Types](ACT_Services#server_types "wikilink") for more information.
