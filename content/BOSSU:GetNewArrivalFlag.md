+++
title = 'BOSSU:GetNewArrivalFlag'
+++

# Request

{{% ipc/request header="0x00070000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x00070080" %}}
{{% ipc/result %}}
{{% ipc/param %}}bool, New arrivals{{% / %}}
{{% / %}}

# Description

Checks if there is new content for the program ID of the current session.
