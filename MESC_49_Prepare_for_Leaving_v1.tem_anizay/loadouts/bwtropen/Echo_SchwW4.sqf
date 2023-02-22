
comment "Exported from Arsenal by Staccato";

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
player addWeapon "CUP_arifle_HK416_Black";
player addPrimaryWeaponItem "CUP_muzzle_snds_M16";
player addPrimaryWeaponItem "CUP_acc_ANPEQ_15_Flashlight_Black_L";
player addPrimaryWeaponItem "CUP_optic_Elcan_SpecterDR_KF_RMR_black";
player addPrimaryWeaponItem "CUP_30Rnd_556x45_Emag";
player addWeapon "launch_O_Titan_short_F";
player addSecondaryWeaponItem "Titan_AT";
player addWeapon "CUP_hgun_M17_Coyote";
player addHandgunItem "CUP_acc_CZ_M3X";
player addHandgunItem "CUP_21Rnd_9x19_M17_Coyote";

comment "Add containers";
player forceAddUniform "CUP_U_B_GER_Crye";
player addVest "CUP_V_B_GER_PVest_Trop_TL";
player addBackpack "CUP_B_GER_Pack_Tropentarn";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_splint";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 6 do {player addItemToVest "ACE_salineIV_500";};
player addItemToVest "CUP_NVG_PVS15_black";
for "_i" from 1 to 5 do {player addItemToVest "kat_IV_16";};
for "_i" from 1 to 6 do {player addItemToVest "kat_chestSeal";};
for "_i" from 1 to 4 do {player addItemToVest "ACE_epinephrine";};
for "_i" from 1 to 3 do {player addItemToVest "kat_IO_FAST";};
player addItemToVest "ACE_morphine";
for "_i" from 1 to 4 do {player addItemToVest "kat_naloxone";};
player addItemToVest "kat_Pulseoximeter";
for "_i" from 1 to 5 do {player addItemToVest "kat_TXA";};
for "_i" from 1 to 5 do {player addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 5 do {player addItemToVest "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_splint";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_21Rnd_9x19_M17_Coyote";};
for "_i" from 1 to 4 do {player addItemToVest "CUP_HandGrenade_M67";};
for "_i" from 1 to 8 do {player addItemToVest "CUP_30Rnd_556x45_Emag";};
player addItemToBackpack "ACE_surgicalKit";
for "_i" from 1 to 2 do {player addItemToBackpack "Titan_AT";};
player addHeadgear "CUP_H_OpsCore_Covered_Tropen";
player addGoggles "CUP_G_ESS_KHK_Scarf_Face_Tan";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";
player linkItem "ItemMicroDAGR";


//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 2, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", true, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;