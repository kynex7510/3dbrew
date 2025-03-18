+++
title = 'FSDir:Read'
+++

# Request

{{% ipc/request header="0x08010042" %}}
{{% ipc/param %}}[Entry](Filesystem_services#directoryentry "wikilink") Count{{% / %}}
{{% ipc/mapbuffer w %}}[Entry](Filesystem_services#directoryentry "wikilink") Output Pointer\|(Entry Count × 0x228){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x08010080" %}}
{{% ipc/result %}}
{{% ipc/param %}}Actual Entry Count{{% / %}}
{{% / %}}
