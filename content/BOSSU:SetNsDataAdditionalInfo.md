+++
title = 'BOSSU:SetNsDataAdditionalInfo'
+++

# Request

{{% ipc/request header="0x00290080" %}}
{{% ipc/param %}}u32, NS Data ID{{% / %}}
{{% ipc/param %}}u32, Additional info{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00290040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Writes additional info into the header of the given NS Data ID of the program ID of the current session.
