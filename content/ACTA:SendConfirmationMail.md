+++
title = 'ACTA:SendConfirmationMail'
+++

# Request

{{% ipc/request header="0x04250042" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04250040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Requests the the email address confirmation mail to be resent for the account. The account slot must be 0xFE. Therefore, this command can only be used with the currently loaded account.
