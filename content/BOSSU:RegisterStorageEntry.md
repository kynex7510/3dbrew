+++
title = 'BOSSU:RegisterStorageEntry'
+++

# Request

{{% ipc/request header="0x002F0140" %}}
{{% ipc/param span=2 %}}u64 Extdata ID{{% / %}}
{{% ipc/param %}}u32, Storage size{{% / %}}
{{% ipc/param %}}u16, Entry ID?{{% / %}}
{{% ipc/param %}}u8, [MediaType](Filesystem_services#mediatype "wikilink") (only NAND or SD){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x002F0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Registers a storage entry for the program ID of the current session, reserving storage for up to the given size. This is immediately written into the BOSS NAND savedata.
