_result = false;
private _result = ["Soll die Mission ERFOLGREICH beendet werden?", "Confirm", true, true] call BIS_fnc_guiMessage;

if (!_result) exitWith {};

"scripts\outro_success.sqf" remoteExec ["execVM"];