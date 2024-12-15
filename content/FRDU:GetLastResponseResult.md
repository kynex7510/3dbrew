+++
title = 'FRDU:GetLastResponseResult'
+++

# Request

{{% ipc/request header="0x00230000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x00230040" %}}
{{% ipc/param %}}s32, Last response result{{% / %}}
{{% / %}}

# Description

Gets the last internal result for the current client session.
