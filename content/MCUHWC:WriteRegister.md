+++
title = 'MCUHWC:WriteRegister'
+++

# Request

{{% ipc/request header="0x00020082" %}}
{{% ipc/param %}}u8 register(???){{% / %}}
{{% ipc/param %}}size{{% / %}}
{{% ipc/mapbuffer r %}}data pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}

# Description

This is just a wrapper for [I2C](I2C_Services "wikilink") command 0x001100C2 with [DeviceID](I2C_Registers "wikilink") 3
