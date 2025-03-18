+++
title = 'ACTU:GetAsyncResult'
+++

# Request

{{% ipc/request header="0x00070082" %}}
{{% ipc/param %}}Output buffer size{{% / %}}
{{% ipc/param %}}[Async Request Type](ACTU:GetAsyncResult#async_request_types "wikilink"){{% / %}}
{{% ipc/mapbuffer w %}}Output buffer pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00070082" %}}
{{% ipc/result %}}
{{% ipc/param %}}Size of returned data{{% / %}}
{{% ipc/mapbuffer w %}}Output buffer pointer{{% / %}}
{{% / %}}

# Async Request Types

| Type | Corresponding command                                                                          | Result accessible with                                                                                                        |
|------|------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
| 1    | [InquireBindingToExistentServerAccount](ACTA:InquireBindingToExistentServerAccount "wikilink") | [act:a](ACT_Services#act_admin_service_acta "wikilink")                                                                |
| 2    | [BindToExistentServerAccount](ACTA:BindToExistentServerAccount "wikilink")                     | [act:a](ACT_Services#act_admin_service_acta "wikilink")                                                                |
| 3    | [AcquireEula](ACTU:AcquireEula "wikilink")                                                     | [act:u](ACT_Services#act_user_service_actu "wikilink"), [act:a](ACT_Services#act_admin_service_acta "wikilink") |
| 4    | [AcquireTimeZoneList](ACTU:AcquireTimeZoneList "wikilink")                                     | [act:u](ACT_Services#act_user_service_actu "wikilink"), [act:a](ACT_Services#act_admin_service_acta "wikilink") |
| 5    | [AcquireAccountInfo](ACTU:AcquireAccountInfo "wikilink")                                       | [act:u](ACT_Services#act_user_service_actu "wikilink"), [act:a](ACT_Services#act_admin_service_acta "wikilink") |
| 6    | [AcquireAccountIdByPrincipalId](ACTU:AcquireAccountIdByPrincipalId "wikilink") (single)        | [act:u](ACT_Services#act_user_service_actu "wikilink"), [act:a](ACT_Services#act_admin_service_acta "wikilink") |
| 7    | [AcquireAccountIdByPrincipalId](ACTU:AcquireAccountIdByPrincipalId "wikilink") (multiple)      | [act:u](ACT_Services#act_user_service_actu "wikilink"), [act:a](ACT_Services#act_admin_service_acta "wikilink") |
| 8    | [AcquirePrincipalIdByAccountId](ACTU:AcquirePrincipalIdByAccountId "wikilink") (single)        | [act:u](ACT_Services#act_user_service_actu "wikilink"), [act:a](ACT_Services#act_admin_service_acta "wikilink") |
| 9    | [AcquirePrincipalIdByAccountId](ACTU:AcquirePrincipalIdByAccountId "wikilink") (multiple)      | [act:u](ACT_Services#act_user_service_actu "wikilink"), [act:a](ACT_Services#act_admin_service_acta "wikilink") |
| 10   | [ApproveByCreditCard](ACTA:ApproveByCreditCard "wikilink")                                     | [act:a](ACT_Services#act_admin_service_acta "wikilink")                                                                |
| 11   | [SendCoppaCodeMail](ACTA:SendCoppaCodeMail "wikilink")                                         | [act:a](ACT_Services#act_admin_service_acta "wikilink")                                                                |
| 12   | [AcquireMii](ACTU:AcquireMii "wikilink")                                                       | [act:u](ACT_Services#act_user_service_actu "wikilink"), [act:a](ACT_Services#act_admin_service_acta "wikilink") |
| 13   | [AcquireAccountInfoRaw](ACTU:AcquireAccountInfoRaw "wikilink")                                 | [act:u](ACT_Services#act_user_service_actu "wikilink"), [act:a](ACT_Services#act_admin_service_acta "wikilink") |

# Description

Returns data returned from the account server for the specified async request.

# Possible Result Codes

| Result code | Reason                                                                                                                                                   |
|-------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|
| 0xE0A14CC8  | The input async request type does not correspond to the last async request sent with the respective command, or the input async request type is invalid. |
| 0xE0A14CCB  | The input buffer is not large enough to store the output data.                                                                                           |
| 0xE0A14C6F  | No async request was sent prior to using this command.                                                                                                   |
| 0xE0A14CC9  | The input buffer was not given or is invalid.                                                                                                            |
