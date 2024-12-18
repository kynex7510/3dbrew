+++
title = 'FRDA:UpdatePreference'
+++

# Request

{{% ipc/request header="0x040B00c0" %}}
{{% ipc/param %}}bool IsPublicMode, whether or not the online status is shown{{% / %}}
{{% ipc/param %}}bool IsShowGameMode, whether or not the currently played game is shown{{% / %}}
{{% ipc/param %}}bool IsShowPlayedMode, whether or not the play history is shown{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x040B0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Updates the friend notification settings.
