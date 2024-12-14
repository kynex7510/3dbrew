+++
title = 'BOSS:SetStorageInfo'
+++

# Request

{{% ipc/request header="0x00020100" %}}
{{% ipc/param span=2 %}}u64 extdataID{{% / %}}
{{% ipc/param %}}u32 boss_size{{% / %}}
{{% ipc/param %}}u8 extdata_type: 0 = shared(NAND), 1 = regular(SD).{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}

# Description

This sets the extdata storage info for the current programID, for SpotPass content. This is immediately written into the BOSS NAND savedata.
