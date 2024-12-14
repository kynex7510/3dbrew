+++
title = 'IRUSER:InitializeIrnopShared'
+++

# Request

{{% ipc/request header="0x00180182" %}}
{{% ipc/param %}}shared memory size{{% / %}}
{{% ipc/param %}}receive buffer size{{% / %}}
{{% ipc/param %}}receive buffer package count{{% / %}}
{{% ipc/param %}}send buffer size{{% / %}}
{{% ipc/param %}}send buffer package count{{% / %}}
{{% ipc/param %}}[bitrate value](IRU:SetBitRate "wikilink"){{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/param %}}shared memory handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00180040" %}}
{{% ipc/result %}}
{{% / %}}

# Shared Memory

IR service uses the [shared memory](IRUSER_Shared_Memory "wikilink") in shared mode (i.e. put more information in the shared memory). The shared memory size must be at least receive_buffer_size+send_buffer_size+0x30
