+++
title = 'CECDU:ReadRawFile'
+++

# Request

{{% ipc/request header="0x00020042" %}}
{{% ipc/param %}}buffer size (unused){{% / %}}
{{% ipc/mapbuffer w %}}buffer address{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00020082" %}}
{{% ipc/result %}}
{{% ipc/param %}}Read size{{% / %}}
{{% ipc/mapbuffer w %}}buffer address{{% / %}}
{{% / %}}
