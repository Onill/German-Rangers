//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Player Initialisierung
//
//------------------------------------------------------------------
//------------------------------------------------------------------

waitUntil{!isNull(player)};
titleText ["Missionsvorbereitung", "BLACK FADED" ];
setTerrainGrid 25;
enableEnvironment [false, true];

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//							Variablen
//
//------------------------------------------------------------------
//------------------------------------------------------------------

// Muss vom Missionmaker UNBEDIGT gesetzt werden! Aktiviert nutzung der Datenbank (für Kampagnen benötigt)
useDatabase = false;
publicVariable "useDatabase";

// Muss vom Missionmaker UNBEDIGT gesetzt werden! Entscheidet ob Fleck oder Tropentarn getragen wird "fleck" / "tropen".
tarnfarbe = "tropen";
publicVariable "tarnfarbe";
// Für die GUI:
// 0 = Flecktarn, 1 = Tropentarn
tarnMuster = 1;

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Mod Whitelist Check
//
// 			Checks Loaded Mods and logs Non Whitelisted
//------------------------------------------------------------------
//------------------------------------------------------------------

private _playermods = [];

_loadedMods = configSourceModList (configFile >> "CfgPatches");

{
	switch (_x) do
	{
		//Core Addons
		case "@CBA_A3": {true};
		case "@ace": {true};
		case "@ACE 3 Extension (Placeables)": {true};
		case "@KAT - Advanced Medical": {true};

		// CUP
		case "@CUP Terrains - Core": {true};
		case "@CUP Terrains - CWA": {true};
		case "@CUP Terrains - Maps": {true};
		case "@CUP Terrains - Maps 2.0": {true};
		case "@CUP Units": {true};		
		case "@CUP Vehicles": {true};		
		case "@CUP Weapons": {true};
		case "@CUP ACE3 Compatibility Addon - Weapons": {true};
		case "@CUP ACE3 Compatibility Addon - Vehicles": {true};
		case "@CUP ACE3 Compatibility Addon - Terrains": {true};
		
		//RHS
		case "@RHSUSAF": {true};
		case "@3CB Factions": {true};
		case "@ACE Compat - RHS AFRF": {true};
		case "@ACE Compat - RHS- SAF": {true};
		case "@ACE Compat - RHS USAF": {true};
		case "@ACE Compat - RHS- GREF": {true};
		
		//TFAR
		case "@Task Force Arrowhead Radio (BETA!!!)": {true};
		case "@Radio Animations for Task Force Radio": {true};

		//LAMBS
		case "@LAMBS_RPG": {true};
		case "@LAMBS_Turrets": {true};
		case "@LAMBS_Suppression": {true};
		case "@LAMBS_Danger.fsm": {true};

		//DCO
		case "@DCO UnitScanner": {true};
		case "@DCO Soldier FSM": {true};
		case "@DCO Vehicle.FSM - Vehicle AI Enhancement": {true};

		//German Rangers Extras
		case "@NATO Markers+": {true};
		case "@Zeus Enhanced": {true};
		case "@Zeus Enhanced - ACE3 Compatibility": {true};
		case "@cTab": {true};
		case "@Enhanced Movement": {true};
		case "@Enhanced Movement Rework": {true};
		case "@German Ranger Helme": {true};
		case "@FHQ_GroupInfo": {true};
		case "@BackpackOnChest - Redux": {true};
		case "@VS ACE Static Line Jump MOD DEPENDENCY CHANGED Backpackonchest - Redux": {true};
		case "@Simplex Support Services": {true};

		//Additional Maps
		case "@Jbad": {true};
		case "@Bala Murghab, Afghanistan": {true};
		case "@Anizay": {true};
		case "@LYTHIUM": {true};
		case "@Rosche, Germany": {true};

		//----------------------------------
		//
		//	Additional Client Side Mods
		//
		//----------------------------------
		
		//Gameplay
		case "@Suppress": {true};
		case "@Immerse": {true};
		case "@CH View Distance": {true};
		case "@Better Inventory": {true};
		case "@DUI - Squad Radar": {true};
		case "@Window Breaker": {true};
		case "@Brush Clearing": {true};
		case "@Arsenal Search": {true};
		case "@ACE 3 Extension (Animations and Actions)": {true};
		case "@Dismount Where You Look": {true};
		case "@Ride Where You Look": {true};
		case "@Project Infinite - Inspect weapons": {true};
		case "@CQB Weapon Stance": {true};
		case "@9Liners & Notepad": {true};
		
		
		//Visual
		case "@Blastcore Edited (standalone version)": {true};
		case "@Vanilla smoke (for Blastcore Edited)": {true};		
		case "@Blastcore Murr Edition Smoke Alternative": {true};
		case "@Blastcore Murr Edition": {true};		
		case "@Dynamic Lights Extended": {true};
		case "@Real Lighting and Weather": {true};
		case "@Cinematic Lens Flare": {true};
		case "@Splendid Lighting Modification": {true};
		case "@Reduced Haze Mod v3.1": {true};
		case "@Bullets_Hit": {true};
		case "@ArmaFXP - Smoke Edit": {true};
		
		
		//Sound
		case "@DynaSound 2": {true};
		case "@Enhanced Soundscape": {true};
		case "@LAxemann's Environment Ducking": {true};
		case "@JSRS SOUNDMOD": {true};
		case "@JSRS SOUNDMOD - RHS USAF Mod Pack Sound Support": {true};
		case "@JSRS SOUNDMOD - CUP WEAPONS MOD SOUND SUPPORT": {true};
		case "@JSRS SOUNDMOD - CUP VEHICLES MOD SOUND SUPPORT": {true};
		case "@JSRS SOUNDMOD - Reloading Sounds": {true};
		
		
		//Arma 3 Expansions
		case "expansion": {true};
		case "kart": {true};
		case "heli": {true};
		case "mark": {true};
		case "jets": {true};
		case "argo": {true};
		case "orange": {true};
		case "tacops": {true};
		case "tank": {true};
		case "enoch": {true};
		case "aow": {true};
		case "curator": {true};
		
		default { _playermods pushBack _x;};
	}
	
} forEach _loadedMods;

