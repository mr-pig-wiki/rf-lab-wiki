---
title: 3T Toroidal Chokes
permalink: /3T_Toroidal_Chokes/
---

<a href="/File:choke_picture.jpg" class="wikilink"
title="300px">300px

## Overview

A toroidal choke design with a self-resonant frequency to enable
shimming through DC on 3T RF receive loops. Able to be made by hand with
a 3D printer and magnet wire.

Work contributed by Lincoln Craven-Brightman, Research Engineer in the
MR-PIGs group.

## Design

The choke consists of a 3D-printed toroidal core wrapped with 22 AWG
magnet wire. For our models, we used cores printed on the Dimension sst
1200es with ABS filament and BELDEN 8051 22 AWG magnet wire. Cores
measure 8mm ID, 16 mm OD, and the wire wraps as many times as can fit on
the core. In addition, each end of the wire wraps once more around the
core (external to the first winding) to add capacitance and inductance.
Approximately 2 feet of wire is used, with roughly 34 turns plus one
"bonus" double wound turn on each end with each lead.

## Specs

### SRF

The chokes show a consistent self-resonant frequency of 150 MHz. (NOTE:
This is worth confirming when hand-winding, as we have an unsolved issue
where certain chokes have an SRF of 2/3 the SRF of others with the same
design. Having measured similar inductances across all chokes, we expect
that this is a capacitive effect -- standard chokes have a capacitance
on order of 1 pF)

### Heating

The choke can handle 3 amps of steady state current without heating
dangerously. Pictured below is an IR image measuring the peak
temperature immediately after 10 minutes of 3 A of current in a closed
container.
<a href="/File:choke_thermal.jpg" class="wikilink"
title="400px">400px

### Simulation

The chokes were modeled in FEKO 2019 to predict their behavior. Models
differ from the measured behavior in SRF by around 100 MHz. We believe
this is due to inaccurate calculation or modeling of the physical
capacitance, which we measure to be on order of 1 pF. The FEKO model and
resulting simulation can be found at the bottom.

<a href="/File:choke_feko.png" class="wikilink" title="300px">300px

### Testing

The chokes were tested on a 125 MHz test coil. We measured a shift of
less than 1 MHz when using the choke to bridge the capacitors in a
resonant RF coil element circuit. We also saw good blocking of a twisted
pair attached by two chokes to a port of the coil. Testing results are
at the bottom.

## Design files

Folder containing STL, FEKO model, and testing data for toroidal
chokes:
<a href="/Media:toroidal_choke.zip" class="wikilink"
title="Media:toroidal_choke.zip">Media:toroidal_choke.zip