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
player addWeapon "CUP_arifle_HK417_12";
player addPrimaryWeaponItem "CUP_muzzle_mfsup_Flashhider_762x51_Black";
player addPrimaryWeaponItem "CUP_acc_ANPEQ_15_Flashlight_Black_L";
player addPrimaryWeaponItem "CUP_optic_Elcan_SpecterDR_KF_RMR_black";
player addPrimaryWeaponItem "CUP_20Rnd_762x51_HK417";
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
for "_i" from 1 to 2 do {player addItemToUniform "ACE_IR_Strobe_Item";};
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 3 do {player addItemToUniform "CUP_21Rnd_9x19_M17_Black";};
for "_i" from 1 to 6 do {player addItemToVest "CUP_20Rnd_762x51_HK417";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_20Rnd_TE1_Yellow_Tracer_762x51_HK417";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_salineIV_250";};
player addItemToBackpack "ACE_surgicalKit";
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_splint";};
player addItemToBackpack "ACE_tourniquet";
player addItemToBackpack "ACE_wirecutter";
player addItemToBackpack "CUP_muzzle_snds_socom762rc";
player addItemToBackpack "CUP_NVG_PVS15_winter";
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellGreen";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellRed";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShell";};
player addHeadgear "CUP_H_PMC_Beanie_Winter";
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
player setVariable ["ACE_isEngineer", 0, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", false, true];
};