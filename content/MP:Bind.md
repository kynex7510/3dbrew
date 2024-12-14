+++
title = 'MP:Bind'
+++

# Request

{{% ipc/request header="0x000400C0" %}}
{{% ipc/param %}}u32 nodeID{{% / %}}
{{% ipc/param %}}s8, bool flag.{{% / %}}
{{% ipc/param %}}u32 val{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}

# Description

This probably binds the input nodeID to the specified val, the latter is likely then used with the data frames(?). This command is used before [MP:SetBeaconData](MP:SetBeaconData "wikilink").

nodeID must be \<16 and val must be \<4.

When flag is zero, each buffer for the ring-buffer is freed, if there is any.

Before returning, that flag is written into state.
