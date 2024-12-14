+++
title = 'MCUHWC:GetBatteryLevel'
+++

# Request

{{% ipc/request header="0x00050000" %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% ipc/param %}}u8 battery_level{{% / %}}
{{% / %}}

# Description

Returns the battery percentage (max 100 (0x64))
