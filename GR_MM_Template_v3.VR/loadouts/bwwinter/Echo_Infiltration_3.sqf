if (!local player) exitWith {};

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add weapons";
player addWeapon "CUP_arifle_HK416_Black";
player addPrimaryWeaponItem "CUP_muzzle_mfsup_Flashhider_556x45_Black";
player addPrimaryWeaponItem "CUP_acc_ANPEQ_15_Flashlight_Black_L";
player addPrimaryWeaponItem "CUP_optic_Elcan_SpecterDR_KF_RMR_black";
player addPrimaryWeaponItem "CUP_30Rnd_556x45_Emag";
player addWeapon "CUP_hgun_M17_Black";
player addHandgunItem "CUP_21Rnd_9x19_M17_Black";

comment "Add containers";
player forceAddUniform "CUP_U_B_BDUv2_gloves_Winter";
player addVest "CUP_V_PMC_CIRAS_Winter_TL";
player addBackpack "TFAR_rt1523g_big_bwmod_tropen";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_CableTie";
for "_i" from 1 to 3 do {player addItemToUniform "CUP_21Rnd_9x19_M17_Black";};
for "_i" from 1 to 8 do {player addItemToVest "CUP_30Rnd_556x45_Emag";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_30Rnd_556x45_Emag_Tracer_Yellow";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 6 do {player addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 6 do {player addItemToBackpack "kat_larynx";};
for "_i" from 1 to 4 do {player addItemToBackpack "kat_naloxone";};
player addItemToBackpack "kat_Pulseoximeter";
for "_i" from 1 to 5 do {player addItemToBackpack "kat_TXA";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_splint";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_tourniquet";};
player addItemToBackpack "CUP_NVG_PVS15_winter";
player addItemToBackpack "CUP_muzzle_snds_SCAR_L";
for "_i" from 1 to 4 do {player addItemToBackpack "SmokeShell";};
player addHeadgear "CUP_H_PASGTv2_winter";
player addGoggles "CUP_G_ESS_KHK_Facewrap_White";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";


if isClass (configFile >> "CfgPatches" >> "ace_main") then {
	//Medic: 
	player setVariable ["ACE_medical_medicClass", 2, true];

	//Combat Engineer:
	player setVariable ["ACE_isEngineer", 2, true];

	//Explosive Specialist:
	player setVariable ["ACE_isEOD", true, true];
};