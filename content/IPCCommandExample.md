+++
title = 'IPCCommandExample'
+++

# Request

{{% ipc/request header="0x00040080" %}}
{{% ipc/param %}}[GPU](GPU "wikilink") address based at 0x1EB00000, must be word-aligned{{% / %}}
{{% ipc/param %}}1 = Size, must be \<=0x80 and word-aligned{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% ipc/staticbuffer id=0 %}}Output data pointer{{% / %}}
{{% / %}}

# Description

The GPU register offset must be \<0x420000.
