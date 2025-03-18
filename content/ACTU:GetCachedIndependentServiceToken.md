+++
title = 'ACTU:GetCachedIndependentServiceToken'
+++

# Request

{{% ipc/request header="0x001C0342" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param span=9 %}}ASCII NULL-terminated client ID (max. 32 characters + NULL terminator){{% / %}}
{{% ipc/param %}}Cache duration in seconds{{% / %}}
{{% ipc/param %}}bool, do parental controls check (unused){{% / %}}
{{% ipc/param %}}bool, get a non-process specific service token from the cache{{% / %}}
{{% ipc/mapbuffer w %}}Output token buffer pointer (0x201 in size){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x001C0042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer w %}}Output token buffer pointer{{% / %}}
{{% / %}}

# Description

Returns a V1 independent service token corresponding to the given account and client ID from the an internal cache.

For a cached token to be considered valid for being returned by this command, it must have been acquired within at least `Cache duration in seconds` seconds.

It is not possible to retrieve cached V2 independent service tokens using this command.
