/*
	Waffenkammer
	
	In der Waffenkammer können die Spieler ihr eigenes Loadout zusammenstellen.
	
	Im ersten Schritt wird in mehreren Arrays das gesamte Material abgebildet. 
	
	Im zweiten Schritt wird das Material entsprechend den Rollen der Spieler gesammelt.
	
	Zuletzt wird das Arsenal erstellt.
	
	Nachdem das Arsenal geschlossen wurde, wird es gelöscht. Dies ist nötig, damit bei einem
	Rollenwechsel die Items weiterhin korrekt dargestellt werden und nicht Items der vorigen
	Rolle angezeigt werden.
*/

// Get Player Role
_playerGrp = group player;
_loadout = player getVariable "loadout";
//Needed for waitUntil after Arsenal is closed, combined with Event Handler on Arsenal
player setVariable ["arsenalClosed", false];

_rearm = false;

if (getMissionConfigValue "rearm" == "true") then {
	_rearm = true;
};

//-------------------------------------------------------------------------
//
// 				Kleidung
//
//-------------------------------------------------------------------------
_equipment = [];

_uniforms = [
				"CUP_U_B_BDUv2_DCU_US",
				"CUP_U_B_BDUv2_dirty_DCU_US",
				"CUP_U_B_BDUv2_gloves_DCU_US",
				"CUP_U_B_BDUv2_gloves_dirty_DCU_US",

				"CUP_U_B_BDUv2_roll2_DCU_US",
				"CUP_U_B_BDUv2_roll2_dirty_DCU_US",
				"CUP_U_B_BDUv2_roll2_gloves_DCU_US",
				"CUP_U_B_BDUv2_roll2_gloves_dirty_DCU_US",
				"CUP_U_B_BDUv2_roll_DCU_US",
				"CUP_U_B_BDUv2_roll_dirty_DCU_US",
				"CUP_U_B_BDUv2_roll_gloves_DCU_US",
				"CUP_U_B_BDUv2_roll_gloves_dirty_DCU_US"
];

_vests = [
				"CFP_US_pasgt_alice_Rifleman_ERDL"
];

_vests_san = [
				"CFP_US_pasgt_alice_Rifleman_ERDL"
];

_vests_lead = [
				"CFP_US_pasgt_alice_Rifleman_ERDL"
];

_backpacks = [
				"B_FieldPack_khk",
				"B_Carryall_cbr"
];

_headgear = [
				"CUP_H_LWHv2_desert_comms",
				"CUP_H_LWHv2_desert_ess_comms"
];

//-------------------------------------------------------------------------
//
// 				Waffen
//
//-------------------------------------------------------------------------

_rifles = 	[
				"CUP_arifle_M16A2"
];

_rifles_grenadier = [
				"CUP_arifle_Colt727_M203",
				"CUP_arifle_M16A2_GL"			
];

_rifles_dm = [
				"CUP_srifle_M14_DMR"
];

_rifles_mg = [
				"CUP_lmg_M249_E2"
];

_optics =	[];

_optics_dm = [
				"cup_optic_acog_ta01b_black"
];

_attachments = [							
				"CUP_bipod_Harris_1A2_L_BLK"
];


_pistol = [
				"CUP_hgun_Colt1911"
];

_mags =	[
				//Standard Mags				
				"CUP_30Rnd_556x45_Stanag",
				"CUP_30Rnd_556x45_Stanag_Tracer_Red",

				//DM Mags
				"CUP_20Rnd_762x51_DMR",
				"CUP_20Rnd_TE1_Red_Tracer_762x51_DMR",	

				//MG Mags
				"CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch",
				"CUP_200Rnd_TE1_Red_Tracer_556x45_M249_Pouch",
				
				//Grenadier Mags
				"1Rnd_HE_Grenade_shell",
				"1Rnd_Smoke_Grenade_shell",
				"1Rnd_SmokeRed_Grenade_shell",
				"ACE_40mm_Flare_ir",
				
				//Sierra Mags
				"CUP_5Rnd_762x51_M24",
				
				//Launcher
				"CUP_SMAW_HEAA_M",
				
				//Pistol
				"CUP_7Rnd_45ACP_1911",
				
				//echo
				"CUP_30Rnd_Subsonic_9x19_MP5"
];
						
_launcher_AT = [
				"CUP_launch_Mk153Mod0"
];

_launcher_AA = [];

