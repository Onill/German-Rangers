// Kiste Zug Typ II - Explosiv-Munition
// Aufruf im Editor mit 	[this] execvm "scripts\supplies\box_zug_typ_ii.sqf";

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addItemCargoGlobal ["CUP_1Rnd_HE_M203",15];
_box addItemCargoGlobal ["UGL_FlareWhite_F",10];
_box addItemCargoGlobal ["1Rnd_SmokeRed_Grenade_shell",15];
_box addItemCargoGlobal ["1Rnd_Smoke_Grenade_shell",15];
_box addItemCargoGlobal ["CUP_SMAW_HEAA_M",6];
_box addItemCargoGlobal ["CUP_SMAW_Spotting",2];

