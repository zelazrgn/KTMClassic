# LibThreatClassic2 [!["Open Issues"](https://img.shields.io/github/issues-raw/dfherr/LibThreatClassic2.svg)](https://github.com/dfherr/LibThreatClassic2/issues)

Threat tracking for World of Warcraft Classic. Successor project for [https://github.com/EsreverWoW/LibThreatClassic](https://github.com/EsreverWoW/LibThreatClassic)

The latest version of this library will always be available through the addon [ThreatClassic2](https://github.com/dfherr/ThreatClassic2)

## How to use

To provide Threat data to other players just include and load the lib as part of your addon.

To start using the lib to display threat data get the latest revision from LibStub and get the UnitThreatSituation:

```
local ThreatLib = LibStub:GetLibrary("LibThreatClassic2")

local _UnitThreatSituation = function (unit, mob)
    return ThreatLib:UnitThreatSituation (unit, mob)
end

local _UnitDetailedThreatSituation = function (unit, mob)
    return ThreatLib:UnitDetailedThreatSituation (unit, mob)
end
```

## Embedding LibThreatClassic2 with packager

Please make sure to only automatically embed the latest tag into your AddOn. I won't guarantee the latest commit in master always being a release candidate, especially in regards to version bumps.

Your `.pkgmeta` config for LibThreatClassic2 should look similar to this:

```
Libs/LibThreatClassic2: 
  url: git://github.com/dfherr/LibThreatClassic2.git
  tag: latest
```

## Changelog

See https://github.com/dfherr/LibThreatClassic2/releases

## License

[LGPL-2.1](LICENSE)

Copyright (c) 2019 Dennis-Florian Herr

LibThreatClassic2 incorporates work covered by the following copyright holders and permission notice:

Copyright (C) 2019 Alexander Burt (Es / EsreverWoW)
Copyright (C) 2007 Chris Heald and the Threat-1.0/Threat-2.0 teams

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
