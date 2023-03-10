//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Player Initialisierung
//
//------------------------------------------------------------------
//------------------------------------------------------------------

waitUntil{!isNull(player)};
setTerrainGrid 25;
enableEnvironment [false, true];
titleText ["Missionsvorbereitung", "BLACK FADED" ];

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

// briefingName
null = [] execVM "scripts\briefing.sqf";


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
		case "@KAT - Advanced Medical REWRITE": {true};

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
		case "@RHSAFRF": {true};
		case "@RHSGREF": {true};
		case "@RHSUSAF": {true};
		case "@RHSSAF": {true};
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


// Recolor Post-Processing - Desert/Winter
"colorCorrections" ppEffectAdjust 	[1,1,-0.01,[0.0, 0.0, 0.0, 0.0],[1, 0.8, 0.6, 0.6],[0.199, 0.587, 0.114, 0.0]]; 
"colorCorrections" ppEffectEnable true; 
"colorCorrections" ppEffectCommit 0; 
"filmGrain" ppEffectAdjust 	[0.04,1,1,0.1,1,false];      
"filmGrain" ppEffectEnable true;    


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

[player, 0.9, 0.5, true] call BIS_fnc_sandstorm;


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

sleep 1;

_condition = {player distance base < 50};
_empty_statement = {createDialog "Main_Dialog";}; //  {"Nothing"};

// Creating a Sub Menu Category GR Base with Logo
_base_menu = ["GR Base","GR Base","images\GermanRangersLogo.paa",_empty_statement,_condition] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions"], _base_menu] call ace_interact_menu_fnc_addActionToClass;

//Open Teleport GUI via Self Interaction Menu in Subcategory GR Base
_teleport_action = ["Teleporter","Teleporter","gui\teleport\icon_teleport.paa",{ _ok = createDialog "Teleport_Dialog";},_condition] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions","GR Base"], _teleport_action] call ace_interact_menu_fnc_addActionToClass;

//Loadout GUI

	_choose_Loadout= {
	switch (groupId group player) do 
	  { 
		case 'Sierra': { ['Sierra'] call CLF_fnc_createGUI;  }; 
		case 'Echo 1': { ['Echo'] call CLF_fnc_createGUI;  };	 
		case 'Echo 2': { ['Echo'] call CLF_fnc_createGUI;  }; 
		//case grplima: { ['Lima'] call CLF_fnc_createGUI;  }; 
		default { ['Zug'] call CLF_fnc_createGUI; }; 
	  };
	};


_loadout_action = ["Loadouts","Loadouts","",_choose_Loadout,_condition] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions","GR Base"], _loadout_action] call ace_interact_menu_fnc_addActionToClass;


_personal_arsenal = ["Personal Arsenal","Personal Arsenal","",{ execVM "loadouts\personalArsenal.sqf"; },_condition] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions","GR Base"], _personal_arsenal] call ace_interact_menu_fnc_addActionToClass;


//		New Mission Control

	// Creating a Sub Menu Category GR Base with Logo
	_mission_control = ["Mission Control","Mission Control","images\GermanRangersLogo.paa",{}, {true}] call ace_interact_menu_fnc_createAction;
	[["ACE_ZeusActions"], _mission_control] call ace_interact_menu_fnc_addActionToZeus;
	
	_mission_succesful = ["Ende: Mission Erfüllt","Ende: Mission Erfüllt","",{ execVM "scripts\missionend.sqf"; },{true}] call ace_interact_menu_fnc_createAction;
	[["ACE_ZeusActions","Mission Control"], _mission_succesful] call ace_interact_menu_fnc_addActionToZeus;



_playerGrp = group player;

