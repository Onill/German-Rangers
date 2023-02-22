
comment "Exported from Arsenal by Milos";

comment "[!] UNIT MUST BE LOCAL [!]";
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
player addWeapon "CUP_arifle_HK417_12_Desert";
player addPrimaryWeaponItem "CUP_acc_ANPEQ_15_Flashlight_Tan_L";
player addPrimaryWeaponItem "CUP_optic_Elcan_SpecterDR_KF_RMR_coyote";
player addPrimaryWeaponItem "CUP_20Rnd_762x51_HK417_Camo_Desert";
player addPrimaryWeaponItem "CUP_bipod_VLTOR_Modpod";
player addWeapon "CUP_hgun_M17_Black";
player addHandgunItem "CUP_21Rnd_9x19_M17_Black";

comment "Add containers";
player forceAddUniform "CUP_U_B_GER_Crye";
player addVest "CUP_V_B_GER_PVest_Trop_RFL";
player addBackpack "CUP_B_GER_Pack_Tropentarn";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 10 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItemToUniform "ACE_quikclot";};
player addItemToUniform "ACE_CableTie";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_IR_Strobe_Item";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_splint";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_tourniquet";
player addItemToVest "ACE_surgicalKit";
for "_i" from 1 to 5 do {player addItemToVest "ACE_epinephrine";};
for "_i" from 1 to 3 do {player addItemToVest "ACE_morphine";};
for "_i" from 1 to 8 do {player addItemToVest "ACE_salineIV_250";};
player addItemToVest "ACE_wirecutter";
player addItemToVest "muzzle_snds_B_arid_F";
for "_i" from 1 to 3 do {player addItemToVest "CUP_21Rnd_9x19_M17_Black";};
player addItemToVest "SmokeShellRed";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 6 do {player addItemToVest "CUP_20Rnd_762x51_HK417_Camo_Desert";};
player addItemToBackpack "CUP_H_OpsCore_Covered_Tropen";
player addItemToBackpack "CUP_NVG_PVS15_black";
for "_i" from 1 to 5 do {player addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 6 do {player addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_larynx";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_naloxone";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_Pulseoximeter";};
for "_i" from 1 to 10 do {player addItemToBackpack "kat_TXA";};
player addHeadgear "CUP_H_Ger_Cap_EP_Tan1";
player addGoggles "rhsusf_shemagh2_gogg_tan";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;

//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 0, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", false, true];
