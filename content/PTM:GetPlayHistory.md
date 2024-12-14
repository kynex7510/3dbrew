+++
title = 'PTM:GetPlayHistory'
+++

# Request

{{% ipc/request header="0x08070082" %}}
{{% ipc/param %}}Entry offset{{% / %}}
{{% ipc/param %}}Total entries{{% / %}}
{{% ipc/mapbuffer w %}}Destination pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% ipc/param %}}u32, unknown.{{% / %}}
{{% / %}}

# Description

Returns the PTM [PlayHistory](PTM_Services "wikilink").
