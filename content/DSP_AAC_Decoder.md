+++
title = 'DSP AAC Decoder'
+++

*Note that everything below may vary depending on the exact DSP firmware
used and different variants have slightly different behaviours.*

# Summary

Some versions of the DSP firmware contain a decoder for the AAC audio
codec. Such firmware may be dumped from specific games, like Pokemon X/Y
or Rhythm Heaven Megamix. Interfacing with the AAC decoder (sending
requests/receiving responses) happens via the DSP binary pipe (pipe 3)
