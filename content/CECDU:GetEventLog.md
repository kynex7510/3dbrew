+++
title = 'CECDU:GetEventLog'
+++

# Request

{{% ipc/request header="0x00120082" %}}
{{% ipc/param %}}Offset{{% / %}}
{{% ipc/param %}}Buffer size (0x20 \* entry count){{% / %}}
{{% ipc/mapbuffer w %}}Buffer address{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00120082" %}}
{{% ipc/result %}}
{{% ipc/param %}}Number of entries read{{% / %}}
{{% ipc/mapbuffer w %}}Buffer address{{% / %}}
{{% / %}}
