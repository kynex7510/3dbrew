+++
title = 'FRDU:GetMyPlayingGame'
+++

# Request

| Index Word | Description                |
|------------|----------------------------|
| 0          | Header code \[0x000C0000\] |

# Response

| Index Word | Description                                                                    |
|------------|--------------------------------------------------------------------------------|
| 0          | Header code                                                                    |
| 1          | Result code                                                                    |
| 2-5        | [GameKey](Friend_Services#gamekey "wikilink") of the current game being played |
