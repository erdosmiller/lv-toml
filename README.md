LV-PID
=================

LV-PID is an open source LabVIEW library that provides a simple PID with selectable integrator anti-windup method.

Installation
------------

[The most recent VI Package (.vip) can be downloaded here.](https://github.com/erdosmiller/lv-pid/releases)

Open the VI Package using [VI Package Manager](http://vipm.jki.net/) and press ***Install***.

In LabVIEW, The LV-PID palette can be found in the ***Erdos Miller*** palette.

Motivation
-------

The PID in the LabVIEW PID toolkit uses a method very close to back-calculation with a back-calculation gain Kb = 1. In certain systems with certain gains this can cause undesirable behavior, like in this simulated system:

![Back Calculation Issue](/images/bc2.png)

The gains were chosen to highlight this behavior. With a higher integral gain, the premature decreasing of the controller output may not happen, but the output inversion will always happen when the setpoint is decreased and the controller is saturated high (or the setpoint is increased and the controller is saturated low) and the proportional gain is sufficiently large.

This library provides clamping integrator anti-windup (conditional integration) as an option along with back-calculation with a configurable Kb.

![Clamping](/images/clamping.png)

Requirements
------------

Requires LabVIEW 2015 or later