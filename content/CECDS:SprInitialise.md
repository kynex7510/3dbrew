+++
title = 'CECDS:SprInitialise'
+++

# Request

| Index Word | Description                |
|------------|----------------------------|
| 0          | Header code \[0x040B0000\] |

# Response

| Index Word | Description |
|------------|-------------|
| 0          | Header code |
| 1          | Result code |

# Description

This initialises the data needed to start an SPR exchange. Requires the [Cec Spr Status](CECD_Services#cecsprstatus "wikilink") to be `CEC_SPR_SEND_RECV_INIT` and sets it to `CEC_SPR_SEND_READY` upon success.
