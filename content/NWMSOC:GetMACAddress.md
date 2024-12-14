+++
title = 'NWMSOC:GetMACAddress'
+++

# Request

{{% ipc/request header="0x00080040" %}}
{{% ipc/param %}}s32 size{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% ipc/staticbuffer id=0 %}}Output data pointer{{% / %}}
{{% / %}}

# Description

Uses size=6 internally unless the input is \<=6. Uses an ipc static_buffer(static_buf_id=0) for output with the specified size. The size is not used afterwards except for writing the static_buf translate-hdr to the cmdreply. This just copies 6-bytes from state(system MAC address) to the outbuf and returns 0.
