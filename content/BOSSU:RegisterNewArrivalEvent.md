+++
title = 'BOSSU:RegisterNewArrivalEvent'
+++

# Request

{{% ipc/request header="0x00080002" %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}KEvent event{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00080040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

This registers the provided event to be signaled when new content arrives to the program ID of the current session. The event is stored in a global table with up to 5 entries, and distinguishes between user and privileged events.