//Muss noch getestet werden ob der Eintrag wirklich im Serverlog landet
if(count _playermods > 0) then {
    (format ["%1 is using non Whitelisted Mods: %2",profileName, _playermods]) remoteExec ["diag_log", 2];
};


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//							Dynamic Groups
//
//------------------------------------------------------------------
//------------------------------------------------------------------

//DynamicGroups_Function Function needs to be initialized on server and client. Clients can then use action TeamSwitch ("U" by default) to access the Dynamic Groups interface.
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;			//Exec on client


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//							Loadouts
//
//------------------------------------------------------------------
//------------------------------------------------------------------

//Abfrage ob Datenbank oder frisches Loadout
	if useDatabase then {

		// INIDB
		_clientID = clientOwner;
		_UID = getPlayerUID player;
		_name = name player;
		checkForDatabase = [_clientID, player, _name];
		publicVariableServer "checkForDatabase";
		_hasLoadout = false;

		"loadData" addPublicVariableEventHandler
		{
			_gear = (_this select 1);
			player setUnitLoadout _gear;
			_hasloadout = true;
		};
		
		if (_hasloadout == false) then {
			call compile preprocessFileLineNumbers "loadouts\loadoutInit.sqf";
		};
	}
	else {
		call compile preprocessFileLineNumbers "loadouts\loadoutInit.sqf";
	};


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//							Recolor
//
//------------------------------------------------------------------
//------------------------------------------------------------------

/*
// Recolor Post-Processing - Night
PPeffect_colorC = ppEffectCreate ["ColorCorrections",1500];
PPeffect_colorC ppEffectAdjust [1.04,0.9,-0.00279611,[0.147043,0,0.0476897,-0.34],[1,1,0.94,1.15],[1.39,0.95,-1.34,0]];
PPeffect_colorC ppEffectEnable true;
PPeffect_colorC ppEffectCommit 0;
*/

/*
// Recolor Post-Processing - Desert/Winter
"colorCorrections" ppEffectAdjust 	[1,1,-0.01,[0.0, 0.0, 0.0, 0.0],[1, 0.8, 0.6, 0.6],[0.199, 0.587, 0.114, 0.0]]; 
"colorCorrections" ppEffectEnable true; 
"colorCorrections" ppEffectCommit 0; 
"filmGrain" ppEffectAdjust 	[0.04,1,1,0.1,1,false];      
"filmGrain" ppEffectEnable true;    
*/

