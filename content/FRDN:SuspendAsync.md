+++
title = 'FRDN:SuspendAsync'
+++

# Request

{{% ipc/request header="0x00030040" %}}
{{% ipc/param %}}bool, Immediately{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00030040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Suspends the friends service daemon.

If `immediately` is set to true, the suspend performed forcefully, otherwise it is performed gracefully.

This function is async in the sense that the caller is notified when the action is completed using the handle retrieved with [FRDN:GetHandleOfNdmStatusChangedEvent](FRDN:GetHandleOfNdmStatusChangedEvent "wikilink").
