+++
title = 'ACTU:SetIsApplicationUpdateRequired'
+++

# Request

{{% ipc/request header="0x000A0000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x000A0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Sets the IsApplicationRequired field to true in the internal account manager. This only works in debug mode (when [Configuration Block](Config_Savegame#configuration_blocks "wikilink") 0x00130000 is set to 0x100).
