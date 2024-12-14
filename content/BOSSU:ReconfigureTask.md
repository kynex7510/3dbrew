+++
title = 'BOSSU:ReconfigureTask'
+++

# Request

{{% ipc/request header="0x000D0082" %}}
{{% ipc/param %}}TaskID buffer size.{{% / %}}
{{% ipc/param %}}u8, task step ID{{% / %}}
{{% ipc/mapbuffer r %}}TaskID buffer pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}
