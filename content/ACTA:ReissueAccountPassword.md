+++
title = 'ACTA:ReissueAccountPassword'
+++

# Request

{{% ipc/request header="0x041F0042" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x041F0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Requests the issuing of a temporary password (valid for 24 hours) via an email sent to the account's mail address. The account slot must be 0xFE. Therefore, this command can only be used with the currently loaded account.
