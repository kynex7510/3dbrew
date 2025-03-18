+++
title = 'CECDS:SprStartRecv'
+++

# Request

{{% ipc/param %}}Header code `0x04100000`{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}

# Description

Sets the cecd service start expecting received spr data.

Requires the [Cec Spr Status](CECD_Services#cecsprstatus "wikilink") to be `CEC_SPR_SEND` and sets it to `CEC_SPR_RECEIVE_READY`.
