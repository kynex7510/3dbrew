+++
title = 'GSPGPU:SetMemoryFill'
+++

# Request

{{% ipc/request header="0x000F0200" %}}
{{% ipc/param %}}First buffer physical start address{{% / %}}
{{% ipc/param %}}First buffer physical end address{{% / %}}
{{% ipc/param %}}First buffer fill value{{% / %}}
{{% ipc/param %}}First buffer fill width{{% / %}}
{{% ipc/param %}}Second buffer physical start address{{% / %}}
{{% ipc/param %}}Second buffer physical end address{{% / %}}
{{% ipc/param %}}Second buffer fill value{{% / %}}
{{% ipc/param %}}Second buffer fill width{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x000F0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Stubbed, replaced by the [MemoryFill](GSP_Shared_Memory#trigger_memory_fill "wikilink") command request.
