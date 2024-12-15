+++
title = 'FRDU:GetMyPassword'
+++

# Request

{{% ipc/request header="0x00100040" %}}
{{% ipc/param %}}bufsize (maximum 0x800){{% / %}}
{{% / %}}

# Request Static Buffers

# Response

{{% ipc/request header="0x00100042" %}}
{{% ipc/result %}}
{{% ipc/staticbuffer id=0 %}}Output buffer{{% / %}}
{{% / %}}

# Description

Returns the NEX password used for signing into the friend server from the friends sysmodule's save data.
