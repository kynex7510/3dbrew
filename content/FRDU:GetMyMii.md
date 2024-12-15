+++
title = 'FRDU:GetMyMii'
+++

# Request

{{% ipc/request header="0x000A0000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x000A0640" %}}
{{% ipc/result %}}
{{% ipc/param span=24 %}}Personal [Mii data](FRDU:GetMyMii#mii_data "wikilink"){{% / %}}
{{% / %}}

# Mii Data

| Offset | Size | Description                                    |
|--------|------|------------------------------------------------|
| 0x0    | 0x1  | bool, ProfanityFlag                            |
| 0x1    | 0x1  | [Mii character set](Mii#mii_format "wikilink") |
| 0x2    | 0x1  | bool, DirtyFlag                                |
| 0x3    | 0x1  | padding                                        |
| 0x4    | 0x5C | [Mii data](Mii#mii_format "wikilink")          |
