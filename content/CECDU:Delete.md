+++
title = 'CECDU:Delete'
+++

# Request

{{% ipc/request header="0x00080102" %}}
{{% ipc/param %}}NCCH Program ID{{% / %}}
{{% ipc/param %}}[Path type](CECD_Services#cecdatapathtype "wikilink"){{% / %}}
{{% ipc/param %}}bool is_out_box?{{% / %}}
{{% ipc/param %}}message ID size (unused){{% / %}}
{{% ipc/mapbuffer r %}}message ID address{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00080042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}message ID address{{% / %}}
{{% / %}}
