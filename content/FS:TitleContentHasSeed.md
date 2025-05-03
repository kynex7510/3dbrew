+++
title = 'FS:TitleContentHasSeed'
+++

# Request

{{% ipc/request header="0x87F0100" %}}
{{% ipc/param %}}u8, [Media Type](Filesystem_services#mediatype "wikilink"){{% / %}}
{{% ipc/param span=2 %}}u64, Title ID{{% / %}}
{{% ipc/param %}}u8, Content type (0: base content, 1: instruction manual){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x87F0080" %}}
{{% ipc/result %}}
{{% ipc/param %}}bool, specified content has seed crypto{{% / %}}
{{% / %}}

# Description

Returns whether or not the specified title's content requires a seed to function.
