_result = false;
private _result = ["Soll die Mission SPÄTER FORTGESETZT werden?", "Confirm", true, true] call BIS_fnc_guiMessage;

if (!_result) exitWith {};

"scripts\outro_continued.sqf" remoteExec ["execVM"];