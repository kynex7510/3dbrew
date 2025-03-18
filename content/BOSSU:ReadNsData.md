+++
title = 'BOSSU:ReadNsData'
+++

# Request

{{% ipc/request header="0x00280102" %}}
{{% ipc/param %}}u32, NS Data ID{{% / %}}
{{% ipc/param span=2 %}}s64, Offset{{% / %}}
{{% ipc/param %}}u32, Buffer size{{% / %}}
{{% ipc/mapbuffer w %}}Data buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x002800c2" %}}
{{% ipc/result %}}
{{% ipc/param %}}u32, Actual read size{{% / %}}
{{% ipc/param %}}u32, Version of the NS Data{{% / %}}
{{% ipc/mapbuffer w %}}Data buffer{{% / %}}
{{% / %}}

# Description

Reads the content from the given NS Data ID of the program ID of the current session.
