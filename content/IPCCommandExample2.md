+++
title = 'IPCCommandExample2'
+++

Adapted from [PS:EncryptDecryptAes](PS:EncryptDecryptAes "wikilink") to illustrate the new IPC command templates.

# Request

{{% ipc/request header="0x00040204" %}}
{{% ipc/param %}}Size in bytes{{% / %}}
{{% ipc/param %}}Destination size in bytes (Unused){{% / %}}
{{% ipc/param %}}IV / CTR{{% / %}}
{{% ipc/param %}}IV / CTR{{% / %}}
{{% ipc/param %}}IV / CTR{{% / %}}
{{% ipc/param %}}IV / CTR{{% / %}}
{{% ipc/param %}}u8 Algorithm [Type](PSPXI:EncryptDecryptAes "wikilink") (0..5){{% / %}}
{{% ipc/param %}}u8 Key [Type](PSPXI:EncryptDecryptAes "wikilink") (0..7){{% / %}}
{{% ipc/mapbuffer r %}}Source pointer{{% / %}}
{{% ipc/mapbuffer w %}}Destination pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00040144" %}}
{{% ipc/result %}}
\|-
\| 2-5
\| See [here](PSPXI:EncryptDecryptAes "wikilink").
{{% / %}}

# Description

This is a wrapper for [PSPXI:EncryptDecryptAes](PSPXI:EncryptDecryptAes "wikilink"). Before using this PSPXI command, PS module will check whether the algorithm type is AES-CCM. PS module will return error-code 0xC90107E8 when the algorithm type is AES-CCM, since [PSPXI:EncryptDecryptAes](PSPXI:EncryptDecryptAes "wikilink") doesn't support AES-CCM. When the algorithm type is AES-CBC, PS module will clear the low 4-bits of the data size.
