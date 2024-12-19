+++
title = 'FRDU:Login'
+++

# Request

{{% ipc/request header="0x00030002" %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00030040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Performs a login for the friends services.
