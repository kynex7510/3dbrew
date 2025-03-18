+++
title = 'BOSSU:InitializeSession'
+++

# Request

{{% ipc/request header="0x00010082" %}}
{{% ipc/param span=2 %}}u64, Program ID, unused with BOSS:U.{{% / %}}
{{% ipc/processid %}}
{{% / %}}

# Response

{{% ipc/request header="0x00010040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Initializes a BOSS session with access to the data belonging to either the provided program ID (only in privileged mode), or to the caller process.
