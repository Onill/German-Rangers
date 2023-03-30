// Get Player Role
_loadout = player getVariable "loadout";
//Needed for waitUntil after Arsenal is closed, combined with Event Handler on Arsenal
player setVariable ["arsenalClosed", false];

_rifle = 	[
				"CUP_arifle_G36A",
				"CUP_arifle_G36A3",
				"CUP_arifle_HK416_Black",
				"CUP_arifle_HK417_12"
			];

_launcher = [];

// Standard Optics
				
_optics =	[
				"cup_optic_g36dualoptics_pip",
				"CUP_optic_HensoldtZO_low_RDS_pip",
				"CUP_optic_Elcan_SpecterDR_KF_RMR_black_pip",
				"CUP_optic_Elcan_reflex_pip",
				"cup_optic_compm4",
				"cup_optic_eotech553_black",
				"cup_optic_ac11704_black"
			];



// Standard Attachments

_attachments = [
				"CUP_acc_ANPEQ_15_Flashlight_Black_L",
				"CUP_acc_ANPEQ_15_Top_Flashlight_Black_L",
				"CUP_acc_LLM01_L",
				"CUP_bipod_Harris_1A2_L_BLK"
			];



// Standard Outfit

_uniforms = 			[
							"CUP_U_B_GER_Flecktarn_1",
							"CUP_U_B_GER_Flecktarn_2",
							"CUP_U_B_GER_Flecktarn_3",
							"CUP_U_B_GER_Flecktarn_4",
							"CUP_U_B_GER_Flecktarn_5",
							"CUP_U_B_GER_Flecktarn_6",
							"CUP_U_B_GER_Flecktarn_7",
							"CUP_U_B_GER_Flecktarn_8"
						];

_vests = 				[
							"CUP_V_B_GER_PVest_Fleck_RFL",
							"CUP_V_B_GER_PVest_Fleck_RFL_LT"
						];

_backpacks = 			[
							"B_AssaultPack_rgr",
							"B_Carryall_oli",
							"B_Kitbag_rgr",
							"CUP_B_GER_Pack_Flecktarn",
							"CUP_B_GER_Medic_Flecktarn"
						];

_headgear = 			[
							"CUP_H_OpsCore_Covered_Fleck",
							"CUP_H_OpsCore_Covered_Fleck_NoHS",
							"CUP_H_OpsCore_Covered_Fleck_SF"
						];

_mags =					[
							"CUP_20Rnd_762x51_HK417",

							"CUP_21Rnd_9x19_M17_Black",

							"CUP_30Rnd_556x45_PMAG_BLACK_PULL",
							"CUP_30Rnd_556x45_PMAG_BLACK_PULL_Tracer_Red",
							"CUP_30Rnd_556x45_PMAG_BLACK_PULL_Tracer_Yellow",
							
							"CUP_30Rnd_556x45_G36",
							"CUP_30Rnd_TE1_Red_Tracer_556x45_G36",
																	
							"CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch",
							"CUP_200Rnd_TE1_Red_Tracer_556x45_M249_Pouch,",

							"CUP_launch_Mk153Mod0"

						];
						
_explosives = 			[
							"CUP_HandGrenade_M67",
							"SmokeShell",
							"SmokeShellRed",
							"SmokeShellGreen"
						];

