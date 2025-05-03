+++
title = 'FS:GetTitleTag'
+++

# Request

{{% ipc/request header="0x8820080" %}}
{{% ipc/param span=2 %}}u64, Title ID{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x8820840" %}}
{{% ipc/result %}}
{{% ipc/param span=32 %}}[TitleTag](Filesystem_services#titletag "wikilink") structure{{% / %}}
{{% / %}}

# Description

Gets the title tag for the specified title ID.
