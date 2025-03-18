+++
title = 'ACTA:CompleteTransfer'
+++

# Request

{{% ipc/request header="0x042C0042" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x042C0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Finalizes a Nintendo Network ID account transfer to a target system specified in [ACTA:ReserveTransfer](ACTA:ReserveTransfer "wikilink").
