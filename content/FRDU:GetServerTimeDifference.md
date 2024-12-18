+++
title = 'FRDU:GetServerTimeDifference'
+++

# Request

{{% ipc/request header="0x002E0000" %}}
{{% / %}}

# Response

{{% ipc/request header="0x002E00c0" %}}
{{% ipc/result %}}
{{% ipc/param span=2 %}}u64, time difference in milliseconds{{% / %}}

# Description

Returns the difference between the server time gotten from the NASC login response and the system time when the friends module logged into friends services.
