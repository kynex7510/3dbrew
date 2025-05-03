+++
title = 'FS:UnregisterSpecialTitleContent'
+++

# Request

{{% ipc/request header="0x8780100" %}}
{{% ipc/param %}}u8, [Media Type](Filesystem_services#mediatype "wikilink") of title{{% / %}}
{{% ipc/param span=2 %}}u64, Title ID{{% / %}}
{{% ipc/param %}}u16, Content index of title content registered as special content{{% / %}}
{{% ipc/param %}}u8, [Special Content Type](Filesystem_services#specialcontenttype "wikilink") the content was previously registered as{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x8780040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Unregisters a specific title's content previously registered as a special content using [FS:RegisterSpecialTitleContent](FS:RegisterSpecialTitleContent "wikilink").