if (tarnfarbe == "tropen") then {

	_vests = 	[
					"CUP_V_B_GER_PVest_Trop_RFL",
					"CUP_V_B_GER_PVest_Trop_RFL_LT"
				];

	_backpacks = [
					"B_AssaultPack_cbr",
					"B_Carryall_cbr",
					"B_Kitbag_tan",
					"CUP_B_GER_Pack_Tropentarn",
					"CUP_B_GER_Medic_Tropentarn"
				];

	_headgear = [
					"CUP_H_OpsCore_Covered_Tropen",
					"CUP_H_OpsCore_Covered_Tropen_NoHS",
					"CUP_H_OpsCore_Covered_Tropen_SF"
				];

	_uniforms = [
					"CUP_U_B_GER_Tropentarn_1",
					"CUP_U_B_GER_Tropentarn_2",
					"CUP_U_B_GER_Tropentarn_3",
					"CUP_U_B_GER_Tropentarn_4",
					"CUP_U_B_GER_Tropentarn_5",
					"CUP_U_B_GER_Tropentarn_6",
					"CUP_U_B_GER_Tropentarn_7",
					"CUP_U_B_GER_Tropentarn_8"
				];
	
	_rifle = _rifle +	[
				"CUP_arifle_G36A_camo",
				"CUP_arifle_G36A3_camo",
				"CUP_arifle_HK416_Desert",
				"CUP_arifle_HK417_12_Desert"
			];

	_optics =	_optics + [
					"cup_optic_g36dualoptics_desert_pip",
					"CUP_optic_HensoldtZO_low_RDS_desert_pip",
					"cup_optic_elcan_specterdr_kf_rmr_coyote_pip",
					"cup_optic_elcan_reflex_coyote_pip",
					"cup_optic_eotech553_coyote",
					"cup_optic_ac11704_coyote"
				];

	_attachments = _attachments + [
					"CUP_acc_ANPEQ_15_Flashlight_Tan_L",
					"CUP_acc_ANPEQ_15_Top_Flashlight_Tan_L",
					"CUP_acc_LLM01_desert_L",
					"CUP_bipod_Harris_1A2_L_BLK"
				];

	_mags =	_mags +			[
								"CUP_20Rnd_762x51_HK417_Camo_Desert",

								"CUP_30Rnd_556x45_PMAG_COYOTE_PULL",
								"CUP_30Rnd_556x45_PMAG_COYOTE_PULL_Tracer_Red",
								"CUP_30Rnd_556x45_PMAG_COYOTE_PULL_Tracer_Yellow",
								
								"CUP_30Rnd_556x45_G36_camo",
								"CUP_30Rnd_TE1_Red_Tracer_556x45_G36_camo"
							];

};

_misc = 	[
				"ItemMap",
				"ItemCompass",
				"ItemWatch",
				"ACE_MapTools",
				"ACE_EarPlugs",
				"ACE_CableTie",
				"ACE_Flashlight_XL50",
				"ACE_EntrenchingTool",
				"ACE_wirecutter"
			];


// Role Specific Equipment

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Grenadier
//
//------------------------------------------------------------------
//------------------------------------------------------------------	

if (_loadout == "Zug_Grenadier") then {
	_rifle = [
				"CUP_arifle_AG36",
				"CUP_arifle_G36A3_AG36",
				"CUP_arifle_HK416_AGL_Black"
			];


	if (tarnfarbe == "tropen") then {

		_rifle = _rifle + [
							"CUP_arifle_AG36_camo",
							"CUP_arifle_G36A3_AG36_camo",
							"CUP_arifle_HK416_AGL_Desert"

						];
		_vests = [
					"CUP_V_B_GER_PVest_Trop_Gren",
					"CUP_V_B_GER_PVest_Trop_Gren_LT"					
				];
	}
	else {
		_vests = [
					"CUP_V_B_GER_PVest_Fleck_Gren",
					"CUP_V_B_GER_PVest_Fleck_Gren_LT"
				];
	};
};


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						DM
//
//------------------------------------------------------------------
//------------------------------------------------------------------	
	
if (_loadout == "Zug_DM") then {
	_rifle = [
				"CUP_arifle_HK417_20"
			];
			
	_optics = [
				"optic_AMS",
				"CUP_optic_Elcan_reflex_pip"
			];

	if (tarnfarbe == "tropen") then {

		_rifle = _rifle + [
							"CUP_arifle_HK417_20_Desert"
						];
		_optics = _optics + [
					"optic_AMS_snd",
					"CUP_optic_Elcan_reflex_Desert_pip"
				];

	};

};


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						MG
//
//------------------------------------------------------------------
//------------------------------------------------------------------	
	
