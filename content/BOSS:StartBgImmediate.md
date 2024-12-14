+++
title = 'BOSS:StartBgImmediate'
+++

# Request

{{% ipc/request header="0x00330042" %}}
{{% ipc/param %}}TaskID buffer size{{% / %}}
{{% ipc/mapbuffer r %}}TaskID data pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}

# Description

Seems similar to [BOSSU:StartTaskImmediate](BOSSU:StartTaskImmediate "wikilink")?
