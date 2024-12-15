+++
title = 'FRDU:HasLoggedIn'
+++

# Request

{{% ipc/request header="0x00010000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x00010080" %}}
{{% ipc/result %}}
{{% ipc/param %}}bool HasLoggedIn{{% / %}}
{{% / %}}

# Description

Returns whether or not the current session has logged in using [FRDU:Login](FRDU:Login "wikilink").
