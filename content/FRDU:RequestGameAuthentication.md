+++
title = 'FRDU:RequestGameAuthentication'
+++

# Request

{{% ipc/request header="0x00280244" %}}
{{% ipc/param %}}NEX Server ID{{% / %}}
{{% ipc/param span=6 %}}UTF-16 `ingamesn` value for NASC requests, see [Online Play](Online_Play "wikilink"){{% / %}}
{{% ipc/param %}}u8, Major SDK version{{% / %}}
{{% ipc/param %}}u8, Minor SDK version{{% / %}}
{{% ipc/processid %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/param %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00280040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Requests NEX authentication data for game servers.

To request authentication data, the friends module sends a NASC `LOGIN`-type HTTP request using the given information (see [Online Play](Online_Play "wikilink") for more details).

Once the completion handle has been signaled, the client can use [FRDU:GetGameAuthenticationData](FRDU:GetGameAuthenticationData "wikilink") to retrieve the data received from the server.
