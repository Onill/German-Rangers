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
player addPrimaryWeaponItem "CUP_muzzle_mfsup_Flashhider_762x51_Black";
player addPrimaryWeaponItem "CUP_acc_LLM01_L";
player addPrimaryWeaponItem "optic_SOS";
player addPrimaryWeaponItem "CUP_20Rnd_762x51_HK417";
player addPrimaryWeaponItem "CUP_bipod_Harris_1A2_L_BLK";
player addWeapon "CUP_hgun_M17_Black";
player addHandgunItem "CUP_17Rnd_9x19_M17_Black";

comment "Add containers";
player forceAddUniform "CUP_U_B_BDUv2_gloves_Winter";
player addVest "CUP_V_PMC_CIRAS_Winter_TL";
player addBackpack "CUP_O_RUS_Patrol_bag_Winter";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Kestrel4500";
player addItemToUniform "ACE_RangeCard";
for "_i" from 1 to 2 do {player addItemToUniform "CUP_17Rnd_9x19_M17_Black";};
for "_i" from 1 to 8 do {player addItemToVest "CUP_20Rnd_762x51_HK417";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_20Rnd_TE1_Yellow_Tracer_762x51_HK417";};
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_chestSeal";};
player addItemToBackpack "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_splint";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_tourniquet";};
player addItemToBackpack "CUP_NVG_PVS15_winter";
player addItemToBackpack "CUP_G_PMC_Facewrap_Winter_Glasses_Ember";
for "_i" from 1 to 2 do {player addItemToBackpack "HandGrenade";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShell";};
player addHeadgear "CUP_H_PASGTv2_winter";
player addGoggles "G_Combat";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";

if isClass (configFile >> "CfgPatches" >> "ace_main") then {
	//Medic: 
	player setVariable ["ACE_medical_medicClass", 0, true];

	//Combat Engineer:
	player setVariable ["ACE_isEngineer", 0, true];

	//Explosive Specialist:
	player setVariable ["ACE_isEOD", false, true];
};
