+++
title = 'MCUHWC:GetInfoRegisters'
+++

# Request

{{% ipc/request header="0x00030042" %}}
{{% ipc/param %}}size (was set to 5){{% / %}}
{{% ipc/mapbuffer w %}}output data pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}

# Description

This function reads hardware information from the MCU:

- console type
- PMIC vendor code
- battery vendor code
- MGIC version(8) (?)
- MGIC version(9) (?)
