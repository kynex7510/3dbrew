+++
title = 'CECDS:SprDone'
+++

# Request

{{% ipc/request header="0x04140040" %}}
{{% ipc/param %}}(bool) success{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}

# Description

Indicates that a cecd spr exchange is completely done. Based on `success` the changes to the cec data re committed or rolled back.

Sets the [Cec Spr Status](CECD_Services#cecsprstatus "wikilink") to `CEC_SPR_CONNECTION_FINISHED`.
