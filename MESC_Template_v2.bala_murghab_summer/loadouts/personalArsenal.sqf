// in der Init der Box mit null = [this] execVM "loadouts\virtual_arsenal_flecktarn.sqf" aufrufen

// Init stuff

_loadout = player getVariable "loadout";
_playerGrp = group player;

// Get Ammo Count of Player
private _compatibleMagazines = [primaryWeapon player] call CBA_fnc_compatibleMagazines;
private _magazineCount = {_x in _compatibleMagazines} count magazines player;



{player removeMagazines _x;} forEach _compatibleMagazines;
{player removePrimaryWeaponItem _x;} forEach _compatibleMagazines;

private _playerItems = itemsWithMagazines player;

player setVariable ["magazineCount", _magazineCount];
player setVariable ["playerItems", _playerItems];


removeAllItemsWithMagazines player;

player setVariable ["arsenalClosed", false];

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
					"CUP_B_GER_Pack_Tropentarn",
					"CUP_B_GER_Medic_Tropentarn"
				];

	_headgear = [
					"CUP_H_OpsCore_Covered_Trop",
					"CUP_H_OpsCore_Covered_Trop_NoHS",
					"CUP_H_OpsCore_Covered_Trop_SF"
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
				"ACE_marker_flags_red"
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
				"ACE_marker_flags_red"
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

_equipment = _rifle + _pistol + _launcher + _headgear + _facewear + _uniforms + _vests + _nvg + _optics + _attachments + _funk + _backpacks;

[player, _equipment, false] call ace_arsenal_fnc_addVirtualItems;
_personalArsenal = [player, player, false] call ace_arsenal_fnc_openBox;

titleText ["<t color='#ffffff' size='1'>Magazine und Items sind nicht verfügbar und werden beim Verlassen des Arsenals automatisch aufgefüllt!<br/></t><t color='#ff0000' size='2'>Dieses Arsenal ist nicht zum Aufmunitionieren da!</t>", "PLAIN", 1, true, true];

_arsenalEventHandler = ["ace_arsenal_displayClosed", { player setVariable ["arsenalClosed", true]; } ] call CBA_fnc_addEventHandler;

waitUntil { player getVariable "arsenalClosed" };

{player addItem _x} forEach _playerItems;

_newWeapon = primaryWeapon player;

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


	case "CUP_arifle_HK416_Black" : {	
								for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_PMAG_BLACK";}; 
								for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_556x45_PMAG_BLACK_Tracer_Red";}; 
								player addPrimaryWeaponItem "CUP_30Rnd_556x45_PMAG_BLACK";
							};

	case "CUP_arifle_HK416_CQB_Black" : {
								for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_PMAG_BLACK";}; 
								for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_556x45_PMAG_BLACK_Tracer_Red";}; 
								player addPrimaryWeaponItem "CUP_30Rnd_556x45_PMAG_BLACK";
							};
	case "CUP_arifle_HK416_AGL_Black" : {
								for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_PMAG_BLACK";}; 
								for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_556x45_PMAG_BLACK_Tracer_Red";}; 
								player addPrimaryWeaponItem "CUP_30Rnd_556x45_PMAG_BLACK";
							};

	case "CUP_arifle_HK416_Desert" : {
								for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_PMAG_COYOTE";}; 
								for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_556x45_PMAG_COYOTE_Tracer_Red";}; 
								player addPrimaryWeaponItem "CUP_30Rnd_556x45_PMAG_COYOTE";
							};

	case "CUP_arifle_HK416_CQB_Desert" : {
								for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_PMAG_COYOTE";}; 
								for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_556x45_PMAG_COYOTE_Tracer_Red";}; 
								player addPrimaryWeaponItem "CUP_30Rnd_556x45_PMAG_COYOTE";
							};

	case "CUP_arifle_HK416_AGL_Desert" : {
								for "_i" from 1 to (_magazineCount - 2) do {player addItem "CUP_30Rnd_556x45_PMAG_COYOTE";}; 
								for "_i" from 1 to 2 do {player addItem "CUP_30Rnd_556x45_PMAG_COYOTE_Tracer_Red";}; 
								player addPrimaryWeaponItem "CUP_30Rnd_556x45_PMAG_COYOTE";
							};

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

	case "CUP_lmg_minimi_railed" : {
								for "_i" from 1 to _magazineCount do {player addItem "CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch";}; 
								player addPrimaryWeaponItem "CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch";
							};
};
