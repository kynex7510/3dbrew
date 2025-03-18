+++
title = 'ACTA:EnableAccountPasswordCache'
+++

# Request

{{% ipc/request header="0x04080080" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param %}}bool, enabled{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04080040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Enables or disables the account password cache for an account.

The account slot must be 0xFE. Therefore, it is only possible to control the password cache for the currently loaded account.

Enabling the password cache will internally copy the AccountPasswordInput field (which can be set using [ACTA:SetAccountPasswordInput](ACTA:SetAccountPasswordInput "wikilink")) to the AccountPasswordCache field of the account data.

Disabling the password cache will clear the AccountPasswordCache field of the account data.

When the account password cache is enabled, entering the password is not required to load the account.
