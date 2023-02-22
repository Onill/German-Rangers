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

// Muss vom Missionmaker UNBEDIGT gesetzt werden! Entscheidet ob Fleck oder Tropentarn getragen wird "fleck" / "tropen".
tarnfarbe = "fleck";
publicVariable "tarnfarbe";


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
		
		//Visual
		case "@Blastcore Edited (standalone version)": {true};
		case "@Blastcore Murr Edition Smoke Alternative": {true};
		case "@Dynamic Lights Extended": {true};
		case "@Real Lighting and Weather": {true};
		case "@Cinematic Lens Flare": {true};
		case "@Splendid Lighting Modification": {true};
		case "@Reduced Haze Mod v3.1": {true};
		
		//Sound
		case "@DynaSound 2": {true};
		case "@Enhanced Soundscape": {true};
		case "@LAxemann's Environment Ducking": {true};
		case "@JSRS SOUNDMOD": {true};
		case "@JSRS SOUNDMOD - RHS  AFRF Mod Pack Sound Support": {true};
		case "@JSRS SOUNDMOD - RHS USAF Mod Pack Sound Support": {true};
		case "@JSRS SOUNDMOD - CUP WEAPONS MOD SOUND SUPPORT": {true};
		case "@JSRS SOUNDMOD - CUP VEHICLES MOD SOUND SUPPORT": {true};
		
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

if(count _playermods > 0) then {
    (format ["%1 is using non Whitelisted Mods: %2",profileName, _playermods]) remoteExec ["diag_log", 2];
};


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//							Loadouts
//
//------------------------------------------------------------------
//------------------------------------------------------------------

call compile preprocessFileLineNumbers "loadouts\loadoutInit.sqf";



//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Standard AddActions
//
//------------------------------------------------------------------
//------------------------------------------------------------------

//ACE Self Interactions for Players in Base
_condition = {true};
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


_personal_arsenal_fleck = ["Personal Arsenal Fleck","Personal Arsenal Fleck","",{ execVM "loadouts\personalArsenal_fleck.sqf"; },_condition] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions","GR Base"], _personal_arsenal_fleck] call ace_interact_menu_fnc_addActionToClass;

_personal_arsenal_tropen = ["Personal Arsenal Tropen","Personal Arsenal Tropen","",{ execVM "loadouts\personalArsenal_tropen.sqf"; },_condition] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions","GR Base"], _personal_arsenal_tropen] call ace_interact_menu_fnc_addActionToClass;

//Von Kaserne zu Übungsplatz
teleport1 addAction ["<t color='#ff0000'>Übungsplatz KW/LW</t>", "(_this select 1) setPos [14675.5,8289.28,0]", nil, 100, false, true, "", ""];
teleport1 addAction ["<t color='#ff0000'>Übungsplatz LW/AT</t>", "(_this select 1) setPos [14727.8,7964.77,0]", nil, 100, false, true, "", ""];
teleport1 addAction ["<t color='#ff0000'>Übungsplatz CQB</t>", "(_this select 1) setPos [14797.5,8317.95,0]", nil, 100, false, true, "", ""];
teleport1 addAction ["<t color='#ff0000'>Übungsplatz Fahrzeuge</t>", "(_this select 1) setPos [13302.4,7640.25,0]", nil, 100, false, true, "", ""];
teleport1 addAction ["<t color='#ff0000'>Übungsplatz Granaten/Minen</t>", "(_this select 1) setPos [14585.6,8309.49,0]", nil, 100, false, true, "", ""];