if (_loadout == "Zug_MG") then {

	_rifle = [
				"CUP_lmg_minimi_railed"
			];	


	if (tarnfarbe == "tropen") then {

		_vests = [
					"CUP_V_B_GER_PVest_Trop_MG",
					"CUP_V_B_GER_PVest_Trop_MG_LT"
				];

	}
	else {
		_vests = [
					"CUP_V_B_GER_PVest_Fleck_MG",
					"CUP_V_B_GER_PVest_Fleck_MG_LT"
				];
	};


};

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						EHB
//
//------------------------------------------------------------------
//------------------------------------------------------------------	
	
if (_loadout == "Zug_EHB") then {

	_rifle = _rifle + 	[
							"CUP_arifle_HK416_CQB_Black",
							"CUP_arifle_G36K",
							"CUP_arifle_G36KA3"
						];
						
	if (tarnfarbe == "tropen") then {

		_rifle = _rifle + 	[
								"CUP_arifle_HK416_CQB_Desert",
								"CUP_arifle_G36K_camo",
								"CUP_arifle_G36KA3_camo"						
							];

		_vests = [
					"CUP_V_B_GER_PVest_Trop_Med",
					"CUP_V_B_GER_PVest_Trop_Med_LT"
				];				

	}
	else {
		_vests = [
					"CUP_V_B_GER_PVest_Fleck_Med",
					"CUP_V_B_GER_PVest_Fleck_Med_LT"
				];				
	};

};


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Sanitäter
//
//------------------------------------------------------------------
//------------------------------------------------------------------	
	
if (_loadout == "Zug_Sanitater") then {

	_rifle = _rifle + 	[
							"CUP_arifle_HK416_CQB_Black",
							"CUP_arifle_G36K",
							"CUP_arifle_G36KA3"
						];
						
	if (tarnfarbe == "tropen") then {

		_rifle = _rifle + 	[
								"CUP_arifle_HK416_CQB_Desert",
								"CUP_arifle_G36K_camo",
								"CUP_arifle_G36KA3_camo"						
							];

		_vests = [
					"CUP_V_B_GER_PVest_Trop_Med",
					"CUP_V_B_GER_PVest_Trop_Med_LT"
				];				

	}
	else {
		_vests = [
					"CUP_V_B_GER_PVest_Fleck_Med",
					"CUP_V_B_GER_PVest_Fleck_Med_LT"
				];				
	};

};


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						AT
//
//------------------------------------------------------------------
//------------------------------------------------------------------	

if (_loadout == "Zug_AT") then {

	_rifle = _rifle + 	[
							"CUP_arifle_HK416_CQB_Black",
							"CUP_arifle_G36K",
							"CUP_arifle_G36KA3"
						];

	_launcher = ["CUP_launch_Mk153Mod0"];
	
	_optics = _optics + ["cup_optic_smaw_scope"];

	if (tarnfarbe == "tropen") then {

		_rifle = _rifle + 	[
								"CUP_arifle_HK416_CQB_Desert",
								"CUP_arifle_G36K_camo",
								"CUP_arifle_G36KA3_camo"						
							];


	};
};

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						ATA
//
//------------------------------------------------------------------
//------------------------------------------------------------------	

if (_loadout == "Zug_ATA") then {

	_rifle = _rifle + 	[
							"CUP_arifle_HK416_CQB_Black",
							"CUP_arifle_G36K",
							"CUP_arifle_G36KA3"
						];

	if (tarnfarbe == "tropen") then {

		_rifle = _rifle + 	[
								"CUP_arifle_HK416_CQB_Desert",
								"CUP_arifle_G36K_camo",
								"CUP_arifle_G36KA3_camo"						
							];


	};
};



