+++
title = 'ACTU:GetIndependentServiceToken'
+++

# Request

{{% ipc/request header="0x00150002" %}}
{{% ipc/mapbuffer w %}}Output [independent service token](ACT_Services#v1_independent_service_token "wikilink") buffer pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00150042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer w %}}Output [independent service token](ACT_Services#v1_independent_service_token "wikilink") buffer pointer{{% / %}}
{{% / %}}

# Description

Returns the independent service token acquired using [ACTU:AcquireIndependentServiceToken](ACTU:AcquireIndependentServiceToken "wikilink").

See [Independent Service Tokens](ACT_Services#independent_service_tokens "wikilink") for details.
