+++
title = 'FS:GetThisSaveDataSecureValue'
+++

# Request

{{% ipc/request header="0x86F0040" %}}
{{% ipc/param %}}u32, [Secure Value Slot](Filesystem_services#securevalueslot "wikilink"){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x86F0140" %}}
{{% ipc/result %}}
{{% ipc/param %}}bool, whether or not the secure value was found{{% / %}}
{{% ipc/param %}}bool, whether or not the title is from a gamecart (regardless of whether or not the secure value was found){{% / %}}
{{% ipc/param span=2 %}}u64, Secure value{{% / %}}

{{% / %}}

# Description

Gets the secure value of the title corresponding to the current session.
