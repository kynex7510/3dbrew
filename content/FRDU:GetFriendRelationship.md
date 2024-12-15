+++
title = 'FRDU:GetFriendRelationship'
+++

# Request

{{% ipc/request header="0x00160042" %}}
{{% ipc/param %}}Count{{% / %}}
{{% ipc/staticbuffer id=0 %}}Input [FriendKey](Friend_Services#friendkey "wikilink") buffer{{% / %}}
{{% / %}}

# Request Static Buffers

# Response

{{% ipc/request header="0x00160042" %}}
{{% ipc/result %}}
{{% ipc/staticbuffer id=0 %}}Output [Relationship](Friend_Services#relationship_types "wikilink") buffer{{% / %}}
{{% / %}}

# Description

Gets the relationship between the console and the friends associated with the input friend keys. If an input friend key was not found in the friends list, a default internal placeholder friend entry is used to populate the relationship. The default [relationship](Friend_Services#relationship_types "wikilink") value in this case is 2 (Not Found).
