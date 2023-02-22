// in der Init der Box mit null = [this] execVM "loadouts\virtual_arsenal_flecktarn.sqf" aufrufen

// Init stuff

_crate = _this select 0;
["virtualarsenal",[_crate,false,{true}]] spawn BIS_fnc_arsenal;

// Weapons

_rifle = 				[
							"CUP_arifle_G36A",
							"CUP_arifle_G36A3",
							"CUP_arifle_HK416_Black",
							"CUP_arifle_HK416_CQB_Black",
							"CUP_arifle_HK417_12",
							"CUP_arifle_HK417_20",
							"CUP_arifle_G36K",
							"CUP_arifle_G36KA3",
							"CUP_arifle_AG36",
							"CUP_arifle_G36A3_AG36",
							"CUP_arifle_HK416_AGL_Black",
							"CUP_lmg_minimi_railed"
						];

_pistol = 				[
							"CUP_hgun_M17_Black"
						];

_launcher = 			[
	
						];

_optics = 				[
							"CUP_optic_G36DualOptics",
							"CUP_optic_CompM4",
							"CUP_optic_AC11704_Black",
							"CUP_optic_Eotech553_Black",
							"CUP_optic_HensoldtZO_low",
							"CUP_optic_HensoldtZO_low_RDS",
							"CUP_optic_Elcan_reflex",
							"optic_AMS"
						];

_seconattachments = 	[
							"CUP_acc_ANPEQ_15_Flashlight_Black_L",
							"CUP_acc_LLM01_L",
							"CUP_muzzle_snds_SCAR_L",
							"CUP_muzzle_snds_SCAR_H",
							"CUP_bipod_Harris_1A2_L_BLK"
						];

_magazines = 			[
							"CUP_30Rnd_556x45_G36",
							"CUP_30Rnd_556x45_PMAG_QP",
							"CUP_20Rnd_762x51_HK417",
							"1Rnd_HE_Grenade_shell",
							"UGL_FlareWhite_F",
							"1Rnd_SmokeRed_Grenade_shell",
							"1Rnd_Smoke_Grenade_shell",
							"CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249",
							"CUP_17Rnd_9x19_M17_Black"
						];

_grenades = 			[
							"SmokeShell",
							"SmokeShellGreen",
							"SmokeShellRed",
							"CUP_HandGrenade_M67"
						];

// Clothes


_Uniforms = 			[
							"CUP_U_B_GER_Flecktarn_1",
							"CUP_U_B_GER_Flecktarn_2",
							"CUP_U_B_GER_Flecktarn_3",
							"CUP_U_B_GER_Flecktarn_4",
							"CUP_U_B_GER_Flecktarn_5",
							"CUP_U_B_GER_Flecktarn_6",
							"CUP_U_B_GER_Flecktarn_7",
							"CUP_U_B_GER_Flecktarn_8"
						];

_Vests = 				[
							"CUP_V_B_GER_PVest_Fleck_Gren",
							"CUP_V_B_GER_PVest_Fleck_MG",
							"CUP_V_B_GER_PVest_Fleck_Med",
							"CUP_V_B_GER_PVest_Fleck_OFC",
							"CUP_V_B_GER_PVest_Fleck_RFL",
							"CUP_V_B_GER_PVest_Fleck_TL",
							"CUP_V_B_GER_PVest_Fleck_Gren_LT",
							"CUP_V_B_GER_PVest_Fleck_MG_LT",
							"CUP_V_B_GER_PVest_Fleck_Med_LT",
							"CUP_V_B_GER_PVest_Fleck_RFL_LT",
							"CUP_V_B_GER_PVest_Fleck_TL_LT"
						];

_Backpacks = 			[
							"TFAR_rt1523g_big_bwmod",
							"B_AssaultPack_rgr",
							"B_Carryall_oli",
							"B_Kitbag_rgr",
							"CUP_B_GER_Pack_Flecktarn",
							"CUP_B_GER_Medic_Flecktarn"
						];

_Headgear = 			[
							"CUP_H_Ger_M92_Cover",
							"CUP_H_OpsCore_Covered_Fleck",
							"CUP_H_OpsCore_Covered_Fleck_NoHS",
							"CUP_H_OpsCore_Covered_Fleck_SF"
						];

_Goggles = 				[
							"rhs_googles_black",
							"rhs_googles_clear",
							"rhs_googles_orange"
						];

// Medic-Stuff

_Medic = 				[
							"ACE_morphine",
							"ACE_epinephrine",
							"ACE_adenosine",
							"ACE_fieldDressing",
							"ACE_packingBandage",
							"ACE_elasticBandage",
							"ACE_quikclot",
							"ACE_salineIV",
							"ACE_salineIV_500",
							"ACE_tourniquet",
							"ACE_bodyBag",
							"ACE_personalAidKit",
							"ACE_surgicalKit",
							"ACE_splint"
						];

// Items

_nvg = 					[
							"CUP_NVG_PVS15_black"
						];

_misc = 				[
							"ItemMap",
							"ItemCompass",
							"ItemWatch",
							"ACE_MapTools",
							"ACE_EarPlugs",
							"ACE_IR_Strobe_Item",
							"ACE_CableTie",
							"ACE_Flashlight_XL50",
							"Rangefinder",
							"ItemAndroid",
							"ItemcTab",
							"ACE_RangeCard",
							"ACE_Kestrel4500",
							"ACE_SpottingScope",
							"ACE_EntrenchingTool",
							"ACE_wirecutter",
							"ItemcTabHCam"
						];

_Funk = 				[
							"TFAR_anprc152"
						];

//Populate with predefined items and whatever is already in the crate
[_crate,((backpackCargo _crate) + _Backpacks)] call BIS_fnc_addVirtualBackpackCargo;
[_crate,((itemCargo _crate) + _Headgear + _Goggles + _Uniforms + _Vests + _nvg + _optics + _seconattachments + _misc + _Medic + _Funk)] call BIS_fnc_addVirtualItemCargo;
[_crate,((magazineCargo _crate) + _magazines + _grenades)] call BIS_fnc_addVirtualMagazineCargo;
[_crate,((weaponCargo _crate) + _rifle + _pistol + _launcher)] call BIS_fnc_addVirtualWeaponCargo;