//-------------------------------------------------------------------------
//
// 				Ausrüstung
//
//-------------------------------------------------------------------------

_grenades = [
				"CUP_HandGrenade_M67",
				"SmokeShell",
				"SmokeShellRed",
				"SmokeShellGreen"
];

_items_1 = [				
				"ItemMap",
				"ItemCompass",
				"ACE_Altimeter",
				"ACE_MapTools",
				"ACE_EarPlugs",
				"ACE_IR_Strobe_Item",
				"ACE_CableTie",
				"ACE_Flashlight_XL50",
				"ACE_EntrenchingTool",
				"ACE_wirecutter",
				"CUP_NVG_PVS14",
				"TFAR_anprc152"	
];

_items_2 = [
				"Rangefinder",
				"Laserbatteries",
				"Laserdesignator_02_ghex_F",
				"ItemAndroid",
				"ItemcTab",
				"ItemcTabHCam"
];

_items_3 = [
				"ACE_Fortify",
				"ToolKit",
				"ACE_DefusalKit",
				"ACE_UAVBattery",
				"B_UavTerminal",
				"ACE_Clacker",
				"ACE_RangeCard",
				"ACE_Kestrel4500",
				"ACE_SpottingScope"
];

_medic_standard = [		
				"ACE_fieldDressing",
				"ACE_elasticBandage",
				"ACE_packingBandage",
				"ACE_quikclot",
				
				"ACE_tourniquet",
				"ACE_splint",

				"ACE_morphine",

				"ACE_salineIV_500",

				"kat_chestSeal"
];

_medic_ehb = [			
				"ACE_bodyBag",
				"ACE_epinephrine",
				"ACE_adenosine",

				"kat_Pulseoximeter",
				"kat_TXA",
				"kat_larynx",
				"kat_IO_FAST",
				"kat_IV_16",

				"kat_fentanyl",
				"kat_naloxone",
				"kat_ketamine",
				"kat_Carbonate"
];

_medic_san = [			
				"ACE_marker_flags_black",
				"ACE_marker_flags_green",
				"ACE_marker_flags_yellow",
				"ACE_marker_flags_red",

				"ACE_surgicalKit",

				"kat_EACA",
				"kat_nitroglycerin"
];

_medic_doc = [
				"ACE_personalAidKit",
				"kat_AED",
				"kat_scalpel",

				"kat_norepinephrine",
				"kat_nalbuphine",
				"kat_lorazepam"			
];

