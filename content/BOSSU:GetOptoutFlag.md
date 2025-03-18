+++
title = 'BOSSU:GetOptoutFlag'
+++

# Request

{{% ipc/request header="0x000A0000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x000A0080" %}}
{{% ipc/result %}}
{{% ipc/param %}}bool, Flag{{% / %}}
{{% / %}}

# Description

Gets whether the program ID of the current session has opted out of any BOSS communications.
