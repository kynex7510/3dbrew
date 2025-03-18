+++
title = 'ACTU:GetMiiImage'
+++

# Request

{{% ipc/request header="0x000800c2" %}}
{{% ipc/param %}}Output Mii image buffer size{{% / %}}
{{% ipc/param %}}u8, Mii index{{% / %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/mapbuffer w %}}Output Mii image buffer pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00080082" %}}
{{% ipc/result %}}
{{% ipc/param %}}Mii image size{{% / %}}
{{% ipc/mapbuffer w %}}Output Mii image buffer pointer{{% / %}}
{{% / %}}

# Description

Returns the Mii image for the given account slot.

The returned image data is 128x128 and in the TGA format.
