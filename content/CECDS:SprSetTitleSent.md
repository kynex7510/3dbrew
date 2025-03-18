+++
title = 'CECDS:SprSetTitleSent'
+++

# Request

{{% ipc/request header="0x040E0080" %}}
{{% ipc/param %}}title id{{% / %}}
{{% ipc/param %}}(bool) success{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}

# Description

Sets weather a title was successfully sent for the SPR connection.

Requires the [Cec Spr Status](CECD_Services#cecsprstatus "wikilink") to be `CEC_SPR_SEND_READY`, `CEC_SPR_SEND` or `CEC_SPR_RECEIVE_READY`.
