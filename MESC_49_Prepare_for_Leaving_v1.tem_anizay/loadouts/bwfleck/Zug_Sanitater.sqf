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
player addPrimaryWeaponItem "CUP_acc_LLM01_L";
player addPrimaryWeaponItem "CUP_optic_Elcan_reflex";
player addPrimaryWeaponItem "CUP_30Rnd_556x45_G36";
player addWeapon "CUP_hgun_M17_Black";
player addHandgunItem "CUP_21Rnd_9x19_M17_Black";

comment "Add containers";
player forceAddUniform "CUP_U_B_GER_Flecktarn_4";
player addVest "CUP_V_B_GER_PVest_Fleck_Med_LT";
player addBackpack "B_Kitbag_rgr";

comment "Add items to containers";
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_bodyBag";};
for "_i" from 1 to 6 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 10 do {player addItemToUniform "ACE_splint";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_EarPlugs";};

player addItemToVest "ACE_surgicalKit";
for "_i" from 1 to 3 do {player addItemToVest "kat_Pulseoximeter";};
for "_i" from 1 to 10 do {player addItemToVest "kat_chestSeal";};
for "_i" from 1 to 10 do {player addItemToVest "kat_larynx";};
for "_i" from 1 to 5 do {player addItemToVest "kat_IO_FAST";};
for "_i" from 1 to 4 do {player addItemToVest "CUP_30Rnd_556x45_G36";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_30Rnd_TE1_Red_Tracer_556x45_G36";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_21Rnd_9x19_M17_Black";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};

for "_i" from 1 to 40 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 22 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_naloxone";};
for "_i" from 1 to 20 do {player addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_ketamine";};
for "_i" from 1 to 10 do {player addItemToBackpack "kat_TXA";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_EACA";};

player addHeadgear "CUP_H_OpsCore_Covered_Fleck";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "CUP_NVG_PVS15_black";

//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 0, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", false, true];