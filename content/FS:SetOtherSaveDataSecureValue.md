+++
title = 'FS:SetOtherSaveDataSecureValue'
+++

# Request

{{% ipc/request header="0x086B00c2" %}}
{{% ipc/param %}}u8, [Media Type](Filesystem_services#mediatype "wikilink"){{% / %}}
{{% ipc/param %}}u32, Unique ID{{% / %}}
{{% ipc/param %}}u32, Entry count{{% / %}}
{{% ipc/mapbuffer r %}}Input [SecureValueEntry](Filesystem_services#securevalueentry "wikilink") buffer pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x086B0042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}Input [SecureValueEntry](Filesystem_services#securevalueentry "wikilink") buffer pointer{{% / %}}
{{% / %}}

# Description

Updates or removes the secure value(s) of another title.
