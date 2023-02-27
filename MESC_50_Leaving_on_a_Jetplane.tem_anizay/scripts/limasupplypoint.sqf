_supply = _this select 0;

switch (_supply) do
{
	case "zug1": {
				_box = "ACE_Box_Ammo" createVehicle getMarkerPos "limaSupplyMarker";
				[_box] execvm "scripts\supplies\box_zug_typ_i.sqf";
			};
	case "zug2": {
				_box = "ACE_Box_82mm_Mo_HE" createVehicle getMarkerPos "limaSupplyMarker";
				[_box] execvm "scripts\supplies\box_zug_typ_ii.sqf";
			};

	case "zug3": {
				_box = "ACE_Box_82mm_Mo_HE" createVehicle getMarkerPos "limaSupplyMarker";
				[_box] execvm "scripts\supplies\box_zug_typ_iii.sqf";
			};

	case "zug4": {
				_box = "Box_NATO_Equip_F" createVehicle getMarkerPos "limaSupplyMarker";
				[_box] execvm "scripts\supplies\box_zug_typ_iv.sqf";
			};

	case "zug5": {
				_box = "ACE_Box_Chemlights" createVehicle getMarkerPos "limaSupplyMarker";
				[_box] execvm "scripts\supplies\box_zug_typ_v.sqf";
			};

	case "zug6": {
				_box = "ACE_Box_Chemlights" createVehicle getMarkerPos "limaSupplyMarker";
				[_box] execvm "scripts\supplies\box_zug_typ_vi.sqf";
			};

	case "sierra1": {
				_box = "ACE_Box_Ammo" createVehicle getMarkerPos "limaSupplyMarker";
				[_box] execvm "scripts\supplies\box_sierra_typ_i.sqf";
			};

	case "echo1": {
				_box = "ACE_Box_Ammo" createVehicle getMarkerPos "limaSupplyMarker";
				[_box] execvm "scripts\supplies\box_echo_typ_i.sqf";
			};

	case "echo2": {
				_box = "ACE_Box_82mm_Mo_HE" createVehicle getMarkerPos "limaSupplyMarker";
				[_box] execvm "scripts\supplies\box_echo_typ_ii.sqf";
			};

	case "echo3": {
				_box = "ACE_Box_Chemlights" createVehicle getMarkerPos "limaSupplyMarker";
				[_box] execvm "scripts\supplies\box_echo_typ_iii.sqf";
			};

	case "echo4": {
				_box = "Box_NATO_Equip_F" createVehicle getMarkerPos "limaSupplyMarker";
				[_box] execvm "scripts\supplies\box_echo_typ_iv.sqf";
			};

	case "san1": {
				_box = "ACE_medicalSupplyCrate" createVehicle getMarkerPos "limaSupplyMarker";
				[_box] execvm "scripts\supplies\box_san_typ_i.sqf";
			};

	case "san2": {
				_box = "ACE_medicalSupplyCrate" createVehicle getMarkerPos "limaSupplyMarker";
				[_box] execvm "scripts\supplies\box_san_typ_ii.sqf";
			};
};