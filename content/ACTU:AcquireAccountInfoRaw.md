+++
title = 'ACTU:AcquireAccountInfoRaw'
+++

# Request

{{% ipc/request header="0x001A0042" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x001A0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Requests raw (XML) account profile data for the specified account.
