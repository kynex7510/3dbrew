+++
title = 'GSPGPU:WriteHWRegsWithMask'
+++

# Request

{{% ipc/request header="0x00020084" %}}
{{% ipc/param %}}[GPU](categories/GPU "wikilink") address based at 0x1EB00000, must be word-aligned{{% / %}}
{{% ipc/param %}}Size, must be \<=0x80 and word-aligned{{% / %}}
{{% ipc/staticbuffer id=0 %}}Data pointer{{% / %}}
{{% ipc/staticbuffer id=1 %}}Mask data pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00020040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

The GPU register offset must be \<0x420000. GPU register = (register & ~maskword) \| (data & maskword).
