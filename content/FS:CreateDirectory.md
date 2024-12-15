+++
title = 'FS:CreateDirectory'
+++

# Request

{{% ipc/request header="0x08090182" %}}
{{% ipc/param %}}Transaction (usually 0){{% / %}}
{{% ipc/param span=2 %}}u64, Archive Handle{{% / %}}
{{% ipc/param %}}[Path Type](Filesystem_services#pathtype "wikilink"){{% / %}}
{{% ipc/param %}}Path Size (including null-terminator){{% / %}}
{{% ipc/param %}}[Attributes](Filesystem_services#attributes "wikilink") (usually 0){{% / %}}
{{% ipc/staticbuffer id=0 %}}Path Data Pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x08090040" %}}
{{% ipc/result %}}
{{% / %}}
