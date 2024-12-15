+++
title = 'FRDU:SetNotificationMask'
+++

# Request

{{% ipc/request header="0x00210040" %}}
{{% ipc/param %}}Notification mask (see description){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00210040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Sets the notification mask to control which notifications shall be received.

The mask is a u32 bitfield composed of `(1 << (n1 - 1)) | (1 << (n2 - 1)) | ....` where `n1` and `n2` are [Notification Event Types](Friend_Services#notification_event_types "wikilink").
