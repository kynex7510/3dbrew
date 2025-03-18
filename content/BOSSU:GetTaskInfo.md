+++
title = 'BOSSU:GetTaskInfo'
+++

# Request

{{% ipc/request header="0x00250082" %}}
{{% ipc/param %}}u32, Task ID size, including NULL terminator{{% / %}}
{{% ipc/param %}}u8, Step ID{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00250042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Description

Loads all configuration properties of the given task on the program ID of the current session so that they can be accessed with [BOSSU:ReceiveProperty](BOSSU:ReceiveProperty "wikilink"). This can be used for reconfiguring an existing task and keep all unmodified values the same.

The status properties aren't loaded with this command.
