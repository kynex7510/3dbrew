+++
title = 'ACTU:AcquireEulaLanguageList'
+++

# Request

{{% ipc/request header="0x001F0042" %}}
{{% ipc/param %}}u8, [Country code](Config_Savegame#countryinfo "wikilink"){{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x001F0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Requests a list of languages the Nintendo Network EULA is available in for the specified country.
