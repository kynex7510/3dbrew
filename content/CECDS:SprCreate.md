+++
title = 'CECDS:SprCreate'
+++

# Request

| Index Word | Description                |
|------------|----------------------------|
| 0          | Header code \[0x040A0000\] |

# Response

| Index Word | Description |
|------------|-------------|
| 0          | Header code |
| 1          | Result code |

# Description

This creates the data needed to start an SPR exchange. Sets the [Cec Spr Status](CECD_Services#cecsprstatus "wikilink") to `CEC_SPR_SEND_RECV_START`.
