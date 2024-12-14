+++
title = 'CECDU:OpenRawFile'
+++

# Request

{{% ipc/request header="0x000100C2" %}}
{{% ipc/param %}}NCCH Program ID{{% / %}}
{{% ipc/param %}}[Path type](CECD_Services#cecdatapathtype "wikilink"){{% / %}}
{{% ipc/param %}}1=file open flag (0x2=R, 0x4=W, ...){{% / %}}
{{% ipc/processid %}}
{{% / %}}

# Response

{{% ipc/request header="0x00010080" %}}
{{% ipc/result %}}
{{% ipc/param %}}File size?{{% / %}}
{{% / %}}
