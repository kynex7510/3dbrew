+++
title = 'PS:SignRsaSha256'
+++

# Request

{{% ipc/request header="0x00010244" %}}
{{% ipc/param span=8 %}}SHA256 hash to sign.{{% / %}}
{{% ipc/param %}}Unused. Intended as the signature size.{{% / %}}
{{% ipc/staticbuffer id=0 %}}RSA [context](Process_Services_PXI "wikilink") buffer{{% / %}}
{{% ipc/mapbuffer w %}}Signature buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% ipc/mapbuffer w %}}Signature buffer. Size for the translate-header is hard-coded to 0x100.{{% / %}}
{{% / %}}
