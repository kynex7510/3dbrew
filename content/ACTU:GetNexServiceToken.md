+++
title = 'ACTU:GetNexServiceToken'
+++

# Request

{{% ipc/request header="0x00130002" %}}
{{% ipc/mapbuffer w %}}Output [NEXServiceToken](ACTU:GetNexServiceToken#nexservicetoken "wikilink") buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00130042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer w %}}Output [NEXServiceToken](ACTU:GetNexServiceToken#nexservicetoken "wikilink") buffer{{% / %}}
{{% / %}}

# Description

Returns the NEX service token requested using [ACTU:AcquireNexServiceToken](ACTU:AcquireNexServiceToken "wikilink").

# NEXServiceToken

| Offset | Size      | Description                           |
|--------|-----------|---------------------------------------|
| 0      | 0x200 + 1 | base64 NULL-terminated NEX token      |
| 0x201  | 0x3       | padding                               |
| 0x204  | 0x40 + 1  | base64 NULL-terminated password       |
| 0x245  | 0x3       | padding                               |
| 0x248  | 0x10      | ASCII NULL-terminated NEX server host |
| 0x258  | 0x2       | u16, NEX server port                  |
| 0x25A  | 0x2       | padding                               |
