+++
title = 'ACTA:UploadMii'
+++

# Request

{{% ipc/request header="0x04210042" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04210040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Uploads the Mii of the account to the account server. The account slot must be 0xFE. Therefore, this command will only upload the Mii for the currently active account.
