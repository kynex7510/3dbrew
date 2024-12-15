+++
title = 'FRDU:PrincipalIdToFriendCode'
+++

# Request

{{% ipc/request header="0x00240040" %}}
{{% ipc/param %}}Principal ID{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x002400c0" %}}
{{% ipc/result %}}
{{% ipc/param span=2 %}}u64, Friend code{{% / %}}
{{% / %}}

# Description

Converts the given Principal ID to a Friend Code. The following algorithm is used (note: everything is in little endian):

<code>
principal_id_buf = principal_id as LE bytes

friend_code = ((sha1(principal_id_buf)\[0\] \>\> 1) \<\< 32) \| principal_id
</code>
