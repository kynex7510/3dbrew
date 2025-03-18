+++
title = 'GSPGPU:SetTextureCopy'
+++

# Request

{{% ipc/request header="0x000E0180" %}}
{{% ipc/param %}}Physical source address{{% / %}}
{{% ipc/param %}}Physical destination address{{% / %}}
{{% ipc/param %}}Size{{% / %}}
{{% ipc/param %}}Source parameters (bit0-15: line width, bit 16-31: gap){{% / %}}
{{% ipc/param %}}Destination parameters (bit0-15: line width, bit 16-31: gap){{% / %}}
{{% ipc/param %}}Flags (bit2: set when using gaps, bit3: always set){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x000E0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Stubbed, replaced by the [TextureCopy](GSP_Shared_Memory#trigger_texture_copy "wikilink") command request.
