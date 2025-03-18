+++
title = 'GSPGPU:SetDisplayTransfer'
+++

# Request

{{% ipc/request header="0x000D0140" %}}
{{% ipc/param %}}Physical source address{{% / %}}
{{% ipc/param %}}Source parameters (bit0-15: width, bit 16-31: height){{% / %}}
{{% ipc/param %}}Physical destination address{{% / %}}
{{% ipc/param %}}Destination parameters (bit0-15: width, bit 16-31: height){{% / %}}
{{% ipc/param %}}[Flags](GPU/External_Registers#flags-register---0x1ef00c10 "wikilink"){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x000D0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Stubbed, replaced by the [DisplayTransfer](GSP_Shared_Memory#trigger_display_transfer "wikilink") command request.
