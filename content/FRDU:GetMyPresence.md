+++
title = 'FRDU:GetMyPresence'
+++

# Request

{{% ipc/request header="0x00080000" %}}
{{% / %}}

# Request Static Buffers

# Response

{{% ipc/request header="0x00080042" %}}
{{% ipc/result %}}
{{% ipc/staticbuffer id=0 %}}Pointer to [Presence](Friend_Services#presence "wikilink") structure{{% / %}}
{{% / %}}

# Description

Returns the console's friend presence.
