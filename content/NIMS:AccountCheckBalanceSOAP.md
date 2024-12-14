+++
title = 'NIMS:AccountCheckBalanceSOAP'
+++

# Request

{{% ipc/request header="0x00290000" %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% ipc/param span=16 %}}Output data{{% / %}}
{{% / %}}

# Description

This sends ECommerceSOAP network request AccountCheckBalance. "Account" here seems to refer to the device account, not NNID.

Sample output data: all-zero except that \[0\]=0x30('0') and \[8\]=0x445355("USD").
