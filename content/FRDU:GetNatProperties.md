+++
title = 'FRDU:GetNatProperties'
+++

# Request

{{% ipc/request header="0x002D0000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x002D00c0" %}}
{{% ipc/result %}}
{{% ipc/param %}}[NAT Mapping Type](FRDU:GetNatProperties#nat_mapping_type "wikilink"){{% / %}}
{{% ipc/param %}}[NAT Filtering Type](FRDU:GetNatProperties#nat_filtering_type "wikilink"){{% / %}}
{{% / %}}

# NAT Mapping Type

| Value | Description                  |
|-------|------------------------------|
| 0     | Unknown mapping type(?)      |
| 1     | Endpoint-Independent Mapping |
| 2     | Endpoint-Dependent Mapping   |

# NAT Filtering Type

| Value | Description                |
|-------|----------------------------|
| 0     | Unknown filtering type(?)  |
| 1     | Port-Independent Filtering |
| 2     | Port-Dependent Filtering   |

# Description

Retrieves NAT properties of the current internet connection, whether obtained through an internal detection routine run when the friends module automatically logs in to friend services, or when the client calls [FRDU:DetectNatProperties](FRDU:DetectNatProperties "wikilink") manually.
