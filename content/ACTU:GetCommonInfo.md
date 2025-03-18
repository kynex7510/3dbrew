+++
title = 'ACTU:GetCommonInfo'
+++

# Request

{{% ipc/request header="0x00050082" %}}
{{% ipc/param %}}Output buffer size{{% / %}}
{{% ipc/param %}}Common data type{{% / %}}
{{% ipc/mapbuffer w %}}Output buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00050042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer w %}}Output buffer{{% / %}}
{{% / %}}

# Description

Returns common account information, not specific to any account.

See [DataBlocks](ACT_Services#datablocks "wikilink") for possible data types.
