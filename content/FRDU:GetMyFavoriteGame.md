+++
title = 'FRDU:GetMyFavoriteGame'
+++

# Request

| Index Word | Description                |
|------------|----------------------------|
| 0          | Header code \[0x000D0000\] |

# Response

| Index Word | Description                                                        |
|------------|--------------------------------------------------------------------|
| 0          | Header code                                                        |
| 1          | Result code                                                        |
| 2-5        | [GameKey](Friend_Services#gamekey "wikilink") of the favorite game |

# Description

Returns the game key for the favorite game set in the friends list.
