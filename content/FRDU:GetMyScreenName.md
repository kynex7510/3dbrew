+++
title = 'FRDU:GetMyScreenName'
+++

# Request

{{% ipc/request header="0x00090000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x000901c0" %}}
{{% ipc/result %}}
{{% ipc/param span=8 %}}UTF-16 screen name (10 characters + null termination){{% / %}}
{{% / %}}

# Description

Gets the screen name of the personal [Mii](Mii "wikilink").
