+++
title = 'BOSSU:SendProperty'
+++

# Request

{{% ipc/request header="0x00140082" %}}
{{% ipc/param %}}u16, [Property ID](BOSS_Services#propertyids "wikilink"){{% / %}}
{{% ipc/param %}}u32, Buffer size{{% / %}}
{{% ipc/mapbuffer r %}}Data buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00140042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}Data buffer{{% / %}}
{{% / %}}

# Description

Sets the data for the specified property within the current session. This data will be written into FS later when registering or reconfiguring a task.
