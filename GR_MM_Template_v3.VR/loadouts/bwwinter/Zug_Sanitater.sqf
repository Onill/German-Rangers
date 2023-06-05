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
player addPrimaryWeaponItem "CUP_muzzle_mfsup_Flashhider_556x45_Black";
player addPrimaryWeaponItem "CUP_acc_LLM01_L";
player addPrimaryWeaponItem "CUP_optic_HensoldtZO_low_RDS";
player addPrimaryWeaponItem "CUP_30Rnd_556x45_G36";
player addWeapon "CUP_hgun_M17_Black";
player addHandgunItem "CUP_17Rnd_9x19_M17_Black";

comment "Add containers";
player forceAddUniform "CUP_U_B_BDUv2_gloves_Winter";
player addVest "CUP_V_PMC_CIRAS_Winter_TL";
player addBackpack "B_Carryall_oucamo";

comment "Add items to containers";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
for "_i" from 1 to 2 do {player addItemToUniform "CUP_17Rnd_9x19_M17_Black";};
player addItemToUniform "Chemlight_yellow";
for "_i" from 1 to 6 do {player addItemToVest "CUP_30Rnd_556x45_G36";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36";};
for "_i" from 1 to 6 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 10 do {player addItemToUniform "ACE_splint";};

for "_i" from 1 to 3 do {player addItemToVest "kat_Pulseoximeter";};
for "_i" from 1 to 10 do {player addItemToVest "kat_chestSeal";};
for "_i" from 1 to 15 do {player addItemToVest "kat_larynx";};
for "_i" from 1 to 5 do {player addItemToVest "kat_IO_FAST";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "ACE_surgicalKit";

for "_i" from 1 to 50 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 7 do {player addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 22 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 25 do {player addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_ketamine";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_fentanyl";};
for "_i" from 1 to 10 do {player addItemToBackpack "kat_TXA";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_EACA";};
for "_i" from 1 to 10 do {player addItemToBackpack "kat_nitroglycerin";};
player addItemToBackpack "kat_Carbonate";
player addItemToBackpack "ACE_morphine";
player addItemToBackpack "kat_naloxone";
player addItemToBackpack "kat_BVM";

player addItemToBackpack "CUP_NVG_PVS15_winter";
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShell";};
player addHeadgear "CUP_H_PASGTv2_winter";
player addGoggles "G_Aviator";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";

if isClass (configFile >> "CfgPatches" >> "ace_main") then {
	//Medic: 
	player setVariable ["ACE_medical_medicClass", 2, true];

	//Combat Engineer:
	player setVariable ["ACE_isEngineer", 0, true];

	//Explosive Specialist:
	player setVariable ["ACE_isEOD", false, true];
};
