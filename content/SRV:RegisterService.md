+++
title = 'SRV:RegisterService'
+++

# Request

{{% ipc/request header="0x00030100" %}}
{{% ipc/param span=2 %}}8-byte UTF-8 service name{{% / %}}
{{% ipc/param %}}Name length{{% / %}}
{{% ipc/param %}}Maximum sessions{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00030042" %}}
{{% ipc/result %}}
{{% ipc/movehandle count=1 %}}
{{% ipc/handleentry %}}`Handle<`[`KServerPort`](KServerPort "wikilink")`>` which will receive incoming connections to the service.{{% / %}}
{{% / %}}

This function registers a new service which can be accessed using [SRV:GetServiceHandle](SRV:GetServiceHandle "wikilink"). The service manager will create a new client-server port pair, registering the [client endpoint](KPort "wikilink") under the given name, and returning the [server endpoint](KServerPort "wikilink") for the service to listen on for incoming connections.
