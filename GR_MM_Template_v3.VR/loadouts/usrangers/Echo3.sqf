//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Echo
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
player addWeapon "CUP_arifle_M4A1_black";
player addWeapon "CUP_hgun_Colt1911";

//Waffen Ausstattung
player addPrimaryWeaponItem "cup_optic_compm4";
player addPrimaryWeaponItem "cup_acc_anpeq_2_flashlight_black_l";

//Waffen Munition
player addPrimaryWeaponItem "CUP_30Rnd_556x45_Stanag";
player addHandgunItem "CUP_7Rnd_45ACP_1911";

//------------------------------------------------------------------
//	Kleidung
//------------------------------------------------------------------	
player forceAddUniform "CUP_U_B_BDUv2_desert_US";
player addHeadgear "SP_ProTecHelmet_Black";
player addVest "CUP_V_JPC_Fastbelt_coy";
player addBackpack "TFAR_rt1523g_big_bwmod";
player addgoggles "CUP_G_ESS_BLK";

//------------------------------------------------------------------
//	Ausstattung
//------------------------------------------------------------------	
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "CUP_NVG_PVS14";
player addWeapon "Rangefinder";
player linkItem "ItemcTab";

//------------------------------------------------------------------
//	Munition
//------------------------------------------------------------------	
for "_i" from 1 to 6 do {player addItemToVest "CUP_30Rnd_556x45_Stanag";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_12Rnd_45ACP_mk23";};

//------------------------------------------------------------------
//	Granaten
//------------------------------------------------------------------	
for "_i" from 1 to 2 do {player addItemToVest "CUP_HandGrenade_M67";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_M84";};

//------------------------------------------------------------------
//	Medic
//------------------------------------------------------------------	
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_splint";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_CableTie";};
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_salineIV_500";};
player addItemToUniform "ACE_surgicalKit";

for "_i" from 1 to 5 do {player addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 6 do {player addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 6 do {player addItemToBackpack "kat_larynx";};
for "_i" from 1 to 4 do {player addItemToBackpack "kat_naloxone";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_TXA";};
player addItemToBackpack "kat_Pulseoximeter";

for "_i" from 1 to 2 do {player addItemToBackpack "DemoCharge_Remote_Mag";};

//------------------------------------------------------------------
//	ACE Items
//------------------------------------------------------------------	
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Clacker";
for "_i" from 1 to 2 do {player addItemToUniform "B_IR_Grenade";};

//------------------------------------------------------------------
//	ACE Optionen für Spieler
//------------------------------------------------------------------	
//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 2, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", true, true];