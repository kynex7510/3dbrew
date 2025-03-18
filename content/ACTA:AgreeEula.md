+++
title = 'ACTA:AgreeEula'
+++

# Request

{{% ipc/request header="0x041B0142" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param span=2 %}}[EulaInfo](ACT_Services#eulainfo "wikilink"){{% / %}}
{{% ipc/param span=2 %}}s64, agreement timestamp{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x041B0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Submits EULA agreement information to the account server for the specified account.
