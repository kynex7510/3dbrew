+++
title = 'NFCDEV:WriteRawPage'
+++

# Request

{{% ipc/request header="0x001200C0" %}}
{{% ipc/param %}}u32, Unknown. inr1 for send_nfctag_cmd().{{% / %}}
{{% ipc/param %}}u32 pageaddr{{% / %}}
{{% ipc/param %}}4-byte page-data{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}

# Description

This writes to a single NFC page by calling send_nfctag_cmd() with cmd 0xA2("WRITE").
