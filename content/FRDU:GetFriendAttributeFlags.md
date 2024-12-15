+++
title = 'FRDU:GetFriendAttributeFlags'
+++

# Request

{{% ipc/request header="0x00170042" %}}
{{% ipc/param %}}Count{{% / %}}
{{% ipc/staticbuffer id=0 %}}Input [FriendKey](Friend_Services#friendkey "wikilink") buffer{{% / %}}
{{% / %}}

# Request Static Buffers

# Response

{{% ipc/request header="0x00170042" %}}
{{% ipc/result %}}
{{% ipc/staticbuffer id=0 %}}Output [Attribute flags](Friend_Services#attribute_flags "wikilink") buffer{{% / %}}
{{% / %}}

# Description

Gets [Attribute flags](Friend_Services#attribute_flags "wikilink") for the input friend keys. If an input friend key was not found in the friends list, an internal default placeholder friend entry will be used instead. Since the relationship type for the default entry is 2 (Not Found), the attributes for such cases will be 0.
