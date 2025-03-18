+++
title = 'ACTU:InquireMailAddressAvailability'
+++

# Request

{{% ipc/request header="0x001D0004" %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% ipc/mapbuffer r %}}Input email address buffer pointer (max. 0x101, 256 characters + NULL terminator){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x001D0042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}Input email address buffer pointer{{% / %}}
{{% / %}}

# Description

Requests a check for whether or not the given email address is available for creating a Nintendo Network ID.
