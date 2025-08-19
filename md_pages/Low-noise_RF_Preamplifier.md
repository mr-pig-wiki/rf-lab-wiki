---
title: Low-noise RF Preamplifier
permalink: /Low-noise_RF_Preamplifier/
---

<a href="/md_pages/File:lna_picture.jpg" class="wikilink" title="400px">400px

## Overview

A low-noise 50-ohm broadband amplifier for early gain stages that
functions at at a range or radio frequencies. Functions using the
PHA-13LN+ (see parts list at bottom).

Project contribution by Lincoln Craven-Brightman, Research Engineer in
the MR-PIGs group.

## Design

The LNA is housed inside a 0.75" X 0.5625" X 0.58" RF enclosure from
Lotus Communications Systems (see parts list at bottom). The enclosure
takes SMA input and output, and requires 6+ V DC with ~75 mA of
operating current. The enclosure is connected to the board and SMA GND.
The current model does not have impedance matching incorporated.

This layout is adapted from the PHA-13 datasheet from Mini Circuits.
<a href="/md_pages/File:lna_inside.jpg" class="wikilink" title="400px">400px
<a href="/md_pages/File:lna_schematic_pic.png" class="wikilink"
title="1000px">1000px

## Specs

### Gain

The LNA demonstrates a gain of above 20 dB over 1-100 MHz. Gain slowly
falls off to 17 dB at 1 GHz, and drops sharply below 1 MHz.
<a href="/md_pages/File:LNA_S21_100_label.png" class="wikilink"
title="500px">500px
<a href="/md_pages/File:LNA_S21_1000_label.png" class="wikilink"
title="500px">500px

### Safety limits

The enclosure is fitted with a crossed diode on the input to protect the
pre-amplifier. Preliminary testing showed the circuit survived 200 Watts
of transmit RF power (~5% duty cycle). With \>1 KW of power, the PHA-13
was damaged and had to be replaced. The other components inside the
enclosure survived.

### Testing

The LNA was tested on the Halbach table-top scanner (~3 MHz center
frequency) as a gain stage, along with the Minicircuits ZFL-500LN+
[1](https://www.minicircuits.com/WebStore/dashboard.html?model=ZFL-500LN%2B).
It demonstrated similar SNR to the lab's current AU-1583 amplifiers when
total gain was comparable, using different gain stages. The domain
chosen as "noise" is delimited by vertical dashed lines. All testing
data is included below.
<a href="/md_pages/File:lna_snr_pic.png" class="wikilink" title="500px">500px
<a href="/md_pages/File:lna_miteq_snr_pic.png" class="wikilink"
title="500px">500px

## Files

KiCAD file:
<a href="/md_pages/Media:lna_kicad.zip" class="wikilink"
title="Media:lna_kicad.zip">Media:lna_kicad.zip
Parts list:
<a href="/md_pages/Media:lna_parts.txt" class="wikilink"
title="Media:lna_parts.txt">Media:lna_parts.txt
Testing data:
<a href="/md_pages/Media:lna_test_data.zip" class="wikilink"
title="Media:lna_test_data.zip">Media:lna_test_data.zip