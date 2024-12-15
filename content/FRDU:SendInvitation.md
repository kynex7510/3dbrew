+++
title = 'FRDU:SendInvitation'
+++

# Request

{{% ipc/request header="0x001F0042" %}}
{{% ipc/param %}}Count{{% / %}}
{{% ipc/staticbuffer id=0 %}}Input [FriendKey](Friend_Services#friendkey "wikilink") buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x001F0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Sends a game invitation to friends using their friend keys.
