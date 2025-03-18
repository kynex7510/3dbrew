+++
title = 'ACTU:GetAccountDataBlock'
+++

# Request

{{% ipc/request header="0x000600c2" %}}
{{% ipc/param %}}u8, Account slot (0xFE for default){{% / %}}
{{% ipc/param %}}Output buffer size{{% / %}}
{{% ipc/param %}}Account data type{{% / %}}
{{% ipc/mapbuffer w %}}Output buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00060042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer w %}}Output buffer{{% / %}}
{{% / %}}

# Description

Returns information associated to the account specified by the account slot.

See [DataBlocks](ACT_Services#datablocks "wikilink") for possible data types.
