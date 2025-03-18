+++
title = 'ACTA:ReloadAndBlockSaveData'
+++

# Request

{{% ipc/request header="0x04340003" %}}
{{% ipc/copyhandle count=2 %}}
{{% ipc/handleentry %}}System save unload finished event handle{{% / %}}
{{% ipc/handleentry %}}Remount system save event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04340040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

This command does the following, in order:

1\. Pending HTTP requests are canceled.

2\. Pending system save data changes are saved and committed.

3\. ACT system save data is unmounted (unloaded).

4\. The `System save unload finished event handle` is signaled, notifying the caller process.

5\. ACT then waits on the `Remount system save event handle` to be signaled by the caller process.

6\. ACT system save data is mounted (loaded).

7\. Further changes to the system save data are blocked (though, this can be bypassed by letting the system enter sleep mode, then letting it exit sleep mode)
