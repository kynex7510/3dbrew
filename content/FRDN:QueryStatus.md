+++
title = 'FRDN:QueryStatus'
+++

# Request

{{% ipc/request header="0x00040000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x00040080" %}}
{{% ipc/result %}}
{{% ipc/param %}}u8, [Daemon status](NDM_Services#daemonstatus "wikilink"){{% / %}}
{{% / %}}

# Description

Retrieves the current friends service [Daemon status](NDM_Services#daemonstatus "wikilink").
