---
title: Low-cost 1 Watt RF power amplifier (in progress)
permalink: /Low-cost_1_Watt_RF_power_amplifier_(in_progress)/
---

Low-cost, 800mA RF power amplifier used for tabletop MRI scanners to
drive small solenoid coils (~1cm diameter NMR sample tubes). This board
uses the Motorola MHW592 RF amplifier module, which is obsolete, but
available on eBay. The board runs on 24 Volts and includes a linear
regulator and blanking circuit controlled by a gating signal from the
spectrometer. The blanking cuts power to the RFPA quickly (for instance
to eliminate unwanted RF noise during signal readout). There is an
optional low-power first gain stage that can be bypassed with a jumper
wire if it is not needed. The MHW592 power stage provides 35dB of gain
with a 1dB compression point of 900mW.

The datasheet calls for 24V, but we have gotten away with running the
MHW592 at 18V for convenience (with 24V power supply provided to the
on-board regulator).

Datasheet for MHW592:
<https://datasheetspdf.com/pdf-file/1114767/Motorola/MHW592/1>

[Click
here](https://rflab.martinos.org/images/6/6b/Tabletop_RFPA_motorola.zip)
to download EAGLE board files (layout and schematic), GERBER files, and
Bill of Materials.

<a href="/file:Schematic_rfpa.png" class="wikilink"
title="1000px|none|alt=Alt text|Schematic for MHW592 daughter board">1000px|none|alt=Alt
text|Schematic for MHW592 daughter board</a>

<a href="/file:Layout_rfpa.png" class="wikilink"
title="1000px |Board layout for MHW592 daughter board">1000px |Board
layout for MHW592 daughter board</a>