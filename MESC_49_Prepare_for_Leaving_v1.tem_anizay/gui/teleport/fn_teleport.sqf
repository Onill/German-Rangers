/*
 *  Author: Onill
 *
 *  Description:
 *      teleports a player to a position
 *
 *  Parameter(s):
 *      0 : ARRAY - Targetposition
 *
 *  Returns:
 *      none
 *
 */
private ["_TeleportTo"];

_TeleportTo = param[0];
_position = getPos player;

//hint format ["player controlled is called: %1",_TeleportTo]; // Debugging 

switch (_TeleportTo) do
	{
		 case "Alpha": {_position = getPos (units grpalpha select 0); };
		 case "Bravo": { _position = getPos (units grpbravo select 0); };
		 case "Charlie": { _position = getPos (units grpcharlie select 0); };
		 case "Delta": { _position = getPos (units grpdelta select 0); };
		 case "Sierra": { _position = getPos (units grpsierra select 0); };
		 case "Echo_1": { _position = getPos (units grpecho1 select 0); };
		 case "Echo_2": { _position = getPos (units grpecho2 select 0); };
		 case "Fox_1": { _position = getPos s3; };
		 case "Fox_2": { _position = getPos s4; };
		 case "Kilo_1": { _position = getPos s1; };
		 case "Kilo_2": { _position = getPos s2; };
		 case "Lima": { hint"Erst demnächst verfügbar"; };
		default { hint "Fehler" };
	};


(player) setPos _position;


/**
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



TRACEV_1(_this);
_this params ["_type","_index"];

((missionNamespace getVariable (format[QGVAR(%1),_type])) select _index) params ["_position","_targetName","_condition","_params"];
_position = + _position;
If ((isNil "_position")||{!(_params call _condition)}) exitWith {
    [localize LSTRING(TELEPORT),localize LSTRING(DEACTIVATED),"red"] call EFUNC(gui,message);
};

closeDialog IDD_GUI_TELEPORT;

If (IS_CODE(_position)) then {
    _position = _params call _position;
};

switch (true) do {
    case ((vehicle ace_player) == ace_player) : {};
    case ((vehicle ace_player) isKindof "Air") : {
        _targetPos set[2,
            (((ATLtoASL[_position select 0, _position select 1,0])select 2) max 0) + 300 + random 1000
        ];
    };
    case ((vehicle ace_player) isKindof "Ship") : {
        _position = [_position, 0, 100, 3, 1, 0.5, 0, [], [_position getPos[random 75,random 360],_position getPos[random 75,random 360]]] call BIS_fnc_findSafePos;
        _position set[2,0];
    };
    default {
        _position = [_position, 0, 100, 3, 0, 0.5, 0, [], [_position getPos[random 75,random 360],_position getPos[random 75,random 360]]] call BIS_fnc_findSafePos;
        _position set[2,0];
        _position = ATLtoASL _position;
    };
};


