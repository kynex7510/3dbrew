+++
title = 'ACTA:UpdateMiiImage'
+++

# Request

{{% ipc/request header="0x041300c2" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param %}}u8, [Mii Image Type](ACTA:UpdateMiiImage#mii_image_types "wikilink"){{% / %}}
{{% ipc/param %}}Input Mii Image buffer size{{% / %}}
{{% ipc/mapbuffer r %}}Input Mii Image buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04130042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}Input Mii Image buffer{{% / %}}
{{% / %}}

# Description

Updates one of the 9 different Mii Images for the given account. The image data should be in the TGA format.

# Mii Image Types

| Value | Description       |
|-------|-------------------|
| 0     | Primary Mii Image |
| 1     | Unknown           |
| 2     | Unknown           |
| 3     | Unknown           |
| 4     | Unknown           |
| 5     | Unknown           |
| 6     | Unknown           |
| 7     | Unknown           |
| 8     | Unknown           |
