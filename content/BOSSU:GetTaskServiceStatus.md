+++
title = 'BOSSU:GetTaskServiceStatus'
+++

# Request

{{% ipc/request header="0x001B0042" %}}
{{% ipc/param %}}u32, Task ID size, including NULL terminator{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x001B0082" %}}
{{% ipc/result %}}
{{% ipc/param %}}u8, Service status{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Description

Gets the service status of the given task on the program ID of the current session.
