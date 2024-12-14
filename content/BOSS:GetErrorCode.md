+++
title = 'BOSS:GetErrorCode'
+++

# Request

{{% ipc/request header="0x002E0040" %}}
{{% ipc/param %}}s8 input{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% ipc/param %}}u32 Output value{{% / %}}
{{% / %}}

# Description

This loads a 16bit value from a table using the input value. This loops through the table, comparing a field in each array entry with the input. When the input value is 0x71, the output is 0xB3B1+5(0xB3B6). Otherwise when no match is found in the table and it's not 0x71, the output is 0xB3B1.

This always returns result-code 0.
