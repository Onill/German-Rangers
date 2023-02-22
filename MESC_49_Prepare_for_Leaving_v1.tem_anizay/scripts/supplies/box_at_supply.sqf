// Kiste für ACE Medic Standard Supplies
// Aufruf im Editor mit 	[this] execvm "scripts\supplies\box_at_supply.sqf";

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addItemCargoGlobal ["CUP_SMAW_HEAA_M",4];
_box addItemCargoGlobal ["Titan_AT",3];
_box addItemCargoGlobal ["CUP_launch_Mk153Mod0", 2];
_box addItemCargoGlobal ["cup_optic_smaw_scope", 2];
_box addItemCargoGlobal ["CUP_SMAW_Spotting", 2];
_box addItemCargoGlobal ["launch_I_Titan_short_F", 1];