_coms_lead = [
				"TFAR_rt1523g_big_rhs"
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

_echo_items_1 = [

				//Weapon Attachments
				"cup_muzzle_snds_m16",
				"cup_muzzle_snds_m16_camo",

				"cup_acc_anpeq_2_flashlight_black_l",					
				
				"cup_optic_compm4",

				//Westen Echo
				"CUP_V_JPC_Fastbelt_coy",

				//Items								
				"CUP_NVG_GPNVG_black",
				
				//headgear
				"SP_ProTecHelmet_Black"
];

_echo_items_2 = [
				//Rifles
				"CUP_arifle_M4A1_black",
				"CUP_smg_MP5SD6",

				//Throwables
				"B_IR_Grenade",
				"ACE_M84",

				//Explosives
				"DemoCharge_Remote_Mag",
				"APERSMineDispenser_Mag",
				"CUP_Mine_M",
				"ClaymoreDirectionalMine_Remote_Mag"
];

_sierra_items_1 = [				
				//Optics
				"cup_optic_leupoldmk4_25x50_lrt",
				"cup_optic_leupoldmk4_25x50_lrt_woodland",
				"cup_optic_leupold_vx3",
				"optic_lrps",
				"cup_optic_acog_ta01b_black",

				//Attachements
				"muzzle_snds_b",
				"muzzle_snds_b_lush_f",
				
				"cup_muzzle_snds_mk23",					

				//Uniform
				"CUP_U_B_CZ_DST_Ghillie",
				
				//headgear
				"CUP_V_JPC_lightbelt_coy"
];

_sierra_items_2 = [
				//Rifles
				"CUP_srifle_M14_DMR",
				"CUP_srifle_M24_wdl",

				//Throwables
				"B_IR_Grenade",
				"ACE_M84",
				
				//UAV
				"B_UAV_01_backpack_F"
];

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//			Rollenspezifische Loadouts erstellen
//
//------------------------------------------------------------------
//------------------------------------------------------------------	


//------------------------------------------------------------------
//						Schütze
//------------------------------------------------------------------	

if (_loadout == "Zug_Schutze") then {
	_equipment = 
					_uniforms +
					_vests +
					_backpacks +
					_headgear +
					_optics +
					_attachments +
					_items_1 +
					_facewear;
	
	if _rearm then {
		_equipment = 
						_equipment +
						_rifles +
						_pistol +
						_mags +
						_grenades +
						_medic_standard;
	};
};

//------------------------------------------------------------------
//						Grenadier
//------------------------------------------------------------------	

if (_loadout == "Zug_Grenadier") then {
	_equipment = 
					_uniforms +
					_vests +
					_backpacks +
					_headgear +
					_optics +
					_attachments +
					_items_1 +
					_facewear;

	if _rearm then {
		_equipment = 
						_equipment +
						_rifles_grenadier +
						_pistol +
						_mags +
						_grenades +						
						_medic_standard;
	};
};


//------------------------------------------------------------------
//						DM
//------------------------------------------------------------------	
	
if (_loadout == "Zug_DM") then {
	_equipment = 
					_uniforms +
					_vests +
					_backpacks +
					_headgear +
					_optics_dm +
					_attachments +
					_items_1 +
					_facewear;

	if _rearm then {
		_equipment = 
						_equipment +
						_rifles_dm +
						_pistol +
						_mags +
						_grenades +						
						_medic_standard;
	};
};


//------------------------------------------------------------------
//						MG
//------------------------------------------------------------------	
	
if (_loadout == "Zug_MG") then {
	_equipment = 
					_uniforms +
					_vests +
					_backpacks +
					_headgear +
					_optics +
					_attachments +
					_items_1 +
					_facewear;

	if _rearm then {
		_equipment = 
						_equipment +
						_rifles_mg +
						_pistol +
						_mags +
						_grenades +						
						_medic_standard;
	};
};

//------------------------------------------------------------------
//						EHB
//------------------------------------------------------------------	
	
if (_loadout == "Zug_EHB") then {
	_equipment = 					
					_uniforms +
					_vests_san +
					_backpacks +
					_headgear +
					_optics +
					_attachments +
					_items_1 +
					_facewear;			

	if _rearm then {
		_equipment = 
						_equipment +
						_rifles +
						_pistol +
						_mags +
						_grenades +						
						_medic_standard +
						_medic_ehb;
	};
};


//------------------------------------------------------------------
//						Sanitäter
//------------------------------------------------------------------	
	
if (_loadout == "Zug_Sanitater") then {					
	_equipment = 					
					_uniforms +
					_vests_san +
					_backpacks +
					_headgear +
					_optics +
					_attachments +
					_items_1 +	
					_facewear;	

	if _rearm then {
		_equipment = 
						_equipment +
						_rifles +
						_pistol +
						_mags +
						_grenades +						
						_medic_standard +
						_medic_ehb +
						_medic_san;
	};
};


//------------------------------------------------------------------
//						AT
//------------------------------------------------------------------	

if (_loadout == "Zug_AT") then {
	_equipment = 
					_uniforms +
					_vests +
					_backpacks +
					_headgear +
					_optics +
					_attachments +
					_items_1 +
					_facewear;

	if _rearm then {
		_equipment = 
						_equipment +
						_rifles +
						_launcher_AT +
						_pistol +
						_mags +
						_grenades +						
						_medic_standard;
	};
};

//------------------------------------------------------------------
//						ATA
//------------------------------------------------------------------	

if (_loadout == "Zug_ATA") then {
	_equipment = 
					_uniforms +
					_vests +
					_backpacks +
					_headgear +
					_optics +
					_attachments +
					_items_1 +
					_facewear;

	if _rearm then {
		_equipment = 
						_equipment +
						_rifles +
						_pistol +
						_mags +
						_grenades +						
						_medic_standard;
	};
};

//------------------------------------------------------------------
//						AA
//------------------------------------------------------------------	

if (_loadout == "Zug_AA") then {
	_equipment = 
					_uniforms +
					_vests +
					_backpacks +
					_headgear +
					_optics +
					_attachments +
					_items_1 +
					_facewear;

	if _rearm then {
		_equipment = 
						_equipment +
						_rifles +
						_launcher_AA +
						_pistol +
						_mags +
						_grenades +						
						_medic_standard;
	};
};

//------------------------------------------------------------------
//						Truppführer
//------------------------------------------------------------------	
	
if (_loadout == "Zug_Truppfuhrer") then {
	_equipment = 
					_uniforms +
					_vests_lead +
					_backpacks +
					_headgear +
					_optics +
					_attachments +
					_items_1 +
					_items_2 +
					_facewear;

	if _rearm then {
		_equipment = 
						_equipment +
						_rifles +
						_pistol +
						_mags +
						_grenades +						
						_medic_standard;
	};
};


//------------------------------------------------------------------
//						Gruppenführer
//------------------------------------------------------------------	
	
if (_loadout == "Zug_Gruppenfuhrer") then {
	_equipment = 
					_uniforms +
					_vests_lead +
					_headgear +
					_optics +
					_attachments +
					_items_1 +
					_items_2 +
					_coms_lead +
					_facewear;

	if (_rearm) then {
		_equipment = 
						_equipment +
						_rifles +
						_pistol +
						_mags +
						_grenades +						
						_medic_standard;
	};
};

//------------------------------------------------------------------
//						Echo
//------------------------------------------------------------------	
if (_playerGrp == grpecho1 || _playerGrp == grpecho2) then {
	_equipment = 
					_uniforms +
					_vests +
					_headgear +
					_backpacks +
					_optics +
					_attachments +
					_items_1 +
					_items_2 +
					_items_3 +
					_coms_lead +
					_facewear +
					_echo_items_1;					

	if _rearm then {
		_equipment = 
					_equipment +
					_echo_items_2 +
					_mags +
					_medic_standard +
					_medic_ehb +
					_medic_san;
	};
};

//------------------------------------------------------------------
//						Sierra
//------------------------------------------------------------------	
if (_playerGrp == grpsierra) then {
	_equipment = 
					_uniforms +
					_vests +
					_headgear +
					_backpacks +
					_optics +
					_attachments +
					_items_1 +
					_items_2 +
					_items_3 +
					_coms_lead +
					_facewear +
					_sierra_items_1;
					

	if _rearm then {
		_equipment = 
					_equipment +
					_sierra_items_2 +
					_mags +
					_medic_standard +
					_medic_ehb +
					_medic_san;
	};
};
//------------------------------------------------------------------
//						Kilo // Lima
//------------------------------------------------------------------
if (_playerGrp == grpkilo || _playerGrp == grplima || _playerGrp == grpfox ) then {
	_equipment = 
					_uniforms +
					_vests +
					_vests_san +
					_vests_lead +
					_backpacks +
					_headgear +
					_rifles +
					_rifles_grenadier +
					_rifles_dm +
					_rifles_mg +
					_optics +
					_optics_dm +
					_attachments +
					_pistol +
					_mags +
					_launcher_AT +
					_launcher_AA +
					_grenades +
					_items_1 +
					_items_2 +
					_items_3 +
					_medic_standard +
					_medic_ehb +
					_medic_san +
					_medic_doc +
					_coms_lead +
					_facewear +
					_echo_items_1 +
					_echo_items_2 +
					_sierra_items_1 +
					_sierra_items_2;
};

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Arsenal Erstellen
//
//------------------------------------------------------------------
//------------------------------------------------------------------	


// Fill ACE Arsenal
[player, _equipment, false] call ace_arsenal_fnc_addVirtualItems;

// Open ACE Arsenal
_waffenkammer = [player, player, false] call ace_arsenal_fnc_openBox;

// Message for Player which options are available
if _rearm then {
	titleText ["<t color='#ffffff' size='2'>Die Waffenkammer steht in vollem Umfang zur Verfügung.<br/>Nach Waffenwechsel AUFMUNITIONIEREN nicht vergessen!</t>", "PLAIN", 1, true, true];
}
else {
	
	titleText ["<t color='#ffffff' size='1'>Die Mission wird fortgesetzt<br/></t><t color='#ff0000' size='2'>Es ist weder ein Waffenwechsel noch Aufmunitionieren möglich.</t>", "PLAIN", 1, true, true];
};

// Add Event Handler for closing the Arsenal
_arsenalEventHandler = ["ace_arsenal_displayClosed", { player setVariable ["arsenalClosed", true]; } ] call CBA_fnc_addEventHandler;

// Wait until Arsenal is closed by Player
waitUntil { player getVariable "arsenalClosed" };

[player, true, false] call ace_arsenal_fnc_removeVirtualItems;