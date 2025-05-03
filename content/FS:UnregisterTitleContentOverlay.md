+++
title = 'FS:UnregisterTitleContentOverlay'
+++

# Request

{{% ipc/request header="0x8730100" %}}
{{% ipc/param %}}u8, [Media Type](Filesystem_services#mediatype "wikilink") of base title{{% / %}}
{{% ipc/param span=2 %}}u64, Title ID of base title{{% / %}}
{{% ipc/param %}}u16, Content index of base title content{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x8730040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Unregisters one of the overlay contents registered using [FS:RegisterTitleContentOverlay](FS:RegisterTitleContentOverlay "wikilink") for the specified base title.
