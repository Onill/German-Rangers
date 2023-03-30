_result = false;
private _result = ["Soll die Mission beendet werden?", "Confirm", true, true] call BIS_fnc_guiMessage;

if (!_result) exitWith {};

"scripts\MCC_sequence_outro_success.sqf" remoteExec ["execVM"];
