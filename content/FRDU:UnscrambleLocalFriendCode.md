+++
title = 'FRDU:UnscrambleLocalFriendCode'
+++

# Request

{{% ipc/request header="0x001C0042" %}}
{{% ipc/param %}}Count{{% / %}}
{{% ipc/staticbuffer id=0 %}}Input scrambled friend codes buffer (12 bytes each){{% / %}}
{{% / %}}

# Request Static Buffers

# Response

{{% ipc/request header="0x001C0042" %}}
{{% ipc/result %}}
{{% ipc/staticbuffer id=0 %}}Output friend code buffer (u64){{% / %}}
{{% / %}}

# Description

This unscrambles one or more scrambled friend codes. Scrambled friend codes seem to be generally be retrieved from [NWMUDS](NWM_Services#nwm-local-wlan-service-nwmuds "wikilink") command [GetNodeInformation](NWMUDS:GetNodeInformation "wikilink").
