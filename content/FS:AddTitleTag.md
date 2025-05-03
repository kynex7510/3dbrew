+++
title = 'FS:AddTitleTag'
+++

# Request

{{% ipc/request header="0x8810880" %}}
{{% ipc/param span=2 %}}u64, Title ID{{% / %}}
{{% ipc/param span=32 %}}[TitleTag](Filesystem_services#titletag "wikilink") structure{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x8810040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Adds a title tag for the specified Title ID.
