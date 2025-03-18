+++
title = 'CECDS:SprAddSlot'
+++

# Request

{{% ipc/param %}}Header code `0x041200C2`{{% / %}}
{{% ipc/param %}}title id{{% / %}}
{{% ipc/param %}}`0xFF` (flags?){{% / %}}
{{% ipc/param %}}buffer size{{% / %}}
{{% ipc/mapbuffer r %}}buffer address{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}

# Description

This adds a [slot](StreetPass#slot_0x6161 "wikilink") to be received.

Requires the [Cec Spr Status](CECD_Services#cecsprstatus "wikilink") to be `CEC_SPR_RECEIVE_READY`.
