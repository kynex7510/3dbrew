+++
title = 'FRDU:GetServerTypes'
+++

# Request

{{% ipc/request header="0x00300000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x00300100" %}}
{{% ipc/result %}}
{{% ipc/param %}}u8, NASC Environment (0: Production, 1: Testing, 2: Development){{% / %}}
{{% ipc/param %}}u8, [Server type](Friend_Services#server_types "wikilink") letter <b>value</b>{{% / %}}
{{% ipc/param %}}u8, [Server type](Friend_Services#server_types "wikilink") number value{{% / %}}
{{% / %}}

# Description

Returns the server environment settings of the current account being used by the friends module.
