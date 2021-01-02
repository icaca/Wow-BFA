# Hekili

## [v9.0.2-1.0.32](https://github.com/Hekili/hekili/tree/v9.0.2-1.0.32) (2021-01-02)
[Full Changelog](https://github.com/Hekili/hekili/compare/v9.0.2-1.0.31...v9.0.2-1.0.32) [Previous Releases](https://github.com/Hekili/hekili/releases)

- Merge branch 'shadowlands' of https://github.com/Hekili/hekili into shadowlands  
- Feral.  
- Merge pull request #773 from ShmooDude/patch-3  
    [Feral] ticks\_gained\_on\_refresh fix  
- Rogue:  Revise energy cost for Echoing Reprimand.  
- Subtlety:  Revise Shadow Dance CDR.  
- Outlaw.  
- Balance:  Allow Convoke without CDs enabled; tweak Eclipse durations.  
- Iterate on Soul Igniter.  
- Elemental:  Don't recommend Earth Ele when any other Ele is already up.  (Internal code, not APL dependent.)  
- Some trinkets don't trigger the shared ICD.  
- [Feral] ticks\_gained\_on\_refresh fix  
    Should be hasted tick\_time, not unhasted.  
- Put up some more guardrails to avoid channel-related errors.  
- Affliction:  Remove Shadow Embrace talent (!!!).  
    Force auras to be re-scraped when Summon Darkglare is up.  
- Create a new hook in state.reset before auras are (potentially) scraped.  
- Affliction APL revisions.  
    Don't pandemic our buffs by default.  Add a noPandemic flag to applyDebuff.  
- Sanity check channels in state.reset.  
- Testfix for faster channeling.  
- Revert stealth binding check.  
- Actual cast of Lightning Lasso is 305485 instead of 305483, which is weird.  
- Tweak channeling in state.reset; also eliminate apostrophes as a string delimiter.  
- Some more guardrails on channeled spells.  
- Remove deprecated channelSpell call.  
- Arms:  Test APL changes.  
