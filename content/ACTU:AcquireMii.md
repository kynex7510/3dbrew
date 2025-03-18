+++
title = 'ACTU:AcquireMii'
+++

# Request

{{% ipc/request header="0x00190044" %}}
{{% ipc/param %}}Input persistent ID buffer size (count \* 4, max. 0x800){{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% ipc/staticbuffer id=0 %}}Input persistent ID buffer pointer (count \* 4, max. 0x800){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00190040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Requests the [Miis](Mii#mii_format "wikilink") corresponding to each of the given persistent IDs, for the currently loaded account.
