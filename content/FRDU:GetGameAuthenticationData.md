+++
title = 'FRDU:GetGameAuthenticationData'
+++

# Request

{{% ipc/request header="0x00290000" %}}
{{% / %}}

# Request Static Buffers

# Response

{{% ipc/request header="0x00290042" %}}
{{% ipc/result %}}
{{% ipc/staticbuffer id=0 %}}Pointer to output [GameAuthenticationData](Friend_Services#gameauthenticationdata "wikilink") structure{{% / %}}
{{% / %}}

# Description

Returns game authentication data previously requested using [FRDU:RequestGameAuthentication](FRDU:RequestGameAuthentication "wikilink").
