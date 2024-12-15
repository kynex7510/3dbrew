+++
title = 'FRDU:GetMyProfile'
+++

# Request

{{% ipc/request header="0x00070000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x000700c0" %}}
{{% ipc/result %}}
{{% ipc/param span=2 %}}[Profile](FRDU:GetMyProfile#profile_structure "wikilink") structure{{% / %}}
{{% / %}}

# Profile Structure

| Type    | Name                              |
|---------|-----------------------------------|
| u8      | Region                            |
| u8      | Country                           |
| u8      | Area                              |
| u8      | Language                          |
| u8      | Platform, always 2 (PLATFORM_CTR) |
| u8\[3\] | padding                           |
