+++
title = 'ACTA:UnbindServerAccount'
+++

# Request

{{% ipc/request header="0x04040080" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param %}}bool, clear completely{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04040040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Clears the account data (but does not delete the data) for the given account slot. If `clear completely` is set to `true`, the AssignedAccountId and AssignedPrincipalId field is cleared as well.
