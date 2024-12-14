+++
title = 'CECDU:WriteMessage'
+++

# Request

{{% ipc/request header="0x00060104" %}}
{{% ipc/param %}}NCCH Program ID{{% / %}}
{{% ipc/param %}}bool is_out_box?{{% / %}}
{{% ipc/param %}}message ID size (unused, always 8){{% / %}}
{{% ipc/param %}}buffer size (unused){{% / %}}
{{% ipc/mapbuffer r %}}buffer address{{% / %}}
{{% ipc/mapbuffer rw %}}message ID address{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00060044" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}buffer address{{% / %}}
{{% ipc/mapbuffer rw %}}message ID address{{% / %}}
{{% / %}}
