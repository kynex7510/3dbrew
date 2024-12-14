+++
title = 'MP:SendDataFrame'
+++

# Request

{{% ipc/request header="0x001400C2" %}}
{{% ipc/param %}}u32 nodeID{{% / %}}
{{% ipc/param %}}Size{{% / %}}
{{% ipc/param %}}s8, bool flag.{{% / %}}
{{% ipc/staticbuffer id=5 %}}Input buffer address. static_buffer_id=5.{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}

# Description

This seems to be for sending data frames. The input size is unused.

When flag is non-zero, a ring-buffer is used. Otherwise, the data is written into storage which can only contain one frame.
