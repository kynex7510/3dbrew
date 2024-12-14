+++
title = 'BOSSP:InitializeSessionPrivileged'
+++

# Request

{{% ipc/request header="0x04010082" %}}
{{% ipc/param span=2 %}}programID, normally zero for using the programID determined from the below input PID. {{% / %}}
{{% ipc/param %}}0x20, ARM11-kernel processID translate-header.{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}

# Description

Same as BOSSP [InitializeSession](BOSSU:InitializeSession "wikilink") except this calls an additional function when the programID is set.
