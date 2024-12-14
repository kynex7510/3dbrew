+++
title = 'MP:SetAppData'
+++

# Request

{{% ipc/request header="0x00070042" %}}
{{% ipc/param %}}Size{{% / %}}
{{% ipc/staticbuffer id=1 %}}Input appdata pointer. static_buffer_id=1.{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}

# Description

Same as [MP:SetBeaconData](MP:SetBeaconData "wikilink"), except this *only* sets the beacon appdata and size. Size must be \<=0x70. This is the application-specific data in the Nintendo vendor beacon tag.
