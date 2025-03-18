+++
title = 'ACTA:SetNetworkTime'
+++

# Request

{{% ipc/request header="0x042E0080" %}}
{{% ipc/param span=2 %}}s64, Custom server time timestamp{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x042F0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Sets the internal network time field. Usually, this is obtained from the `X-Nintendo-Date` header in HTTP responses from the account server.

The timestamp format is milliseconds elapsed since 01.01.2000 00:00:00 UTC.

Using this command will affect the [`Difference between server time and UTC device time (in nanoseconds)` field (BlkID 0x4)](ACT_Services#datablocks "wikilink").

This only works in debug mode (when [Configuration Block](Config_Savegame#configuration_blocks "wikilink") 0x00130000 is set to 0x100).
