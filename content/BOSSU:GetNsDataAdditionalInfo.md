+++
title = 'BOSSU:GetNsDataAdditionalInfo'
+++

# Request

{{% ipc/request header="0x002A0040" %}}
{{% ipc/param %}}u32, NS Data ID{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x002A0080" %}}
{{% ipc/result %}}
{{% ipc/param %}}u32, Additional info{{% / %}}
{{% / %}}

# Description

Gets additional info from the header of the given NS Data ID of the program ID of the current session.
