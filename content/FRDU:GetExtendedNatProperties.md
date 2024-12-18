+++
title = 'FRDU:GetExtendedNatProperties'
+++

# Request

{{% ipc/request header="0x00360000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x00360100" %}}
{{% ipc/result %}}
{{% ipc/param %}}[NAT Mapping Type](FRDU:GetNatProperties#nat_mapping_type "wikilink"){{% / %}}
{{% ipc/param %}}[NAT Filtering Type](FRDU:GetNatProperties#nat_filtering_type "wikilink"){{% / %}}
{{% ipc/param %}}NAT Mapping Port Increment{{% / %}}
{{% / %}}

# Description

Same as [FRDU:GetNatProperties](FRDU:GetNatProperties "wikilink"), but this command also returns the NAT Mapping Port Increment.
