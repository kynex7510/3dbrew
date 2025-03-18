+++
title = 'ACTU:AcquireEula'
+++

# Request

{{% ipc/request header="0x001E0082" %}}
{{% ipc/param %}}u8, [Country code](Config_Savegame#countryinfo "wikilink"){{% / %}}
{{% ipc/param %}}3-character ASCII ISO language code (2 characters + NULL termination){{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{#vardefine:ipc_offset}}
{{% ipc/request header="0x001E0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Requests the Nintendo Network EULA corresponding to the given country and language.
