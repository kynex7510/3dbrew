+++
title = 'FRDU:GetMyApproachContext'
+++

# Request

{{% ipc/request header="0x00330000" %}}
{{% / %}}

# Request Static Buffers

# Response

{{% ipc/request header="0x00330042" %}}
{{% ipc/result %}}
{{% ipc/staticbuffer id=0 %}}Output [encrypted ApproachContext payload](Friend_Services#encrypted_approachcontext_payload "wikilink") buffer{{% / %}}
{{% / %}}

# Description

Creates an encrypted payload containing information that can be used to add this console as a friend locally. (See [Approach Contexts](Friend_Services#approach_contexts "wikilink") for details)

First, the 0x1E0-sized [ApproachContext](Friend_Services#approachcontext "wikilink") structure is created and user's personal Mii is encrypted using <APT:Wrap>. If the user doesn't have a personal Mii yet, the 0x70-sized field in the approach context is set to all zeros.

The populated structure is then encrypted with AES-CCM using [PS:EncryptSignDecryptVerifyAesCcm](PS:EncryptSignDecryptVerifyAesCcm "wikilink") and keytype 8 ([Keyslot 0x36](AES_Registers#keyslots "wikilink")), the nonce being the concatenated little-endian Principal ID and Friend Code of the console (total nonce size 12). The nonce is returned in plaintext at offset 0x4-0x10. Note that the ApproachContext is located at 0x10 and that is where the actually encrypted section begins. In other words, the AES-CCM encrypted section is located at offset 0x10 thru 0x1F0.
