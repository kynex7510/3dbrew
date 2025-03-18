+++
title = 'ACTU:GetErrorCode'
+++

# Request

{{% ipc/request header="0x00020040" %}}
{{% ipc/param %}}Input Result code{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00020080" %}}
{{% ipc/result %}}
{{% ipc/param %}}Support Error Code{{% / %}}
{{% / %}}

# Description

Returns a support error code (022-XXXX) for the given Result code.

The returned value is an integer 22XXXX.
