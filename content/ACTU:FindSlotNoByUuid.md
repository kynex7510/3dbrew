+++
title = 'ACTU:FindSlotNoByUuid'
+++

# Request

{{% ipc/request header="0x000F0140" %}}
{{% ERROR_UNKNOWN_IPC_DESCRIPTOR_OMITTED %}}
{{% ipc/param span=4 %}}Input [UUID](ACT_Services#uuids "wikilink"){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x000F0080" %}}
{{% ipc/result %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% / %}}

# Description

Attempts looking up the account slot number for the given account [UUID](ACT_Services#uuids "wikilink").

The following methods of lookup are possible using this command:

| Value of "Unique ID" parameter | Description                                                                                                                                                                                                    |
|--------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| -1 (0xFFFFFFFF)                | Returns the account slot for the account whose UUID matches the input UUID exactly.                                                                                                                            |
| -2 (0xFFFFFFFE)                | Returns the account slot for the account whose UUID matches a [title-specific UUID](ACT_Services#title-specific-uuids "wikilink") based on the input UUID using the unique ID of the current (caller) process. |
| (all other values)             | Returns the account slot for the account whose UUID matches a [title-specific UUID](ACT_Services#title-specific-uuids "wikilink") based on the input UUID using the given unique ID value.                     |
