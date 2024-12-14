+++
title = 'GPIO:GetGPIOData'
+++

# Request

{{% ipc/request header="0x00070040" %}}
{{% ipc/param %}}u32 gpio_bitmask{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% ipc/param %}}Output u32 data{{% / %}}
{{% / %}}

# Description

Reads GPIO data, see [here](GPIO_Services "wikilink").
