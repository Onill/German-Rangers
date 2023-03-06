
_result = false;
private _result = ["Soll die Mission beendet werden?", "Confirm", true, true] call BIS_fnc_guiMessage;

if (!_result) exitWith {};

plane1 animate ["ramp_bottom", 1];
plane1 animate ["ramp_top", 1]; 
sleep 5;

//sleep 60;

"scripts\outro_success.sqf" remoteExec ["execVM"];

sleep 60;

sleep 2;

plane1 animate ["ramp_bottom", 0];
plane1 animate ["ramp_top", 0]; 

sleep 4;
plane1 setFuel 1;
