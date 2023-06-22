//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Zug_MG
//
//------------------------------------------------------------------
//------------------------------------------------------------------
if (!local player) exitWith {};

player setVariable ["loadout","Zug_MG"];

//------------------------------------------------------------------
//	Initialisierung
//------------------------------------------------------------------	
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

//------------------------------------------------------------------
//	Waffen
//------------------------------------------------------------------	
player addWeapon "CUP_lmg_minimi_railed";
player addWeapon "CUP_hgun_M17_Black";

//Waffen Ausstattung
player addPrimaryWeaponItem "cup_optic_elcan_specterdr_kf_rmr_black_pip";

//Waffen Munition
player addPrimaryWeaponItem "CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch";
player addHandgunItem "CUP_17Rnd_9x19_M17_Black";

//------------------------------------------------------------------
//	Kleidung
//------------------------------------------------------------------

switch tarnfarbeV do {
	case "bwfleck": {
		player forceAddUniform "CUP_U_B_GER_Fleck_Crye";
		player addHeadgear "CUP_H_OpsCore_Covered_Fleck";
		player addVest "GRE_PlateCarrier1_Flecktarn";
		player addGoggles "CUP_G_PMC_Facewrap_Black_Glasses_Dark";
		player addBackpack "CUP_B_GER_Medic_Flecktarn";
	};
	case "bwtropen": {
		player forceAddUniform "CUP_U_B_GER_Crye";
		player addHeadgear "CUP_H_OpsCore_Covered_Tropen";
		player addVest "GRE_PlateCarrier1_Tropentarn";
		player addGoggles "CUP_G_PMC_Facewrap_Tan_Glasses_Dark";
		player addBackpack "CUP_B_GER_Medic_Tropentarn";	
	};
	case "bwwinter": {
		player forceAddUniform "CFP_U_FieldUniform_flecktarn_snow";
		player addHeadgear "CFP_OPS2017_Helmet_White";
		player addVest "GRE_PlateCarrier1_Grau";
		player addGoggles "CUP_G_ESS_BLK_Scarf_Face_White";
		player addBackpack "CFP_AssaultPack_White";	
	};	
};

//------------------------------------------------------------------
//	Ausstattung
//------------------------------------------------------------------	
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "CUP_NVG_PVS15_black";

//------------------------------------------------------------------
//	Munition
//------------------------------------------------------------------	
for "_i" from 1 to 4 do {player addItemToVest "CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch";};

for "_i" from 1 to 2 do {player addItemToVest "CUP_17Rnd_9x19_M17_Black";};

player addItemToBackpack "CUP_200Rnd_TE1_Red_Tracer_556x45_M249_Pouch";

//------------------------------------------------------------------
//	Granaten
//------------------------------------------------------------------	
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};

//------------------------------------------------------------------
//	Medic
//------------------------------------------------------------------	
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_splint";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_salineIV_500";};
player addItemToBackpack "ACE_morphine";

//------------------------------------------------------------------
//	ACE Items in Uniform
//------------------------------------------------------------------	
for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";

//------------------------------------------------------------------
//	ACE Optionen für Spieler
//------------------------------------------------------------------	
//Medic: 
player setVariable ["ACE_medical_medicClass", 0, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 0, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", false, true];