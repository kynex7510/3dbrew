+++
title = 'CfgNor:ReadStatusRegister'
+++

# Request

{{% ipc/request header="0x000E0000" %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% ipc/param %}}Output{{% / %}}
{{% / %}}

# Description

This writes 0x1-byte to SPI for command 0x05(RDSR), then reads 0x1-byte of output which are then copied to cmdreply\[2\].
