+++
title = 'BOSSP:GetNsDataHeaderInfoPrivileged'
+++

# Request

{{% ipc/request header="0x04160142" %}}
{{% ipc/param span=2 %}}u64 programID{{% / %}}
{{% ipc/param %}}NsDataId{{% / %}}
{{% ipc/param %}}u8 type{{% / %}}
{{% ipc/param %}}Size{{% / %}}
{{% ipc/mapbuffer w %}}Destination pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}

# Description

This is similar to [BOSSU:GetNsDataHeaderInfo](BOSSU:GetNsDataHeaderInfo "wikilink").
