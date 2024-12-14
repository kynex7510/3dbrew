+++
title = 'PS:VerifyRsaSha256'
+++

# Request

{{% ipc/request header="0x00020244" %}}
{{% ipc/param span=8 %}}SHA256 hash to compare with.{{% / %}}
{{% ipc/param %}}Unused. Intended as the signature size.{{% / %}}
{{% ipc/staticbuffer id=0 %}}RSA [context](Process_Services_PXI "wikilink") buffer{{% / %}}
{{% ipc/mapbuffer r %}}Signature buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% ipc/mapbuffer r %}}Signature buffer. Size for the translate-header is hard-coded to 0x100.{{% / %}}
{{% / %}}
