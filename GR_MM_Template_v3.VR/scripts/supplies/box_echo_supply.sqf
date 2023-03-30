// Kiste für ACE Medic Standard Supplies
// Aufruf im Editor mit 	[this] execvm "scripts\supplies\box_echo_supply.sqf";

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addItemCargoGlobal ["CUP_30Rnd_556x45_G36_wdl",30];
_box addItemCargoGlobal ["CUP_30Rnd_556x45_G36_camo",30];
_box addItemCargoGlobal ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",3];
_box addItemCargoGlobal ["CUP_21Rnd_9x19_M17_Green",8];
_box addItemCargoGlobal ["CUP_21Rnd_9x19_M17_Coyote",8];
_box addItemCargoGlobal ["CUP_HandGrenade_M67",16];
_box addItemCargoGlobal ["SmokeShell",8];
_box addItemCargoGlobal ["SmokeShellRed",8];
_box addItemCargoGlobal ["SmokeShellPurple",8];
_box addItemCargoGlobal ["ACE_M84",16];
_box addItemCargoGlobal ["B_IR_Grenade",1];
_box addItemCargoGlobal ["ACE_UAVBattery",2];
_box addItemCargoGlobal ["ACE_DefusalKit",2];
_box addItemCargoGlobal ["DemoCharge_Remote_Mag",1];
_box addItemCargoGlobal ["DemoCharge_Remote_Mag",1];