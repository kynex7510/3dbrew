+++
title = 'ACTU:AcquireAccountInfo'
+++

# Request

{{% ipc/request header="0x00160082" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param %}}u8, [DataBlock BlkID](ACT_Services#datablocks "wikilink") (see description){{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00160040" %}}
{{% / %}}

# Description

Requests account info for the given account. However, only [DataBlock BlkID](ACT_Services#datablocks "wikilink") 0x9 is supported (Mail address). Thus, this command can only request the mail address for any given account.
