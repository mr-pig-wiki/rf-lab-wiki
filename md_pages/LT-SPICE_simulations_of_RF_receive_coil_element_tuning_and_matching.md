---
title: LT-SPICE simulations of RF receive coil element tuning and matching
permalink: /LT-SPICE_simulations_of_RF_receive_coil_element_tuning_and_matching/
---

We have developed a simple LT-SPICE model for simulating MRI RF receive
element tuning and matching circuits to pick component values before
tuning up a test loop in the lab. There are two coil models. The first
is used to assess preamp decoupling and PIN diode detuning performance.
This model uses a "dummy double probe" with two inductive ports that are
lightly coupled to the coil loop allowing for a two-port S21 measurement
of the coil resonance. By modifying the model to remove the preamp, you
can also look at the open-circuit resonance. The second model assess the
impedance match looking toward the coil from the preamp.

The component values can be set using variables to update both coil
models simultaneously. The model includes a plot file that should
automatically show S21 with the PIN diode ON, S21 with PIN diode off
(just change the frequency axis as needed).

How to set up a basic coil model:

- Coil loop inductance is specified by "L1". Adjust tuning and matching
  capacitor values (or add more matching elements as needed).

<!-- -->

- Specify the input impedance of the preamp using "Rpreamp and Lpreamp".

<!-- -->

- Set the desired length of cable (and cable impedance)

Click here to download LT-SPICE model:
<https://rflab.martinos.org/images/5/5d/Siemens_example_spice.zip>

Here is a good reference paper that explains how to choose network
topologies and calculate component values for simultaneously (i)
matching the coil to 50 ohms and (ii) transforming the preamp impedance
to a high impedance at the coil drive point ("preamp decoupling"):
[Reykowski A., et al., MRM
1995](https://onlinelibrary.wiley.com/doi/abs/10.1002/mrm.1910330617)

Version of LT-SPICE simulation used for ENC April 2022 demo:
<https://rflab.martinos.org/images/e/ed/Coil_tuning_demo.zip>

LT-SPICE model was created by Lincoln Craven-Brightman in 2021.

<a href="/md_pages/File:Screen_Shot_2022-02-24_at_5.56.15_PM.png"
class="wikilink" title="1500px">1500px