+++
title = 'ACTU:AcquireEulaList'
+++

# Request

{{% ipc/request header="0x000B0042" %}}
{{% ipc/param %}}u8, [Country code](Config_Savegame#countryinfo "wikilink"){{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x000B0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Requests a list of EULAs for the given country code.
