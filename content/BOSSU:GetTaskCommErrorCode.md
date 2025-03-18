+++
title = 'BOSSU:GetTaskCommErrorCode'
+++

# Request

{{% ipc/request header="0x00220042" %}}
{{% ipc/param %}}u32, Task ID size, including NULL terminator{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00220102" %}}
{{% ipc/result %}}
{{% ipc/param %}}u32, TaskCommErrorCode{{% / %}}
{{% ipc/param %}}u32, Count{{% / %}}
{{% ipc/param %}}u8, Current step ID{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Description

Gets the communications error code of the given task on the program ID of the current session.

The TaskCommErrorCode represents the HTTP status code received when performing a task.
