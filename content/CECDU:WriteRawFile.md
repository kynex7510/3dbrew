+++
title = 'CECDU:WriteRawFile'
+++

# Request

{{% ipc/request header="0x00050042" %}}
{{% ipc/param %}}buffer size (unused){{% / %}}
{{% ipc/mapbuffer r %}}buffer address{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00050042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}buffer address{{% / %}}
{{% / %}}
