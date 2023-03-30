// Kiste für ACE Medic Standard Supplies
// Aufruf im Editor mit 	[this] execvm "scripts\supplies\box_explosives_supply.sqf";

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addItemCargoGlobal ["1Rnd_He_grenade_shell", 20];
_box addItemCargoGlobal ["UGL_FlareWhite_F",6];
_box addItemCargoGlobal ["1Rnd_SmokeRed_Grenade_shell",6];
_box addItemCargoGlobal ["1Rnd_Smoke_Grenade_shell",6];
_box addItemCargoGlobal ["SmokeShell",13];
_box addItemCargoGlobal ["CUP_HandGrenade_M67",25];