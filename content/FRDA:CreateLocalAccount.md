+++
title = 'FRDA:CreateLocalAccount'
+++

# Request

{{% ipc/request header="0x04010100" %}}
{{% ipc/param %}}u8, local account ID of to be created account{{% / %}}
{{% ipc/param %}}NASC Environment (0: Production, 1: Testing, 2: Development){{% / %}}
{{% ipc/param %}}[Server type](Friend_Services#server_types "wikilink") letter value{{% / %}}
{{% ipc/param %}}u8, [Server type](Friend_Services#server_types "wikilink") number value{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04010040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Creates a new local account with the given server configuration.
