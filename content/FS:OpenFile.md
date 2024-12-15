+++
title = 'FS:OpenFile'
+++

# Request

{{% ipc/request header="0x080201c2" %}}
{{% ipc/param %}}Transaction (usually 0){{% / %}}
{{% ipc/param span=2 %}}u64, Archive Handle{{% / %}}
{{% ipc/param %}}[Path Type](Filesystem_services#pathtype "wikilink"){{% / %}}
{{% ipc/param %}}Path Size (including null-terminator){{% / %}}
{{% ipc/param %}}[Open Flags](Filesystem_services#openflags "wikilink"){{% / %}}
{{% ipc/param %}}[Attributes](Filesystem_services#attributes "wikilink") (usually 0){{% / %}}
{{% ipc/param %}}(PathSize \<\< 14) \| 2{{% / %}}
{{% ipc/param %}}Path Data Pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% ipc/param %}}Move handle descriptor (0x10){{% / %}}
{{% ipc/param %}}File client session handle{{% / %}}
{{% / %}}
