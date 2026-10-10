# Fallout 76 archive load-order reference

Captured from the approved `Fallout76Custom.ini` on 2026-10-10. The complete baseline contains **256 archives**: 183 in `sResourceIndexFileList` and 73 in `sResourceArchive2List`.

[`archive-load-order.json`](archive-load-order.json) is the authoritative categorized baseline for rebuilding. This Markdown file is its readable view. [`AGENTS.md`](AGENTS.md) supplies the current blacklist, approval rules, and Vortex ownership instructions.

## Rebuild rules

- Preserve both list membership and the order of categories and filenames within each list. Similar mods may appear in several places because this reference preserves the user's existing order.
- In `sResourceArchive2List`, keep all five initial UI/HUD categories before `HUDModLoader.ba2`. In this snapshot they contain 32 archives and the loader is entry 33. Insert new HUD Mod Loader widgets before the loader, preserving the existing entries' relative order.
- The loader is not the final entry of the entire Archive2 list. Keep the following audio, animation, asset, and gameplay groups in their stored order. `DoorsBGoneV14.ba2` stays last.
- Keep mesh/texture companions together in their existing order. Do not alphabetize, merge categories by theme, or move archives between INI keys during a rebuild.
- Apply the current exact-filename blacklist and explicit user decisions in `AGENTS.md`. Ask before any unapproved replacement or removal.
- Check Data and Vortex staging read-only. Preserve approved references awaiting deployment, report missing files, and leave all Data deployment and configuration restoration to Vortex.
- Rebuild each INI value by flattening its JSON categories in array order and joining the archive filenames with commas. Write one active line per key. Preserve unrelated INI sections and settings.
- Preserve the captured `[Archive]` settings `bInvalidateOlderFiles=1` and `sResourceDataDirsFinal=STRINGS\` unless the user approves changing them.
- Update the JSON and this readable view together after an intentional, approved change. Do not replace this baseline with an accidentally overwritten or externally regenerated INI.

## Classification evidence and limits

Categories describe the existing sequence; they are not a new compatibility or performance recommendation. Labels use local Vortex package metadata and, for ambiguous archives, read-only BA2 filename-table inspection. Filename presence and this baseline do not establish in-game compatibility. Deployment must be rechecked when rebuilding.

In particular, `HoloHUD_4PA.ba2` contains dashboard/rain-effect meshes and textures and no SWF files. Its existing position after HUDModLoader is preserved as a power armor asset add-on. `CC.ba2` contains legendary-perk interface graphics; `BetAnim` is Better Animals; `SF_SP` is Retro Stimpacks. These names are not treated as evidence of different mod types.

## sResourceIndexFileList

183 archives in 27 ordered categories.

### 1. Menu music and map

Positions 1-2.

- `MIHCMenu - Music.ba2`
- `SlasherMaskMap.ba2`

### 2. World texture upscales

Positions 3-15.

- `D1_2X.ba2`
- `D2_2X.ba2`
- `D3_2X.ba2`
- `D4_2X.ba2`
- `D5_2X.ba2`
- `D6_2X.ba2`
- `D7_2X.ba2`
- `DA1_2X.ba2`
- `DA2_2X.ba2`
- `DA3_2X.ba2`
- `DA4_2X.ba2`
- `O1_2X.ba2`
- `76HDo_n.ba2`

### 3. Furniture, displays and stash

Positions 16-19.

- `FBarSet.ba2`
- `DocOr_M.ba2`
- `DocOr_T.ba2`
- `xxbountystash.ba2`

### 4. Glass, trash and water cleanup

Positions 20-26.

- `FGB_AiO_M.ba2`
- `FGB_AiO_T.ba2`
- `Fake_Glass_Begone_Dpl_M.ba2`
- `FTB_M.ba2`
- `FTB_T.ba2`
- `NO Scum - Main.ba2`
- `NO Scum - Textures.ba2`

### 5. Building kits and greenhouse glass

Positions 27-35.

- `Br_Rev_M.ba2`
- `Br_Rev_T.ba2`
- `Br_Rev_Wood.ba2`
- `GH_Rev_M.ba2`
- `GH_Rev_T.ba2`
- `OM_Rev_M.ba2`
- `OM_Rev_T.ba2`
- `GH_Glass_M.ba2`
- `GH_Glass_T.ba2`

### 6. Animal appearance

Positions 36-37.

BetAnim is Better Animals, as identified by local Vortex metadata.

- `BetAnim_M.ba2`
- `BetAnim_T.ba2`

### 7. Glass walls and metal beams

Positions 38.

Beams is the glass-wall/metal-beam replacer, not a projectile effect.

- `Beams.ba2`

### 8. Blood, splashes and projectiles

Positions 39-42.

- `EnhancedBlood - Meshes.ba2`
- `EnhancedBlood - Textures.ba2`
- `EWSplash_Medium.ba2`
- `tracer.ba2`

### 9. Props and mirrors

Positions 43-46.

- `PropsAiO_M.ba2`
- `PropsAiO_T.ba2`
- `Better Mirrors_M.ba2`
- `Better Mirrors_T.ba2`

### 10. Power armor lighting and floor textures

Positions 47-48.

- `Diranars_PALight_Up.ba2`
- `AFR.ba2`

### 11. Clothing and power armor appearance

Positions 49-58.

- `2xArmorClothing.ba2`
- `HDFixedBeret.ba2`
- `Nuka_M.ba2`
- `Nuka_T.ba2`
- `2xPowerArmor.ba2`
- `PA_Bundle.ba2`
- `ReconPA_M.ba2`
- `ReconPA_T.ba2`
- `BeltPack.ba2`
- `Vulcan - Nuclear Winter.ba2`

### 12. Weapon texture upscales

Positions 59.

- `2xWeapons.ba2`

### 13. World, workstations, fire and water

Positions 60-66.

- `Gloomy AIO (All-In-One) 2.2.ba2`
- `4x Workstations.ba2`
- `Widening the ground to prevent settlement.ba2`
- `Fireplaces.ba2`
- `Fire_Extinguisher_old_M.ba2`
- `Fire_Extinguisher_old_T.ba2`
- `WaterSD.ba2`

### 14. Loot bag appearance

Positions 67-68.

- `Heartbags-M.ba2`
- `Heartbags-T.ba2`

### 15. Landscape, lighting and flora

Positions 69-77.

- `ugly textures gone.ba2`
- `PoA_Lights.ba2`
- `SIA_M.ba2`
- `SIA.ba2`
- `EF_M.ba2`
- `EF_T.ba2`
- `plant_glow.ba2`
- `FLORANIM_M.ba2`
- `FLORANIM_T-2K.ba2`

### 16. Bodies, corpses, outfits and eyes

Positions 78-85.

- `EVB76FIX_M.ba2`
- `EVB76FIX_T.ba2`
- `Lost_EVB_Textures.ba2`
- `EVB_BAT.ba2`
- `ACAB76_corpsesM.ba2`
- `ACAB76_corpsesT.ba2`
- `CCO76 - Main.ba2`
- `EyesOfAppalachia.ba2`

### 17. Creature appearance

Positions 86-91.

- `ScorchedHeadExplosion.ba2`
- `BetterWendigos.ba2`
- `Scorched Scorchbeasts.ba2`
- `USBQ-8-Starship_Main.ba2`
- `USBQ_Textures.ba2`
- `USBQ_BrighterWings4K.ba2`

### 18. Object fixes, glass and sky

Positions 92-97.

- `HDDoormat.ba2`
- `NukaColaDoorGlassFix.ba2`
- `ProtectronGlassFix.ba2`
- `Alien glass fix.ba2`
- `PrettySkyM.ba2`
- `PrettySkyT.ba2`

### 19. Aquariums, vehicles, furniture, plants and brahmin

Positions 98-111.

HBrah is Better Brahmin; VB02 is the Enclave Vertibird.

- `CleanAxoAquarium_M.ba2`
- `CleanAxoAquarium_T.ba2`
- `VB02_M.ba2`
- `VB02_T.ba2`
- `Quality CubeMaps - HD Cube Maps.ba2`
- `securitron_vendorbot.ba2`
- `AoS_PottedPlant_Tex.ba2`
- `AoS_PottedPlant_Set06.ba2`
- `EnclaveRug.ba2`
- `Lseat_T.ba2`
- `FishTank_M.ba2`
- `FishTank_T.ba2`
- `HBrah_M.ba2`
- `HBrah_T.ba2`

### 20. Perk board, trees and stimpack appearance

Positions 112-117.

SF_SP is SF Retro Stimpacks, not a hairstyle.

- `PerkBoardTexRep.BA2`
- `PerkBoardTexRep2.BA2`
- `WillowTreeM.ba2`
- `WillowTreeT.ba2`
- `SF_SP_M.ba2`
- `SF_SP_T.ba2`

### 21. Hairstyles

Positions 118-129.

- `fhair_391_M.ba2`
- `fhair_391_T.ba2`
- `nmixx_hair_M.ba2`
- `nmixx_hair_T.ba2`
- `SF_CPony_M.ba2`
- `SF_CPony_T.ba2`
- `SF_scbe_M.ba2`
- `SF_scbe_T.ba2`
- `VCHA_M.ba2`
- `VCHA_T.ba2`
- `SF_PigTails_M.ba2`
- `SF_PigTails_T.ba2`

### 22. Lights, equipment and furniture details

Positions 130-147.

- `LightFixtures - Main.ba2`
- `LightFixtures - Textures.ba2`
- `Metal_Barrels.ba2`
- `ASL_T.ba2`
- `TV_Fix_M.ba2`
- `TV_Fix_T.ba2`
- `Amiga_M.ba2`
- `Amiga_T.ba2`
- `RLP.ba2`
- `PepperShakerBlackRed.ba2`
- `BetterLodge.ba2`
- `BetterLodge_T.ba2`
- `CookingStove - RedLess.ba2`
- `Kitchenset - Textures.ba2`
- `BFood_M.ba2`
- `BFood_T.ba2`
- `HT01_M.ba2`
- `HT01_T.ba2`

### 23. Pip-Boy and decorative map appearance

Positions 148-149.

- `EnclavePipBoy.ba2`
- `BetterGITDMap.ba2`

### 24. Glow, collectible markers and ESP

Positions 150-171.

Glowing Scorched.ba2 is explicitly allowed by the user.

- `Glow.ba2`
- `GlowMapFragments.ba2`
- `BobbleheadStand_M.ba2`
- `BobbleheadStand_T.ba2`
- `ore_glow.ba2`
- `Cr_Mrk_AiO.ba2`
- `Glowing Scorched.ba2`
- `ACEE.ba2`
- `BH_Marker.ba2`
- `Cs_Marker.ba2`
- `Mag_Marker.ba2`
- `PIE - Pitt Items ESP (v1.1.0).ba2`
- `SB_Mrk.ba2`
- `ESP_NC_AiO.ba2`
- `ESP_VendorOutline.ba2`
- `fuel_ESP.ba2`
- `ESP_TeddyBears.ba2`
- `150Abraxo.ba2`
- `Ammo_Aid_ESP.ba2`
- `bug_cans.ba2`
- `ESP_Daily_Foods_Items.ba2`
- `PintSizeMaskESPV1.ba2`

### 25. Gameplay, legendary visibility and raid geometry

Positions 172-175.

- `InstantStimpak.ba2`
- `ESP_Legendaries.ba2`
- `NoGuardianBase.ba2`
- `obstructioneliminated.ba2`

### 26. Expedition voiceline removal

Positions 176-179.

Only the four individual expedition variants 5-8 are approved. REVL variants 1-4, 9, and 10 are blacklisted in AGENTS.md.

- `REVL_5 - The Pitt (Union Dues) Characters Voiceline Remover.ba2`
- `REVL_6 - The Pitt (Ashes to Fire) Characters Voiceline Remover.ba2`
- `REVL_7 - Atlantic City (Tax Evasion) Characters Voiceline Remover.ba2`
- `REVL_8 - Atlantic City (The Most Sensational Game) Characters Voiceline Remover.ba2`

### 27. Silo and raid geometry, fusion-core charger and saloon doors

Positions 180-183.

Preserve this final IndexFileList block and its current internal order.

- `NoSiloElevatorHatch.ba2`
- `Drill_Skip_v2.ba2`
- `EnclaveFusioncore.ba2`
- `nosaloondoors.ba2`

## sResourceArchive2List

73 archives in 18 ordered categories.

### 1. HUD editing, building and interaction UI

Positions 1-8. **Must remain before HUDModLoader.ba2.**

CampVisitorsFix contains interface/campbuilds.swf; EasyFishing contains interface/fishingmenu.swf. Keep both in this UI group before HUDModLoader. Keep Ultrawide76_QuickBoy.ba2 immediately after QuickBoyX1.0SC.ba2 as the user-approved override; both remain before HUDModLoader. The centered Ultrawide variant is blacklisted.

- `HUDEditor_IHUD.ba2`
- `CampBudgetAndBuildingCosts.ba2`
- `CampVisitorsFix.ba2`
- `FastTerminals.ba2`
- `EasyHackingLockpicking.ba2`
- `EasyFishing.ba2`
- `QuickBoyX1.0SC.ba2`
- `Ultrawide76_QuickBoy.ba2`

### 2. HUD status, players, challenges and perk loadouts

Positions 9-12. **Must remain before HUDModLoader.ba2.**

- `HUDCondition.ba2`
- `HUDPlayerList.ba2`
- `HUDChallenges.ba2`
- `PerkLoadoutManager-HML.ba2`

### 3. Inventory, Pip-Boy, scopes and loading screens

Positions 13-18. **Must remain before HUDModLoader.ba2.**

- `ImprovedPipboyStats.ba2`
- `BetterInventory-UO.ba2`
- `InventOmaticStash-UO.ba2`
- `LootExcluder.ba2`
- `ModernScopes.ba2`
- `loadingScreenOverhaul_smaller_v0.2.ba2`

### 4. VATS, health, loadouts, workbench and damage UI

Positions 19-25. **Must remain before HUDModLoader.ba2.**

- `VATSPriority.ba2`
- `ImprovedHBS21.ba2`
- `LoadoutWarn.ba2`
- `sVATS.ba2`
- `SkipMessagesConfigurable.ba2`
- `ImprovedWorkbench.ba2`
- `SimpleDPS.ba2`

### 5. Dialogue, UI speed, targeting, perks and seasons

Positions 26-32. **Must remain before HUDModLoader.ba2.**

CC.ba2 is VaultgirlLegendaryPerks and contains interface/legendaryperkslibrary.swf.

- `autodialogue.ba2`
- `FastUI.ba2`
- `TargetPulse.ba2`
- `CC.ba2`
- `FastPipV2.ba2`
- `KillStreakTimer.ba2`
- `BetterSeasons.ba2`

### 6. HUD Mod Loader

Positions 33.

All five preceding UI/HUD groups must remain before this loader. It is not the last archive in the whole list.

- `HUDModLoader.ba2`

### 7. Audio overhaul

Positions 34.

- `76UltimateAudioOverhaul - v3.ba2`

### 8. Weapon draw animation

Positions 35.

QuickDraw76 contains a first-person gunbehavior.hkx. Preserve its current position between the audio overhaul and the following audio/effects group.

- `QuickDraw76.ba2`

### 9. Weapon, explosion and emote audio and effects

Positions 36-42.

- `AppalachiaWarfare - Weapons.ba2`
- `AppalachiaWarfare - Bullets.ba2`
- `AppalachiaWarfare - Explosions.ba2`
- `IRGSO.ba2`
- `GaussWeaponFullChargeSound.BA2`
- `Emote sound replacer1.3.ba2`
- `MOD_BetterExplosions.ba2`

### 10. Player and power armor animations

Positions 43-48.

- `MoreAnimations.ba2`
- `AnimNew.ba2`
- `PA_FastANIM.ba2`
- `lowered_addon.ba2`
- `HolsteredSprintHands.BA2`
- `LandWithYourKnees.ba2`

### 11. Weapon sight and power armor dashboard assets

Positions 49-50.

HoloHUD_4PA.ba2 was inspected: it contains dashboard/rain-effect meshes and textures, with no SWF files. Preserve this asset-only add-on after HUDModLoader; do not classify it as an HML widget merely from its name.

- `Minigun_ReflexNull.ba2`
- `HoloHUD_4PA.ba2`

### 12. Weapon timing and power armor entry tweaks

Positions 51-57.

FasterFirerate_2.0.ba2 is the approved replacement for the blacklisted GammaGunFFR.ba2 and GatlingGunFireRate.ba2. Keep InstantReloads5.ba2 immediately after FasterFirerate as the dedicated reload archive. FFR200MELEE300.ba2 remains enabled as the approved replacement for FFR100MELEE100.ba2. FastPlasmaCaster.ba2 is explicitly allowed.

- `NoSpinup5.ba2`
- `FasterFirerate_2.0.ba2`
- `InstantReloads5.ba2`
- `InstantPowerArmor.ba2`
- `DragonFFR.ba2`
- `FFR200MELEE300.ba2`
- `FastPlasmaCaster.ba2`

### 13. Skeleton and underarmor

Positions 58-60.

PPHmix_KF1 contains first- and third-person skeleton meshes (Knee Fix and Pip-Boy Headlight).

- `PPHmix_KF1.ba2`
- `EVB_UA.ba2`
- `EVB_UAM.ba2`

### 14. Wood pile visibility and color grading

Positions 61-64.

nucleus.ba2 was inspected and contains color-grading LUT textures.

- `InvisiWoodPiles.ba2`
- `CO76LUT.ba2`
- `More-Vibrancy.ba2`
- `nucleus.ba2`

### 15. Stealth visibility shaders

Positions 65.

User-requested Custom INI reference for the Visible Stealth Field - White archive deployed by Vortex. The base INI also references this game-named shader archive; leave its deployment to Vortex.

- `SeventySix - Shaders.ba2`

### 16. Spa furniture and hairstyles

Positions 66-71.

- `VTspa_M.ba2`
- `VTspa_T.ba2`
- `CNV_PT_M.ba2`
- `CNV_PT_T.ba2`
- `SF_DSUNI_M.ba2`
- `SF_DSUNI_T.ba2`

### 17. Marker effect removal

Positions 72.

BM_Invisible contains a detect-life shader-particle mesh.

- `BM_Invisible.ba2`

### 18. Door-removal override

Positions 73.

DoorsBGoneV14.ba2 remains the final entry.

- `DoorsBGoneV14.ba2`

## Snapshot integrity

Source INI SHA-256 at capture: `5EE214FDEAF058C19B218AECE51EABDC6A018861EE9223D9DDF21D983E61CD8F`.

The flattened JSON list values were checked against the updated source INI in exact order. The INI and this reference reflect the approved archive changes; Data deployment remains managed by Vortex.