/*
// Recolor Post-Processing - brownish, bright african
PPeffect_colorC = ppEffectCreate ["ColorCorrections",1500];
PPeffect_colorC ppEffectAdjust [1,1,-0.00279611,[0.399248,0.452746,0.307538,0.1042],[1.36009,1,0.320698,0.95],[2.50966,0.263398,3.22694,0]];
PPeffect_colorC ppEffectEnable true;
PPeffect_colorC ppEffectCommit 0;
*/


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Sandstorm Effect
//
//------------------------------------------------------------------
//------------------------------------------------------------------

/*
	[object,interval,brightness,newspapers] call BIS_fnc_sandstorm
	position: Object - sandstorm center (should be player)
	interval (Optional): Number - particle refresh time (default is 0.07)
	brightness (Optional): Number - brightness coeficient (default is 1)
	newspapers (Optional): Boolean - true if flying newspapers will be present (default is true)
*/

//[player, 0.9, 0.5, true] call BIS_fnc_sandstorm;


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//					Kisten Dragable mit ACE
//
//------------------------------------------------------------------
//------------------------------------------------------------------

/*
check the weight:	[cursorTarget] call ace_dragging_fnc_getweight;
max weight is:		ACE_maxWeightCarry = 600;
					ACE_maxWeightDrag = 800;
*/

/*
if isClass (configFile >> "CfgPatches" >> "ace_main") then {
    [crate1, true, [0, 1, 1], 0] call ace_dragging_fnc_setCarryable;
    [crate1, true, [0, 2, 0], 90] call ace_dragging_fnc_setDraggable;
};
*/


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//					TFAR Longrange in Fahrzeugen
//
//------------------------------------------------------------------
//------------------------------------------------------------------

/*
if (isClass(configFile >> "cfgPatches" >> "task_force_radio")) then {
    car1 setVariable ["tf_side", west];
    car1 setVariable ["tf_hasRadio", true];
    car1 setVariable ["TF_RadioType", "tfar_rt1523g"];
};
*/

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Standard AddActions
//
//------------------------------------------------------------------
//------------------------------------------------------------------

sleep 2;

//ACE Self Interactions for Players in Base
_condition = {player distance base < 300};
_empty_statement = {createDialog "Main_Dialog";}; //  {"Nothing"};

// Creating a Sub Menu Category GR Base with Logo
_base_menu = ["GR Base","GR Base","images\GermanRangersLogo.paa",_empty_statement,_condition] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions"], _base_menu] call ace_interact_menu_fnc_addActionToClass;

//Open Teleport GUI via Self Interaction Menu in Subcategory GR Base
_teleport_action = ["Teleporter","Teleporter","",{ _ok = createDialog "Teleport_Dialog";},_condition] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions","GR Base"], _teleport_action] call ace_interact_menu_fnc_addActionToClass;

//Loadout GUI
_teleport_action = ["Loadouts","Loadouts","",{ _okLoudout = createDialog "ClassLoadout_Dialog";},_condition] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions","GR Base"], _teleport_action] call ace_interact_menu_fnc_addActionToClass;


_personal_arsenal = ["Personal Arsenal","Personal Arsenal","",{ execVM "loadouts\personalArsenal.sqf"; },_condition] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions","GR Base"], _personal_arsenal] call ace_interact_menu_fnc_addActionToClass;

//		New Mission Control


	// Creating a Sub Menu Category GR Base with Logo
	_mission_control = ["Mission Control","Mission Control","images\GermanRangersLogo.paa",{}, {true}] call ace_interact_menu_fnc_createAction;
	[["ACE_ZeusActions"], _mission_control] call ace_interact_menu_fnc_addActionToZeus;
	
	_start_mission = ["Missionsstart","Missionsstart","",{ 
	"scripts\start_mission.sqf" remoteExec ["execVM", [0, -2] select isDedicated];
	},{true}] call ace_interact_menu_fnc_createAction;
	[["ACE_ZeusActions","Mission Control"], _start_mission] call ace_interact_menu_fnc_addActionToZeus;

	_mission_succesful = ["Ende: Mission Erfüllt","Ende: Mission Erfüllt","",{ 
	["scripts\outro_success.sqf"]  remoteExec ["execVM"];
	},{true}] call ace_interact_menu_fnc_createAction;
	[["ACE_ZeusActions","Mission Control"], _mission_succesful] call ace_interact_menu_fnc_addActionToZeus;

	_to_be_continued = ["Ende: TO BE CONTINUED","Ende: TO BE CONTINUED","",{ 
	["scripts\outro_continued.sqf"]  remoteExec ["execVM"];
	},{true}] call ace_interact_menu_fnc_createAction;
	[["ACE_ZeusActions","Mission Control"], _to_be_continued] call ace_interact_menu_fnc_addActionToZeus;



