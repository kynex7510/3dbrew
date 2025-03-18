+++
title = 'ACTA:DeleteConsoleAccount'
+++

# Request

{{% ipc/request header="0x04050040" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04050040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Deletes the account data for the specified account slot. It is not possible to delete the default account using this command, error 0xC8A14D9D is returned when this is attempted.
