+++
title = 'ACTA:UpdateAccountMailAddress'
+++

# Request

{{% ipc/request header="0x04300044" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% ipc/mapbuffer r %}}Input email address buffer (max. 256 characters + NULL termination){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04300042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}Input email address buffer{{% / %}}
{{% / %}}

# Description

Updates the email address of the account. The account slot must be 0xFE. Therefore, this command can only be used with the currently loaded account.
