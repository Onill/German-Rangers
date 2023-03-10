
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
player addWeapon "CUP_arifle_HK416_Desert";
player addPrimaryWeaponItem "CUP_acc_ANPEQ_15_Flashlight_Tan_L";
player addPrimaryWeaponItem "CUP_optic_Elcan_SpecterDR_KF_RMR";
player addPrimaryWeaponItem "CUP_30Rnd_556x45_EMAG_Tan";
player addWeapon "CUP_hgun_M17_Coyote";
player addHandgunItem "CUP_21Rnd_9x19_M17_Coyote";

comment "Add containers";
player forceAddUniform "CUP_U_B_GER_Crye";
player addVest "CUP_V_B_GER_Armatus_BB_Trop";
player addBackpack "B_UAV_01_backpack_F";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_splint";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_epinephrine";};
player addItemToUniform "ACE_salineIV_500";
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_IR_Strobe_Item";};
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 5 do {player addItemToUniform "kat_IV_16";};
for "_i" from 1 to 3 do {player addItemToUniform "kat_IO_FAST";};
for "_i" from 1 to 2 do {player addItemToUniform "kat_TXA";};
player addItemToUniform "kat_Pulseoximeter";
player addItemToVest "CUP_NVG_PVS15_black";
player addItemToVest "ACE_salineIV_500";
player addItemToVest "ACE_UAVBattery";
player addItemToVest "CUP_muzzle_snds_M16_desert";
player addItemToVest "CUP_H_OpsCore_Covered_Tropen";
for "_i" from 1 to 4 do {player addItemToVest "kat_chestSeal";};
for "_i" from 1 to 2 do {player addItemToVest "kat_larynx";};
for "_i" from 1 to 2 do {player addItemToVest "kat_TXA";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "B_IR_Grenade";
for "_i" from 1 to 2 do {player addItemToVest "ACE_M84";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_21Rnd_9x19_M17_Coyote";};
for "_i" from 1 to 8 do {player addItemToVest "CUP_30Rnd_556x45_EMAG_Tan";};
player addHeadgear "CUP_H_Ger_Boonie_desert";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";
player linkItem "B_UavTerminal";

//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 2, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", true, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;