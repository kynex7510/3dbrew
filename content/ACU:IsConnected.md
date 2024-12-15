+++
title = 'ACU:IsConnected'
+++

# Request

{{% ipc/request header="0x003E0042" %}}
{{% ipc/param %}}Process ID of target process to check (or zero, see description){{% / %}}
{{% ipc/processid %}}
{{% / %}}

# Response

{{% ipc/request header="0x003E0080" %}}
{{% ipc/result %}}
{{% ipc/param %}}bool, target process is connected{{% / %}}
{{% / %}}

# Description

Checks whether or not the target process has connected via [ACU:ConnectAsync](ACU:ConnectAsync "wikilink"). If a specific process ID is specified, this checks if the associated process has connected. When the input process ID is zero, this performs the same check for the current process.
