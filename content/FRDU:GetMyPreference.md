+++
title = 'FRDU:GetMyPreference'
+++

# Request

{{% ipc/request header="0x00060000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x00060100" %}}
{{% ipc/result %}}
{{% ipc/param %}}bool IsPublicMode, whether or not the online status is shown{{% / %}}
{{% ipc/param %}}bool IsShowGameMode, whether or not the currently played game is shown{{% / %}}
{{% ipc/param %}}bool IsShowPlayedMode, whether or not the play history is shown{{% / %}}
{{% / %}}

# Description

Returns the current friend notification settings, as configurable in the friends list.
