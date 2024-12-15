+++
title = 'FRDU:GetFriendInfo'
+++

# Request

{{% ipc/request header="0x001A00c4" %}}
{{% ipc/param %}}Count{{% / %}}
{{% ipc/param %}}bool, Mask non-ASCII characters (see description){{% / %}}
{{% ipc/param %}}bool, Profanity Flag{{% / %}}
{{% ipc/staticbuffer id=0 %}}Input [FriendKey](Friend_Services#friendkey "wikilink") buffer{{% / %}}
{{% ipc/mapbuffer w %}}Output [FriendInfo](Friend_Services#friendinfo "wikilink") buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x001A0042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer w %}}Output [FriendInfo](Friend_Services#friendinfo "wikilink") buffer{{% / %}}
{{% / %}}

# Description

Gets [FriendInfo](Friend_Services#friendinfo "wikilink") structures for the input friend keys. If an input friend key was not found in the friends list, an internal default placeholder friend entry will be used to populate the data.

If `Mask non-ASCII characters` is set to `true` and the system character set does not match that of the friend's [Mii](Mii#mii_format "wikilink"), the friends module will replace any non-ASCII character in the screen name of the [FriendInfo](Friend_Services#friendinfo "wikilink") structure with a question mark.

If `Profanity Flag` is set to `true` and is also set in the internal Mii object, the screen name in the [FriendInfo](Friend_Services#friendinfo "wikilink") structure is replaced with question marks: `??????????`.
