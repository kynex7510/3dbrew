+++
title = 'FS:RegisterSpecialTitleContent'
+++

# Request

{{% ipc/request header="0x8770140" %}}
{{% ipc/param %}}u8, [Media Type](Filesystem_services#mediatype "wikilink") of title{{% / %}}
{{% ipc/param span=2 %}}u64, Title ID{{% / %}}
{{% ipc/param %}}u16, Content index of title content{{% / %}}
{{% ipc/param %}}u8, [Special Content Type](Filesystem_services#specialcontenttype "wikilink") to register the content as{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x8770040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Registers a specific title's content as a special content. Up to 8 different contents can be registered this way. This overrides the special content index returned by [FSPXI:GetSpecialContentIndex](FSPXI:GetSpecialContentIndex "wikilink").
