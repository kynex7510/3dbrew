+++
title = 'MP:GetHandle'
+++

# Request

{{% ipc/request header="0x00010040" %}}
{{% ipc/param %}}s32 index{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% ipc/param %}}0x0 Translate header for handle-transfer{{% / %}}
{{% ipc/param %}}Output handle{{% / %}}
{{% / %}}

# Description

This loads a handle from MP-sysmodule state.

- When the index is \<16, the handle is loaded from an array of event handles. When eventhandle\[nodeID\] is signaled, this indicates that data is available via [MP:RecvDataFrame](MP:RecvDataFrame "wikilink") with that same nodeID.
- When the index is 16, the handle is loaded from stateptrother+{someoffset}.
- When the index is \>16(accessed via 17 by the user-process normally), the handle is loaded from stateptrother+{someoffsetother}. This is 0x3000-byte sharedmem, the user-process maps it with mypermissions=read-only and otherpermission=DONTCARE.
