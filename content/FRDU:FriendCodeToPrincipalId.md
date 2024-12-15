+++
title = 'FRDU:FriendCodeToPrincipalId'
+++

# Request

{{% ipc/request header="0x00250080" %}}
{{% ipc/param span=2 %}}u64, Friend code{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00250080" %}}
{{% ipc/result %}}
{{% ipc/param %}}Principal ID{{% / %}}
{{% / %}}

# Description

Converts a Friend Code back to a Principal ID. The friend code is verified first using the internal handler for [FRDU:IsValidFriendCode](FRDU:IsValidFriendCode "wikilink") before extracting the Principal ID from it.

Beside the validation part, this is effectively the same as `(u32)(friend_code & 0xFFFFFFFF)`.
