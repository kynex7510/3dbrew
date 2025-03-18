+++
title = 'BOSSU:ReconfigureTask'
+++

# Request

{{% ipc/request header="0x000D0082" %}}
{{% ipc/param %}}u32, Task ID size, including NULL terminator{{% / %}}
{{% ipc/param %}}u8, Step ID{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x000D0042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Description

Reconfigures the given task on the program ID of the current session using the new properties given using [BOSSU:SendProperty](BOSSU:SendProperty "wikilink"). Not all properties can be reconfigured.
