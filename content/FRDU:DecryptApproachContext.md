+++
title = 'FRDU:DecryptApproachContext'
+++

# Request

{{% ipc/request header="0x00350082" %}}
{{% ipc/param %}}bool, mask non-ASCII characters{{% / %}}
{{% ipc/param %}}u8, The caller's Mii [Mii character set](Mii#mii_format "wikilink"){{% / %}}
{{% ipc/staticbuffer id=3 %}}Input [encrypted ApproachContext payload](Friend_Services#encrypted_approachcontext_payload "wikilink") buffer{{% / %}}
{{% / %}}

# Request Static Buffers

# Response

{{% ipc/request header="0x00350042" %}}
{{% ipc/result %}}
{{% ipc/staticbuffer id=0 %}}Output [decrypted ApproachContext payload](Friend_Services#decrypted_approachcontext_payload "wikilink") buffer{{% / %}}
{{% / %}}

# Description

Completely decrypts the given [encrypted ApproachContext payload](Friend_Services#encrypted_approachcontext_payload "wikilink") into a decrypted (and slightly different) form. See [FRDU:GetMyApproachContext](FRDU:GetMyApproachContext#description "wikilink") for details about the encryption.
