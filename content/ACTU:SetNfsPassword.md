+++
title = 'ACTU:SetNfsPassword'
+++

# Request

{{% ipc/request header="0x00090180" %}}
{{% ipc/param %}}u8, Account slot{{% / %}}
{{% ipc/param span=5 %}}ASCII NULL-terminated NFS (Nintendo Friends Server) password{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00090040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Sets the NFS (Nintendo Friends Server) password. The account slot must be 0xFE.
