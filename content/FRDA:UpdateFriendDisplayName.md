+++
title = 'FRDA:UpdateFriendDisplayName'
+++

# Request

{{% ipc/request header="0x040802c0" %}}
{{% ipc/param span=4 %}}[FriendKey](Friend_Services#friendkey "wikilink"){{% / %}}
{{% ipc/param span=6 %}}10-Character UTF-16 Display Name (10 characters + null termination){{% / %}}
{{% ipc/param %}}u8, [Character set](Mii#mii_format "wikilink") of this friend's console{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04080040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Updates the display name for the friend specified by the given friend key.
