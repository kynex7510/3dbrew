+++
title = 'NFCS:SendTagCommand'
+++

# Request

{{% ipc/request header="0x00130102" %}}
{{% ipc/param %}}u32, Unknown. inr1 for send_nfctag_cmd().{{% / %}}
{{% ipc/param %}}u32 inputsize{{% / %}}
{{% ipc/param %}}u32 outputsize{{% / %}}
{{% ipc/param %}}u8 timing value. This is the raw version of the [NFC:SendTagCommand](NFC:SendTagCommand "wikilink") timing field.{{% / %}}
{{% ipc/staticbuffer id=1 %}}Input buffer address with static_buf_id=1{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00130082" %}}
{{% ipc/result %}}
{{% ipc/param %}}u32 actual_output_size{{% / %}}
{{% ipc/staticbuffer id=0 %}}Output data pointer with static_buf_id=0{{% / %}}
{{% / %}}

# Description

This is similar to [NFC:SendTagCommand](NFC:SendTagCommand "wikilink"), except this just calls send_nfctag_cmd() directly without calling a bunch of other code.

outputsize value 0x800 will be used when it's \>=0x800.
