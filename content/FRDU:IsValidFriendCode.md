+++
title = 'FRDU:IsValidFriendCode'
+++

# Request

{{% ipc/request header="0x00260080" %}}
{{% ipc/param span=2 %}}u64, Friend Code{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00260080" %}}
{{% ipc/result %}}
{{% ipc/param %}}bool, IsValidFriendCode{{% / %}}
{{% / %}}

# Description

Returns whether or not the given friend code is valid. The following logic is used (everything is in little-endian byte order):

<code>
is_valid = friend_code != 0 &&

(u32)(friend_code \>\> 32) \<= 127 &&

[FRDU:PrincipalIdToFriendCode](FRDU:PrincipalIdToFriendCode "wikilink")((u32)(friend_code & 0xFFFFFFFF)) == friend_code
</code>
