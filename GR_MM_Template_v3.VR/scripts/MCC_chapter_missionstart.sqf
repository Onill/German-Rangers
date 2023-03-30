_result = false;
private _result = ["Soll die Mission gestartet werden?", "Confirm", true, true] call BIS_fnc_guiMessage;

if (!_result) exitWith {};

"scripts\MCC_sequence_intro.sqf" remoteExec ["execVM"];
"scripts\MCC_sequence_startteleport.sqf" remoteExec ["execVM"];
