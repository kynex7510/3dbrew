+++
title = 'FS:DeleteSeed'
+++

# Request

| Index Word | Description                |
|------------|----------------------------|
| 0          | Header code \[0x087C0080\] |
| 1-2        | u64, Title ID              |

# Response

| Index Word | Description |
|------------|-------------|
| 0          | Header code |
| 1          | Result code |

# Description

Deletes the seed from the seed DB for the specified title. If the seed
does not exist, it returns 0xC8804464
