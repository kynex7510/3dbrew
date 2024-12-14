+++
title = 'CfgNor:ReadIdentification'
+++

# Request

{{% ipc/request header="0x00090000" %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% ipc/param %}}Output{{% / %}}
{{% / %}}

# Description

This writes 0x1-bytes to SPI for command 0x9F(RDID), then reads 2-bytes of output which are then copied to cmdreply\[2\].
