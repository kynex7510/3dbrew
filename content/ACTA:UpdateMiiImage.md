+++
title = 'ACTA:UpdateMiiImage'
+++

# Request

{{% ipc/request header="0x041300c2" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param %}}u8, [Mii Image Type](ACT_Services#mii_image_types "wikilink"){{% / %}}
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