//AddActions für Mission Control
// Old 
// To be removed
laptop_start addAction ["<t color='#00ff00'>Missionsstart</t>", 
	{
		"scripts\start_mission.sqf" remoteExec ["execVM", [0, -2] select isDedicated];
	}, 
	nil, 100, false, true, "", ""
];

laptop_end addAction [
	"<t color='#ff0000'>Ende: Mission Erfüllt</t>", 
	{
		["scripts\outro_success.sqf"]  remoteExec ["execVM"];
	}, 
	nil, 
	100, 
	false, 
	true, 
	"", 
	""
];

laptop_end addAction [
	"<t color='#ff0000'>Ende: TO BE CONTINUED</t>", 
	{
		["scripts\outro_continued.sqf"]  remoteExec ["execVM"];
	}, 
	nil, 
	100, 
	false, 
	true, 
	"", 
	""
];

//------------------------------------------------------------------


// TELEPORT MAIN
teleport addAction ["<t color='#ff0000'>Teleport zum Kompanieführer</t>", "(_this select 1) setPos position s1", nil, 100, false, true, "", ""];
teleport addAction ["<t color='#ff0000'>Teleport zum Stlv. Kompanieführer</t>", "(_this select 1) setPos position s2", nil, 100, false, true, "", ""];
teleport addAction ["<t color='#ff0000'>Teleport zum Zugführer</t>", "(_this select 1) setPos position s3", nil, 100, false, true, "", ""];
teleport addAction ["<t color='#ff0000'>Teleport zum Stlv. Zugführer</t>", "(_this select 1) setPos position s4", nil, 100, false, true, "", ""];
teleport addAction ["<t color='#ff0000'>Teleport zu Alpha</t>", "(_this select 1) setPos position s7", nil, 100, false, true, "", ""];
teleport addAction ["<t color='#ff0000'>Teleport zu Bravo</t>", "(_this select 1) setPos position s19", nil, 100, false, true, "", ""];
teleport addAction ["<t color='#ff0000'>Teleport zu Charlie</t>", "(_this select 1) setPos position s31", nil, 100, false, true, "", ""];
teleport addAction ["<t color='#ff0000'>Teleport zu Delta</t>", "(_this select 1) setPos position s43", nil, 100, false, true, "", ""];
teleport addAction ["<t color='#ff0000'>Teleport zu Sierra</t>", "(_this select 1) setPos position s63", nil, 100, false, true, "", ""];
teleport addAction ["<t color='#ff0000'>Teleport zu Echo 1</t>", "(_this select 1) setPos position s55", nil, 100, false, true, "", ""];
teleport addAction ["<t color='#ff0000'>Teleport zu Echo 2</t>", "(_this select 1) setPos position s59", nil, 100, false, true, "", ""];

