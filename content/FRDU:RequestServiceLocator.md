+++
title = 'FRDU:RequestServiceLocator'
+++

# Request

{{% ipc/request header="0x002A0204" %}}
{{% ipc/param %}}NEX Server ID{{% / %}}
{{% ipc/param span=3 %}}UTF-16 `keyhash` value for NASC requests, see [Online Play](Online_Play "wikilink"){{% / %}}
{{% ipc/param span=2 %}}UTF-16 `svc` value for NASC requests, see [Online Play](Online_Play "wikilink"){{% / %}}
{{% ipc/param %}}u8, Major SDK version{{% / %}}
{{% ipc/param %}}u8, Minor SDK version{{% / %}}
{{% ipc/processid %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/param %}}Completion handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x002A0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Requests service locator data for game servers.

To request service locator data, the friends module sends a NASC `SVCLOC`-type HTTP request using the given information (see [Online Play](Online_Play "wikilink") for more details).

Once the completion handle has been signaled, the client can use [FRDU:GetServiceLocatorData](FRDU:GetServiceLocatorData "wikilink") to retrieve the data received from the server.
