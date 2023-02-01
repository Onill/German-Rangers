//Get Player Group for Switch 
_playerGrp = group player;


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Echo Arsenal Füllung
//
//------------------------------------------------------------------
//------------------------------------------------------------------	

if (_playerGrp == grpecho1 || _playerGrp == grpecho2 ) then {

	_arsenalWhitelist = [
							"CUP_arifle_HK416_Black",
							"CUP_arifle_HK416_Desert",
							"CUP_arifle_HK416_Wood",
							"CUP_arifle_HK416_CQB_Black",
							"CUP_arifle_HK416_CQB_Desert",
							"CUP_arifle_HK416_CQB_Wood",

							"CUP_lmg_Mk48",
							"CUP_lmg_Mk48_des",
							"CUP_lmg_Mk48_tan",
							"CUP_lmg_Mk48_od",
							
							"launch_O_Titan_short_F",
							"launch_MRAWS_sand_F",
							"launch_MRAWS_green_F",
							"launch_MRAWS_olive_F",
							
							"CUP_hgun_M17_Coyote",
							"CUP_hgun_M17_Black",
							"CUP_hgun_M17_Green",

							//Weapon Attachments
							"CUP_muzzle_snds_M16",
							"CUP_muzzle_snds_M16_desert",
							"cup_muzzle_snds_m16_coyote",
							"cup_muzzle_snds_m16_camo",
							"cup_muzzle_snds_m9",
							"CUP_acc_CZ_M3X",
							"CUP_acc_ANPEQ_15_Flashlight_Black_L",
							"CUP_acc_ANPEQ_15_Top_Flashlight_Black_L",
							"CUP_acc_ANPEQ_15_Flashlight_Tan_L",
							"CUP_acc_ANPEQ_15_Top_Flashlight_Tan_L",
							"cup_acc_anpeq_15_flashlight_od_l",
							"cup_acc_anpeq_15_top_flashlight_od_l",

							//Scopes
							"CUP_optic_Elcan_SpecterDR_KF_RMR_black",
							"cup_optic_elcan_specterdr_kf_rmr_coyote",
							"CUP_optic_Elcan_SpecterDR_KF_RMR_od",
							"CUP_optic_HensoldtZO_low_RDS",
							"CUP_optic_HensoldtZO_low_RDS_desert",
							"cup_optic_hensoldtzo_low_rds_od",
							"CUP_optic_Elcan_reflex_pip",
							"cup_optic_elcan_reflex_coyote_pip",
							"cup_optic_elcan_reflex_od",
							"cup_optic_compm4",
							"cup_optic_eotech553_black",
							"cup_optic_eotech553_coyote",
							"cup_optic_eotech553_od",
							
							//Mags								
							"CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",
							"CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",
							
							"CUP_21Rnd_9x19_M17_Black",
							"CUP_21Rnd_9x19_M17_Coyote",
							
							"CUP_30Rnd_556x45_PMAG_OD_PULL",
							"CUP_30Rnd_556x45_PMAG_OD_PULL_Tracer_Red",
							"CUP_30Rnd_556x45_PMAG_OD_PULL_Tracer_Yellow",
							"CUP_30Rnd_556x45_PMAG_BLACK_PULL",
							"CUP_30Rnd_556x45_PMAG_BLACK_PULL_Tracer_Red",
							"CUP_30Rnd_556x45_PMAG_BLACK_PULL_Tracer_Yellow",
							"CUP_30Rnd_556x45_PMAG_COYOTE_PULL",
							"CUP_30Rnd_556x45_PMAG_COYOTE_PULL_Tracer_Red",
							"CUP_30Rnd_556x45_PMAG_COYOTE_PULL_Tracer_Yellow",
							
							"Titan_AT",
							"MRAWS_HEAT_F",
							"MRAWS_HEAT55_F",
							"MRAWS_HE_F",							
							
							//Explosives
							"ClaymoreDirectionalMine_Remote_Mag",
							"CUP_HandGrenade_M67",
							"SmokeShell",
							"SmokeShellRed",
							"SmokeShellGreen",
							"B_IR_Grenade",
							"ACE_M84",
							"DemoCharge_Remote_Mag",
							"APERSMineDispenser_Mag",
							"CUP_Mine_M",
							
							//Backpacks
							"TFAR_rt1523g_big_bwmod_tropen",
							"CUP_B_GER_Medic_Tropentarn",
							"CUP_B_GER_Pack_Tropentarn",
							"CUP_B_GER_Pack_Flecktarn",
							"CUP_B_GER_Medic_Flecktarn",
							"B_UAV_01_backpack_F",
							"B_Bergen_mcamo_F",
							
							//Items								
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
							"ItemcTabHCam",
							"ACE_UAVBattery",
							"B_UavTerminal",
							"ACE_Clacker",
							"CUP_NVG_PVS15_black",
							
							//Outfit
							"CUP_H_OpsCore_Covered_Fleck",
							"CUP_H_OpsCore_Covered_Fleck_SF",
							"CUP_H_OpsCore_Covered_Tropen",
							"CUP_H_OpsCore_Covered_Tropen_SF",
							
							"CUP_H_Ger_Boonie_desert",
							"CUP_H_Ger_Boonie_Flecktarn",
							
							"CUP_V_B_GER_Armatus_BB_Fleck",
							"CUP_V_B_GER_Armatus_BB_Trop",
							"CUP_V_B_GER_PVest_Fleck_TL",
							"CUP_V_B_GER_PVest_Trop_TL",
							
							"CUP_U_B_GER_Fleck_Crye",
							"CUP_U_B_GER_Fleck_Crye2",
							"CUP_U_B_GER_Crye",
							"CUP_U_B_GER_Crye2",

							//Medic
							"ACE_fieldDressing",
							"ACE_elasticBandage",
							"ACE_quikclot",
							"ACE_tourniquet",
							"ACE_splint",
							"ACE_morphine",
							"ACE_epinephrine",
							"kat_chestSeal",
							"kat_larynx",
							"kat_Pulseoximeter",
							"kat_IO_FAST",
							"kat_IV_16",
							"kat_TXA",
							"ACE_surgicalKit",
							"ACE_salineIV_500",

							//Facewear
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
};


//Switch to fill Arsenal according to group

switch _playerGrp do
{

	//------------------------------------------------------------------
	//------------------------------------------------------------------
	//
	//						Echo 1 Arsenal
	//
	//------------------------------------------------------------------
	//------------------------------------------------------------------	

	case grpecho1 : 
	{

				// Fill ACE Arsenal
				[player, _arsenalWhitelist, false] call ace_arsenal_fnc_addVirtualItems;
				
				// Open ACE Arsenal
				_personalArsenal = [player, player, false] call ace_arsenal_fnc_openBox;
				
	};

	//------------------------------------------------------------------
	//------------------------------------------------------------------
	//
	//						Echo 2 Arsenal
	//
	//------------------------------------------------------------------
	//------------------------------------------------------------------	

	case grpecho2 : 
	{

				// Fill ACE Arsenal
				[player, _arsenalWhitelist, false] call ace_arsenal_fnc_addVirtualItems;
				
				// Open ACE Arsenal
				_personalArsenal = [player, player, false] call ace_arsenal_fnc_openBox;
				
	};

	//------------------------------------------------------------------
	//------------------------------------------------------------------
	//
	//						Sierra (unfiltered)
	//
	//------------------------------------------------------------------
	//------------------------------------------------------------------	
	
	case grpsierra:
	{
		_arsenalWhitelist = [
								"CUP_arifle_HK416_Black",
								"CUP_arifle_HK416_Desert",
								"CUP_arifle_HK416_Wood",
								"CUP_arifle_HK416_CQB_Black",
								"CUP_arifle_HK416_CQB_Desert",
								"CUP_arifle_HK416_CQB_Wood",
								
								"CUP_arifle_HK417_12",
								"CUP_arifle_HK417_12_Wood",
								"CUP_arifle_HK417_12_Desert",
								
								"CUP_arifle_HK417_20",
								"CUP_arifle_HK417_20_Wood",
								"CUP_arifle_HK417_20_Desert",

								"CUP_srifle_G22_des",
								"CUP_srifle_G22_wdl",

								"rhs_weap_M107",
								
								"CUP_hgun_M17_Coyote",
								"CUP_hgun_M17_Black",
								"CUP_hgun_M17_Green",

								//Weapon Attachments
								"muzzle_snds_B_arid_F",
								"muzzle_snds_B_lush_F",
								"muzzle_snds_B",
								"CUP_muzzle_snds_AWM",								
								"CUP_muzzle_snds_M16",
								"CUP_muzzle_snds_M16_desert",
								"cup_muzzle_snds_m16_coyote",
								"cup_muzzle_snds_m9",
								"CUP_acc_CZ_M3X",
								"CUP_acc_ANPEQ_15_Flashlight_Black_L",
								"CUP_acc_ANPEQ_15_Top_Flashlight_Black_L",
								"CUP_acc_ANPEQ_15_Flashlight_OD_L",
								"CUP_acc_ANPEQ_15_Top_Flashlight_OD_L",
								"CUP_acc_ANPEQ_15_Flashlight_Tan_L",
								"CUP_acc_ANPEQ_15_Top_Flashlight_Tan_L",
								"CUP_acc_LLM01_coyote_L",
								"cup_acc_llm01_l",
								"cup_acc_llm01_od_l",
								"CUP_bipod_VLTOR_Modpod",
								"CUP_bipod_VLTOR_Modpod_od",
								"cup_bipod_vltor_modpod_black",
								"rhsusf_acc_premier",

								//Scopes
								"CUP_optic_Elcan_SpecterDR_KF_RMR_black",
								"cup_optic_elcan_specterdr_kf_rmr_coyote",
								"CUP_optic_Elcan_SpecterDR_KF_RMR_od",
								"CUP_optic_HensoldtZO_low_RDS",
								"CUP_optic_HensoldtZO_low_RDS_desert",
								"cup_optic_hensoldtzo_low_rds_od",
								"CUP_optic_Elcan_reflex_pip",
								"cup_optic_elcan_reflex_coyote_pip",
								"cup_optic_elcan_reflex_od",
								"optic_AMS",
								"optic_AMS_snd",
								
								
								//Mags
								"CUP_20Rnd_762x51_HK417",
								"CUP_20Rnd_762x51_HK417_Camo_Wood",
								"CUP_20Rnd_762x51_HK417_Camo_Desert",

								"CUP_21Rnd_9x19_M17_Black",
								"CUP_21Rnd_9x19_M17_Coyote",

								"CUP_30Rnd_556x45_PMAG_OD_PULL",
								"CUP_30Rnd_556x45_PMAG_OD_PULL_Tracer_Red",
								"CUP_30Rnd_556x45_PMAG_OD_PULL_Tracer_Yellow",
								"CUP_30Rnd_556x45_PMAG_BLACK_PULL",
								"CUP_30Rnd_556x45_PMAG_BLACK_PULL_Tracer_Red",
								"CUP_30Rnd_556x45_PMAG_BLACK_PULL_Tracer_Yellow",
								"CUP_30Rnd_556x45_PMAG_COYOTE_PULL",
								"CUP_30Rnd_556x45_PMAG_COYOTE_PULL_Tracer_Red",
								"CUP_30Rnd_556x45_PMAG_COYOTE_PULL_Tracer_Yellow",

								"CUP_5Rnd_762x67_G22",

								"rhsusf_mag_10Rnd_STD_50BMG_M33",
								"rhsusf_mag_10Rnd_STD_50BMG_mk211",
								
								//Explosives
								"CUP_HandGrenade_M67",
								"SmokeShell",
								"SmokeShellRed",
								"SmokeShellGreen",
								"B_IR_Grenade",
													
								
								//Backpacks
								"TFAR_rt1523g_big_bwmod_tropen",
								"TFAR_rt1523g_big_bwmod",
								
								"CUP_B_GER_Medic_Tropentarn",
								
								"CUP_B_GER_Pack_Tropentarn",
								"CUP_B_GER_Pack_Flecktarn",
								
								"B_UAV_01_backpack_F",
								
								//Items								
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
								"Laserdesignator_03",
								"Laserdesignator_02_ghex_F",
								"ItemAndroid",
								"ItemcTab",
								"ACE_EntrenchingTool",
								"ACE_wirecutter",
								"ItemcTabHCam",
								"ACE_UAVBattery",
								"B_UavTerminal",
								"ACE_RangeCard",
								"ACE_Kestrel4500",
								"ACE_SpottingScope",
								"CUP_NVG_PVS15_black",
								
								//Outfit
								"CUP_H_OpsCore_Covered_Fleck",
								"CUP_H_OpsCore_Covered_Fleck_SF",
								"CUP_H_OpsCore_Covered_Tropen",
								"CUP_H_OpsCore_Covered_Tropen_SF",

								"CUP_H_Ger_Boonie_desert",
								"CUP_H_Ger_Boonie_Flecktarn",
								
								"CUP_H_Ger_Cap_EP_Tan1",
								"CUP_H_Ger_Cap_EP_Grn1",
								
								"CUP_V_B_GER_PVest_Trop_RFL",
								"CUP_V_B_GER_PVest_Fleck_RFL",
								"CUP_V_B_GER_PVest_Trop_TL",
								"CUP_V_B_GER_PVest_Fleck_TL",
								
								"CUP_U_B_GER_Fleck_Crye",
								"CUP_U_B_GER_Fleck_Crye2",
								"CUP_U_B_GER_Crye",
								"CUP_U_B_GER_Crye2",

								//Medic
								"ACE_fieldDressing",
								"ACE_elasticBandage",
								"ACE_quikclot",
								"ACE_tourniquet",
								"ACE_splint",
								"ACE_morphine",
								"ACE_epinephrine",
								"kat_chestSeal",
								"kat_larynx",
								"kat_Pulseoximeter",
								"kat_IO_FAST",
								"kat_IV_16",
								"kat_TXA",
								"ACE_surgicalKit",
								"ACE_salineIV_500",

								//Facewear
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

				// Fill ACE Arsenal
				[player, _arsenalWhitelist, false] call ace_arsenal_fnc_addVirtualItems;
				
				// Open ACE Arsenal
				_personalArsenal = [player, player, false] call ace_arsenal_fnc_openBox;

	};


	//------------------------------------------------------------------
	//------------------------------------------------------------------
	//
	//						Zug (filtered)
	//
	//------------------------------------------------------------------
	//------------------------------------------------------------------	
	
	default {

				// Get Player Role
				_loadout = player getVariable "loadout";
				
				// Get Ammo Count of Player
				private _compatibleMagazines = [primaryWeapon player] call CBA_fnc_compatibleMagazines;
				private _magazineCount = {_x in _compatibleMagazines} count magazines player;

				// Remove Magazines so they are not in the _playerItems Array for Refilling
				// Magazines will be added when Arsenal is closed fitting for Weapon an Camo
				{player removeMagazines _x;} forEach _compatibleMagazines;
				{player removePrimaryWeaponItem _x;} forEach _compatibleMagazines;

				// Save all Player Items
				// Removing these items makes them Invisible in the Arsenal so Players can not accidentally remove Stuff from their Inventory
				private _playerItems = itemsWithMagazines player;

				// Makes Inventory completely empty so Players only see the stuff they are allowed to add
				removeAllItemsWithMagazines player;

				//Needed for waitUntil after Arsenal is closed, combined with Event Handler on Arsenal
				player setVariable ["arsenalClosed", false];

				// Getting All Arsenal Items together
				//
				// Standard Weapons

				_rifle = 	[
								"CUP_arifle_G36A",
								"CUP_arifle_G36A3",
								"CUP_arifle_HK416_Black",
								"CUP_arifle_HK417_12"
							];

				_launcher = [];

				// Standard Optics
								
				_optics =	[
								"CUP_optic_G36DualOptics",
								"CUP_optic_HensoldtZO_low_RDS",
								"CUP_optic_Elcan_reflex_pip"
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
									"CUP_optic_G36DualOptics_desert",
									"CUP_optic_HensoldtZO_low_RDS_desert",
									"cup_optic_elcan_reflex_coyote_pip"
								];

					_attachments = _attachments + [
									"CUP_acc_ANPEQ_15_Flashlight_Tan_L",
									"CUP_acc_ANPEQ_15_Top_Flashlight_Tan_L",
									"CUP_acc_LLM01_desert_L",
									"CUP_bipod_Harris_1A2_L_BLK"
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
								"CUP_optic_Elcan_reflex"
							];

					if (tarnfarbe == "tropen") then {

						_rifle = _rifle + [
											"CUP_arifle_HK417_20_Desert"
										];
						_optics = _optics + [
									"optic_AMS_snd",
									"CUP_optic_Elcan_reflex_Desert"
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
				//						Sanitäter
				//
				//------------------------------------------------------------------
				//------------------------------------------------------------------	
					
				if (_loadout == "Zug_Sanitater") then {

					if (tarnfarbe == "tropen") then {

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

					_launcher = ["CUP_launch_Mk153Mod0"];
					
					_optics = _optics + ["cup_optic_smaw_scope"];
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
								"Laserdesignator",
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
				//						Truppführer
				//
				//------------------------------------------------------------------
				//------------------------------------------------------------------	
					
				if (_loadout == "Zug_Truppfuhre") then {

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
								"Laserdesignator",
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
				//						Zugführer
				//
				//------------------------------------------------------------------
				//------------------------------------------------------------------	
					
				if (_loadout == "Zug_Zugfuhrer") then {

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
								"ACE_marker_flags_red",
								"ACE_fieldDressing",
								"ACE_elasticBandage",
								"ACE_quikclot",
								"ACE_tourniquet",
								"ACE_splint",
								"ACE_morphine",
								"ACE_epinephrine",
								"kat_chestSeal",
								"kat_larynx",
								"kat_Pulseoximeter",
								"kat_IO_FAST",
								"kat_IV_16",
								"kat_TXA",
								"ACE_surgicalKit",
								"ACE_salineIV_500",
								//Explosives
								"ClaymoreDirectionalMine_Remote_Mag",
								"CUP_HandGrenade_M67",
								"SmokeShell",
								"SmokeShellRed",
								"SmokeShellGreen",
								"B_IR_Grenade",
								"ACE_M84",
								"DemoCharge_Remote_Mag",
								//Mags								
								"CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",
								"CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",
								"CUP_21Rnd_9x19_M17_Black",
								"CUP_21Rnd_9x19_M17_Coyote",
								"Titan_AT",
								"CUP_30Rnd_556x45_PMAG_BLACK_PULL",
								"CUP_30Rnd_556x45_PMAG_BLACK_PULL_Tracer_Red",
								"CUP_30Rnd_556x45_PMAG_BLACK_PULL_Tracer_Yellow",
								"CUP_30Rnd_556x45_PMAG_COYOTE_PULL",
								"CUP_30Rnd_556x45_PMAG_COYOTE_PULL_Tracer_Red",
								"CUP_30Rnd_556x45_PMAG_COYOTE_PULL_Tracer_Yellow"
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
				//						AvD
				//
				//------------------------------------------------------------------
				//------------------------------------------------------------------	

					
				if (_loadout == "Zug_Fox_AvD") then {

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
								"ACE_marker_flags_red",
								"ACE_fieldDressing",
								"ACE_elasticBandage",
								"ACE_quikclot",
								"ACE_tourniquet",
								"ACE_splint",
								"ACE_morphine",
								"ACE_epinephrine",
								"kat_chestSeal",
								"kat_larynx",
								"kat_Pulseoximeter",
								"kat_IO_FAST",
								"kat_IV_16",
								"kat_TXA",
								"ACE_surgicalKit",
								"ACE_salineIV_500"
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

						_backpacks = [
										"CUP_B_GER_Pack_Tropentarn",
										"CUP_B_GER_Medic_Tropentarn"
									];
					}
					else {
						_vests = [
									"CUP_V_B_GER_PVest_Fleck_Med",
									"CUP_V_B_GER_PVest_Fleck_Med_LT"
								];

						_backpacks = [
										"CUP_B_GER_Pack_Flecktarn",
										"CUP_B_GER_Medic_Flecktarn"
									];

					};
				};


				//------------------------------------------------------------------
				//------------------------------------------------------------------
				//
				//						Nahsicherer
				//
				//------------------------------------------------------------------
				//------------------------------------------------------------------	

				if (_loadout == "Zug_Fox_Nahsicherer") then {

					_rifle = _rifle + 	[
											"CUP_arifle_HK416_CQB_Black",
											"CUP_arifle_G36K",
											"CUP_arifle_G36KA3"
										];
					

					_backpacks = [
									"TFAR_rt1523g_big_bwmod_tropen",
									"CUP_B_GER_Pack_Tropentarn",
									"CUP_B_GER_Medic_Tropentarn"
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
								"Laserdesignator",
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
									"CUP_V_B_GER_PVest_Trop_RFL",
									"CUP_V_B_GER_PVest_Trop_RFL_LT"
								];

						_backpacks = [
										"TFAR_rt1523g_big_bwmod_tropen",
										"CUP_B_GER_Pack_Tropentarn",
										"CUP_B_GER_Medic_Tropentarn"
									];
					}
					else {
						_vests = [
									"CUP_V_B_GER_PVest_Fleck_RFL",
									"CUP_V_B_GER_PVest_Fleck_RFL_LT"
								];

						_backpacks = [
										"TFAR_rt1523g_big_bwmod_fleck",
										"CUP_B_GER_Pack_Flecktarn",
										"CUP_B_GER_Medic_Flecktarn"
									];

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
				_equipment = _rifle + _pistol + _launcher + _headgear + _facewear + _uniforms + _vests + _nvg + _optics + _attachments + _funk + _backpacks;

				// Fill ACE Arsenal
				[player, _equipment, false] call ace_arsenal_fnc_addVirtualItems;
				
				// Open ACE Arsenal
				_personalArsenal = [player, player, false] call ace_arsenal_fnc_openBox;

				// Give Warning about Ammunition
				titleText ["<t color='#ffffff' size='1'>Magazine und Items sind nicht verfügbar und werden beim Verlassen des Arsenals automatisch aufgefüllt!<br/></t><t color='#ff0000' size='2'>Dieses Arsenal ist nicht zum Aufmunitionieren da!</t>", "PLAIN", 1, true, true];

				// Add Event Handler for closing the Arsenal
				_arsenalEventHandler = ["ace_arsenal_displayClosed", { player setVariable ["arsenalClosed", true]; } ] call CBA_fnc_addEventHandler;

				// Wait until Arsenal is closed by Player
				waitUntil { player getVariable "arsenalClosed" };

				// Fill Player Inventory with Items previously saved at the beginning of this Switch Case
				{player addItem _x} forEach _playerItems;

				// Get the Weapon the Player is now using
				_newWeapon = primaryWeapon player;

				// Switch Case to give Players Magazines fitting their new Choice in the same ammount provided at the beginning of this Switch Case
				switch _newWeapon do {


					// G36 Modell Black
					case "CUP_arifle_G36A" : { 
												for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_G36";} ; 
												for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_TE1_Red_Tracer_556x45_G36";} ; 
												player addPrimaryWeaponItem "CUP_30Rnd_556x45_G36";
											};
					case "CUP_arifle_G36A3" : {
												for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_G36";}; 
												for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_TE1_Red_Tracer_556x45_G36";}; 
												player addPrimaryWeaponItem "CUP_30Rnd_556x45_G36";
											};

					case "CUP_arifle_G36A3_AG36" : {
												for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_G36";}; 
												for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_TE1_Red_Tracer_556x45_G36";}; 
												player addPrimaryWeaponItem "CUP_30Rnd_556x45_G36";
											};

					case "CUP_arifle_G36K" : {
												for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_G36";}; 
												for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_TE1_Red_Tracer_556x45_G36";}; 
												player addPrimaryWeaponItem "CUP_30Rnd_556x45_G36";
											};

					case "CUP_arifle_G36KA3" : {
												for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_G36";}; 
												for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_TE1_Red_Tracer_556x45_G36";}; 
												player addPrimaryWeaponItem "CUP_30Rnd_556x45_G36";
											};

					case "CUP_arifle_AG36" : {
												for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_G36";}; 
												for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_TE1_Red_Tracer_556x45_G36";}; 
												player addPrimaryWeaponItem "CUP_30Rnd_556x45_G36";
											};


					// G36 Modell Desert
					case "CUP_arifle_G36A_camo" : {
												for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_G36_camo";}; 
												for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_TE1_Red_Tracer_556x45_G36_camo";}; 
												player addPrimaryWeaponItem "CUP_30Rnd_556x45_G36_camo";
											};

					case "CUP_arifle_G36A3_camo" : {
												for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_G36_camo";}; 
												for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_TE1_Red_Tracer_556x45_G36_camo";}; 
												player addPrimaryWeaponItem "CUP_30Rnd_556x45_G36_camo";
											};

					case "CUP_arifle_G36K_camo" : {
												for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_G36_camo";}; 
												for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_TE1_Red_Tracer_556x45_G36_camo";}; 
												player addPrimaryWeaponItem "CUP_30Rnd_556x45_G36_camo";
											};

					case "CUP_arifle_G36KA3_camo" : {
												for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_G36_camo";}; 
												for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_TE1_Red_Tracer_556x45_G36_camo";}; 
												player addPrimaryWeaponItem "CUP_30Rnd_556x45_G36_camo";
											};

					case "CUP_arifle_AG36_camo" : {
												for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_G36_camo";}; 
												for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_TE1_Red_Tracer_556x45_G36_camo";}; 
												player addPrimaryWeaponItem "CUP_30Rnd_556x45_G36_camo";
											};

					case "CUP_arifle_G36A3_AG36_camo" : {
												for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_G36_camo";}; 
												for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_TE1_Red_Tracer_556x45_G36_camo";}; 
												player addPrimaryWeaponItem "CUP_30Rnd_556x45_G36_camo";
											};


					// HK416 Modell Black
					case "CUP_arifle_HK416_Black" : {	
												for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_PMAG_BLACK_PULL";}; 
												for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_556x45_PMAG_BLACK_PULL_Tracer_Red";}; 
												player addPrimaryWeaponItem "CUP_30Rnd_556x45_PMAG_BLACK_PULL";
											};
					
					case "CUP_arifle_HK416_CQB_Black" : {
												for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_PMAG_BLACK_PULL";}; 
												for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_556x45_PMAG_BLACK_PULL_Tracer_Red";}; 
												player addPrimaryWeaponItem "CUP_30Rnd_556x45_PMAG_BLACK_PULL";
											};
					case "CUP_arifle_HK416_AGL_Black" : {
												for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_PMAG_BLACK_PULL";}; 
												for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_556x45_PMAG_BLACK_PULL_Tracer_Red";}; 
												player addPrimaryWeaponItem "CUP_30Rnd_556x45_PMAG_BLACK_PULL";
											};


					// HK416 Modell Desert					
					case "CUP_arifle_HK416_Desert" : {
												for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_PMAG_COYOTE_PULL";}; 
												for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_556x45_PMAG_COYOTE_PULL_Tracer_Red";}; 
												player addPrimaryWeaponItem "CUP_30Rnd_556x45_PMAG_COYOTE_PULL";
											};

					case "CUP_arifle_HK416_CQB_Desert" : {
												for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_PMAG_COYOTE_PULL";}; 
												for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_556x45_PMAG_COYOTE_PULL_Tracer_Red";}; 
												player addPrimaryWeaponItem "CUP_30Rnd_556x45_PMAG_COYOTE_PULL";
											};

					case "CUP_arifle_HK416_AGL_Desert" : {
												for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_PMAG_COYOTE_PULL";}; 
												for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_556x45_PMAG_COYOTE_PULL_Tracer_Red";}; 
												player addPrimaryWeaponItem "CUP_30Rnd_556x45_PMAG_COYOTE_PULL";
											};

					
					// HK417 Modell Black
					case "CUP_arifle_HK417_12" : {
												for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_20Rnd_762x51_HK417";}; 
												for "_i" from 1 to 2 do {player addItem "CUP_20Rnd_TE1_Red_Tracer_762x51_HK417";}; 
												player addPrimaryWeaponItem "CUP_20Rnd_762x51_HK417";
											};

					case "CUP_arifle_HK417_20" : {
												for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_20Rnd_762x51_HK417";}; 
												for "_i" from 1 to 2 do {player addItem "CUP_20Rnd_TE1_Red_Tracer_762x51_HK417";}; 
												player addPrimaryWeaponItem "CUP_20Rnd_762x51_HK417";
											};


					// HK417 Modell Desert
					case "CUP_arifle_HK417_12_Desert" : {
												for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_20Rnd_762x51_HK417_Camo_Desert";}; 
												for "_i" from 1 to 2 do {player addItem "CUP_20Rnd_TE1_Red_Tracer_762x51_HK417";}; 
												player addPrimaryWeaponItem "CUP_20Rnd_762x51_HK417_Camo_Desert";
											};

					case "CUP_arifle_HK417_20_Desert" : {
												for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_20Rnd_762x51_HK417_Camo_Desert";}; 
												for "_i" from 1 to 2 do {player addItem "CUP_20Rnd_TE1_Red_Tracer_762x51_HK417";}; 
												player addPrimaryWeaponItem "CUP_20Rnd_762x51_HK417_Camo_Desert";
											};
					
					// Poor MG Fuckers still have only one gun!!!
					case "CUP_lmg_minimi_railed" : {
												for "_i" from 1 to _magazineCount do {player addItem "CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch";}; 
												player addPrimaryWeaponItem "CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch";
											};
				};
	};
};