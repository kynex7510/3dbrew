+++
title = 'BOSSU:GetTaskError'
+++

# Request

{{% ipc/request header="0x00240082" %}}
{{% ipc/param %}}u32, Task ID size, including NULL terminator{{% / %}}
{{% ipc/param %}}u8, Step ID{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00240082" %}}
{{% ipc/result %}}
{{% ipc/param %}}u8, Current step ID{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Description

Loads the error of the given task on the program ID of the current session into property ID 0x30, which can be accessed with [BOSSU:ReceiveProperty](BOSSU:ReceiveProperty "wikilink").
