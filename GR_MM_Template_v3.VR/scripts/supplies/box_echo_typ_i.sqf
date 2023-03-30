// Kiste Echo Typ I - Munition
// Aufruf im Editor mit 	[this] execvm "scripts\supplies\box_echo_typ_i.sqf";

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addItemCargoGlobal ["CUP_30Rnd_556x45_PMAG_BLACK_PULL", 50];
_box addItemCargoGlobal ["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", 10];
_box addItemCargoGlobal ["CUP_21Rnd_9x19_M17_Black", 40];
