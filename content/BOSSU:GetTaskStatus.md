+++
title = 'BOSSU:GetTaskStatus'
+++

# Request

{{% ipc/request header="0x002300c2" %}}
{{% ipc/param %}}u32, Task ID size, including NULL terminator{{% / %}}
{{% ipc/param %}}bool, Unknown{{% / %}}
{{% ipc/param %}}u8, Step ID{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00230082" %}}
{{% ipc/result %}}
{{% ipc/param %}}u8, Current step ID{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Description

Gets the status of the given task on the program ID of the current session. Alongside the current step ID the reponse, more detailed information is loaded into properties which can be accessed with [BOSSU:ReceiveProperty](BOSSU:ReceiveProperty "wikilink").
