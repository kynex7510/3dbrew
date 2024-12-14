+++
title = 'NFCDEV:ReadRawPages'
+++

# Request

{{% ipc/request header="0x00110100" %}}
{{% ipc/param %}}u32, Unknown. inr1 for send_nfctag_cmd().{{% / %}}
{{% ipc/param %}}u32 outputsize{{% / %}}
{{% ipc/param %}}u8 pageaddr{{% / %}}
{{% ipc/param %}}u8 totalpages{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% ipc/staticbuffer id=0 %}}Output data pointer with static_buf_id=0{{% / %}}
{{% / %}}

# Description

This reads raw NFC tag pages by calling send_nfctag_cmd() with cmd 0x3A("FAST_READ"). The output-data is stored on stack, which is copied to the specified output-buffer afterwards using the actual_output_size. An error is returned if actual_output_size is larger than outputsize.

outputsize 0x800 is used when it's \>=0x800.
