+++
title = 'BOSSU:GetStepIdList'
+++

# Request

{{% ipc/request header="0x000F0042" %}}
{{% ipc/param %}}u32, Task ID size, including NULL terminator{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x000F0042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Description

Loads the list of step IDs of the given task into the local session so that it can be retrieved with PropertyIDs 0x37 and 0x38 on [BOSSU:ReceiveProperty](BOSSU:ReceiveProperty "wikilink").
