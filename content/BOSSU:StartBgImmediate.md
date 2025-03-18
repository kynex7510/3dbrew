+++
title = 'BOSSU:StartBgImmediate'
+++

# Request

{{% ipc/request header="0x00330042" %}}
{{% ipc/param %}}u32, Task ID size, including NULL terminator{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00330042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Description

Seems similar to [BOSSU:StartTaskImmediate](BOSSU:StartTaskImmediate "wikilink")?
