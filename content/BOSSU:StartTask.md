+++
title = 'BOSSU:StartTask'
+++

# Request

{{% ipc/request header="0x001C0042" %}}
{{% ipc/param %}}Task ID size, including NULL terminator{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x001C0042" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Starts the given task on the program ID of the current session.
