+++
title = 'BOSSU:SetNsDataNewFlag'
+++

# Request

{{% ipc/request header="0x002B0080" %}}
{{% ipc/param %}}u32, NS Data ID{{% / %}}
{{% ipc/param %}}bool, New flag{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x002B0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Sets the new flag on the given NS Data ID of the program ID of the current session.
