+++
title = 'FS:OpenFile'
categories = ["fs:USER commands","fs:LDR commands"]
+++

# Request

{{% ipc/request header="0x080201c2" %}}
{{% ipc/param %}}Transaction (usually 0){{% / %}}
{{% ipc/param span=2 %}}u64, Archive Handle{{% / %}}
{{% ipc/param %}}[Path Type](Filesystem_services#pathtype "wikilink"){{% / %}}
{{% ipc/param %}}Path Size (including null-terminator){{% / %}}
{{% ipc/param %}}[Open Flags](Filesystem_services#openflags "wikilink"){{% / %}}
{{% ipc/param %}}[Attributes](Filesystem_services#attributes "wikilink") (usually 0){{% / %}}
{{% ipc/staticbuffer id=0 %}}Path Data Pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x08020043" %}}
{{% ipc/result %}}
{{% ipc/movehandle count=1 %}}
{{% ipc/handleentry %}}File client session handle{{% / %}}
{{% / %}}

[Category:fs:USER commands](Category:fs:USER_commands "wikilink") [Category:fs:LDR commands](Category:fs:LDR_commands "wikilink")
