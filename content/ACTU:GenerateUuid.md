+++
title = 'ACTU:GenerateUuid'
+++

# Request

{{% ipc/request header="0x000D0040" %}}
{{% ipc/param %}}Unique ID (see description){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x000D0140" %}}
{{% ipc/result %}}
{{% ipc/param span=4 %}}UUID{{% / %}}
{{% / %}}

# Description

Generates a UUID. See [UUIDs](ACT_Services#uuids "wikilink").

The following methods of UUID generation can be used with this command.

| Value of "Unique ID" parameter | Description                                                                                                                                                                                                             |
|--------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| -1 (0xFFFFFFFF)                | Generates a [regular UUID](ACT_Services#regular_uuids "wikilink").                                                                                                                                                      |
| -2 (0xFFFFFFFE)                | Returns a [title-specific UUID](ACT_Services#title-specific-uuids "wikilink") using the unique ID for the current (caller) process, based on a freshly generated [regular UUID](ACT_Services#regular_uuids "wikilink"). |
| (all other values)             | Returns a [title-specific UUID](ACT_Services#title-specific-uuids "wikilink") using the given unique ID value, based on a freshly generated [regular UUID](ACT_Services#regular_uuids "wikilink").                      |
