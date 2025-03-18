+++
title = 'GSPGPU:SetInternalPriorities'
+++

# Request

| Index Word | Description                             |
|------------|-----------------------------------------|
| 0          | Header code \[0x001E0080\]              |
| 1          | Session thread priority                 |
| 2          | Command queue priority for this session |

# Response

| Index Word | Description |
|------------|-------------|
| 0          | Header code |
| 1          | Result code |

# Description

Sets the priority for the thread handling incoming GSPGPU commands, and the priority for the command queue reader thread when the current session has acquired GPU rights. Both values must be \< 0x40.
