// Kiste Sanität Typ I - Allgemein
/* Aufruf im Editor mit:

_path = format ["loadouts\%1\lima\box_san_typ_i.sqf", getMissionConfigValue "fraktion"]; 
null = [this] execVM _path;

*/

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;


_box addItemCargoGlobal ["ACE_fieldDressing",100];
_box addItemCargoGlobal ["ACE_packingBandage",70];
_box addItemCargoGlobal ["ACE_elasticBandage",30];
_box addItemCargoGlobal ["kat_chestSeal",10];
_box addItemCargoGlobal ["ACE_tourniquet",10];
_box addItemCargoGlobal ["ACE_splint",30];