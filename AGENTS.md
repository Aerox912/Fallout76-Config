# Fallout 76 configuration instructions

## Rebuilding the Custom INI archive section

These instructions apply when rebuilding or updating `[Archive]` in
`Fallout76Custom.ini`, including `sResourceIndexFileList` and
`sResourceArchive2List`.

- Read `ARCHIVE_LOAD_ORDER.md` and use `archive-load-order.json` as the saved
  categorized baseline if the live archive section has been replaced. Preserve
  the order of lists, categories, and filenames; do not alphabetize or regroup
  existing entries. Update both reference files only after intentional,
  user-approved changes.
- Keep all UI/HUD categories marked `mustPrecedeHudModLoader` before
  `HUDModLoader.ba2` in `sResourceArchive2List`. Insert new HUD Mod Loader
  widgets before the loader and preserve the relative order of existing mods.
  The loader does not have to be the final archive in the entire list.
- Preserve the later asset/audio/gameplay blocks. `HoloHUD_4PA.ba2` is a
  dashboard/rain-effect mesh and texture add-on, so keep its saved position
  after the loader. Keep `DoorsBGoneV14.ba2` last in `sResourceArchive2List`.
- Check archive filenames against the files directly in
  `D:\Games\SteamLibrary\steamapps\common\Fallout76\Data`.
- Exclude the blacklisted archives below from both lists, even if they appear in
  the current INI, a backup, or an imported mod list.
- Compare complete filenames case-insensitively. Do not extend a blacklist entry
  to similarly named, renamed, or versioned archives without a user request.
- Normally include only archives deployed in Data. Preserve explicitly approved
  references that are awaiting Vortex deployment and report them as missing;
  do not silently remove them. Remove duplicate filenames within each list and
  preserve unrelated INI settings and user changes.

## Vortex owns Data deployment

- Vortex manages the game's Data directory. Do not copy, restore, replace, or
  delete archives or companion configuration files there when maintaining this
  repository's INI files.
- Inspect Data and Vortex staging read-only to identify available archives.
  Make approved filename changes in the INI and leave deployment to Vortex.
- Ask before replacing or removing INI archive references unless the user has
  already approved the specific change.

## Archive blacklist

On 2026-10-10, the historical blacklist in
`.github/copilot-instructions.md` at Git commit `c46fb73` was filtered against
the Data directory above. Of 61 archive filenames, 51 absent files were removed.
The user then explicitly allowed `Glowing Scorched.ba2`, leaving the nine
entries below. This list replaces the historical blacklist for future
archive-section rebuilds; do not restore its removed entries from old
instructions or backups.

- `InstantReloads.ba2`
- `FFRSingle.ba2`
- `FastPlasmaCaster.ba2`
- `GammaGunFFR.ba2`
- `Q_Autoaxe.ba2`
- `instantbowcharge.ba2`
- `FastReloader.ba2`
- `NoRaidDrill.ba2`
- `EarleNoWalls.ba2`

Preserve the existing exception for `FastReloader.ba2`: exclude it by default,
but use it in place of `FasterReload_-_Noclip.ba2` when the user explicitly
chooses that alternative.
