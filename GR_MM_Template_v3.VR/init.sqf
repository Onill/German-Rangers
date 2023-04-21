diag_log text "";
diag_log text format["|=============================   %1   =============================|", missionName];
diag_log text "";

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Multiplayer Settings
//
//------------------------------------------------------------------
//------------------------------------------------------------------

enableRadio false;
if (isMultiplayer) then {enableSaving [false, false]};
enableTeamswitch false;

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Freund / Feind
//
//------------------------------------------------------------------
//------------------------------------------------------------------

east setFriend [civilian,1];
civilian setFriend [east,1];
west setFriend [civilian,1];
civilian setFriend [west,1];

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

// Muss vom Missionmaker UNBEDIGT gesetzt werden! Entscheidet mit welchem Fraktionsequipment gespielt wird. (bwtropen / bwfleck / marsoc)
fraktion = "marsoc";
publicVariable "fraktion";

waffenkammerpfad = format ["loadouts\%1\waffenkammer.sqf", fraktion];
publicVariable "waffenkammerpfad";

limapfad = format ["loadouts\%1\lima\", fraktion];
publicVariable "limapfad";

missioncontinue = false;
publicVariable "missioncontinue";

//Wird benötigt damit alle Spieler zu Beginn der Mission VOR DEM INTRO, egal an welchem Ort sie sich befinden, ein Personal Arsenal und das Loadoutmenü zur Verfügung haben. Wird mit Missionsstart auf true gesetzt.
missionstarted = false;
publicVariable "missionstarted";
//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Debug Optionen
//
//------------------------------------------------------------------
//------------------------------------------------------------------

//onMapSingleClick "player setpos _pos";
//player allowDamage false;

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Zeus Verfügbarkeit
//
//------------------------------------------------------------------
//------------------------------------------------------------------
	
[] spawn {
        {
            _x addCuratorEditableObjects [allUnits, true];
            _x addCuratorEditableObjects [vehicles, true];
            _x addCuratorEditableObjects [allUnitsUAV, true];
            _x addCuratorEditableObjects [allMines, true];
        } forEach allCurators;
    };