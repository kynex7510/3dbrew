+++
title = 'ACTA:ApproveByCreditCard'
+++

# Request

{{% ipc/request header="0x04280044" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% ipc/staticbuffer id=0 %}}[CreditCardInfo](ACTA:ApproveByCreditCard#creditcardinfo "wikilink"){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04290040" %}}
{{% ipc/result %}}
{{% / %}}

# CreditCardInfo

| Offset | Size        | Description                                    |
|--------|-------------|------------------------------------------------|
| 0x0    | 0x1         | u8, CardType                                   |
| 0x1    | 0x10 + 1    | NULL-terminated 16-character ASCII CardNumber  |
| 0x12   | 0x3 + 1     | NULL-terminated 3-character ASCII SecurityCode |
| 0x16   | 0x1         | u8, ExpirationMonth                            |
| 0x17   | 0x1         | u8, ExpirationYear                             |
| 0x18   | 0x7         | NULL-terminated 6-character ASCII PostalCode   |
| 0x1F   | 0x100 + 0x1 | NULL-terminated 256-character ASCII Email      |

# Description

Requests COPPA parental consent using the given credit card information. The account slot must be 0xFE. Therefore, this command can only be used with the currently loaded account.
