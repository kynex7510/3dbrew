+++
title = 'ACTU:AcquireIndependentServiceTokenV2'
+++

# Request

{{% ipc/request header="0x00200382" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param span=9 %}}ASCII NULL-terminated client ID (max. 32 characters + NULL terminator){{% / %}}
{{% ipc/param %}}Cache duration in seconds{{% / %}}
{{% ipc/param %}}bool, do parental controls check (unused){{% / %}}
{{% ipc/param %}}bool, mark this token as non-process specific{{% / %}}
{{% ipc/param %}}u32, current (caller) title process ID{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00200040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Requests a V2 independent service token using the given client ID.

Other than using the V2 API instead of the V1 API (i.e. `/api/v2` instead of `/api/v1`), this command is identical to [ACTU:AcquireIndependentServiceToken](ACTU:AcquireIndependentServiceToken "wikilink").

The validity duration specifies for how long the requested token will be cached locally. If a token with the same configuration was found in the cache, and this token was acquired within the past `Cache duration` seconds, this command will use the cached token instead of requesting a new one. It follows that specifying 0 as the cache duration will force the ACT module to always request a new token.

Setting `mark this token as non-process specific` to `true` causes the requested token to be accessible from any process. Otherwise, the requested token will only be accessible to the process that created it (via the process ID).

See [Independent Service Tokens](ACT_Services#independent_service_tokens "wikilink") for details.
