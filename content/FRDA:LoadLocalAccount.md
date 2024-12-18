+++
title = 'FRDA:LoadLocalAccount'
+++

# Request

{{% ipc/request header="0x04030040" %}}
{{% ipc/param %}}u8, local account ID of account to load{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04030040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Loads the account with the specified local account ID.

This command will only run if no local account is loaded. If an account is currently loaded and this command is used, error 0xC960C4F6 is returned.
