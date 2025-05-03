+++
title = 'FS:TransferSaveDataCMAC'
+++

# Request

{{% ipc/request header="0x8710140" %}}
{{% ipc/param span=2 %}}u64, Title ID{{% / %}}
{{% ipc/param %}}u8, Source [Media Type](Filesystem_services#mediatype "wikilink"){{% / %}}
{{% ipc/param %}}u8, Destination [Media Type](Filesystem_services#mediatype "wikilink"){{% / %}}
{{% ipc/param %}}bool, clear source CMAC{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x8710040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Used by the Save Data Transfer Tool. Because the savegame CMAC header differs from one mediatype to another, this command is used after transferring the data to recalculate the header, restoring the CMAC's validity on the new media type. If `clear source CMAC` is set to true, the CMAC header of the savegame on the source media is cleared (set to all zeros) as well.
