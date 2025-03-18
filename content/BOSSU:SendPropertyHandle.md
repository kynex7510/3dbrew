+++
title = 'BOSSU:SendPropertyHandle'
+++

# Request

{{% ipc/request header="0x00150042" %}}
{{% ipc/param %}}u16 PropertyID{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/param %}}Handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00150040" %}}
{{% ipc/result %}}
{{% / %}}

## Description

Same as [BOSSU:SendProperty](BOSSU:SendProperty "wikilink"), but used for properties that are stored as handles.
