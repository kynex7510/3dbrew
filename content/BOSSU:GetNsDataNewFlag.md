+++
title = 'BOSSU:GetNsDataNewFlag'
+++

# Request

{{% ipc/request header="0x002C0040" %}}
{{% ipc/param %}}u32, NS Data ID{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x002C0080" %}}
{{% ipc/result %}}
{{% ipc/param %}}bool, New flag{{% / %}}
{{% / %}}

# Description

Gets the new flag from the given NS Data ID of the program ID of the current session.
