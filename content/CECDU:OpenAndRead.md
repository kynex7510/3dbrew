+++
title = 'CECDU:OpenAndRead'
+++

# Request

{{% ipc/request header="0x00120104" %}}
{{% ipc/param %}}buffer size (unused){{% / %}}
{{% ipc/param %}}NCCH Program ID{{% / %}}
{{% ipc/param %}}[Path type](CECD_Services#cecdatapathtype "wikilink"){{% / %}}
{{% ipc/param %}}file open flag?{{% / %}}
{{% ipc/processid %}}
{{% ipc/mapbuffer w %}}buffer address{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00120082" %}}
{{% ipc/result %}}
{{% ipc/param %}}Total bytes read{{% / %}}
{{% ipc/mapbuffer w %}}buffer address{{% / %}}
{{% / %}}
