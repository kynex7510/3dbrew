+++
title = 'ACTU:Initialize'
+++

# Request

{{% ipc/request header="0x00010084" %}}
{{% ipc/param %}}SDK Version{{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Handle to caller process{{% / %}}
{{% ipc/param %}}u32, Shared memory size (optional){{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Handle to shared memory (optional){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00010040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

This initializes the ACT service. Shared memory initialization is optional, but some service calls require it. The SDK version seems to be 0xB0502C8.
