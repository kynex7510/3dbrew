+++
title = 'MP:RecvDataFrame'
+++

# Request

{{% ipc/request header="0x00110080" %}}
{{% ipc/param %}}Size{{% / %}}
{{% ipc/param %}}u32 nodeID{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% ipc/staticbuffer id=0 %}}Output data pointer{{% / %}}
{{% / %}}

# Description

This loads a data frame from a ring-buffer in memory for the specified nodeID, the actual size it uses is fixed to 0x2BC-bytes.
