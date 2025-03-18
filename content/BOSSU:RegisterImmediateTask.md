+++
title = 'BOSSU:RegisterImmediateTask'
+++

# Request

{{% ipc/request header="0x003500c2" %}}
{{% ipc/param %}}u32, Task ID size, including NULL terminator{{% / %}}
{{% ipc/param %}}bool, TaskOption configured{{% / %}}
{{% ipc/param %}}u8, Step ID{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00350042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Description

Registers a task for the program ID of the current session and updates the BOSS savedata immediately, using information previously configured with [BOSSU:SendProperty](BOSSU:SendProperty "wikilink").

Immediate tasks are those that are configured to run immediately and only once (the count and interval are set to 1).

The input bool is set to true in the SDK if the application provides a TaskOption, which contains some of the properties that can be configured.
