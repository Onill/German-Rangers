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
player addWeapon "CUP_arifle_G36KA3";
player addPrimaryWeaponItem "CUP_acc_LLM01_L";
player addPrimaryWeaponItem "CUP_optic_Elcan_reflex";
player addPrimaryWeaponItem "CUP_30Rnd_556x45_G36";
player addWeapon "CUP_hgun_M17_Black";
player addHandgunItem "CUP_17Rnd_9x19_M17_Black";

comment "Add containers";
player forceAddUniform "CUP_U_B_GER_Tropentarn_2";
player addVest "CUP_V_B_GER_PVest_Trop_Med";
player addBackpack "TFAR_rt1523g_big_bwmod_tropen";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
player addItemToUniform "SmokeShellGreen";
player addItemToUniform "SmokeShellRed";
player addItemToUniform "SmokeShellBlue";
player addItemToUniform "ACE_Chemlight_HiRed";
player addItemToUniform "ACE_Chemlight_HiGreen";
player addItemToUniform "ACE_Chemlight_HiBlue";
player addItemToUniform "CUP_30Rnd_556x45_G36";
player addItemToVest "kat_AED";
player addItemToVest "ACE_personalAidKit";
player addItemToVest "kat_Pulseoximeter";
player addItemToVest "ACE_surgicalKit";
player addItemToVest "ACE_Fortify";
player addItemToVest "kat_scalpel";
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 10 do {player addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_larynx";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_naloxone";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_TXA";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_splint";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_EACA";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_norepinephrine";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_fentanyl";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_phenylephrine";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_ketamine";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_nitroglycerin";};
player addItemToBackpack "kat_nalbuphine";
player addItemToBackpack "kat_lorazepam";
for "_i" from 1 to 2 do {player addItemToBackpack "kat_Carbonate";};
player addHeadgear "CUP_H_OpsCore_Covered_Tropen";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";
player linkItem "CUP_NVG_PVS15_black";

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;

//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 0, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", false, true];