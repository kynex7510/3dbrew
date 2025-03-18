+++
title = 'ACTU:SetIsApplicationUpdateRequired'
+++

# Request

{{% ipc/request header="0x000A0040" %}}
{{% ipc/param %}}bool, isRequired{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x000A0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Sets the IsApplicationRequired field in the internal account manager. If `true` is passed in, this only works in debug mode (when [Configuration Block](Config_Savegame#configuration_blocks "wikilink") 0x00130000 is set to 0x100).
