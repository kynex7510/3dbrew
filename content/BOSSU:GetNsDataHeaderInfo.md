+++
title = 'BOSSU:GetNsDataHeaderInfo'
+++

# Request

{{% ipc/request header="0x002700c2" %}}
{{% ipc/param %}}u32, NS Data ID{{% / %}}
{{% ipc/param %}}u8, [HeaderInfoType](BOSS_Services#nsdataheaderinfo "wikilink"){{% / %}}
{{% ipc/param %}}u32, Buffer size{{% / %}}
{{% ipc/mapbuffer w %}}Data buffer{{% / %}}
{{% / %}}

# Response

{{% ipc/request header="0x00270042" %}}
{{% ipc/result %}}
{{% ipc/mapbuffer w %}}Data buffer{{% / %}}
{{% / %}}

# Description

Gets information from the header of the given NS Data ID of the program ID of the current session.
