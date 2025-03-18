+++
title = 'ACTA:GetSupportContext'
+++

# Request

{{% ipc/request header="0x040B0040" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04090240" %}}
{{% ipc/result %}}
{{% ipc/param span=8 %}}[Support Context](ACTA:GetSupportContext#supportcontext "wikilink"){{% / %}}
{{% / %}}

# Description

Creates a structure used in the Nintendo Network ID Settings application to contact support.

# SupportContext

| Offset | Size     | Description                                                                                            |
|--------|----------|--------------------------------------------------------------------------------------------------------|
| 0x0    | 0x10 + 1 | ASCII NULL-terminated AccountId (Nintendo Network ID username) (max. 16 characters + NULL termination) |
| 0x11   | 0x3      | padding                                                                                                |
| 0x14   | 0x4      | u32, SerialNumber (only the digits)                                                                    |
| 0x18   | 0x4      | u32, PrincipalId                                                                                       |
| 0x1C   | 0x2      | u16, RandomNumber (based on PrincipalId and SerialNumber)                                              |
| 0x1E   | 0x2      | padding                                                                                                |
