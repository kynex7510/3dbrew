+++
title = 'FS:GetSpecialContentIndex'
+++

# Request

| Index Word | Description                                                               |
|------------|---------------------------------------------------------------------------|
| 0          | Header code \[0x083A0100\]                                                |
| 1          | [Media Type](Filesystem_services#mediatype "wikilink")                    |
| 2-3        | u64, Program ID                                                           |
| 4          | [Special Content Type](Filesystem_services#specialcontenttype "wikilink") |

# Response

| Index Word | Description                |
|------------|----------------------------|
| 0          | Header code                |
| 1          | Result code                |
| 2          | u16, Special Content Index |

# Description

Locates the given content type in the specified title.

When the title is on a gamecart, the returned content index is an [NCSD Partition Index](NCSD "wikilink").

When the title is on the SD Card or the NAND, the returned content index is the [TMD content index](Title_metadata "wikilink") of the content.
