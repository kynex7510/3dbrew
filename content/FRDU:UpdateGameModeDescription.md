+++
title = 'FRDU:UpdateGameModeDescription'
+++

# Request

{{% ipc/request header="0x001D0002" %}}
{{% ipc/staticbuffer id=2 %}}Input UTF-16 127-Character Game Mode Description (127 Characters + null termination){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x001D0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

This sets the "currently playing" text description displayed in the friends list (separate from the application title text).
