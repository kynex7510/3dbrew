+++
title = 'BOSSU:GetTaskIdList'
+++

# Request

{{% ipc/request header="0x000E0000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x000E0040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Loads the list of task IDs into the local session so that it can be retrieved with PropertyIDs 0x35 and 0x36 on [BOSSU:ReceiveProperty](BOSSU:ReceiveProperty "wikilink").
