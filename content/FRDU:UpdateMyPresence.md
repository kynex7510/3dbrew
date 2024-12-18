+++
title = 'FRDU:UpdateMyPresence'
+++

# Request

{{% ipc/request header="0x001E02c2" %}}
{{% ipc/param span=11 %}}[Presence](Friend_Services#presence "wikilink") structure{{% / %}}
{{% ipc/staticbuffer id=1 %}}UTF-16 127-character GameModeDescription (127 characters + null termination){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x001E0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Updates the console's friend presence and game mode description.
