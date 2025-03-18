+++
title = 'CECDS:SprGetSendSlotsMetadata'
+++

# Request

{{% ipc/param %}}Header code `0x040C0042`{{% / %}}
{{% ipc/param %}}buffer size{{% / %}}
{{% ipc/mapbuffer w %}}buffer address{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% ipc/param %}}Amount of slots read{{% / %}}
{{% / %}}

# Description

This copies the metadata for all [slots](StreetPass#slot_0x6161 "wikilink") that need to be sent into the specified buffer.
Each metadata object consists out of a tuple of three words: `send method`, `title_id`, `size` whereas the size is the size in bytes of the corresponding spr slot. Copies up to `buffer size / (4*3)` slots into the buffer.

Returns the amount of slots read, *not* the amount of bytes read.

Requires the [Cec Spr Status](CECD_Services#cecsprstatus "wikilink") to be `CEC_SPR_SEND_READY`.
