// Kiste für ACE Medic Standard Supplies
// Aufruf im Editor mit 	[this] execvm "scripts\supplies\box_ammo_supply.sqf";

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addItemCargoGlobal ["CUP_30Rnd_556x45_G36", 50];
_box addItemCargoGlobal ["CUP_30Rnd_556x45_PMAG_QP", 50];
_box addItemCargoGlobal ["CUP_20Rnd_762x51_HK417", 10];
_box addItemCargoGlobal ["CUP_17Rnd_9x19_M17_Black", 15];
_box addItemCargoGlobal ["CUP_200Rnd_TE4_Yellow_Tracer_556x45_L110A1",3];
_box addItemCargoGlobal ["CUP_200Rnd_TE1_Red_Tracer_556x45_M249",1];
_box addItemCargoGlobal ["rhs_mag_m18_green",5];
_box addItemCargoGlobal ["rhs_mag_m18_red",5];