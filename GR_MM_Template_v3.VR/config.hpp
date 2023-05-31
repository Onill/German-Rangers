//German Rangers Mission Feature Config Variables
useDBMapMarkers 	= false;		//Sets if MapMarkers from the DB are loaded for this mission
lima				= true;			//Sets if a Lima Supply Point is for the Group Lima and Kilo available (Needs adjusted supply boxes in Lima folder for the Fraktion)
missionstartedfeat	= true;			//Sets if the Mission Started Feature is available. When the Feature is "true", all Players have the GR GUI everywhere available until the Mission is started by Zeus
									//After the Mission was started, every JIP Player will be spawned in the Base, defined in initPlayerLocal.sqf. 
									//This is used for Missions that start in field. Needs the Mission Start Feature from Zeus!


// Loadouts 
loadPlayers 		= false;		//Sets if Loadouts for Players are loaded from DB
fraktion 			= "usrangers"; 	//Sets the Loadout Path for the Mission start: "bwfleck" | "bwtropen" | "bwwinter" | "marsoc"

//avaible Factions via GUI
fraktionList[] 		= {"bwfleck", "bwtropen", "bwwinter", "marsoc", "usrangers"};
fraktionListN[] 	= {"BW Fleck", "BW Tropen", "BW Winter", "Marsoc", "US Rangers"};

allowWaffenkammer	= true;			//Sets if the Waffenkammer is available ingame
allowLoadouts		= true;			//Sets if the Loadout Change is available ingame
rearm				= true;			//Sets if Weaponchange and Reload is enabled in Waffenkammer