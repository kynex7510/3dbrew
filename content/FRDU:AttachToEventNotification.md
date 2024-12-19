+++
title = 'FRDU:AttachToEventNotification'
+++

# Request

{{% ipc/request header="0x00200002" %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/handleentry %}}Notification event handle{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00200040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Sets the internal event handle that is signaled for various [Notification Events](Friend_Services#notification_events "wikilink").

The handle is only used for the current service session.
