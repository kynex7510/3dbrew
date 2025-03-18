+++
title = 'ACTA:SetTransferableIdCounter'
+++

# Request

{{% ipc/request header="0x04110040" %}}
{{% ipc/param %}}u16, TransferableIdCounter{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04110040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Sets the internal value used as a base for getting new TransferableIds.

This command will only execute in debug mode (when [Configuration Block](Config_Savegame#configuration_blocks "wikilink") 0x00130000 is set to 0x100).
