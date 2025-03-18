+++
title = 'ACTU:GetUuid'
+++

# Request

{{% ipc/request header="0x000E0080" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param %}}u32, Unique ID (see description){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x000E0140" %}}
{{% ipc/result %}}
{{% ipc/param span=4 %}}UUID{{% / %}}
{{% / %}}

# Description

Returns the UUID of the specified account. See [UUIDs](ACT_Services#uuids "wikilink").

If the given account slot is 0xFF, the ACT module returns a common [regular UUID](ACT_Services#regular_uuids "wikilink").

Otherwise, the following methods of account UUID retrieval can be used with this command.

| Value of "Unique ID" parameter | Description                                                                                                                                                                                                            |
|--------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| -1 (0xFFFFFFFF)                | Returns a [regular UUID](ACT_Services#regular_uuids "wikilink") for the account.                                                                                                                                       |
| -2 (0xFFFFFFFE)                | Returns a [title-specific UUID](ACT_Services#title-specific-uuids "wikilink") using the unique ID for the current (caller) process, based on the [regular UUID](ACT_Services#regular_uuids "wikilink") of the account. |
| (all other values)             | Returns a [title-specific UUID](ACT_Services#title-specific-uuids "wikilink") using the given unique ID value, based on the [regular UUID](ACT_Services#regular_uuids "wikilink") of the account.                      |
