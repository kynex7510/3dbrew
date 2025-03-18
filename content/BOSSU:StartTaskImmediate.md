+++
title = 'BOSSU:StartTaskImmediate'
+++

# Request

{{% ipc/request header="0x001D0042" %}}
{{% ipc/param %}}Task ID size, including NULL terminator{{% / %}}
{{% ipc/mapbuffer r %}}Task ID buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x001D0042" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Starts the given immediate task on the program ID of the current session. Immediate tasks are those that are configured to run immediately and only once (the count and interval are set to 1).
