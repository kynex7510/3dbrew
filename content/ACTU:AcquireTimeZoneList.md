+++
title = 'ACTU:AcquireTimeZoneList'
+++

# Request

{{% ipc/request header="0x000C0082" %}}
{{% ipc/param %}}u8, [Country code](Config_Savegame#countryinfo "wikilink"){{% / %}}
{{% ipc/param %}}u8, [Language code](Config_Savegame#languages "wikilink"){{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x000C0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Requests a list of timezones according to the specified country and language.
