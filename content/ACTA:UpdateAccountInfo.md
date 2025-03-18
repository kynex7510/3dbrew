+++
title = 'ACTA:UpdateAccountInfo'
+++

# Request

{{% ipc/request header="0x042F0084" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param %}}Input XML data buffer size (max. 0x800){{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% ipc/mapbuffer r %}}Input XML data buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x042F0042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}Input XML data buffer{{% / %}}
{{% / %}}

# Description

Sends the given raw XML account info to the account server. In the official Nintendo Network ID Settings application, the following template is used for this command:

```
<person><gender>%c</gender><region>%u</region><tz_name>%s</tz_name></person>
```

The account slot must be 0xFE. Therefore, this command can only be used with the currently loaded account.
