+++
title = 'FRDA:UpdateComment'
+++

# Request

{{% ipc/request header="0x040F0240" %}}
{{% ipc/param span=9 %}}16-Character UTF-16 Comment (Personal Message) (16 characters + null termination){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x040F0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Updates the personal status comment (message).
