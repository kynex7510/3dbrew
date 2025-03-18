+++
title = 'ACTA:SwapAccounts'
+++

# Request

{{% ipc/request header="0x04010080" %}}
{{% ipc/param %}}u8, Account slot 1{{% / %}}
{{% ipc/param %}}u8, Account slot 2{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04010040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Swaps the account data for the two given accounts. In other words, account slot 2 becomes account slot 1, and account slot 1 becomes account slot 2.
