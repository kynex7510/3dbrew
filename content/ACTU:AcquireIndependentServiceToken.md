+++
title = 'ACTU:AcquireIndependentServiceToken'
+++

# Request

{{% ipc/request header="0x00140382" %}}
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

{{% ipc/request header="0x00140040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Requests an independent service token using the given client ID.

The validity duration specifies for how long the requested token will be cached locally. If a token with the same configuration was found in the cache, and this token was acquired within the past `Cache duration` seconds, this command will use the cached token instead of requesting a new one. It follows that specifying 0 as the cache duration will force the ACT module to always request a new token.

Setting `mark this token as non-process specific` to `true` causes the requested token to be accessible from any process. Otherwise, the requested token will only be accessible to the process that created it (via the process ID).
