+++
title = 'ACTA:SendConfirmationMailForPin'
+++

# Request

{{% ipc/request header="0x04260044" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/mapbuffer r %}}Input parental email address buffer (max. 256 characters + NULL termination){{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04260042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}Input parental email address buffer{{% / %}}
{{% / %}}

# Description

Registers the given parental email address to be used in case parentral controls have to be reset due to a forgotten PIN. The account slot must be 0xFE. Therefore, this command can only be used with the currently loaded account.
