# Changelog

## v1.3

* fixed onyxia knock away (on vmangos, threat is reduced even if spell misses)

## v1.2

* Added UI for setting master target and clearing raid threat. Also added
    the same restrictions on who can send those messages as the 1.12 KTM.
    These actions can now also be set to keybinds in the Blizzard "Key
    Bindings" UI

    The previous /ktm mt command now also supports supplying a name so a
    master target can be set at any time. (e.g. /ktm mt Nefarian)

* Better support for Thunderfury threat due to the limitations of
    detecting aura refreshes using Hermes/Vmagnos and a difference in
    behavior of the combat log compared to classic

## v1.1

* Disabled rested check so players can test on the training dummys on the Everlook server

## v1.0.6

* feral druids now tracked as melee
* removed 125% modifier on execute (vmangos is incorrectly missing the scaling on execute)

## v1.0.5

* fixed bug in 1.0.4 release

## v1.0.4

* ThreatClassic2 was assuming all threat was in melee range. Now we assume they are ranged if they are not a warrior or rogue.
* fixed max threat broken when a master target is set
* fixed taunt gaining threat when spell fails

## v1.0.3

* fixed bug preventing addon from working for druids
