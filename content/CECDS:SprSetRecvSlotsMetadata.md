+++
title = 'CECDS:SprSetRecvSlotsMetadata'
+++

# Request

{{% ipc/request header="0x04110042" %}}
{{% ipc/param %}}buffer size{{% / %}}
{{% ipc/mapbuffer r %}}buffer address{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}

# Description

This notifies the cec service of the [slots](StreetPass#slot_0x6161 "wikilink") that it will receive shortly by sending it metadata objects for each title.
Each metadata object consists out of a tuple of three words: `send method`, `title_id`, `size` whereas the size is the size in bytes of the corresponding spr slot.

Requires the [Cec Spr Status](CECD_Services#cecsprstatus "wikilink") to be `CEC_SPR_RECEIVE_READY`.