//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Truppführer
//
//------------------------------------------------------------------
//------------------------------------------------------------------	
	
if (_loadout == "Zug_Truppfuhrer") then {

	_rifle = _rifle + 	[
							"CUP_arifle_HK416_CQB_Black",
							"CUP_arifle_G36K",
							"CUP_arifle_G36KA3"
						];

		_rifle = _rifle + 	[
								"CUP_arifle_HK416_CQB_Desert",
								"CUP_arifle_G36K_camo",
								"CUP_arifle_G36KA3_camo"						
							];

	_misc = [
				"ItemMap",
				"ItemCompass",
				"ItemWatch",
				"ACE_MapTools",
				"ACE_EarPlugs",
				"ACE_IR_Strobe_Item",
				"ACE_CableTie",
				"ACE_Flashlight_XL50",
				"Rangefinder",
				"Laserbatteries",
				"Laserdesignator_02_ghex_F",
				"ItemAndroid",
				"ItemcTab",
				"ACE_EntrenchingTool",
				"ACE_wirecutter",
				"ItemcTabHCam"
			];

	if (tarnfarbe == "tropen") then {

		_vests = [
					"CUP_V_B_GER_PVest_Trop_TL",
					"CUP_V_B_GER_PVest_Trop_TL_LT"
				];
	}
	else {
		_vests = [
					"CUP_V_B_GER_PVest_Fleck_TL",
					"CUP_V_B_GER_PVest_Fleck_TL_LT"
				];
	};
};


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Gruppenführer
//
//------------------------------------------------------------------
//------------------------------------------------------------------	
	
if (_loadout == "Zug_Gruppenfuhrer") then {

	_rifle = _rifle + 	[
							"CUP_arifle_HK416_CQB_Black",
							"CUP_arifle_G36K",
							"CUP_arifle_G36KA3"
						];

	_misc = [
				"ItemMap",
				"ItemCompass",
				"ItemWatch",
				"ACE_MapTools",
				"ACE_EarPlugs",
				"ACE_IR_Strobe_Item",
				"ACE_CableTie",
				"ACE_Flashlight_XL50",
				"Rangefinder",
				"Laserbatteries",
				"Laserdesignator_02_ghex_F",
				"ItemAndroid",
				"ItemcTab",
				"ACE_EntrenchingTool",
				"ACE_wirecutter",
				"ItemcTabHCam"
			];

	if (tarnfarbe == "tropen") then {

		_rifle = _rifle + 	[
								"CUP_arifle_HK416_CQB_Desert",
								"CUP_arifle_G36K_camo",
								"CUP_arifle_G36KA3_camo"						
							];

		_vests = [
					"CUP_V_B_GER_PVest_Trop_OFC",
					"CUP_V_B_GER_PVest_Trop_TL",
					"CUP_V_B_GER_PVest_Trop_TL_LT"
				];

		_backpacks = ["TFAR_rt1523g_big_bwmod_tropen"];

	}
	else {
		_vests = [
					"CUP_V_B_GER_PVest_Fleck_OFC",
					"CUP_V_B_GER_PVest_Fleck_TL",
					"CUP_V_B_GER_PVest_Fleck_TL_LT"
				];

		_backpacks = ["TFAR_rt1523g_big_bwmod_fleck"];
	};
};


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Standard Ausrüstung
//
//------------------------------------------------------------------
//------------------------------------------------------------------	

_pistol = 	[
				"CUP_hgun_M17_Black"
			];


_nvg = 		[
				"CUP_NVG_PVS15_black"
			];

_funk = 	[
				"TFAR_anprc152"
			];
			
