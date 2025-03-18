+++
title = 'ACTA:UnbindServerAccount'
+++

# Request

{{% ipc/request header="0x04040080" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param %}}bool, clear assigned account ID{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04040040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Clears the account data (but does not delete the data) for the given account slot. If `clear assigned account ID` is set to `true`, the AssignedAccountId field is cleared as well.
