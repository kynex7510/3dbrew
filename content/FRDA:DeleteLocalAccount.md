+++
title = 'FRDA:DeleteLocalAccount'
+++

# Request

{{% ipc/request header="0x04020040" %}}
{{% ipc/param %}}u8, local account ID of account to delete{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04020040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Deletes the account with the specified local account ID.

This command will only run if no local account is loaded. If an account is currently loaded and this command is used, error 0xC960C4F6 is returned.
