+++
title = 'FRDN:Resume'
+++

# Request

{{% ipc/request header="0x00020000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x00020040" %}}
{{% ipc/result %}}
{{% / %}}

# Description

Resumes the friends service daemon. This does nothing if the EULA version read from the [Config Savegame](Config_Savegame "wikilink") is zero.
