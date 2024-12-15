+++
title = 'FRDU:GetMyPlayingGame'
+++

# Request

{{% ipc/request header="0x000C0000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x000C0140" %}}
{{% ipc/result %}}
{{% ipc/param span=4 %}}[GameKey](Friend_Services#gamekey "wikilink"){{% / %}}
{{% / %}}

# Description

Returns the game key of the current game.
