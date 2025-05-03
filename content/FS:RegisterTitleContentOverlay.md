+++
title = 'FS:RegisterTitleContentOverlay'
+++

# Request

{{% ipc/request header="0x8720200" %}}
{{% ipc/param %}}u8, [Media Type](Filesystem_services#mediatype "wikilink") of base title{{% / %}}
{{% ipc/param span=2 %}}u64, Title ID of base title{{% / %}}
{{% ipc/param %}}u16, Content index of base title content{{% / %}}
{{% ipc/param %}}u8, [Media Type](Filesystem_services#mediatype "wikilink") of overlay title{{% / %}}
{{% ipc/param span=2 %}}u64, Title ID of overlay title{{% / %}}
{{% ipc/param %}}u16, Content index of overlay title content{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x8720040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Registers a specific content from one title to be overlayed on another title's content. This is the command used to map an update title in place of a base title on gamecarts, where the base title would be the base content (and/or manual/DLP child) on the gamecart, and the overlay title would be the update title's main content (and/or manual/DLP child) on the SD card. The content index to be mapped is not restricted, thus it is possible to map any content from the source title to any content from the overlay title.

Subsequent calls to FS that mount the base title's NCCH content are redirected to the overlay title content whenever possible.

A maximum of 4 different titles can be overlayed, with each source title supporting up to 4 of its content indices mapped to the overlay title.