// LOADOUTS ZUG FLECKTARN
loadouts1 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: Zugführung") + "</t>"), "loadouts\bwfleck\Zug_Zugfuhrer.sqf",[],98,false,true,"",""];
loadouts1 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: AvD") + "</t>"), "loadouts\bwfleck\Zug_Fox_AvD.sqf",[],98,false,true,"",""];
loadouts1 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: Fox - Nahsicherer") + "</t>"), "loadouts\bwfleck\Zug_Fox_Nahsicherer.sqf",[],98,false,true,"",""];
loadouts1 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: Gruppenführer") + "</t>"), "loadouts\bwfleck\Zug_Gruppenfuhrer.sqf",[],98,false,true,"",""];
loadouts1 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: Truppführer") + "</t>"), "loadouts\bwfleck\Zug_Truppfuhrer.sqf",[],98,false,true,"",""];
loadouts1 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: Grenadier") + "</t>"), "loadouts\bwfleck\Zug_Grenadier.sqf",[],98,false,true,"",""];
loadouts1 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: Schütze") + "</t>"), "loadouts\bwfleck\Zug_Schutze.sqf",[],98,false,true,"",""];
loadouts1 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: DM-Schütze") + "</t>"), "loadouts\bwfleck\Zug_DM.sqf",[],98,false,true,"",""];
loadouts1 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: Schütze EH B") + "</t>"), "loadouts\bwfleck\Zug_EHB.sqf",[],98,false,true,"",""];
loadouts1 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: MG-Schütze") + "</t>"), "loadouts\bwfleck\Zug_MG.sqf",[],98,false,true,"",""];
loadouts1 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: Sanitäter") + "</t>"), "loadouts\bwfleck\Zug_Sanitater.sqf",[],98,false,true,"",""];
loadouts1 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: AT-Schütze") + "</t>"), "loadouts\bwfleck\Zug_AT.sqf",[],98,false,true,"",""];
loadouts1 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: AT-Assistent") + "</t>"), "loadouts\bwfleck\Zug_ATA.sqf",[],98,false,true,"",""];
loadouts1 addAction [("<t color=""#F6B41A"">" + ("Ausrüstung: Sierra Drohne HK416") + "</t>"), "loadouts\bwfleck\Sierra_Drohne_HK416.sqf",[],98,false,true,"",""];
loadouts1 addAction [("<t color=""#F6B41A"">" + ("Ausrüstung: Sierra Drohne HK417") + "</t>"), "loadouts\bwfleck\Sierra_Drohne_HK417.sqf",[],98,false,true,"",""];
loadouts1 addAction [("<t color=""#F6B41A"">" + ("Ausrüstung: Sierra NaSi Cutter") + "</t>"), "loadouts\bwfleck\Sierra_NaSi_Cutter.sqf",[],98,false,true,"",""];
loadouts1 addAction [("<t color=""#F6B41A"">" + ("Ausrüstung: Sierra NaSi Spaten") + "</t>"), "loadouts\bwfleck\Sierra_NaSi_Spaten.sqf",[],98,false,true,"",""];
loadouts1 addAction [("<t color=""#F6B41A"">" + ("Ausrüstung: Sierra Sniper G22") + "</t>"), "loadouts\bwfleck\Sierra_Sniper_G22.sqf",[],98,false,true,"",""];
loadouts1 addAction [("<t color=""#F6B41A"">" + ("Ausrüstung: Sierra Sniper HK417") + "</t>"), "loadouts\bwfleck\Sierra_Sniper_HK417.sqf",[],98,false,true,"",""];
loadouts1 addAction [("<t color=""#F6B41A"">" + ("Ausrüstung: Sierra Sniper M107") + "</t>"), "loadouts\bwfleck\Sierra_Sniper_M107.sqf",[],98,false,true,"",""];
loadouts1 addAction [("<t color=""#F6B41A"">" + ("Ausrüstung: Sierra TrpFhr") + "</t>"), "loadouts\bwfleck\Sierra_TrpFhr.sqf",[],98,false,true,"",""];
loadouts1 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: Ausbildung") + "</t>"), "loadouts\bwfleck\ausbildung.sqf",[],98,false,true,"",""];
loadouts1 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: Schütze (Training)") + "</t>"), "loadouts\bwfleck\training_schutze.sqf",[],98,false,true,"",""];


