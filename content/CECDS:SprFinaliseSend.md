+++
title = 'CECDS:SprFinaliseSend'
+++

# Request

{{% ipc/param %}}Header code `0x040F0000`{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}

# Description

Tells the cecd service that fetching data for sending is done now. After this the implementation is expected to actually send the data to the remote provider

Requires the [Cec Spr Status](CECD_Services#cecsprstatus "wikilink") to be `CEC_SPR_SEND_READY` and sets it to `CEC_SPR_SEND`.
