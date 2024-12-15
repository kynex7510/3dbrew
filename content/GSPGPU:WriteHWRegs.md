+++
title = 'GSPGPU:WriteHWRegs'
+++

# Request

{{% ipc/request header="0x00010082" %}}
{{% ipc/param %}}[GPU](GPU "wikilink") address based at 0x1EB00000, must be word-aligned{{% / %}}
{{% ipc/param %}}Size, must be \<=0x80 and word-aligned{{% / %}}
{{% ipc/staticbuffer id=0 %}}Data pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00010040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

This writes the input data to the specified GPU register address. The GPU register offset must be \<0x420000.
