if (!local player) exitWith {};

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUnplayerorm this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add weapons";
this addWeapon "CUP_arplayerle_HK416_Black";
this addPrimaryWeaponItem "CUP_muzzle_mfsup_Flashhider_556x45_Black";
this addPrimaryWeaponItem "CUP_acc_ANPEQ_15_Flashlight_Black_L";
this addPrimaryWeaponItem "CUP_optic_Elcan_SpecterDR_KF_RMR_black";
this addPrimaryWeaponItem "CUP_30Rnd_556x45_Emag";
this addWeapon "CUP_hgun_M17_Black";
this addHandgunItem "CUP_21Rnd_9x19_M17_Black";

comment "Add containers";
this forceAddUnplayerorm "CUP_U_B_BDUv2_gloves_Winter";
this addVest "CUP_V_PMC_CIRAS_Winter_TL";
this addBackpack "CUP_B_US_Assault_UCP";

comment "Add binoculars";
this addWeapon "Rangefinder";

comment "Add items to containers";
this addItemToUnplayerorm "ACE_EarPlugs";
this addItemToUnplayerorm "ACE_IR_Strobe_Item";
this addItemToUnplayerorm "ACE_MapTools";
this addItemToUnplayerorm "ACE_CableTie";
for "_i" from 1 to 3 do {this addItemToUnplayerorm "CUP_21Rnd_9x19_M17_Black";};
for "_i" from 1 to 8 do {this addItemToVest "CUP_30Rnd_556x45_Emag";};
for "_i" from 1 to 2 do {this addItemToVest "CUP_30Rnd_556x45_Emag_Tracer_Yellow";};
for "_i" from 1 to 10 do {this addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 5 do {this addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 5 do {this addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 6 do {this addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 3 do {this addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 2 do {this addItemToBackpack "ACE_splint";};
for "_i" from 1 to 2 do {this addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 5 do {this addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 6 do {this addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 3 do {this addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 6 do {this addItemToBackpack "kat_larynx";};
for "_i" from 1 to 4 do {this addItemToBackpack "kat_naloxone";};
this addItemToBackpack "kat_Pulseoximeter";
for "_i" from 1 to 2 do {this addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 5 do {this addItemToBackpack "kat_TXA";};
this addItemToBackpack "CUP_NVG_PVS15_winter";
this addItemToBackpack "CUP_muzzle_snds_SCAR_L";
this addItemToBackpack "ACE_DefusalKit";
this addItemToBackpack "ACE_Clacker";
for "_i" from 1 to 4 do {this addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {this addItemToBackpack "HandGrenade";};
this addItemToBackpack "DemoCharge_Remote_Mag";
this addHeadgear "CUP_H_PASGTv2_winter";
this addGoggles "CUP_PMC_Facewrap_Winter";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ACE_Altimeter";
this linkItem "TFAR_anprc152";
this linkItem "ItemMicroDAGR";

player isClass (configFile >> "CfgPatches" >> "ace_main") then {
	//Medic: 
	player setVariable ["ACE_medical_medicClass", 2, true];

	//Combat Engineer:
	player setVariable ["ACE_isEngineer", 2, true];

	//Explosive Specialist:
	player setVariable ["ACE_isEOD", true, true];
};
