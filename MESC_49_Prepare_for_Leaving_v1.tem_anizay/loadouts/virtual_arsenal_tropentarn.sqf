// in der Init der Box mit null = [this] execVM "loadouts\virtual_arsenal_flecktarn.sqf" aufrufen

// Init stuff

_crate = _this select 0;
["virtualarsenal",[_crate,false,{true}]] spawn BIS_fnc_arsenal;

// Weapons

_rifle = 				[
							"CUP_arifle_G36A",
							"CUP_arifle_G36A_camo",
							"CUP_arifle_G36A3",
							"CUP_arifle_G36A3_camo",
							"CUP_arifle_HK416_Black",
							"CUP_arifle_HK416_Desert",
							"CUP_arifle_HK416_CQB_Black",
							"CUP_arifle_HK416_CQB_Desert",
							"CUP_arifle_HK417_12",
							"CUP_arifle_HK417_12_Desert",
							"CUP_arifle_HK417_20",
							"CUP_arifle_HK417_20_Desert",
							"CUP_arifle_G36K",
							"CUP_arifle_G36K_camo",
							"CUP_arifle_G36KA3",
							"CUP_arifle_G36KA3_camo",
							"CUP_arifle_AG36",
							"CUP_arifle_AG36_camo",
							"CUP_arifle_G36A3_AG36",
							"CUP_arifle_G36A3_AG36_camo",
							"CUP_arifle_HK416_AGL_Black",
							"CUP_arifle_HK416_AGL_Desert",
							"CUP_lmg_minimi_railed"
						];

_pistol = 				[
							"CUP_hgun_M17_Black"
						];

_launcher = 			[
							"CUP_launch_Mk153Mod0",
							"launch_I_Titan_short_F"
						];

_optics = 				[
							"CUP_optic_G36DualOptics",
							"CUP_optic_G36DualOptics_desert",
							"CUP_optic_CompM4",
							"CUP_optic_AC11704_Black",
							"CUP_optic_AC11704_Coyote",
							"CUP_optic_Eotech553_Black",
							"CUP_optic_Eotech553_Coyote",
							"CUP_optic_HensoldtZO_low",
							"CUP_optic_HensoldtZO_low_desert",
							"CUP_optic_HensoldtZO_low_RDS",
							"CUP_optic_HensoldtZO_low_RDS_desert",
							"CUP_optic_Elcan_reflex",
							"CUP_optic_Elcan_reflex_Desert",
							"optic_AMS",
							"optic_AMS_snd",
							"cup_optic_smaw_scope"
						];

_seconattachments = 	[
							"CUP_acc_ANPEQ_15_Flashlight_Black_L",
							"CUP_acc_ANPEQ_15_Flashlight_Tan_L",
							"CUP_acc_ANPEQ_15_Top_Flashlight_Black_L",
							"CUP_acc_ANPEQ_15_Top_Flashlight_Tan_L",
							"CUP_acc_LLM01_L",
							"CUP_acc_LLM01_desert_L",
							"CUP_muzzle_snds_SCAR_L",
							"CUP_muzzle_snds_SCAR_H",
							"CUP_bipod_Harris_1A2_L_BLK"
						];

_magazines = 			[
							"CUP_SMAW_Spotting",
							"CUP_SMAW_HEAA_M",
							"Titan_AT",
							"CUP_30Rnd_556x45_G36",
							"CUP_30Rnd_556x45_PMAG_QP",
							"CUP_20Rnd_762x51_HK417",
							"CUP_1Rnd_HE_M203",
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
							"CUP_U_B_GER_Tropentarn_1",
							"CUP_U_B_GER_Tropentarn_2",
							"CUP_U_B_GER_Tropentarn_3",
							"CUP_U_B_GER_Tropentarn_4",
							"CUP_U_B_GER_Tropentarn_5",
							"CUP_U_B_GER_Tropentarn_6",
							"CUP_U_B_GER_Tropentarn_7",
							"CUP_U_B_GER_Tropentarn_8"
						];

_Vests = 				[
							"CUP_V_B_GER_PVest_Trop_Gren",
							"CUP_V_B_GER_PVest_Trop_MG",
							"CUP_V_B_GER_PVest_Trop_Med",
							"CUP_V_B_GER_PVest_Trop_OFC",
							"CUP_V_B_GER_PVest_Trop_RFL",
							"CUP_V_B_GER_PVest_Trop_TL",
							"CUP_V_B_GER_PVest_Trop_Gren_LT",
							"CUP_V_B_GER_PVest_Trop_MG_LT",
							"CUP_V_B_GER_PVest_Trop_Med_LT",
							"CUP_V_B_GER_PVest_Trop_RFL_LT",
							"CUP_V_B_GER_PVest_Trop_TL_LT"
						];

_Backpacks = 			[
							"TFAR_rt1523g_big_bwmod_tropen",
							"B_AssaultPack_cbr",
							"B_Carryall_cbr",
							"B_Kitbag_tan",
							"CUP_B_GER_Pack_Tropentarn",
							"CUP_B_GER_Medic_Tropentarn"
						];

_Headgear = 			[
							"CUP_H_OpsCore_Covered_Trop",
							"CUP_H_OpsCore_Covered_Trop_NoHS",
							"CUP_H_OpsCore_Covered_Trop_SF"
						];

_Goggles = 				[
							
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
							"ACE_splint",
							"ACE_marker_flags_black",
							"ACE_marker_flags_green",
							"ACE_marker_flags_yellow",
							"ACE_marker_flags_red",
							"kat_IO_FAST",
							"kat_naloxone",
							"kat_IV_16",
							"kat_TXA",
							"kat_norepinephrine",
							"kat_nitroglycerin",
							"kat_phenylephrine",
							"kat_CarbonateItem",
							"kat_EACA",
							"kat_ketamine",
							"kat_fentanyl",
							"kat_nalbuphine",
							"kat_chestSeal",
							"kat_larynx",
							"kat_lorazepam",
							"kat_Pulseoximeter",
							"kat_AED",
							"kat_scalpel"
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
							"Laserdesignator",
							"ItemAndroid",
							"ItemcTab",
							"ACE_RangeCard",
							"ACE_Kestrel4500",
							"ACE_SpottingScope",
							"ACE_EntrenchingTool",
							"ACE_wirecutter",
							"ItemcTabHCam",
							"ACE_marker_flags_black",
							"ACE_marker_flags_green",
							"ACE_marker_flags_yellow",
							"ACE_marker_flags_red"
						];

_Funk = 				[
							"TFAR_anprc152"
						];

//Populate with predefined items and whatever is already in the crate
[_crate,((backpackCargo _crate) + _Backpacks)] call BIS_fnc_addVirtualBackpackCargo;
[_crate,((itemCargo _crate) + _Headgear + _Goggles + _Uniforms + _Vests + _nvg + _optics + _seconattachments + _misc + _Medic + _Funk)] call BIS_fnc_addVirtualItemCargo;
[_crate,((magazineCargo _crate) + _magazines + _grenades)] call BIS_fnc_addVirtualMagazineCargo;
[_crate,((weaponCargo _crate) + _rifle + _pistol + _launcher)] call BIS_fnc_addVirtualWeaponCargo;

