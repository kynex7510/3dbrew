+++
title = 'ACTA:ValidateMailAddress'
+++

# Request

{{% ipc/request header="0x04230082" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param %}}Confirmation code{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04230040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Validates the email address for the account using the code received via email. The account slot must be 0xFE. Therefore, this command can only be used with the currently loaded account.
