//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						ZUG_Sierra_TrpFhr
//
//------------------------------------------------------------------
//------------------------------------------------------------------
if (!local player) exitWith {};

//------------------------------------------------------------------
//	Initialisierung
//------------------------------------------------------------------	
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

//------------------------------------------------------------------
//	Waffen
//------------------------------------------------------------------	
player addWeapon "CUP_srifle_M14_DMR";
player addWeapon "CUP_hgun_Colt1911";

//Waffen Ausstattung
player addPrimaryWeaponItem "cup_optic_acog_ta01b_black";

//Waffen Munition
player addPrimaryWeaponItem "CUP_20Rnd_762x51_DMR";
player addHandgunItem "CUP_7Rnd_45ACP_1911";

//------------------------------------------------------------------
//	Kleidung
//------------------------------------------------------------------	
player forceAddUniform "CUP_U_B_CZ_DST_Ghillie";
player addVest "CUP_V_JPC_lightbelt_coy";
player addHeadgear "SP_HeadSet_Tan";
player addBackpack "TFAR_rt1523g_big_rhs";
player addgoggles "CUP_G_ESS_BLK";



//------------------------------------------------------------------
//	Ausstattung
//------------------------------------------------------------------	
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "CUP_NVG_PVS15_black";

player addWeapon "Laserdesignator_03";
player addMagazine "Laserbatteries";

//------------------------------------------------------------------
//	Munition
//------------------------------------------------------------------	
for "_i" from 1 to 3 do {player addItemToVest "CUP_20Rnd_762x51_DMR";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_20Rnd_TE1_Red_Tracer_762x51_DMR";};

for "_i" from 1 to 2 do {player addItemToUniform "CUP_7Rnd_45ACP_1911";};

//------------------------------------------------------------------
//	Granaten
//------------------------------------------------------------------	
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};

for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellGreen";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellRed";};

//------------------------------------------------------------------
//	Erste Hilfe in Uniform
//------------------------------------------------------------------	
player addItemToBackpack "ACE_surgicalKit";

player addItemToBackpack "ACE_tourniquet";

for "_i" from 1 to 2 do {player addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_morphine";};

for "_i" from 1 to 10 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_splint";};

for "_i" from 1 to 5 do {player addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 6 do {player addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_larynx";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_naloxone";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_Pulseoximeter";};
for "_i" from 1 to 10 do {player addItemToBackpack "kat_TXA";};

//------------------------------------------------------------------
//	ACE Items in Uniform
//------------------------------------------------------------------	
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ItemcTabHCam";
player addItemToUniform "ACE_RangeCard";
player addItemToUniform "ACE_Kestrel4500";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_IR_Strobe_Item";};

player addItemToBackpack "ACE_EntrenchingTool";

//------------------------------------------------------------------
//	ACE Optionen für Spieler
//------------------------------------------------------------------	
//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 0, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", false, true];




