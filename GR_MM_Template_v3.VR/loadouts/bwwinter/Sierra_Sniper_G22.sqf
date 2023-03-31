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
player addWeapon "CUP_srifle_G22_blk";
player addPrimaryWeaponItem "optic_LRPS";
player addPrimaryWeaponItem "CUP_5Rnd_762x67_G22";
player addPrimaryWeaponItem "CUP_bipod_VLTOR_Modpod_black";
player addWeapon "CUP_hgun_M17_Black";
player addHandgunItem "CUP_21Rnd_9x19_M17_Black";

comment "Add containers";
player forceAddUniform "CUP_U_B_BDUv2_gloves_Winter";
player addVest "CUP_V_PMC_CIRAS_Winter_TL";
player addBackpack "CUP_B_US_Assault_UCP";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_RangeCard";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_IR_Strobe_Item";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_EntrenchingTool";
player addItemToUniform "ItemcTabHCam";
player addItemToUniform "ACE_Kestrel4500";
for "_i" from 1 to 2 do {player addItemToUniform "CUP_21Rnd_9x19_M17_Black";};
for "_i" from 1 to 10 do {player addItemToVest "CUP_5Rnd_762x67_G22";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_splint";};
player addItemToBackpack "ACE_tourniquet";
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_salineIV_250";};
player addItemToBackpack "ACE_surgicalKit";
player addItemToBackpack "CUP_NVG_PVS15_winter";
player addItemToBackpack "CUP_muzzle_snds_AWM";
player addItemToBackpack "SmokeShellGreen";
player addItemToBackpack "SmokeShellRed";
player addHeadgear "CUP_H_PMC_Beanie_Winter";
player addGoggles "CUP_G_ESS_BLK_Scarf_Face_White";

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
player setVariable ["ACE_isEngineer", 0, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", false, true];
};