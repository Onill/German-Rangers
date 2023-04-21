//------------------------------------------------------------------
//------------------------------------------------------------------
//
//							Dynamic Groups
//
//------------------------------------------------------------------
//------------------------------------------------------------------

//DynamicGroups_Function Function needs to be initialized on server and client. Clients can then use action TeamSwitch ("U" by default) to access the Dynamic Groups interface.
["Initialize"] call BIS_fnc_dynamicGroups;			//Exec on Server


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//							Variablen
//
//------------------------------------------------------------------
//------------------------------------------------------------------

// Muss vom Missionmaker UNBEDIGT gesetzt werden! Aktiviert das Speichern und Laden von Markern / Kisten aus der Datenbank.
saveDatabase = false;
publicVariable "saveDatabase";

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//							Fortify Tool
//
//------------------------------------------------------------------
//------------------------------------------------------------------

//Fortify Baumoeglichkeiten Objekt, kosten(bauzeit)

if isClass (configFile >> "CfgPatches" >> "ace_main") then
{
	[west, -1, [

	["Land_fortified_nest_small_EP1",5],
	["Land_CamoNetVar_NATO_EP1",2],
	["Land_BagFence_Long_F",2],
	["Land_BagFence_Round_F",2],
	["Land_Razorwire_F",2],
	["Land_BarGate_F",0],
	["RoadBarrier_F",0],
	["RoadCone_L_F",0],
	["Sign_Checkpoint_US_EP1",0],
	["Sign_Checkpoint_TK_EP1",0],
	["Land_Barricade_01_10m_F",3],
	["Land_Barricade_01_4m_F",3],
	["Land_SandbagBarricade_01_F",5],
	["Land_SandbagBarricade_01_hole_F",5],
	["Land_SandbagBarricade_01_half_F",5],
	["FenceWoodPalet",2],
	["Land_TentLamp_01_standing_red_F",2],
	["Land_TentLamp_01_standing_F",2],
	["Land_PortableLight_02_double_black_F",2]
	]] call acex_fortify_fnc_registerObjects;
};


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//							Datenbank
//
//------------------------------------------------------------------
//------------------------------------------------------------------


if saveDatabase then {

	//LOADOUTS SPEICHERN
	"checkForDatabase" addPublicVariableEventHandler
	{
		private ["_data"];
		_data = (_this select 1);
		_clientID = (_data select 0);
		_player = (_data select 1);
		_playerName = (_data select 2);
		
		_inidbi = ["new",str _player] call OO_INIDBI;
		_fileExist = "exists" call _inidbi;
		
		if (_fileExist) then
		{
			hint "DATENEINTRAG VORHANDEN, WIRD ABGERUFEN";
			null = [_player, _clientID] execVM "getData.sqf";
		}
		else
		{
			hint "KEIN DATENEINTRAG VORHANDEN, WIRD ERSTELLT";
			null = [_player, _playerName] execVM "createDatabase.sqf";
		};
	};

	addMissionEventHandler ["HandleDisconnect",
	{
		_unit = _this select 0;
		_uid = _this select 2;
		_gear = getUnitLoadout _unit;
		
		_inidbi = ["new",str _unit] call OO_INIDBI;
		
		["write", ["Player Gear", "Gear", _gear]] call _inidbi;
		false;
	}];

	// MAP-MARKER SPEICHERN
	_inidbi = ["new", "MapMarkers"] call OO_INIDBI;
	_fileExist = "exists" call _inidbi;

	if(_fileExist) then
	{
		_markers = ["read",["markers","marker"]] call _inidbi;
		{
			if (_x find "_USER_DEFINED #" != -1) then {
				deleteMarker _x ;
			} ;
		} forEach allMapMarkers ;
		{
			_x params [
				"_name",
				"_pos",
				"_size",
				"_type",
				"_col",
				"_txt",
				"_dir"
			] ;
			
			_marker = createMarker [_name, _pos];
			_marker setMarkerShape "ICON" ;
			_marker setMarkerSize _size ;
			_marker setMarkerType _type ;
			_marker setMarkerColor _col ;
			_marker setMarkerText _txt ;
			_marker setMarkerDir _dir;
		} forEach _markers;
	};

	saveMarkers = {
		_inidbi = ["new", "MapMarkers"] call OO_INIDBI;
		_array = _this;
		
		["write", ["markers","marker",_array]] call _inidbi;

	};
};

// end mission when all players are Dead or Unconscious
// works for ACE and AIS
_nul = [] spawn {
	if (!isServer or !isMultiplayer) exitWith {};
	private _pass = TRUE;
	while {_pass} do {
		uisleep 1;
		if ( (playableUnits findIf {!(toLowerANSI lifeState _x in ["incapacitated","dead","dead-respawn"])} == -1)||(playableUnits findIf {!(_x getVariable ["ais_unconscious",false])} == -1) ) then {
			uisleep 6;
			_pass = FALSE;

			if ( (playableUnits findIf {!(toLowerANSI lifeState _x in ["incapacitated","dead","dead-respawn"])} == -1)||(playableUnits findIf {!(_x getVariable ["ais_unconscious",false])} == -1) ) exitWith { 
				"End3" call BIS_fnc_endMissionServer;
			};
			_pass = TRUE;
		};  
	};
};