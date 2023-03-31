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
player addWeapon "CUP_arifle_G36A3";
player addPrimaryWeaponItem "CUP_muzzle_mfsup_Flashhider_556x45_Black";
player addPrimaryWeaponItem "CUP_acc_LLM01_L";
player addPrimaryWeaponItem "CUP_optic_HensoldtZO_low_RDS";
player addPrimaryWeaponItem "CUP_30Rnd_556x45_G36";
player addWeapon "CUP_hgun_M17_Black";
player addHandgunItem "CUP_17Rnd_9x19_M17_Black";

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
player addItemToUniform "ItemcTabHCam";
for "_i" from 1 to 2 do {player addItemToUniform "CUP_17Rnd_9x19_M17_Black";};
player addItemToUniform "acex_intelitems_notepad";
for "_i" from 1 to 8 do {player addItemToVest "CUP_30Rnd_556x45_G36";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36";};
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_chestSeal";};
player addItemToBackpack "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_splint";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_tourniquet";};
player addItemToBackpack "CUP_NVG_PVS15_winter";
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellGreen";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellRed";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToBackpack "HandGrenade";};
player addHeadgear "CUP_H_PASGTv2_winter";
player addGoggles "CUP_G_ESS_KHK_Facewrap_White";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemcTab";

if isClass (configFile >> "CfgPatches" >> "ace_main") then {
	//Medic: 
	player setVariable ["ACE_medical_medicClass", 0, true];

	//Combat Engineer:
	player setVariable ["ACE_isEngineer", 0, true];

	//Explosive Specialist:
	player setVariable ["ACE_isEOD", false, true];
};