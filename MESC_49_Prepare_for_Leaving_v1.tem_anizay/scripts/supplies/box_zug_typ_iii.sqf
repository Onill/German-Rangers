// Kiste Zug Typ III - Granaten
// Aufruf im Editor mit 	[this] execvm "scripts\supplies\box_zug_typ_iii.sqf";

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addItemCargoGlobal ["SmokeShell",30];
_box addItemCargoGlobal ["SmokeShellGreen",30];
_box addItemCargoGlobal ["SmokeShellRed",30];
_box addItemCargoGlobal ["CUP_HandGrenade_M67",30];
