+++
title = 'BOSSU:UpdateTaskCount'
+++

# Request

{{% ipc/request header="0x00180082" %}}
{{% ipc/param %}}u32, Task ID size, including NULL terminator{{% / %}}
{{% ipc/param %}}u32, Count{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00180042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Description

Updates the count of the given task on the program ID of the current session.
