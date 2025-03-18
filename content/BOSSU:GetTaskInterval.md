+++
title = 'BOSSU:GetTaskInterval'
+++

# Request

{{% ipc/request header="0x00190042" %}}
{{% ipc/param %}}u32, Task ID size, including NULL terminator{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00190082" %}}
{{% ipc/result %}}
{{% ipc/param %}}u32, Interval{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Description

Gets the interval of the given task on the program ID of the current session.
