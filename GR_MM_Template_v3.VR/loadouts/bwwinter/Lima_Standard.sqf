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
player addWeapon "CUP_smg_MP7";
player addPrimaryWeaponItem "CUP_acc_LLM01_L";
player addPrimaryWeaponItem "CUP_optic_ZeissZPoint";
player addPrimaryWeaponItem "CUP_40Rnd_46x30_MP7";

comment "Add containers";
player forceAddUniform "CUP_U_B_BDUv2_gloves_dirty_Winter";
player addVest "CUP_V_PMC_CIRAS_Winter_Patrol";
player addBackpack "TFAR_rt1523g_big_bwmod_tropen";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_EntrenchingTool";
player addItemToUniform "ACE_Fortify";
player addItemToUniform "ACE_artilleryTable";
player addItemToUniform "acex_intelitems_notepad";
for "_i" from 1 to 4 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 4 do {player addItemToVest "SmokeShellRed";};
player addItemToVest "CUP_HandGrenade_M67";
for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToVest "CUP_40Rnd_46x30_MP7";};
player addItemToBackpack "ACE_wirecutter";
player addItemToBackpack "ToolKit";
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_chestSeal";};
player addItemToBackpack "ACE_morphine";
player addItemToBackpack "ACE_salineIV_500";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_splint";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_tourniquet";};
player addItemToBackpack "CUP_NVG_PVS15_winter";
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
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 2, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", true, true];
};