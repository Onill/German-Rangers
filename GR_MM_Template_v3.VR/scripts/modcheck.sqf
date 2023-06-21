_whitelistedMods = 	[
						"@CBA_A3", "450814997",
						"@ace", "463939057",
						"@ACE 3 Extension (Placeables)", "866772689",
						"@KAT - Advanced Medical", "2020940806",
						"@3den Enhanced", "623475643",

						// CUP
						"@CUP Terrains - Core", "583496184",
						"@CUP Terrains - CWA", "853743366",
						"@CUP Terrains - Maps", "583544987",
						"@CUP Terrains - Maps 2.0", "1981964169",
						"@CUP Units", "497661914",
						"@CUP Vehicles", "541888371",		
						"@CUP Weapons", "497660133",
						"@CUP ACE3 Compatibility Addon - Weapons", "549676314",
						"@CUP ACE3 Compatibility Addon - Vehicles", "621650475",
						"@CUP ACE3 Compatibility Addon - Terrains", "1375890861",
						"@Community Factions Project (CFP)", "1369691841",
						
						//TFAR
						"@Task Force Arrowhead Radio (BETA!!!)", "894678801",
						"@Radio Animations for Task Force Radio", "1480333388",

						//LAMBS
						"@LAMBS_RPG_CUP", "2521194984",
						"@LAMBS_RPG", "1858070328",
						"@LAMBS_Turrets", "1862208264",
						"@LAMBS_Suppression", "1808238502",
						"@LAMBS_Danger.fsm", "1858075458",

						//German Rangers Extras
						"@NATO Markers+", "1340701737",
						"@Zeus Enhanced", "1779063631",
						"@Zeus Enhanced - ACE3 Compatibility", "2018593688",
						"@cTab", "871504836",
						"@Enhanced Movement", "333310405",
						"@Enhanced Movement Rework", "2034363662",
						"@German Ranger Helme", "2887592681",
						"@Iveco Trakker 6x6 Trucks", "863008735",

						//Additional Maps
						"@Jbad", "520618345",
						"@Bala Murghab, Afghanistan", "2781043850",
						"@Anizay", "1537973181",
						"@LYTHIUM", "909547724",
						"@Rosche, Germany", "1527410521",
						"@UMB Colombia", "2266710560",
						"@Hellanmaa", "1291778160",
						

						//----------------------------------
						//
						//	Additional Client Side Mods
						//
						//----------------------------------
						
						//Gameplay
						"@Suppress", "825174634",
						"@Immerse", "825172265",
						"@CH View Distance", "837729515",
						"@Better Inventory", "2791403093",
						"@Window Breaker", "1578884800",
						"@Brush Clearing", "1889104923",
						"@Arsenal Search", "2060770170",
						"@ACE 3 Extension (Animations and Actions)", "766491311",
						"@Dismount Where You Look", "1841553455",
						"@Ride Where You Look", "2153127400",
						"@Project Infinite - Inspect weapons", "812441729",
						"@9Liners & Notepad", "1210050323",
						"@ACE Compat CUP Facewear", "2614664632",
						"@Head Range Plus - TrackIR Mod", "630737877",
						"@cb_blood", "2362277256",
						"@Enhanced Map Ace Version", "2467590475",
						
						
						//Visual
						"@Blastcore Edited (standalone version)", "767380317",
						"@Vanilla smoke (for Blastcore Edited)", "853303947",	
						"@Blastcore Murr Edition Smoke Alternative", "2478519591",
						"@Blastcore Murr Edition", "2257686620",
						"@Dynamic Lights Extended", "2429580300",
						"@Real Lighting and Weather", "2809399991",
						"@Cinematic Lens Flare", "878502647",
						"@Splendid Lighting Modification", "2070681304",
						"@Fixed Splendid Lighting Modification", "2979710855",
						"@Cinematic Lens Flare x Splendid Lighting Compatibility", "2715797525",
						"@Reduced Haze Mod v3.1", "1397683809",
						"@Bullets_Hit", "2190826124",
						"@ArmaFXP - Smoke Edit", "2147472177",
						"@Lushify", "2638049909",
						"@ReColor", "649832908",
						
						
						//Sound
						"@DynaSound 2", "825181638",
						"@Enhanced Soundscape", "825179978",
						"@Enhanced Soundscape Plus", "2938312887",
						"@LAxemann's Environment Ducking", "2812569803",
						"@JSRS SOUNDMOD", "861133494",
						"@JSRS SOUNDMOD - CUP WEAPONS MOD SOUND SUPPORT", "1624803912",
						"@JSRS SOUNDMOD - CUP VEHICLES MOD SOUND SUPPORT", "1624804924",
						"@JSRS SOUNDMOD - Reloading Sounds", "1429098683",
						
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
					];


_blacklistedMods = [
						"@Animate", "2819732932",
						"@Pythia", "1751569185",
						"@Ocap2Arma", "2713040198",
						"@BloodLust", "667953829",
						"@Bloodlust (Edit)", "2173564362",
						"@Bloodlust LITE", "753617266",
						"@Bloodlust+", "2916769685",
						"@CQB Weapon Stance", "2288108304",
						"@Bullet Casings", "606289254",
						"@Cartridge Cases", "1198749494",
						"@SigSound - ArmA3", "1181005146"
						/*,"@Reduced Weapon Sway", "567737932",
						"@No Weapon Sway", "570118882",
						"@Weapon Sway", "784646334",
						"@Reduced Weapon Sway", "2295886908",
						"@GC's No Recoil, No Weapon Sway", "833939663",
						"@Reduced Weapon Sway by 75%", "2017877109"*/
					];

private _playermods = [];
private _blacklisthits = [];

_loadedMods = configSourceModList (configFile >> "CfgPatches");

{
	_result = true;
	_result = _x in _blacklistedMods;
	if (_result == true )then {
		_blacklisthits pushBack _x;
	};
		
} forEach _loadedMods;

if(count _blacklisthits > 0) then {
    (format ["%1 is using Blacklisted Mods: %2",profileName, _blacklisthits]) remoteExec ["diag_log", 2];
	_playermessage = format ["<t color='#ff0000' size='3'>Du benutzt geblacklistete Mods.</t><br/><t color='#ffffff' size='1.5'> Bitte starte das Spiel erneut und entferne die Mods aus deinem Preset: %1 </t>", _blacklisthits];
	titleText [_playermessage, "BLACK FADED", 100, true, true];
	
	//Teleport to Cage of Shame:
	player setPos getPos blacklistcage;
}
else {

	{
		_result = false;
		_result = _x in _whitelistedMods;
		if (_result == false )then {
			_playermods pushBack _x;
		};
		
		
	} forEach _loadedMods;

	if(count _playermods > 0) then {
		(format ["%1 is using non Whitelisted Mods: %2",profileName, _playermods]) remoteExec ["diag_log", 2];
		_playermessage = format ["<t color='#ff0000' size='3'>Du benutzt nicht freigeschaltete Mods.</t><br/><t color='#ffffff' size='1.5'>Bitte starte das Spiel erneut und entferne die Mods aus deinem Preset.<br/>Du kannst via Ticket beantragen, dass diese Mods freigestellt werden: %1 </t>", _playermods];
		titleText [_playermessage, "PLAIN NOFADE", 6, true, true];
	};
};