+++
title = 'BOSSU:GetTaskPriority'
+++

# Request

{{% ipc/request header="0x00340042" %}}
{{% ipc/param %}}TaskID buffer size{{% / %}}
{{% ipc/mapbuffer r %}}TaskID data pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% ipc/param %}}Output value{{% / %}}
{{% / %}}

# Description

This loads the current state of PropertyID 0x0 for the specified task.
