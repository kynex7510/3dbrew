+++
title = 'BOSSP:GetAppNewFlag'
+++

# Request

{{% ipc/request header="0x04040080" %}}
{{% ipc/param span=2 %}}u64 programID{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% ipc/param %}}u8 flag: 0 = nothing new, 1 = new content.{{% / %}}
{{% / %}}

# Description

This returns whether any new SpotPass content is available for the specified programID.
