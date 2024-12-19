+++
title = 'FRDN:GetHandleOfNdmStatusChangedEvent'
+++

# Request

{{% ipc/request header="0x00010000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x00010042" %}}
{{% ipc/result %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Daemon state change event handle{{% / %}}
{{% / %}}

# Description

Returns an event handle that will be signaled every time the friends service daemon changes its [daemon status](NDM_Services#daemonstatus "wikilink").

The new [daemon status](NDM_Services#daemonstatus "wikilink") can be retrieved using [FRDN:QueryStatus](FRDN:QueryStatus "wikilink").
