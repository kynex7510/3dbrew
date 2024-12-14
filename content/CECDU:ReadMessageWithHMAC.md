+++
title = 'CECDU:ReadMessageWithHMAC'
+++

# Request

{{% ipc/request header="0x00040106" %}}
{{% ipc/param %}}NCCH Program ID{{% / %}}
{{% ipc/param %}}bool is_out_box?{{% / %}}
{{% ipc/param %}}message ID size (unused, always 8){{% / %}}
{{% ipc/param %}}buffer size (unused){{% / %}}
{{% ipc/mapbuffer r %}}message ID address{{% / %}}
{{% ipc/mapbuffer r %}}HMAC key address{{% / %}}
{{% ipc/mapbuffer w %}}buffer address{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00040086" %}}
{{% ipc/result %}}
{{% ipc/param %}}Read size{{% / %}}
{{% ipc/mapbuffer r %}}message ID address{{% / %}}
{{% ipc/mapbuffer r %}}HMAC key address{{% / %}}
{{% ipc/mapbuffer w %}}buffer address{{% / %}}
{{% / %}}
