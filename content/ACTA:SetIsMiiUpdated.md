+++
title = 'ACTA:SetIsMiiUpdated'
+++

# Request

{{% ipc/request header="0x042A0080" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param %}}bool, RequiresMiiUpdate (IsDirty){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x042A0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Sets a flag in the specified account's data that determines whether or not it is necessary to upload the Mii data to the account server.
