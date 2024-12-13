+++
title = 'FRDU:GetMyMii'
+++

# Request

| Index Word | Description                |
|------------|----------------------------|
| 0          | Header code \[0x000A0000\] |

# Response

| Index Word | Description                                             |
|------------|---------------------------------------------------------|
| 0          | Header code                                             |
| 1          | Result code                                             |
| 2          | [Mii data structure](FRDU:GetMyMii#mii_data "wikilink") |

# Mii Data

| Offset | Size | Description                                    |
|--------|------|------------------------------------------------|
| 0x0    | 0x1  | bool, ProfanityFlag                            |
| 0x1    | 0x1  | [Mii character set](Mii#mii_format "wikilink") |
| 0x2    | 0x1  | bool, DirtyFlag                                |
| 0x3    | 0x1  | padding                                        |
| 0x4    | 0x5C | [Mii data](Mii#mii_format "wikilink")          |
