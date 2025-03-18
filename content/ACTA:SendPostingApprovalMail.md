+++
title = 'ACTA:SendPostingApprovalMail'
+++

# Request

{{% ipc/request header="0x04240044" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% ipc/mapbuffer r %}}Input parental email address buffer (max. 256 characters + NULL termination){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04240042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}Input parental email address buffer{{% / %}}
{{% / %}}

# Description

Requests parental approval by sending an email to the specified parental email address (likely COPPA related?)
