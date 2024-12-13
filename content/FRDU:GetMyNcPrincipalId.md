+++
title = 'FRDU:GetMyNcPrincipalId'
+++

# Request

| Index Word | Description                |
|------------|----------------------------|
| 0          | Header code \[0x000D0000\] |
|            |                            |

# Response

| Index Word | Description                |
|------------|----------------------------|
| 0          | Header code \[0x000D0080\] |
| 1          | Result code                |
| 2          | NcPrincipalId              |
|            |                            |

# Description

Returns the NcPrincipalId stored in the friends sysmodule's save data.
