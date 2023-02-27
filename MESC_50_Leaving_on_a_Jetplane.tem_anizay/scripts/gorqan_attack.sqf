sleep 120;

for "_i" from count waypoints gorqan_1 - 1 to 0 step -1 do
{
	deleteWaypoint [gorqan_1, _i];
};

for "_i" from count waypoints gorqan_2 - 1 to 0 step -1 do
{
	deleteWaypoint [gorqan_2, _i];
};

gorqanHostiles1 = createGroup EAST; {[_x] joinSilent gorqanHostiles1} forEach (units gorqan_1);
gorqanHostiles2 = createGroup EAST; {[_x] joinSilent gorqanHostiles2} forEach (units gorqan_2);

{_x addMagazine "CUP_30Rnd_545x39_AK_M"; _x addMagazine "CUP_30Rnd_545x39_AK_M"; _x addMagazine "CUP_30Rnd_545x39_AK_M"; _x addWeapon "CUP_arifle_AK74";} forEach units gorqanHostiles1;
{_x addMagazine "CUP_30Rnd_545x39_AK_M"; _x addMagazine "CUP_30Rnd_545x39_AK_M"; _x addMagazine "CUP_30Rnd_545x39_AK_M"; _x addWeapon "CUP_arifle_AK74";} forEach units gorqanHostiles2;
{_x addMagazine "CUP_30Rnd_545x39_AK_M"; _x addMagazine "CUP_30Rnd_545x39_AK_M"; _x addMagazine "CUP_30Rnd_545x39_AK_M"; _x addWeapon "CUP_arifle_AK74";} forEach units gorqanAmbush;


gorqanHostiles1_wp1 = gorqanHostiles1 addWaypoint [[6356.39,2235.04,0], 0, 10];
[gorqanHostiles1, 0] setWaypointBehaviour "COMBAT";
[gorqanHostiles1, 0] setWaypointCombatMode "RED";
gorqanHostiles1_wp1 setWaypointType "SAD";

gorqanHostiles2_wp1 = gorqanHostiles2 addWaypoint [[6356.39,2235.04,0], 0, 10];
[gorqanHostiles2, 0] setWaypointBehaviour "COMBAT";
[gorqanHostiles2, 0] setWaypointCombatMode "RED";
gorqanHostiles2_wp1 setWaypointType "SAD";

{_x enableAI "ALL"} forEach units gorqanAmbush;