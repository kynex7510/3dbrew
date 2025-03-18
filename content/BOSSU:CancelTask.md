+++
title = 'BOSSU:CancelTask'
+++

# Request

{{% ipc/request header="0x001E0042" %}}
{{% ipc/param %}}Task ID size, including NULL terminator{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x001E0042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Description

Cancels the given task on the program ID of the current session.
