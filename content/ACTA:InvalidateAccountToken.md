+++
title = 'ACTA:InvalidateAccountToken'
+++

# Request

{{% ipc/request header="0x041D0080" %}}
{{% ipc/param %}}u32, invalidation action bit field (see description){{% / %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x041D0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Resets the account access token (used for certain requests) for the account. The account slot must be 0xFE. Therefore, this command can only be used to invalidate the account access token for the currently loaded account.

The following invalidation actions are supported using this command:

| Bit | Action                                              |
|-----|-----------------------------------------------------|
| 0   | Clears the access token and resets its expiry date. |
| 1   | Clears the refresh token.                           |
