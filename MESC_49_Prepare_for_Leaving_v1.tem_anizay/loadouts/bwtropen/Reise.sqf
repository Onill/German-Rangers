if (!local player) exitWith {};

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add weapons";

comment "Add containers";
player forceAddUniform "CUP_U_B_GER_Tropentarn_5";

_backpack = selectRandom["B_Bergen_mcamo_F","B_TacticalPack_blk","CUP_B_AssaultPack_Coyote","B_CivilianBackpack_01_Everyday_Astra_F","B_CivilianBackpack_01_Everyday_Vrana_F","CUP_B_GER_Pack_Tropentarn","B_Kitbag_cbr"];
player addBackpack _backpack ;

_headgear = selectRandom ["H_Bandanna_cbr","H_Bandanna_gry","CUP_H_FR_BandanaGreen","CUP_H_SLA_BeretRed","CUP_H_Ger_Boonie2_desert","H_Cap_blk","CUP_H_USA_Cap_MCAM","CUP_H_Ger_Cap_Tan2","CUP_H_US_patrol_cap_desert","H_StrawHat"];
player addHeadgear _headgear;

_goggles = selectRandom ["G_Aviator","None","CUP_G_Oakleys_Clr","CUP_G_Oakleys_Drk","G_Shades_Black","G_Shades_Blue","G_Shades_Green","G_Shades_Red","G_Sport_Blackred","G_Squares_Tinted","G_Spectacles_Tinted"];
player addGoggles _goggles;

comment "Add items to containers";
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_splint";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_Banana";};
player addItemToBackpack "ACE_morphine";
player addItemToBackpack "ACE_Can_Franta";
player addItemToBackpack "ACE_Canteen";
player addItemToBackpack "ACE_Cellphone";
player addItemToBackpack "ACE_MRE_BeefStew";
player addItemToBackpack "ACE_MRE_ChickenTikkaMasala";
player addItemToBackpack "CUP_U_B_GER_Tropentarn_8";

player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_MapTools";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";