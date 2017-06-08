LV-TOML
=================

LV-TOML is an open source LabVIEW library for parsing and composing [TOML files](https://github.com/toml-lang/toml).

Installation
------------

[The most recent VI Package (.vip) can be downloaded here.](https://github.com/erdosmiller/lv-toml/releases)

Open the VI Package using [VI Package Manager](http://vipm.jki.net/) and press ***Install***.

In LabVIEW, The LV-TOML palette can be found in the ***Erdos Miller*** palette.

Usage
-----

The polymorphic VIs ***Read TOML File.vi*** and ***Write TOML File.vi*** can parse and compose TOML files to and from a variant or a ***TOML Value.ctl***. ***TOML Value.ctl*** values are composable and caseable using LV-Tagged-Union (https://github.com/erdosmiller/lv-tagged-union).

Requirements
------------

Requires LabVIEW 2015 or later