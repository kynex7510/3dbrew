+++
title = 'FRDU:AddFriendWithApproach'
+++

# Request

{{% ipc/request header="0x00340046" %}}
{{% ipc/param %}}? (unused){{% / %}}
{{% ipc/copyhandle count=1 %}}
{{% ipc/param %}}Completion handle{{% / %}}
{{% ipc/staticbuffer id=3 %}}Input [encrypted ApproachContext payload](Friend_Services#encrypted_approachcontext_payload "wikilink") buffer{{% / %}}
{{% ipc/staticbuffer id=4 %}}? (unused, max. 0x600){{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00340040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Decrypts the given [encrypted ApproachContext payload](Friend_Services#encrypted_approachcontext_payload "wikilink"), adds the target console locally, and then schedules an internal task to register the friend using the friends server. The approach context must contain a valid Mii (otherwise, error 0xE0E0C4E9). The console (of the caller) must not have `IsShowPlayedMode` set (otherwise, 0xD8A0C4FA), and must have a valid personal mii (otherwise, 0xD8A0C4F8). The first u8 value of the payload must not be zero (otherwise, 0xE0E0C4E9).

If adding the friend locally succeeds but registering the friend online fails, result code 0xC4E1 is returned (registering the friend online will be reattempted the next time the console goes online).
