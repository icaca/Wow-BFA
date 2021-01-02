# Hekili

## [v9.0.2-1.0.31](https://github.com/Hekili/hekili/tree/v9.0.2-1.0.31) (2020-12-28)
[Full Changelog](https://github.com/Hekili/hekili/compare/v9.0.2-1.0.30...v9.0.2-1.0.31) [Previous Releases](https://github.com/Hekili/hekili/releases)

- More Sepsis realted tweaks/updates.  
- Use stealth bindings for Rogue abilities, not Shadowmeld/Sepsis.  
- Shadow updates.  
- Arcane updates.  
- Feral update.  
- Pandemic buffs and debuffs by default (this could backfire...).  
- Merge branch 'shadowlands' of https://github.com/Hekili/hekili into shadowlands  
- Guardian:  Add spec setting to allow Mangle more often.  
- Fix Apex Predator's Craving combo point requirements (or lack thereof).  
- Support spec/ability settings for aliased abilities (i.e., any\_dnd -> death\_and\_decay or defile, etc.).  
- Support stealthed.sepsis expression.  Suppress Cheap Shot on targets already afflicted by Cheap Shot.  Outlaw reduces CD on Marked for Death as well.  Between the Eyes doesn't stun or proc Prey on the Weak.  Queue an event that will proc Sepsis stealth if the buff falls off.  
- Merge pull request #745 from Arrhae/arrhae-deadly-calm-nogcd  
    Arms: Deadly Calm is off GCD in Shadowlands  
- Arms: Deadly Calm is off GCD in Shadowlands  
- Add WW setting to avoid WDP while out of range (off by default).  
- Add Will to Survive as a usable defensive ability.  
- Elemental.  
- Shadow.  
- Balance APL updates.  
    Map druid.no\_cds to toggle.cooldowns.  
- Feral:  Tweak owlweave\_cat usage.  
- Revert "Feral:  Tweak owlweave\_cat usage."  
- Actually check Shadow Surrender to Madness timer setting.  
- Feral:  Tweak owlweave\_cat usage.  
- Fix Outlaw/Assassination priorities.  
- Un-undo void\_bolt.cooldown\_ready (for Bx consistent with SimC).  
- Reduce refresh rate when channeling.  
- Outlaw (also, make it less likely to reroll multiple buffs when out of combat).  
- Protection Paladin.  
- Windwalker.  
- Arcane, Fire.  
- Balance.  
- Shadow:  Re-enable void\_bolt.cooldown\_ready.  
- Arcane:  Tweak have\_opened and am\_spam checks.  
- Re-enable cooldown\_ready flag to affect channel breaking logic for Shadow.  
- Try to avoid some wonky safebool/safenum changes in the script parser.  
- Re-enable GCD sync as a way to save some CPU cycles.  
- Add Instructor's Divine Bell.  
