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
player addPrimaryWeaponItem "CUP_optic_Elcan_reflex_coyote";
player addPrimaryWeaponItem "CUP_30Rnd_556x45_PMAG_QP_Tan";
player addWeapon "CUP_hgun_M17_Black";
player addHandgunItem "CUP_21Rnd_9x19_M17_Black";

comment "Add containers";
player forceAddUniform "CUP_U_B_GER_Tropentarn_2";
player addVest "CUP_V_B_GER_PVest_Trop_RFL";
player addBackpack "B_UAV_01_backpack_F";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 6 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 6 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 6 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 6 do {player addItemToUniform "ACE_quikclot";};
player addItemToUniform "ACE_CableTie";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "ACE_tourniquet";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_splint";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_IR_Strobe_Item";};
for "_i" from 1 to 8 do {player addItemToUniform "ACE_epinephrine";};
player addItemToUniform "ItemAndroid";
player addItemToVest "ACE_surgicalKit";
for "_i" from 1 to 2 do {player addItemToVest "ACE_UAVBattery";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_salineIV";};
player addItemToVest "CUP_H_OpsCore_Covered_Tropen";
player addItemToVest "CUP_NVG_PVS15_black";
player addItemToVest "CUP_muzzle_snds_G36_desert";
for "_i" from 1 to 5 do {player addItemToVest "CUP_30Rnd_556x45_PMAG_QP_Tan";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_21Rnd_9x19_M17_Black";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "SmokeShellGreen";
player addItemToVest "SmokeShellRed";
player addHeadgear "CUP_H_Ger_Cap_EP_Tan1";
player addGoggles "CUP_G_ESS_KHK_Facewrap_Tan";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "B_UavTerminal";

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;

//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 0, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", false, true];
