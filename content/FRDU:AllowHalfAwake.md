+++
title = 'FRDU:AllowHalfAwake'
+++

# Request

{{% ipc/request header="0x002F0040" %}}
{{% ipc/param %}}bool, allow half-awake{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x002F0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Configures the current client session to allow processing of internal friend-services tasks during sleep mode.