// LOADOUTS ZUG TROPENTARN
loadouts2 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: Zugführung") + "</t>"), "loadouts\bwtropen\Zug_Zugfuhrer.sqf",[],98,false,true,"",""];
loadouts2 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: AvD") + "</t>"), "loadouts\bwtropen\Zug_Fox_AvD.sqf",[],98,false,true,"",""];
loadouts2 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: Fox - Nahsicherer") + "</t>"), "loadouts\bwtropen\Zug_Fox_Nahsicherer.sqf",[],98,false,true,"",""];
loadouts2 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: Gruppenführer") + "</t>"), "loadouts\bwtropen\Zug_Gruppenfuhrer.sqf",[],98,false,true,"",""];
loadouts2 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: Truppführer") + "</t>"), "loadouts\bwtropen\Zug_Truppfuhrer.sqf",[],98,false,true,"",""];
loadouts2 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: Grenadier") + "</t>"), "loadouts\bwtropen\Zug_Grenadier.sqf",[],98,false,true,"",""];
loadouts2 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: Schütze") + "</t>"), "loadouts\bwtropen\Zug_Schutze.sqf",[],98,false,true,"",""];
loadouts2 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: DM-Schütze") + "</t>"), "loadouts\bwtropen\Zug_DM.sqf",[],98,false,true,"",""];
loadouts2 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: Schütze EH B") + "</t>"), "loadouts\bwtropen\Zug_EHB.sqf",[],98,false,true,"",""];
loadouts2 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: MG-Schütze") + "</t>"), "loadouts\bwtropen\Zug_MG.sqf",[],98,false,true,"",""];
loadouts2 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: Sanitäter") + "</t>"), "loadouts\bwtropen\Zug_Sanitater.sqf",[],98,false,true,"",""];
loadouts2 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: AT-Schütze") + "</t>"), "loadouts\bwtropen\Zug_AT.sqf",[],98,false,true,"",""];
loadouts2 addAction [("<t color=""#F61A49"">" + ("Ausrüstung: AT-Assistent") + "</t>"), "loadouts\bwtropen\Zug_ATA.sqf",[],98,false,true,"",""];
loadouts2 addAction [("<t color=""#F6B41A"">" + ("Ausrüstung: Sierra Drohne HK416") + "</t>"), "loadouts\bwtropen\Sierra_Drohne_HK416.sqf",[],98,false,true,"",""];
loadouts2 addAction [("<t color=""#F6B41A"">" + ("Ausrüstung: Sierra Drohne HK417") + "</t>"), "loadouts\bwtropen\Sierra_Drohne_HK417.sqf",[],98,false,true,"",""];
loadouts2 addAction [("<t color=""#F6B41A"">" + ("Ausrüstung: Sierra NaSi Cutter") + "</t>"), "loadouts\bwtropen\Sierra_NaSi_Cutter.sqf",[],98,false,true,"",""];
loadouts2 addAction [("<t color=""#F6B41A"">" + ("Ausrüstung: Sierra NaSi Spaten") + "</t>"), "loadouts\bwtropen\Sierra_NaSi_Spaten.sqf",[],98,false,true,"",""];
loadouts2 addAction [("<t color=""#F6B41A"">" + ("Ausrüstung: Sierra Sniper G22") + "</t>"), "loadouts\bwtropen\Sierra_Sniper_G22.sqf",[],98,false,true,"",""];
loadouts2 addAction [("<t color=""#F6B41A"">" + ("Ausrüstung: Sierra Sniper HK417") + "</t>"), "loadouts\bwtropen\Sierra_Sniper_HK417.sqf",[],98,false,true,"",""];
loadouts2 addAction [("<t color=""#F6B41A"">" + ("Ausrüstung: Sierra Sniper M107") + "</t>"), "loadouts\bwtropen\Sierra_Sniper_M107.sqf",[],98,false,true,"",""];
loadouts2 addAction [("<t color=""#F6B41A"">" + ("Ausrüstung: Sierra TrpFhr") + "</t>"), "loadouts\bwtropen\Sierra_TrpFhr.sqf",[],98,false,true,"",""];


