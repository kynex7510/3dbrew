+++
title = 'ACTA:InactivateDeviceAssociation'
+++

# Request

{{% ipc/param %}}0x0422\|1\|2{{% / %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04220040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Inactivates the device association for the account. The account slot must be 0xFE. Therefore, this command can only be used with the currently loaded account.
