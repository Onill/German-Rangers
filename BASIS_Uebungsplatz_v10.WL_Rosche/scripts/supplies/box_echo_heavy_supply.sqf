// Kiste für ACE Medic Standard Supplies
// Aufruf im Editor mit 	[this] execvm "scripts\supplies\box_echo_supply.sqf";

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addItemCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",10];
_box addItemCargoGlobal ["Titan_AT",6];