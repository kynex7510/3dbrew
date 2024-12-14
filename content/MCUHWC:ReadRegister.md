+++
title = 'MCUHWC:ReadRegister'
+++

# Request

{{% ipc/request header="0x00010082" %}}
{{% ipc/param %}}u8 register{{% / %}}
{{% ipc/param %}}size{{% / %}}
{{% ipc/mapbuffer w %}}data pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}

# Description

This is just a wrapper for [I2C](I2C_Services "wikilink") command 0x001200C2 with [DeviceID](I2C_Registers "wikilink") 3

# Registers

This table has been merged to the [I2C Registers](I2C_Registers#device_3 "wikilink") page.
