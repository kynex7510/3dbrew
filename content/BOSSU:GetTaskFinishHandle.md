+++
title = 'BOSSU:GetTaskFinishHandle'
+++

# Request

{{% ipc/request header="0x001F0000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x001F0042" %}}
{{% ipc/result %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}KEvent event{{% / %}}
{{% / %}}

# Description

Returns an event handle for the current session which is signaled when the task currently loaded in the session finishes.
