+++
title = 'GPIO:SetGPIOData'
+++

# Request

{{% ipc/request header="0x00080080" %}}
{{% ipc/param %}}u32 data{{% / %}}
{{% ipc/param %}}u32 gpio_bitmask{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}

# Description

Same as [GPIO:GetGPIOData](GPIO:GetGPIOData "wikilink") except this sets GPIO data. This also doesn't handle all of the GPIO [bits](GPIO_Services "wikilink"), hence those bits are not writable with this.
