+++
title = 'FRDU:ResultToErrorCode'
+++

# Request

{{% ipc/request header="0x00270080" %}}
{{% ipc/result %}}
{{% / %}}

# Response

{{% ipc/request header="0x00270080" %}}
{{% ipc/result %}}
{{% ipc/param %}}Error code{{% / %}}
{{% / %}}

# Description

Returns the error code (in XXX-YYYY format, e.g.: 012-3456 would be 0123456 as a number) for the given result code. If the given result code does not correspond to the friends module, error 0xE0E0C403 is returned.
