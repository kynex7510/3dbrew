+++
title = 'NFCP:SendTagCommand'
+++

# Request

{{% ipc/request header="0x000500C2" %}}
{{% ipc/param %}}u32 inputsize{{% / %}}
{{% ipc/param %}}u32 outputsize{{% / %}}
{{% ipc/param %}}u32 timing value. This is the raw version of the [NFC:SendTagCommand](NFC:SendTagCommand "wikilink") timing field.{{% / %}}
{{% ipc/staticbuffer id=0 %}}Input buffer address with static_buf_id=0{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% ipc/param %}}u32 actual_output_size{{% / %}}
{{% ipc/staticbuffer id=0 %}}Output data pointer with static_buf_id=0{{% / %}}
{{% / %}}

# Description

This is about the same as [NFCS:SendTagCommand](NFCS:SendTagCommand "wikilink"), except that this verifies that the input/output buffer ptrs are not NULL. This also clears the output buffer before calling the cmd-sending func. A state field(probably TagState?) must match 3.

outputsize value 0x800 will be used when it's \>=0x800.
