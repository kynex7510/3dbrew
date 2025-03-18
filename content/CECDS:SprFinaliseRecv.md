+++
title = 'CECDS:SprFinaliseRecv'
+++

# Request

{{% ipc/param %}}Header code `0x04130000`{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}

# Description

Tells the cecd service that it is done receiving data for the spr exchange now.

Requires the [Cec Spr Status](CECD_Services#cecsprstatus "wikilink") to be `CEC_SPR_RECEIVE_READY` and sets it to `CEC_SPR_RECEIVE`.