//Von Übungsplatzstandorten zu Kaserne
teleport2 addAction ["<t color='#ff0000'>Kaserne</t>", "(_this select 1) setPos [1798.6,5571.76,0]", nil, 100, false, true, "", ""];
teleport4 addAction ["<t color='#ff0000'>Kaserne</t>", "(_this select 1) setPos [1798.6,5571.76,0]", nil, 100, false, true, "", ""];
teleport5 addAction ["<t color='#ff0000'>Kaserne</t>", "(_this select 1) setPos [1798.6,5571.76,0]", nil, 100, false, true, "", ""];
teleport6 addAction ["<t color='#ff0000'>Kaserne</t>", "(_this select 1) setPos [1798.6,5571.76,0]", nil, 100, false, true, "", ""];

//Orientierungsmarsch
teleport3 addAction ["<t color='#ff0000'>Position 1</t>", "(_this select 1) setPos position OLauf_1", nil, 100, false, true, "", ""];
teleport3 addAction ["<t color='#ff0000'>Position 2</t>", "(_this select 1) setPos position OLauf_2", nil, 100, false, true, "", ""];
teleport3 addAction ["<t color='#ff0000'>Position 3</t>", "(_this select 1) setPos position OLauf_3", nil, 100, false, true, "", ""];
teleport3 addAction ["<t color='#ff0000'>Position 4</t>", "(_this select 1) setPos position OLauf_4", nil, 100, false, true, "", ""];
teleport3 addAction ["<t color='#ff0000'>Position 5</t>", "(_this select 1) setPos position OLauf_5", nil, 100, false, true, "", ""];
teleport3 addAction ["<t color='#ff0000'>Position 6</t>", "(_this select 1) setPos position OLauf_6", nil, 100, false, true, "", ""];
teleport3 addAction ["<t color='#ff0000'>Position 7</t>", "(_this select 1) setPos position OLauf_7", nil, 100, false, true, "", ""];
teleport3 addAction ["<t color='#ff0000'>Position 8</t>", "(_this select 1) setPos position OLauf_8", nil, 100, false, true, "", ""];
teleport3 addAction ["<t color='#ff0000'>Position 9</t>", "(_this select 1) setPos position OLauf_9", nil, 100, false, true, "", ""];
teleport3 addAction ["<t color='#ff0000'>Position 10</t>", "(_this select 1) setPos position OLauf_10", nil, 100, false, true, "", ""];
teleport3 addAction ["<t color='#ff0000'>Position 11</t>", "(_this select 1) setPos position OLauf_11", nil, 100, false, true, "", ""];
teleport3 addAction ["<t color='#ff0000'>Position 12</t>", "(_this select 1) setPos position OLauf_12", nil, 100, false, true, "", ""];
teleport3 addAction ["<t color='#ff0000'>Position 13</t>", "(_this select 1) setPos position OLauf_13", nil, 100, false, true, "", ""];
teleport3 addAction ["<t color='#ff0000'>Position 14</t>", "(_this select 1) setPos position OLauf_14", nil, 100, false, true, "", ""];

//loadouts_orientierung addAction [("<t color=""#F61A49"">" + ("Ausrüstung: Schütze (Ausbildung)") + "</t>"), "loadouts\bwfleck\training_schutze.sqf",[],98,false,true,"",""];


titleText ["Missionsvorbereitung", "BLACK IN" ];
//Blurry Back to Visuals
"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [6];
"dynamicBlur" ppEffectCommit 0;
"dynamicBlur" ppEffectAdjust [0.0];
"dynamicBlur" ppEffectCommit 3;

//Text Ticker
[[["Rosche, Deutschland","size = '0.7' font='PuristaBold'"],["","<br/>"],["Von Moltke Kaserne","size = '0.7'","#aaaaaa"]],safeZoneX / 4, safeZoneH / 2,true,"<t font='PuristaBold'>%1</t>",[],{ false },true] spawn BIS_fnc_typeText2;	
sleep 7;
private _t = [daytime, "HH:MM"] call BIS_fnc_timeToString;			// time at missionstart as a string
[["Time: "+_t],safeZoneX / 4, safeZoneH / 2,true,"<t font='PuristaBold'>%1</t>",[],{ false },true] spawn BIS_fnc_typeText2;