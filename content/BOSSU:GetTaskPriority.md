+++
title = 'BOSSU:GetTaskPriority'
+++

# Request

{{% ipc/request header="0x00340042" %}}
{{% ipc/param %}}u32, Task ID size, including NULL terinator{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00340082" %}}
{{% ipc/result %}}
{{% ipc/param %}}u8, Task priority{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Description

This loads the current state of PropertyID 0x0 (task priority) for the given task on the program ID of the current session.
