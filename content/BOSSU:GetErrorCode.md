+++
title = 'BOSSU:GetErrorCode'
+++

# Request

{{% ipc/request header="0x002E0040" %}}
{{% ipc/param %}}u8, TaskResultCode{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x002E0080" %}}
{{% ipc/result %}}
{{% ipc/param %}}u32, Error code{{% / %}}
{{% / %}}

# Description

Converts the given task result code into an error code (004-XXXX). The returned value is an integer 004XXXX.

The error code is looked up in a table. When the input value is 0x71, the output is 46001+5 (004-6006). Otherwise when no match is found in the table and it's not 0x71, the error code is 004-6001.

This always returns result code 0.
