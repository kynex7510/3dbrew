+++
title = 'ACTA:SetPersistentIdHead'
+++

# Request

{{% ipc/request header="0x04100040" %}}
{{% ipc/param %}}u32, PersistentIdHead{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04100040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Sets the internal value used as a base for getting new PersistentIds.

This command will only execute in debug mode (when [Configuration Block](Config_Savegame#configuration_blocks "wikilink") 0x00130000 is set to 0x100).
