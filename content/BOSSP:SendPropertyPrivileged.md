+++
title = 'BOSSP:SendPropertyPrivileged'
+++

# Request

{{% ipc/request header="0x04130082" %}}
{{% ipc/param %}}u16 [PropertyID](BOSS_Services "wikilink"){{% / %}}
{{% ipc/param %}}Size{{% / %}}
{{% ipc/mapbuffer r %}}Data Pointer{{% / %}}
{{% / %}}

# Response

{{% ipc/request %}}
{{% ipc/result %}}
{{% / %}}

# Description

This is *identical* to [BOSSU:SendProperty](BOSSU:SendProperty "wikilink").
