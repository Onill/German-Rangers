_result = false;
private _result = ["Soll die Mission gestartet werden?", "Confirm", true, true] call BIS_fnc_guiMessage;

if (!_result) exitWith {};

"scripts\missionStartintro.sqf" remoteExec ["execVM"];
"scripts\missionStartTeleport.sqf" remoteExec ["execVM"];
