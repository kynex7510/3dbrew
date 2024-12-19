+++
title = 'FRDU:DetectNatProperties'
+++

# Request

{{% ipc/request header="0x002C0002" %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x002C0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Starts an internal task to detect the NAT properties of the current internet connection.

Once the completion handle has been signaled, the client can use [FRDU:GetNatProperties](FRDU:GetNatProperties "wikilink") to retrieve the properties.
