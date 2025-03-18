+++
title = 'BOSSU:SetStorageInfo'
+++

# Request

{{% ipc/request header="0x00020100" %}}
{{% ipc/param span=2 %}}u64 Extdata ID{{% / %}}
{{% ipc/param %}}u32, Storage size{{% / %}}
{{% ipc/param %}}u8, [MediaType](Filesystem_services#mediatype "wikilink") (only NAND or SD){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00020040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

This sets the extdata storage info for the program ID of the current session, reserving storage for up to the given size. This is immediately written into the BOSS NAND savedata.
