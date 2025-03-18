+++
title = 'BOSSU:GetTaskResult'
+++

# Request

{{% ipc/request header="0x00210042" %}}
{{% ipc/param %}}u32, Task ID size, including NULL terminator{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00210102" %}}
{{% ipc/result %}}
{{% ipc/param %}}u8, TaskResult{{% / %}}
{{% ipc/param %}}u32, Count{{% / %}}
{{% ipc/param %}}u8, Current step ID{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Description

Gets the result of the given task on the program ID of the current session.
