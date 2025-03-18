+++
title = 'ACTA:UpdateAccountPassword'
+++

# Request

{{% ipc/request header="0x041E0182" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param span=5 %}}ASCII NULL-terminated new account password (maximum 17 characters + NULL termination){{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x041E0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Requests a password change for the account. The account slot must be 0xFE. Therefore, this command can only be used with the currently load account.
