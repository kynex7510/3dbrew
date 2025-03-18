+++
title = 'ACTA:InquireBindingToExistentServerAccount'
+++

# Request

{{% ipc/request header="0x041702c4" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param span=5 %}}ASCII NULL-terminated AccountId (max. 16 characters + NULL termination){{% / %}}
{{% ipc/param span=5 %}}ASCII NULL-terminated account password (maximum 17 characters + NULL termination){{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% ipc/mapbuffer r %}}Input email address buffer (max. 256 characters + NULL termination){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04170042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}Input email address buffer{{% / %}}
{{% / %}}

# Description

Requests information about the device linked to the account specified by the given credentials.