_facewear = [
				"G_Aviator",
				"G_Lowprofile",
				"G_Shades_Black",
				"G_Squares_Tinted",
				"G_Squares",
				"CUP_G_ESS_KHK_Dark",
				"CUP_G_ESS_KHK_Ember",
				"CUP_G_ESS_KHK",
				"CUP_G_ESS_BLK_Facewrap_Black",
				"CUP_G_ESS_RGR_Facewrap_Skull",
				"CUP_G_ESS_KHK_Facewrap_Tan",
				"CUP_G_ESS_KHK_Scarf_Tan",
				"CUP_G_ESS_BLK_Scarf_Blk",
				"CUP_G_ESS_BLK_Scarf_Grn",
				"CUP_G_ESS_BLK_Scarf_Red",
				"CUP_G_ESS_KHK_Scarf_Tan",
				"CUP_G_ESS_BLK_Scarf_White",
				"CUP_G_ESS_BLK_Scarf_Face_Blk",
				"CUP_G_ESS_BLK_Scarf_Face_Grn",
				"CUP_G_ESS_BLK_Scarf_Face_Red",
				"CUP_G_ESS_KHK_Scarf_Face_Tan",
				"CUP_G_ESS_BLK_Scarf_Face_White",
				"CUP_PMC_Facewrap_Black",
				"CUP_G_PMC_Facewrap_Black_Glasses_Dark",
				"CUP_G_PMC_Facewrap_Black_Glasses_Ember",
				"CUP_PMC_Facewrap_Tan",
				"CUP_G_PMC_Facewrap_Tan_Glasses_Dark",
				"CUP_G_PMC_Facewrap_Tan_Glasses_Ember",
				"CUP_G_Scarf_Face_Blk",
				"CUP_G_Scarf_Face_Grn",
				"CUP_TK_NeckScarf",
				"CUP_G_Scarf_Face_Red",
				"CUP_G_Scarf_Face_Tan",
				"CUP_G_Scarf_Face_White",
				"CUP_G_Oakleys_Clr",
				"CUP_G_Oakleys_Drk",
				"CUP_G_Oakleys_Embr",
				"CUP_G_TK_RoundGlasses",
				"CUP_G_TK_RoundGlasses_blk",
				"CUP_G_TK_RoundGlasses_gold",
				"CUP_G_Grn_Scarf_Shades",
				"CUP_G_Tan_Scarf_Shades",
				"CUP_G_White_Scarf_Shades",
				"CUP_FR_NeckScarf3",
				"CUP_FR_NeckScarf",
				"CUP_FR_NeckScarf2",
				"CUP_FR_NeckScarf5",
				"CUP_FR_NeckScarf4",
				"CUP_RUS_Balaclava_blk",
				"CUP_RUS_Balaclava_tan",
				"CUP_G_ESS_BLK_Dark",
				"CUP_G_ESS_BLK_Ember",
				"CUP_G_ESS_BLK",
				"CUP_G_ESS_RGR_Dark",
				"CUP_G_ESS_RGR_Ember",
				"CUP_G_ESS_RGR",
				"G_Bandanna_aviator",
				"G_Bandanna_beast",
				"G_Bandanna_blk",
				"G_Bandanna_khk",
				"G_Bandanna_oli",
				"G_Bandanna_shades",
				"G_Bandanna_tan"
			];

// Create Whitelist for ACE Arsenal
_equipment = _rifle + _pistol + _launcher + _headgear + _facewear + _uniforms + _vests + _nvg + _optics + _attachments + _funk + _backpacks + _misc + _explosives + _mags;

// Fill ACE Arsenal
[player, _equipment, false] call ace_arsenal_fnc_addVirtualItems;

// Open ACE Arsenal
_waffenkammer = [player, player, false] call ace_arsenal_fnc_openBox;

// Add Event Handler for closing the Arsenal
_arsenalEventHandler = ["ace_arsenal_displayClosed", { player setVariable ["arsenalClosed", true]; } ] call CBA_fnc_addEventHandler;

// Wait until Arsenal is closed by Player
waitUntil { player getVariable "arsenalClosed" };

[player, true, false] call ace_arsenal_fnc_removeVirtualItems;