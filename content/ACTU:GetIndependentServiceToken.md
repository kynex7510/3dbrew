+++
title = 'ACTU:GetIndependentServiceToken'
+++

# Request

{{% ipc/request header="0x00150002" %}}
{{% ipc/mapbuffer w %}}Output [V2 independent service token](ACT_Services#v2_independent_service_token "wikilink") buffer pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00150042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer w %}}Output [V2 independent service token](ACT_Services#v2_independent_service_token "wikilink") buffer pointer{{% / %}}
{{% / %}}

# Description

Returns the V2 independent service token acquired using [ACTU:AcquireIndependentServiceTokenV2](ACTU:AcquireIndependentServiceTokenV2 "wikilink").

See [Independent Service Tokens](ACT_Services#independent_service_tokens "wikilink") for details.
