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
player addWeapon "CUP_arifle_HK417_20";
player addPrimaryWeaponItem "CUP_acc_LLM01_L";
player addPrimaryWeaponItem "optic_AMS";
player addPrimaryWeaponItem "CUP_20Rnd_762x51_HK417";
player addPrimaryWeaponItem "CUP_bipod_Harris_1A2_L_BLK";
player addWeapon "CUP_hgun_M17_Black";
player addHandgunItem "CUP_17Rnd_9x19_M17_Black";

comment "Add containers";
player forceAddUniform "CUP_U_B_GER_Flecktarn_2";
player addVest "CUP_V_B_GER_PVest_Fleck_RFL";

comment "Add items to containers";
for "_i" from 1 to 6 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToUniform "kat_chestSeal";};
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_splint";};
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_salineIV_500";};
for "_i" from 1 to 2 do {player addItemToUniform "CUP_17Rnd_9x19_M17_Black";};
player addItemToVest "ACE_EntrenchingTool";
player addItemToVest "ACE_wirecutter";
player addItemToVest "CUP_optic_Elcan_reflex";
for "_i" from 1 to 2 do {player addItemToVest "CUP_HandGrenade_M67";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 7 do {player addItemToVest "CUP_20Rnd_762x51_HK417";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_20Rnd_TE1_Red_Tracer_762x51_HK417";};
player addHeadgear "CUP_H_OpsCore_Covered_Fleck";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "CUP_NVG_PVS15_black";

//Medic: 
player setVariable ["ACE_medical_medicClass", 0, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 0, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", false, true];
