+++
title = 'CECDU:ReadMessage'
+++

# Request

{{% ipc/request header="0x00030104" %}}
{{% ipc/param %}}NCCH Program ID{{% / %}}
{{% ipc/param %}}bool is_out_box?{{% / %}}
{{% ipc/param %}}message ID size (unused, always 8){{% / %}}
{{% ipc/param %}}buffer size (unused){{% / %}}
{{% ipc/mapbuffer r %}}message ID address{{% / %}}
{{% ipc/mapbuffer w %}}buffer address{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00030084" %}}
{{% ipc/result %}}
{{% ipc/param %}}Read size{{% / %}}
{{% ipc/mapbuffer r %}}message ID address{{% / %}}
{{% ipc/mapbuffer w %}}buffer address{{% / %}}
{{% / %}}
