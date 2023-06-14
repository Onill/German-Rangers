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

// briefingName
[] execVM "scripts\briefing.sqf";

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
sleep 1;

//Abfrage ob Datenbank oder frisches Loadout
if (getMissionConfigValue "loadPlayers" == "true") then {

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
// Recolor Post-Processing - Winter Day
"colorCorrections" ppEffectAdjust  [1.1,1.2,-0.01,[0.0, 0.0, 0.0, 0.0],[0.8, 0.8, 1, 0.6],[0.199, 0.587, 0, 0.0]];  
"colorCorrections" ppEffectEnable true;  
"colorCorrections" ppEffectCommit 0; 
"filmGrain" ppEffectAdjust 	[0.04,1,1,0.1,1,false];      
"filmGrain" ppEffectEnable true;
"filmGrain" ppEffectCommit 0;  
*/

/*
// Recolor Post-Processing - brownish, bright african
PPeffect_colorC = ppEffectCreate ["ColorCorrections",1500];
PPeffect_colorC ppEffectAdjust [1,1,-0.00279611,[0.399248,0.452746,0.307538,0.1042],[1.36009,1,0.320698,0.95],[2.50966,0.263398,3.22694,0]];
PPeffect_colorC ppEffectEnable true;
PPeffect_colorC ppEffectCommit 0;
*/

/*
// Recolor Post-Processing - Jungle Rainy
PPeffect_colorC = ppEffectCreate ["ColorCorrections",1500]; 
PPeffect_colorC ppEffectAdjust [1,1,0,[0,1,0.3,0.04],[1,1,1,1],[0.3,0.587,0.114,0]]; 
PPeffect_colorC ppEffectEnable true; 
PPeffect_colorC ppEffectCommit 0;
"filmGrain" ppEffectAdjust  [0.04,1,1,0.1,1,false];
"filmGrain" ppEffectEnable true;
*/

/*
// Recolor Post-Processing - Jungle
PPeffect_colorC = ppEffectCreate ["ColorCorrections",1500]; 
PPeffect_colorC ppEffectAdjust [1,1,0,[0,1,0.1,0.04],[1,1,1,1],[0.3,0.587,0.114,0]]; 
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

// Wird benötigt um West TFAR Longrange Funk in Fahrzeugen anderer Fraktionen zu integrieren

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
//						German Rangers GUI
//
//------------------------------------------------------------------
//------------------------------------------------------------------

//Bestimmt wann das GR Menü angezeigt wird. Im Umkreis der Basis (Radius 50m)und vor Missionsstart.
_condition = {player distance base < 100 || missionstarted == false};

_mainDialog = {createDialog "Main_Dialog";};

// Creating a Sub Menu Category GR Base with Logo
_base_menu = ["GR Base","GR Base","images\GermanRangersLogo.paa",_mainDialog,_condition] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions"], _base_menu] call ace_interact_menu_fnc_addActionToClass;

//Add Waffenkammer to ACE Menu GR Base
if (getMissionConfigValue "allowWaffenkammer" == "true") then {
	_waffenkammer = ["Waffenkammer","Waffenkammer","",{ execVM waffenkammerpfad; },_condition] call ace_interact_menu_fnc_createAction;
	[(typeOf player), 1, ["ACE_SelfActions","GR Base"], _waffenkammer] call ace_interact_menu_fnc_addActionToClass;
};

////Add Teleport to ACE Menu GR Base
_teleport_action = ["Teleporter","Teleporter","gui\teleport\icon_teleport.paa",{ _ok = createDialog "Teleport_Dialog";},_condition] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions","GR Base"], _teleport_action] call ace_interact_menu_fnc_addActionToClass;


//Add Loadout to ACE Menu GR Base
if (getMissionConfigValue "allowLoadouts" == "true") then {

	_choose_Loadout= {
	switch (groupId group player) do 
	  { 
		case 'Sierra': { ['Sierra'] call CLF_fnc_createGUI;  }; 
		case 'Echo 1': { ['Echo'] call CLF_fnc_createGUI;  };	 
		case 'Echo 2': { ['Echo'] call CLF_fnc_createGUI;  }; 
		case 'Lima': { ['Lima'] call CLF_fnc_createGUI;  }; 
		default { ['Zug'] call CLF_fnc_createGUI; }; 
	  };
	};

	_loadout_action = ["Loadouts","Loadouts","",_choose_Loadout,_condition] call ace_interact_menu_fnc_createAction;
	[(typeOf player), 1, ["ACE_SelfActions","GR Base"], _loadout_action] call ace_interact_menu_fnc_addActionToClass;
};


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Zeus Mission Control
//
//------------------------------------------------------------------
//------------------------------------------------------------------

// Creating a Sub Menu Category GR Base with Logo
_mission_control = ["Mission Control","Mission Control","images\GermanRangersLogo.paa",{}, {true}] call ace_interact_menu_fnc_createAction;
[["ACE_ZeusActions"], _mission_control] call ace_interact_menu_fnc_addActionToZeus;

_start_mission = ["Missionsstart","Missionsstart","",{ execVM "scripts\MCC_chapter_missionstart.sqf"; },{true}] call ace_interact_menu_fnc_createAction;
[["ACE_ZeusActions","Mission Control"], _start_mission] call ace_interact_menu_fnc_addActionToZeus;

_mission_succesful = ["Ende: Mission Erfüllt","Ende: Mission Erfüllt","",{ execVM "scripts\MCC_chapter_missionendsuccesfull.sqf"; },{true}] call ace_interact_menu_fnc_createAction;
[["ACE_ZeusActions","Mission Control"], _mission_succesful] call ace_interact_menu_fnc_addActionToZeus;

_to_be_continued = ["Ende: TO BE CONTINUED","Ende: TO BE CONTINUED","",{ execVM "scripts\MCC_chapter_missionendcontinue.sqf"; },{true}] call ace_interact_menu_fnc_createAction;
[["ACE_ZeusActions","Mission Control"], _to_be_continued] call ace_interact_menu_fnc_addActionToZeus;


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						LIMA Supply Point
//
//------------------------------------------------------------------
//------------------------------------------------------------------

if (getMissionConfigValue "lima" == "true") then {
	_playerGrp = group player;

	if (_playerGrp == grplima || _playerGrp == grpkilo) then {

		//Lima Supply Point Static
		
		_zug1 = ["Zug1","Zug Typ 1 - Munition","",{[["zug1"], limapfad + "limasupplypointstatic.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _zug1] call ace_interact_menu_fnc_addActionToObject;

		_zug2 = ["Zug2","Zug Typ 2 - Explosiv","",{[["zug2"], limapfad + "limasupplypointstatic.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _zug2] call ace_interact_menu_fnc_addActionToObject;

		_zug3 = ["Zug3","Zug Typ 3 - Granaten","",{[["zug3"], limapfad + "limasupplypointstatic.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _zug3] call ace_interact_menu_fnc_addActionToObject;

		_zug4 = ["Zug4","Zug Typ 4 - Ausrüstung","",{[["zug4"], limapfad + "limasupplypointstatic.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _zug4] call ace_interact_menu_fnc_addActionToObject;

		_zug5 = ["Zug5","Zug Typ 5 - Waffen","",{[["zug5"], limapfad + "limasupplypointstatic.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _zug5] call ace_interact_menu_fnc_addActionToObject;

		_zug6 = ["Zug6","Zug Typ 6 - AT","",{[["zug6"], limapfad + "limasupplypointstatic.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _zug6] call ace_interact_menu_fnc_addActionToObject;

		_san1 = ["San1","San 1 - Allgemein","",{[["san1"], limapfad + "limasupplypointstatic.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _san1] call ace_interact_menu_fnc_addActionToObject;

		_san2 = ["San2","San 2 - Spezial","",{[["san2"], limapfad + "limasupplypointstatic.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _san2] call ace_interact_menu_fnc_addActionToObject;

		_sierra1 = ["Sierra1","Sierra Munition","",{[["sierra1"], limapfad + "limasupplypointstatic.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _sierra1] call ace_interact_menu_fnc_addActionToObject;

		_echo1 = ["Echo1","Echo Typ 1 - Munition","",{[["echo1"], limapfad + "limasupplypointstatic.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _echo1] call ace_interact_menu_fnc_addActionToObject;

		_echo2 = ["Echo1","Echo Typ 2 - Explosivmunition","",{[["echo2"], limapfad + "limasupplypointstatic.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _echo2] call ace_interact_menu_fnc_addActionToObject;

		_echo3 = ["Echo1","Echo Typ 3 - AT","",{[["echo3"], limapfad + "limasupplypointstatic.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _echo3] call ace_interact_menu_fnc_addActionToObject;

		_echo4 = ["Echo1","Echo Typ 4 - Ausrüstung","",{[["echo4"], limapfad + "limasupplypointstatic.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _echo4] call ace_interact_menu_fnc_addActionToObject;



		//Lima Mobile Supply Point

		_zug1 = ["Zug1","Zug Typ 1 - Munition","",{[["zug1"], limapfad + "limasupplypointmobile.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _zug1] call ace_interact_menu_fnc_addActionToObject;

		_zug2 = ["Zug2","Zug Typ 2 - Explosiv","",{[["zug2"], limapfad + "limasupplypointmobile.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _zug2] call ace_interact_menu_fnc_addActionToObject;

		_zug3 = ["Zug3","Zug Typ 3 - Granaten","",{[["zug3"], limapfad + "limasupplypointmobile.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _zug3] call ace_interact_menu_fnc_addActionToObject;

		_zug4 = ["Zug4","Zug Typ 4 - Ausrüstung","",{[["zug4"], limapfad + "limasupplypointmobile.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _zug4] call ace_interact_menu_fnc_addActionToObject;

		_zug5 = ["Zug5","Zug Typ 5 - Waffen","",{[["zug5"], limapfad + "limasupplypointmobile.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _zug5] call ace_interact_menu_fnc_addActionToObject;

		_zug6 = ["Zug6","Zug Typ 6 - AT","",{[["zug6"], limapfad + "limasupplypointmobile.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _zug6] call ace_interact_menu_fnc_addActionToObject;

		_san1 = ["San1","San 1 - Allgemein","",{[["san1"], limapfad + "limasupplypointmobile.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _san1] call ace_interact_menu_fnc_addActionToObject;

		_san2 = ["San2","San 2 - Spezial","",{[["san2"], limapfad + "limasupplypointmobile.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _san2] call ace_interact_menu_fnc_addActionToObject;

		_sierra1 = ["Sierra1","Sierra Munition","",{[["sierra1"], limapfad + "limasupplypointmobile.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _sierra1] call ace_interact_menu_fnc_addActionToObject;

		_echo1 = ["Echo1","Echo Typ 1 - Munition","",{[["echo1"], limapfad + "limasupplypointmobile.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _echo1] call ace_interact_menu_fnc_addActionToObject;

		_echo2 = ["Echo1","Echo Typ 2 - Explosivmunition","",{[["echo2"], limapfad + "limasupplypointmobile.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _echo2] call ace_interact_menu_fnc_addActionToObject;

		_echo3 = ["Echo1","Echo Typ 3 - AT","",{[["echo3"], limapfad + "limasupplypointmobile.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _echo3] call ace_interact_menu_fnc_addActionToObject;

		_echo4 = ["Echo1","Echo Typ 4 - Ausrüstung","",{[["echo4"], limapfad + "limasupplypointmobile.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _echo4] call ace_interact_menu_fnc_addActionToObject;
	};
};



//FoggyBreath
//_units = if (!isMultiplayer) then {switchableUnits} else {playableUnits};
//{[_x, 0.03] execVM "scripts\foggy_breath.sqf"} forEach _units;

//Ground Fog
//null = [] execVM "scripts\GroundFog.sqf";


//Wenn das Missionsintro gestartet wurde, werden alle Spieler die reconnecten oder später dazu kommen in die Basis teleportiert.

if (getMissionConfigValue "missionstartedfeat" == "true") then {
	if missionstarted then {
		player setPos getPos base;
	};
};

sleep 1;

titleText ["Missionsvorbereitung", "BLACK IN" ];

//Blurry Back to Visuals
"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [6];
"dynamicBlur" ppEffectCommit 0;
"dynamicBlur" ppEffectAdjust [0.0];
"dynamicBlur" ppEffectCommit 3;

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Mod Check
//
// 			Checks Loaded Mods and logs Non Whitelisted
//------------------------------------------------------------------
//------------------------------------------------------------------

[] execVM "scripts\modcheck.sqf";