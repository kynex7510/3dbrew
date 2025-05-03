+++
title = 'FS:CheckArchive'
+++

# Request

{{% ipc/request header="0x87000c2" %}}
{{% ipc/param %}}u32, [Archive ID](Filesystem_services#archives "wikilink"){{% / %}}
{{% ipc/param %}}[Path Type](Filesystem_services#filenames_and_paths "wikilink"){{% / %}}
{{% ipc/param %}}u32, Path size{{% / %}}
{{% ipc/staticbuffer id=0 %}}Input path data buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x8700040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Internally calls [FS:OpenArchive](FS:OpenArchive "wikilink") with the given archive path, then closes it. Thus, the result code can be used to check if a given archive is accessible or not.

No archive handle is created as a result of this command.
