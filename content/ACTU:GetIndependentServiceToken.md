+++
title = 'ACTU:GetIndependentServiceToken'
+++

# Request

{{% ipc/request header="0x00150002" %}}
{{% ipc/mapbuffer w %}}Output service token buffer pointer (0x201 in size){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00150042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer w %}}Output service token buffer pointer{{% / %}}
{{% / %}}

# Description

Returns the service token acquired using [ACTU:AcquireIndependentServiceToken](ACTU:AcquireIndependentServiceToken "wikilink").
