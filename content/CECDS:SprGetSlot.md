+++
title = 'CECDS:SprGetSlot'
+++

# Request

{{% ipc/request header="0x040D0082" %}}
{{% ipc/param %}}title id{{% / %}}
{{% ipc/param %}}buffer size{{% / %}}
{{% ipc/mapbuffer w %}}buffer address{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}

# Description

This copies a [slot](StreetPass#slot_0x6161 "wikilink") to be sent into the specified buffer.

Requires the [Cec Spr Status](CECD_Services#cecsprstatus "wikilink") to be `CEC_SPR_SEND_READY`.
