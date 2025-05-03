+++
title = 'FS:BeginSaveDataMove'
+++

# Request

{{% ipc/request header="0x86D0080" %}}
{{% ipc/param span=2 %}}u64, Title ID{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x86D0080" %}}
{{% ipc/result %}}
{{% ipc/param %}}u32, Save data move "key"{{% / %}}
{{% / %}}

# Description

Used by the Save Data Transfer Tool. Initializes internal FS state by generating 20 random bytes of data, where the first 16 are presumably used for encryption and the other 4 are returned as a "key". After calling this, the Save Data Transfer Tool uses the "key" to open the save data for the title it's processing (ArchiveID 0x2345678A, file path \[0\] = 4, \[1\] = save move "key", \[2-4\] left as zeros).
