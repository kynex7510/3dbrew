+++
title = 'ACTA:ReplaceAccountId'
+++

# Request

{{% ipc/request header="0x040A0040" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x040A0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Replaces the value of AccountId field with the value in the AssignedAccountId field in the account data (see [DataBlocks 0x8 and 0x15](ACT_Services#datablocks "wikilink"). The account slot must be 0xFE. Therefore, this command will only perform the replacement for the currently loaded account.
