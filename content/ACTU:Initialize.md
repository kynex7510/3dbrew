+++
title = 'ACTU:Initialize'
+++

# Request

{{% ipc/request header="0x00010084" %}}
{{% ipc/param %}}SDK Version{{% / %}}
{{% ipc/param %}}u32, Shared memory size (optional){{% / %}}
{{% ipc/processid %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Handle to shared memory (optional){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00010040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Initializes the current session.

The process ID is used to obtain the Title ID and Remaster Version of the caller.

An optional block of extra memory can be shared with the act service. The caller must create a memory block and specify its size in this request. If used, the act service will map the memory block into its own address space and use it as an extra heap. This extra memory is required for certain commands.
