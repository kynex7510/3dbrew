+++
title = 'ACTA:ReserveTransfer'
+++

# Request

{{% ipc/request header="0x042B01c4" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param span=5 %}}[DeviceInfo](ACTA:ReserveTransfer#deviceinfo "wikilink") of target console{{% / %}}
{{% ipc/param %}}Input operator buffer size{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Completion event handle{{% / %}}
{{% ipc/mapbuffer r %}}Input operator buffer (ASCII, max. 256 characters){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x042B0042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}Input operator buffer{{% / %}}
{{% / %}}

# Description

Initializes a Nintendo Network ID account transfer to a new device. The account slot must be 0xFE. Therefore, this command can only be used with the currently loaded account.

# DeviceInfo

| Offset | Size    | Description                                                |
|--------|---------|------------------------------------------------------------|
| 0x0    | 0x4     | DeviceId                                                   |
| 0x4    | 0xF + 1 | ASCII SerialNumber (max. 15 characters) + NULL termination |
