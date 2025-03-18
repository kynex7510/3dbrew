+++
title = 'ACTA:SendMasterKeyMailForPin'
+++

# Request

{{% ipc/request header="0x04270084" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param %}}u32, master key as integer{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% ipc/mapbuffer r %}}Input parental email address buffer (max. 256 characters + NULL termination){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04270042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}Input parental email address buffer{{% / %}}
{{% / %}}

# Description

Sends the parental controls resetting master key to the given parental email address. The account slot must be 0xFE. Therefore, this command can only be used with the currently loaded account.
