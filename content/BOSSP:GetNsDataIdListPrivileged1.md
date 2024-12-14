+++
title = 'BOSSP:GetNsDataIdListPrivileged1'
+++

# Request

{{% ipc/request header="0x040E0182" %}}
{{% ipc/param span=2 %}}programID{{% / %}}
{{% ipc/param span=7 %}}Identical to [BOSSU:GetNsDataIdList](BOSSU:GetNsDataIdList "wikilink").{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% ipc/param span=2 %}}Identical to [BOSSU:GetNsDataIdList](BOSSU:GetNsDataIdList "wikilink").{{% / %}}
{{% / %}}

# Description

Identical to [BOSSP:GetNsDataIdListPrivileged](BOSSP:GetNsDataIdListPrivileged "wikilink"), except the called function mentioned [here](BOSSU:GetNsDataIdList "wikilink") is used with the following type parameters: 1, 2, 1.

Hence, this is almost exactly the same as [BOSS:GetNsDataIdList2](BOSS:GetNsDataIdList2 "wikilink") except that it uses the input programID(same type params for the ones that are used).
