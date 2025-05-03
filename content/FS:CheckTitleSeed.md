+++
title = 'FS:CheckTitleSeed'
+++

# Request

{{% ipc/request header="0x88500c0" %}}
{{% ipc/param %}}[Media Type](Filesystem_services#mediatype "wikilink") of title{{% / %}}
{{% ipc/param span=2 %}}u64, Title ID{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x8850040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Validates the installed seed for the given title, comparing the result to [the check value in the NCCH Header](NCCH#ncch_header "wikilink"). If this command succeeds (returns 0), the installed seed is valid.
