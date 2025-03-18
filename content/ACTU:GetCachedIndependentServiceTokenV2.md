+++
title = 'ACTU:GetCachedIndependentServiceTokenV2'
+++

# Request

{{% ipc/request header="0x00220342" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param span=9 %}}ASCII NULL-terminated client ID (max. 32 characters + NULL terminator){{% / %}}
{{% ipc/param %}}Cache duration in seconds{{% / %}}
{{% ipc/param %}}bool, do parental controls check (unused){{% / %}}
{{% ipc/param %}}bool, get a non-process specific service token from the cache{{% / %}}
{{% ipc/mapbuffer w %}}Output [V2 independent service token](ACT_Services#v2_independent_service_token "wikilink") buffer pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00220042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer w %}}Output [V2 independent service token](ACT_Services#v2_independent_service_token "wikilink") buffer pointer{{% / %}}
{{% / %}}

# Description

Returns a V2 independent service token corresponding to the given account and client ID from an internal cache.

For a cached token to be considered valid for being returned by this command, it must have been acquired within at least `Cache duration` seconds.

It is not possible to retrieve cached V1 independent service tokens using this command.

See [Independent Service Tokens](ACT_Services#independent_service_tokens "wikilink") for details.
