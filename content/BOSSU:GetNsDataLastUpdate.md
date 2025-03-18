+++
title = 'BOSSU:GetNsDataLastUpdate'
+++

# Request

{{% ipc/request header="0x002D0040" %}}
{{% ipc/param %}}u32, NS Data ID{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x002D00c0" %}}
{{% ipc/result %}}
{{% ipc/param span=2 %}}u64, Last update{{% / %}}
{{% / %}}

# Description

Reads the last update field from the header of the given NS Data ID of the program ID of the current session.
