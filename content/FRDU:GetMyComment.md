+++
title = 'FRDU:GetMyComment'
+++

# Request

{{% ipc/request header="0x000F0000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x000F0280" %}}
{{% ipc/result %}}
{{% ipc/param span=9 %}}UTF-16 comment (16 characters + null termination) {{% / %}}
{{% / %}}

# Description

Returns the personal comment set in the friends list.
