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
player addWeapon "CUP_lmg_minimi_railed";
player addPrimaryWeaponItem "CUP_muzzle_mfsup_Flashhider_556x45_Black";
player addPrimaryWeaponItem "CUP_optic_Elcan_reflex";
player addPrimaryWeaponItem "CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249";

comment "Add containers";
player forceAddUniform "CUP_U_B_BDUv2_gloves_Winter";
player addVest "CUP_V_PMC_CIRAS_Winter_Patrol";
player addBackpack "CUP_O_RUS_Patrol_bag_Winter";

comment "Add items to containers";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_Canteen";
player addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 3 do {player addItemToVest "CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249";};
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_chestSeal";};
player addItemToBackpack "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_splint";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_tourniquet";};
player addItemToBackpack "CUP_NVG_PVS15_winter";
player addItemToBackpack "ACE_SpareBarrel";
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToBackpack "HandGrenade";};
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