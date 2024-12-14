+++
title = 'CECDU:OpenAndWrite'
+++

# Request

{{% ipc/request header="0x00110104" %}}
{{% ipc/param %}}buffer size (unused){{% / %}}
{{% ipc/param %}}NCCH Program ID{{% / %}}
{{% ipc/param %}}[Path type](CECD_Services#cecdatapathtype "wikilink"){{% / %}}
{{% ipc/param %}}file open flag?{{% / %}}
{{% ipc/processid %}}
{{% ipc/mapbuffer r %}}buffer address{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00110042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}buffer address{{% / %}}
{{% / %}}
