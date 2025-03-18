+++
title = 'ACTA:SetDefaultAccount'
+++

# Request

{{% ipc/request header="0x04090040" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04090040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Sets the default account to the account in the specified slot. Using account slot 0xFE will set the currently loaded account as the default account.
