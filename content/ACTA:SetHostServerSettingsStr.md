+++
title = 'ACTA:SetHostServerSettingsStr'
+++

# Request

{{% ipc/request header="0x040E02c0" %}}
{{% ipc/param span=9 %}}ASCII NULL-terminated [NNAS Subdomain](ACT_Services#nnas_nintendo_network_authentication_server_types "wikilink") (max. 32 characters + NULL termination){{% / %}}
{{% ipc/param %}}ASCII NULL-terminated [NFS Type Letter + Number](ACT_Services#nnas_nintendo_network_authentication_server_types "wikilink") (2 characters + NULL termination){{% / %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x040E0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

This is another variant of [ACTA:SetHostServerSettings](ACTA:SetHostServerSettings "wikilink"), but using strings instead of the predefined values. The given values are also not checked against the predefined values. Therefore, it is possible to use custom values.

This will also update [Configuration block 0x150002](Config_Savegame#configuration_blocks "wikilink") with the given NFS Type and Number string.
