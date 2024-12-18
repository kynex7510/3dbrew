+++
title = 'FRDA:RemoveFriend'
+++

# Request

{{% ipc/request header="0x04090100" %}}
{{% ipc/param span=4 %}}[FriendKey](Friend_Services#friendkey "wikilink"){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04090040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Removes a friend from the friends list. If the system is connected to the internet, the friend will also be removed server-side.
