+++
title = 'FS:SetThisSaveDataSecureValue'
+++

# Request

{{% ipc/request header="0x86E00c0" %}}
{{% ipc/param %}}u32, [Secure Value Slot](Filesystem_services#securevalueslot "wikilink"){{% / %}}
{{% ipc/param span=2 %}}u64, Title ID{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x86E0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Sets the secure value of the title corresponding to the current session.
