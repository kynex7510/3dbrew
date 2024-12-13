+++
title = 'FRDU:GetMyFriendKey'
+++

# Request

| Index Word | Description                |
|------------|----------------------------|
| 0          | Header code \[0x00050000\] |

# Response

| Index Word | Description                                                     |
|------------|-----------------------------------------------------------------|
| 0          | Header code                                                     |
| 1          | Result code                                                     |
| 2-5        | The console's [FriendKey](Friend_Services#friendkey "wikilink") |

# Description

Returns the console's friend key.
