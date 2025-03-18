+++
title = 'BOSSU:GetTaskCount'
+++

# Request

{{% ipc/request header="0x001A0042" %}}
{{% ipc/param %}}u32, Task ID size, including NULL terminator{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x001A0082" %}}
{{% ipc/result %}}
{{% ipc/param %}}u32, Count{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Description

Gets the count of the given task on the program ID of the current session.
