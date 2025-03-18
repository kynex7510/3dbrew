+++
title = 'ACTA:BindToNewServerAccount'
+++

# Request

{{% ipc/request header="0x04150ec4" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param span=5 %}}ASCII NULL-terminated AccountId (max. 16 characters + NULL termination){{% / %}}
{{% ipc/param span=5 %}}ASCII NULL-terminated account password (maximum 17 characters + NULL termination){{% / %}}
{{% ipc/param %}}bool, IsParentEmail{{% / %}}
{{% ipc/param %}}bool, MarketingFlag{{% / %}}
{{% ipc/param span=2 %}}s64, Birthdate Timestamp{{% / %}}
{{% ipc/param %}}u8, Gender (0: F, 1: M){{% / %}}
{{% ipc/param %}}u32, region (from [Region manifest](Title_list#0004009b---shared-data-archives "wikilink")){{% / %}}
{{% ipc/param span=36 %}}[Timezone](ACT_Services#timezone "wikilink"){{% / %}}
{{% ipc/param span=2 %}}[EulaInfo](ACT_Services#eulainfo "wikilink"){{% / %}}
{{% ipc/param span=2 %}}s64, ParentalConsentTimestamp{{% / %}}
{{% ipc/param %}}u32, ParentalConsentId{{% / %}}
{{% ipc/param %}}bool, OffDeviceFlag{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% ipc/mapbuffer r %}}Input email address buffer (max. 256 characters + NULL termination){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04150042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}Input email address buffer (max. 256 characters + NULL termination){{% / %}}
{{% / %}}

# Description

Creates and links a new Nintendo Network ID.
