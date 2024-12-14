+++
title = 'NFC:SendTagCommand'
+++

# Request

{{% ipc/request header="0x00200102" %}}
{{% ipc/param %}}u32 inputsize{{% / %}}
{{% ipc/param %}}u32 outputsize{{% / %}}
{{% ipc/param span=2 %}}u64 microseconds value, timing related. The u32 value passed to the internal send-cmd func is basically: "in64 / 1000000". Other Amiibo-tag code calling that func use raw u32 value 200.{{% / %}}
{{% ipc/staticbuffer id=0 %}}Input buffer address with static_buf_id=0{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% ipc/param %}}u32 actual_output_size{{% / %}}
{{% ipc/staticbuffer id=0 %}}Output data pointer with static_buf_id=0{{% / %}}
{{% / %}}

# Description

This sends a raw NFC command to the tag. The inbuf/outbuf is the raw data to send/receive to/from the tag. With Amiibo tags the first byte in the inbuf is the command, followed by any parameters for the command if required.

outputsize value 0x800 will be used when it's \>=0x800. An error will be returned if actual_output_size is larger than outputsize. This can only be used when [initialized](NFC:Initialize "wikilink") with type3, and when the [TagState](NFC:GetTagState "wikilink") is 3.
