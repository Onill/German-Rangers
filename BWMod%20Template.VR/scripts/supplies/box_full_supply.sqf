// Kiste für ACE Medic Standard Supplies
// Aufruf im Editor mit 	[this] execvm "scripts\supplies\box_full_supply.sqf";
//
// KANN NICHT GETRAGEN WERDEN!!!
//

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;


// ACE Medic
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

// KAT Medic
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

// Ammunition
_box addItemCargoGlobal ["CUP_30Rnd_556x45_G36", 100];
_box addItemCargoGlobal ["CUP_30Rnd_556x45_PMAG_QP", 100];
_box addItemCargoGlobal ["CUP_20Rnd_762x51_HK417", 30];
_box addItemCargoGlobal ["CUP_17Rnd_9x19_M17_Black", 30];
_box addItemCargoGlobal ["CUP_200Rnd_TE4_Yellow_Tracer_556x45_L110A1",10];
_box addItemCargoGlobal ["CUP_200Rnd_TE1_Red_Tracer_556x45_M249",10];
_box addItemCargoGlobal ["rhs_mag_m18_green",10];
_box addItemCargoGlobal ["rhs_mag_m18_red",10];

// Explosives
_box addItemCargoGlobal ["1Rnd_He_grenade_shell", 40];
_box addItemCargoGlobal ["UGL_FlareWhite_F",20];
_box addItemCargoGlobal ["1Rnd_SmokeRed_Grenade_shell",20];
_box addItemCargoGlobal ["1Rnd_Smoke_Grenade_shell",20];
_box addItemCargoGlobal ["SmokeShell",20];
_box addItemCargoGlobal ["CUP_HandGrenade_M67",50];

// AT 
_box addItemCargoGlobal ["CUP_SMAW_HEAA",10];
_box addItemCargoGlobal ["Titan_AT",8];
_box addItemCargoGlobal ["CUP_launch_Mk153Mod0", 5];
_box addItemCargoGlobal ["cup_optic_smaw_scope", 5];
_box addItemCargoGlobal ["CUP_SMAW_Spotting", 5];
_box addItemCargoGlobal ["launch_I_Titan_short_F", 2];