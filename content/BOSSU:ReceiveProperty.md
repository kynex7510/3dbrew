+++
title = 'BOSSU:ReceiveProperty'
+++

# Request

{{% ipc/request header="0x00160082" %}}
{{% ipc/param %}}u16, [Property ID](BOSS_Services#propertyids "wikilink"){{% / %}}
{{% ipc/param %}}u32, Buffer size{{% / %}}
{{% ipc/mapbuffer w %}}Data buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00160082" %}}
{{% ipc/result %}}
{{% ipc/param %}}u32, Actual read size{{% / %}}
{{% ipc/mapbuffer w %}}Data buffer{{% / %}}
{{% / %}}

# Description

Same as [BOSSU:SendProperty](BOSSU:SendProperty "wikilink") except for reading.
