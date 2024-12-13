+++
title = 'CECDS:GenHashConsoleUnique'
+++

# Request

| Index Word | Description                |
|------------|----------------------------|
| 0          | Header code \[0x04150000\] |
|            |                            |

# Response

| Index Word | Description |
|------------|-------------|
| 0          | Header code |
| 1          | Result code |
| 2-3        | 64-bit hash |
|            |             |

# Description

This internally calls
[Cfg:GenHashConsoleUnique](Cfg:GenHashConsoleUnique "wikilink") with a
salt of 0
