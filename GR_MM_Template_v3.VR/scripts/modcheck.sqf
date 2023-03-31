_whitelistedMods = 	[
						"@CBA_A3",
						"@ace",
						"@ACE 3 Extension (Placeables)",
						"@KAT - Advanced Medical REWRITE",

						// CUP
						"@CUP Terrains - Core",
						"@CUP Terrains - CWA",
						"@CUP Terrains - Maps",
						"@CUP Terrains - Maps 2.0",
						"@CUP Units",		
						"@CUP Vehicles",		
						"@CUP Weapons",
						"@CUP ACE3 Compatibility Addon - Weapons",
						"@CUP ACE3 Compatibility Addon - Vehicles",
						"@CUP ACE3 Compatibility Addon - Terrains",
						
						//RHS
						"@RHSAFRF",
						"@RHSGREF",
						"@RHSUSAF",
						"@RHSSAF",
						"@3CB Factions",
						"@ACE Compat - RHS AFRF",
						"@ACE Compat - RHS- SAF",
						"@ACE Compat - RHS USAF",
						"@ACE Compat - RHS- GREF",
						
						//TFAR
						"@Task Force Arrowhead Radio (BETA!!!)",
						"@Radio Animations for Task Force Radio",

						//LAMBS
						"@LAMBS_RPG",
						"@LAMBS_Turrets",
						"@LAMBS_Suppression",
						"@LAMBS_Danger.fsm",

						//German Rangers Extras
						"@NATO Markers+",
						"@Zeus Enhanced",
						"@Zeus Enhanced - ACE3 Compatibility",
						"@cTab",
						"@Enhanced Movement",
						"@Enhanced Movement Rework",
						"@German Ranger Helme",
						"@FHQ_GroupInfo",
						"@BackpackOnChest - Redux",
						"@VS ACE Static Line Jump MOD DEPENDENCY CHANGED Backpackonchest - Redux",
						"@Simplex Support Services",

						//Additional Maps
						"@Jbad",
						"@Bala Murghab, Afghanistan",
						"@Anizay",
						"@LYTHIUM",
						"@Rosche, Germany",

						//----------------------------------
						//
						//	Additional Client Side Mods
						//
						//----------------------------------
						
						//Gameplay
						"@Suppress",
						"@Immerse",
						"@CH View Distance",
						"@Better Inventory",
						"@DUI - Squad Radar",
						"@Window Breaker",
						"@Brush Clearing",
						"@Arsenal Search",
						"@ACE 3 Extension (Animations and Actions)",
						"@Dismount Where You Look",
						"@Ride Where You Look",
						"@Project Infinite - Inspect weapons",
						"@CQB Weapon Stance",
						"@9Liners & Notepad",
						
						
						//Visual
						"@Blastcore Edited (standalone version)",
						"@Vanilla smoke (for Blastcore Edited)",		
						"@Blastcore Murr Edition Smoke Alternative",
						"@Blastcore Murr Edition",		
						"@Dynamic Lights Extended",
						"@Real Lighting and Weather",
						"@Cinematic Lens Flare",
						"@Splendid Lighting Modification",
						"@Reduced Haze Mod v3.1",
						"@Bullets_Hit",
						"@ArmaFXP - Smoke Edit",
						
						
						//Sound
						"@DynaSound 2",
						"@Enhanced Soundscape",
						"@LAxemann's Environment Ducking",
						"@JSRS SOUNDMOD",
						"@JSRS SOUNDMOD - RHS USAF Mod Pack Sound Support",
						"@JSRS SOUNDMOD - CUP WEAPONS MOD SOUND SUPPORT",
						"@JSRS SOUNDMOD - CUP VEHICLES MOD SOUND SUPPORT",
						"@JSRS SOUNDMOD - Reloading Sounds",
						
						//Arma 3 Expansions
						"expansion",
						"kart",
						"heli",
						"mark",
						"jets",
						"argo",
						"orange",
						"tacops",
						"tank",
						"enoch",
						"aow",
						"curator"						
					]

private _playermods = [];

_loadedMods = configSourceModList (configFile >> "CfgPatches");

{
	_result = false;
	_result = _x in _whitelistedMods;
	if !_result then _playermods pushBack _x;	
	
} forEach _loadedMods;

if(count _playermods > 0) then {
    (format ["%1 is using non Whitelisted Mods: %2",profileName, _playermods]) remoteExec ["diag_log", 2];
};