// LOADOUTS ECHO 
loadouts3 addAction [("<t color=""#eb05bd"">" + ("Ausrüstung: Infiltration 1") + "</t>"), "loadouts\bwfleck\Echo_Infiltration_1.sqf",[],98,false,true,"",""];
loadouts3 addAction [("<t color=""#eb05bd"">" + ("Ausrüstung: Infiltration 1 - Tropen") + "</t>"), "loadouts\bwtropen\Echo_Infiltration_1.sqf",[],98,false,true,"",""];
loadouts3 addAction [("<t color=""#eb05bd"">" + ("Ausrüstung: Infiltration 2") + "</t>"), "loadouts\bwfleck\Echo_Infiltration_2.sqf",[],98,false,true,"",""];
loadouts3 addAction [("<t color=""#eb05bd"">" + ("Ausrüstung: Infiltration 2 - Tropen") + "</t>"), "loadouts\bwtropen\Echo_Infiltration_2.sqf",[],98,false,true,"",""];
loadouts3 addAction [("<t color=""#eb05bd"">" + ("Ausrüstung: Infiltration 3") + "</t>"), "loadouts\bwfleck\Echo_Infiltration_3.sqf",[],98,false,true,"",""];
loadouts3 addAction [("<t color=""#eb05bd"">" + ("Ausrüstung: Infiltration 3 - Tropen") + "</t>"), "loadouts\bwtropen\Echo_Infiltration_3.sqf",[],98,false,true,"",""];
loadouts3 addAction [("<t color=""#eb05bd"">" + ("Ausrüstung: Infiltration 4 HVT") + "</t>"), "loadouts\bwfleck\Echo_Infiltration_4_HVT.sqf",[],98,false,true,"",""];
loadouts3 addAction [("<t color=""#eb05bd"">" + ("Ausrüstung: Infiltration 4 HVT - Tropen") + "</t>"), "loadouts\bwtropen\Echo_Infiltration_4_HVT.sqf",[],98,false,true,"",""];
loadouts3 addAction [("<t color=""#eb05bd"">" + ("Ausrüstung: Infiltration 4 Drohne") + "</t>"), "loadouts\bwfleck\Echo_Infiltration_4_Drohne.sqf",[],98,false,true,"",""];
loadouts3 addAction [("<t color=""#eb05bd"">" + ("Ausrüstung: Infiltration 4 Drohne - Tropen") + "</t>"), "loadouts\bwtropen\Echo_Infiltration_4_Drohne.sqf",[],98,false,true,"",""];
loadouts3 addAction [("<t color=""#eb05bd"">" + ("Ausrüstung: SchwW 1") + "</t>"), "loadouts\bwfleck\Echo_SchwW1.sqf",[],98,false,true,"",""];
loadouts3 addAction [("<t color=""#eb05bd"">" + ("Ausrüstung: SchwW 1 - Tropen") + "</t>"), "loadouts\bwtropen\Echo_SchwW1.sqf",[],98,false,true,"",""];
loadouts3 addAction [("<t color=""#eb05bd"">" + ("Ausrüstung: SchwW 2") + "</t>"), "loadouts\bwfleck\Echo_SchwW2.sqf",[],98,false,true,"",""];
loadouts3 addAction [("<t color=""#eb05bd"">" + ("Ausrüstung: SchwW 2 - Tropen") + "</t>"), "loadouts\bwtropen\Echo_SchwW2.sqf",[],98,false,true,"",""];
loadouts3 addAction [("<t color=""#eb05bd"">" + ("Ausrüstung: SchwW 3") + "</t>"), "loadouts\bwfleck\Echo_SchwW3.sqf",[],98,false,true,"",""];
loadouts3 addAction [("<t color=""#eb05bd"">" + ("Ausrüstung: SchwW 3 - Tropen") + "</t>"), "loadouts\bwtropen\Echo_SchwW3.sqf",[],98,false,true,"",""];
loadouts3 addAction [("<t color=""#eb05bd"">" + ("Ausrüstung: SchwW 4") + "</t>"), "loadouts\bwfleck\Echo_SchwW4.sqf",[],98,false,true,"",""];
loadouts3 addAction [("<t color=""#eb05bd"">" + ("Ausrüstung: SchwW 4 - Tropen") + "</t>"), "loadouts\bwtropen\Echo_SchwW4.sqf",[],98,false,true,"",""];
loadouts3 addAction [("<t color=""#eb05bd"">" + ("Ausrüstung: SchwW 7") + "</t>"), "loadouts\bwfleck\Echo_SchwW7.sqf",[],98,false,true,"",""];
loadouts3 addAction [("<t color=""#eb05bd"">" + ("Ausrüstung: SchwW 7 - Tropen") + "</t>"), "loadouts\bwtropen\Echo_SchwW7.sqf",[],98,false,true,"",""];
loadouts3 addAction [("<t color=""#eb05bd"">" + ("Ausrüstung: SchwW 8") + "</t>"), "loadouts\bwfleck\Echo_SchwW8.sqf",[],98,false,true,"",""];
loadouts3 addAction [("<t color=""#eb05bd"">" + ("Ausrüstung: SchwW 8 - Tropen") + "</t>"), "loadouts\bwtropen\Echo_SchwW8.sqf",[],98,false,true,"",""];



sleep 1;

titleText ["Missionsvorbereitung", "BLACK IN" ];
//Blurry Back to Visuals
"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [6];
"dynamicBlur" ppEffectCommit 0;
"dynamicBlur" ppEffectAdjust [0.0];
"dynamicBlur" ppEffectCommit 3;
