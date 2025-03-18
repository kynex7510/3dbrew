+++
title = 'ACTA:CommitConsoleAccount'
+++

# Request

{{% ipc/request header="0x04030040" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04030040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Sets the IsCommitted field to true in the internal data for the specified account.
