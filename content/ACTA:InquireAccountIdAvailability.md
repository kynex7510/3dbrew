+++
title = 'ACTA:InquireAccountIdAvailability'
+++

# Request

{{% ipc/request header="0x04140182" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param span=5 %}}ASCII NULL-terminated AccountId to check for (max. 16 characters + NULL termination){{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04140040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Checks whether or not the given AccountId (Nintendo Network ID username) is available.