if (_playerGrp == grplima || _playerGrp == grpkilo) then {

	_zug1 = ["Zug1","Zug Typ 1 - Munition","",{["zug1"]execVM "scripts\limasupplypoint.sqf";},{true}] call ace_interact_menu_fnc_createAction;
	[limasupply, 0, ["ACE_MainActions"], _zug1] call ace_interact_menu_fnc_addActionToObject;

	_zug2 = ["Zug2","Zug Typ 2 - Explosiv","",{["zug2"]execVM "scripts\limasupplypoint.sqf";},{true}] call ace_interact_menu_fnc_createAction;
	[limasupply, 0, ["ACE_MainActions"], _zug2] call ace_interact_menu_fnc_addActionToObject;

	_zug3 = ["Zug3","Zug Typ 3 - Granaten","",{["zug3"]execVM "scripts\limasupplypoint.sqf";},{true}] call ace_interact_menu_fnc_createAction;
	[limasupply, 0, ["ACE_MainActions"], _zug3] call ace_interact_menu_fnc_addActionToObject;

	_zug4 = ["Zug4","Zug Typ 4 - Ausrüstung","",{["zug4"]execVM "scripts\limasupplypoint.sqf";},{true}] call ace_interact_menu_fnc_createAction;
	[limasupply, 0, ["ACE_MainActions"], _zug4] call ace_interact_menu_fnc_addActionToObject;

	_zug5 = ["Zug5","Zug Typ 5 - Waffen","",{["zug5"]execVM "scripts\limasupplypoint.sqf";},{true}] call ace_interact_menu_fnc_createAction;
	[limasupply, 0, ["ACE_MainActions"], _zug5] call ace_interact_menu_fnc_addActionToObject;

	_zug6 = ["Zug6","Zug Typ 6 - AT","",{["zug6"]execVM "scripts\limasupplypoint.sqf";},{true}] call ace_interact_menu_fnc_createAction;
	[limasupply, 0, ["ACE_MainActions"], _zug6] call ace_interact_menu_fnc_addActionToObject;

	_san1 = ["San1","San 1 - Allgemein","",{["san1"]execVM "scripts\limasupplypoint.sqf";},{true}] call ace_interact_menu_fnc_createAction;
	[limasupply, 0, ["ACE_MainActions"], _san1] call ace_interact_menu_fnc_addActionToObject;

	_san2 = ["San2","San 2 - Spezial","",{["san2"]execVM "scripts\limasupplypoint.sqf";},{true}] call ace_interact_menu_fnc_createAction;
	[limasupply, 0, ["ACE_MainActions"], _san2] call ace_interact_menu_fnc_addActionToObject;

	_sierra1 = ["Sierra1","Sierra Munition","",{["sierra1"]execVM "scripts\limasupplypoint.sqf";},{true}] call ace_interact_menu_fnc_createAction;
	[limasupply, 0, ["ACE_MainActions"], _sierra1] call ace_interact_menu_fnc_addActionToObject;

	_echo1 = ["Echo1","Echo Typ 1 - Munition","",{["echo1"]execVM "scripts\limasupplypoint.sqf";},{true}] call ace_interact_menu_fnc_createAction;
	[limasupply, 0, ["ACE_MainActions"], _echo1] call ace_interact_menu_fnc_addActionToObject;

	_echo2 = ["Echo1","Echo Typ 2 - Explosivmunition","",{["echo2"]execVM "scripts\limasupplypoint.sqf";},{true}] call ace_interact_menu_fnc_createAction;
	[limasupply, 0, ["ACE_MainActions"], _echo2] call ace_interact_menu_fnc_addActionToObject;

	_echo3 = ["Echo1","Echo Typ 3 - AT","",{["echo3"]execVM "scripts\limasupplypoint.sqf";},{true}] call ace_interact_menu_fnc_createAction;
	[limasupply, 0, ["ACE_MainActions"], _echo3] call ace_interact_menu_fnc_addActionToObject;

	_echo4 = ["Echo1","Echo Typ 4 - Ausrüstung","",{["echo4"]execVM "scripts\limasupplypoint.sqf";},{true}] call ace_interact_menu_fnc_createAction;
	[limasupply, 0, ["ACE_MainActions"], _echo4] call ace_interact_menu_fnc_addActionToObject;

};

sleep 1;

titleText ["Missionsvorbereitung", "BLACK IN" ];

//Blurry Back to Visuals
"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [6];
"dynamicBlur" ppEffectCommit 0;
"dynamicBlur" ppEffectAdjust [0.0];
"dynamicBlur" ppEffectCommit 3;