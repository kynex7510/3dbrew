+++
title = 'ACTA:SendCoppaCodeMail'
+++

# Request

{{% ipc/request header="0x04290082" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param %}}u32, PrincipalId{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04290040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Requests a COPPA code for the account. The account slot must be 0xFE. Therefore, this command can only be used with the currently loaded account.
