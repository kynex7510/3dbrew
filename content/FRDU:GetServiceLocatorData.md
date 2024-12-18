+++
title = 'FRDU:GetServiceLocatorData'
+++

# Request

{{% ipc/request header="0x002B0000" %}}
{{% / %}}

# Request Static Buffers

# Response

{{% ipc/request header="0x002B0042" %}}
{{% ipc/result %}}
{{% ipc/staticbuffer id=0 %}}Pointer to output [ServiceLocatorData](Friend_Services#servicelocatordata "wikilink") structure{{% / %}}
{{% / %}}

# Description

Returns service locator data previously requested using [FRDU:RequestServiceLocator](FRDU:RequestServiceLocator "wikilink").
