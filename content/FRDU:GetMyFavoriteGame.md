+++
title = 'FRDU:GetMyFavoriteGame'
+++

# Request

{{% ipc/request header="0x000D0000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x000D0140" %}}
{{% ipc/result %}}
{{% ipc/param span=4 %}}[GameKey](Friend_Services#gamekey "wikilink"){{% / %}}
{{% / %}}

# Description

Returns the game key of the favorite game set in the friends list.
