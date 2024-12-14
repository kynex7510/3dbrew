+++
title = 'MP:SetBeaconData'
+++

# Request

{{% ipc/request header="0x00050042" %}}
{{% ipc/param %}}Size{{% / %}}
{{% ipc/staticbuffer id=0 %}}Input data pointer. static_buffer_id=0.{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}

# Description

Input buffer format is unknown. The input data is copied into another buffer for the Nintendo vendor beacon tag data.
