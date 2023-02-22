// Kiste für ACE Medic Standard Supplies
// Aufruf im Editor mit 	[this] execvm "scripts\supplies\box_medic_supply.sqf";

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addItemCargoGlobal ["ACE_bodyBag",4];
_box addItemCargoGlobal ["ACE_splint",22];
_box addItemCargoGlobal ["ACE_elasticBandage",110];
_box addItemCargoGlobal ["ACE_packingBandage",40];
_box addItemCargoGlobal ["ACE_quikclot",22];
_box addItemCargoGlobal ["ACE_epinephrine",22];
_box addItemCargoGlobal ["ACE_morphine",9];
_box addItemCargoGlobal ["ACE_adenosine",22];
_box addItemCargoGlobal ["ACE_salineIV_500",90];
_box addItemCargoGlobal ["ACE_tourniquet",10];
_box addItemCargoGlobal ["ACE_personalAidKit",2];
_box addItemCargoGlobal ["ACE_surgicalKit",2];
_box addItemCargoGlobal ["ACE_EarPlugs",30];

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
_box addItemCargoGlobal ["kat_chestSeal",14];
_box addItemCargoGlobal ["kat_larynx",36];
_box addItemCargoGlobal ["kat_lorazepam",9];

_box addItemCargoGlobal ["kat_Pulseoximeter",5];
_box addItemCargoGlobal ["kat_AED",1];
_box addItemCargoGlobal ["kat_scalpel",1];