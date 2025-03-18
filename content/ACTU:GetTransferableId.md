+++
title = 'ACTU:GetTransferableId'
+++

# Request

{{% ipc/request header="0x00110080" %}}
{{% ipc/param %}}u8, salt value(?){{% / %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x001100c0" %}}
{{% ipc/result %}}
{{% ipc/param span=2 %}}TransferableID{{% / %}}
{{% / %}}

# Description

Returns a TransferableID for the given account and salt(?) value. The output value is based on the TransferableIDBase of the specified account (see [DataBlock 0x6](ACT_Services#datablocks "wikilink")). Internally, a complicated XOR and shifting algorithm is used to scramble bits and generate the output value.

The TransferableIDBase used depends on the input [account slot](ACT_Services#account_slots "wikilink"):

| Input [Account slot](ACT_Services#account_slots "wikilink") | Used TransferableIDBase                                      |
|-------------------------------------------------------------|--------------------------------------------------------------|
| -1 (0xFF)                                                   | Uses a common TransferableIDBase.                            |
| -2 (0xFE)                                                   | Uses the TransferableIDBase of the currently loaded account. |
| values 1-8                                                  | Uses the TransferableIDBase of the specified account slot.   |
