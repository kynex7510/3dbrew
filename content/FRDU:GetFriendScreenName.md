+++
title = 'FRDU:GetFriendScreenName'
+++

# Request

{{% ipc/request header="0x00130142" %}}
{{% ipc/param %}}Output screen names buffer size (maximum 0x800){{% / %}}
{{% ipc/param %}}Output [Mii](Mii#mii_format "wikilink") character sets buffer size (maximum 0x800){{% / %}}
{{% ipc/param %}}Count{{% / %}}
{{% ipc/param %}}bool, Mask non-ASCII characters (see description){{% / %}}
{{% ipc/param %}}bool, ProfanityFlag{{% / %}}
{{% ipc/staticbuffer id=0 %}}Pointer to input [FriendKey](Friend_Services#friendkey "wikilink") structures{{% / %}}
{{% / %}}

# Request Static Buffers

# Response

{{% ipc/request header="0x00130044" %}}
{{% ipc/result %}}
{{% ipc/staticbuffer id=0 %}}Pointer to output UTF-16 screen names{{% / %}}
{{% ipc/staticbuffer id=1 %}}Pointer to output [Mii](Mii#mii_format "wikilink") character sets{{% / %}}
{{% / %}}

# Description

Queries the [Mii](Mii#mii_format "wikilink") screen name for the provided friend keys.

Although optional, this command can also return the character set for the screen name of the Miis.

When `ProfanityFlag` is set, the entire screen name is set to question marks: `??????????`.

When the system character set doesn't match that of the Mii and `Mask non-ASCII characters` is set to true, the friends module will replace every non-ASCII character with a question mark.

If an input friend key is not found in the friends list, an internal default placeholder friend entry is used to populate the data.
