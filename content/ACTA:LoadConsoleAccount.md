+++
title = 'ACTA:LoadConsoleAccount'
+++

# Request

{{% ipc/request header="0x04060240" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param %}}bool, do password check{{% / %}}
{{% ipc/param span=5 %}}ASCII NULL-terminated account password (maximum 17 characters + NULL termination){{% / %}}
{{% ipc/param %}}bool, use NULL password{{% / %}}
{{% ipc/param %}}bool, do not save changes(?){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x04060040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Loads the specified account.

If `do password check` is set to `true`, the input password will be compared using the internal password hash. If the given password is invalid, or if a password isn't provided (that includes the case of `use NULL passwor` being `true`) and the account password cache isn't enabled for this account, error code 0xC8A14F2B is returned.

If `use NULL password` is set to `true`, the password passed to the internal handler will be NULL, even if a password was given.

If `do not save changes(?)` is set to `true`, all of the code related to password and account slot existence checks is run, but no changes are saved. (maybe a dry run?)
