+++
title = 'FRDU:GetEventNotification'
+++

# Request

{{% ipc/request header="0x00220040" %}}
{{% ipc/param %}}Count{{% / %}}
{{% / %}}

# Request Static Buffers

# Response

{{% ipc/request header="0x002200c2" %}}
{{% ipc/result %}}
{{% ipc/param %}}bool, overflow (see description){{% / %}}
{{% ipc/param %}}u32, Number of read entries{{% / %}}
{{% ipc/staticbuffer id=0 %}}Output [EventNotification](Friend_Services#eventnotification "wikilink") buffer{{% / %}}
{{% / %}}

# Description

Retrieves [EventNotification](Friend_Services#eventnotification "wikilink") entries (See [Notification Events](Friend_Services#notification_events "wikilink") for details).

The `overflow` bool in the response returns whether or not the internal notification list has flowed past 128 entries (the maximum internal amount). In case of overflow, the offset of the last retrieved entry is subtracted by 128 so further processing can continue normally. This occurs when the client doesn't retrieve the notifications in time.

Internally, this command advances the offset of the last retrieved entry by `Count` or the amount of remaining entries, whichever is smaller.
