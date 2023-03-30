// Kiste für KAT Medic Items
// Aufruf im Editor mit 	_nul = execvm "scripts\supplies\box_kat.sqf";

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addItemCargoGlobal ["kat_IO_FAST",9];
_box addItemCargoGlobal ["kat_naloxone",16];
_box addItemCargoGlobal ["kat_IV_16",50];
_box addItemCargoGlobal ["kat_TXA",20];
_box addItemCargoGlobal ["kat_norepinephrine",5];
_box addItemCargoGlobal ["kat_nitroglycerin",22];
_box addItemCargoGlobal ["kat_phenylephrine",5];
_box addItemCargoGlobal ["kat_CarbonateItem",9];
_box addItemCargoGlobal ["kat_EACA",9];
_box addItemCargoGlobal ["kat_ketamine",9];
_box addItemCargoGlobal ["kat_fentanyl",9];
_box addItemCargoGlobal ["kat_nalbuphine",9];
_box addItemCargoGlobal ["kat_chestSeal",22];
_box addItemCargoGlobal ["kat_larynx",22];
_box addItemCargoGlobal ["kat_lorazepam",9];

_box addItemCargoGlobal ["kat_Pulseoximeter",2];
_box addItemCargoGlobal ["kat_AED",2];
_box addItemCargoGlobal ["kat_scalpel",2];


