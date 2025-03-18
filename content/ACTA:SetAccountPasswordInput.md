+++
title = 'ACTA:SetAccountPasswordInput'
+++

# Request

{{% ipc/request header="0x04200180" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param span=5 %}}ASCII NULL-terminated account password (maximum 17 characters + NULL termination){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04200040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Sets the account password input for the given account. This value is only stored in memory and not in the save data. It is possible to update the cached password by first using this command and then [ACTA:EnableAccountPasswordCache](ACTA:EnableAccountPasswordCache "wikilink").
