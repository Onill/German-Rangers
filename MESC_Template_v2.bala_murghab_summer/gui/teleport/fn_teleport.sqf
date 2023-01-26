/*
 *  Author: 
 */
private ["_TeleportTo","_position","_target"];

_TeleportTo = "Lima"; //param[0];
_position = getPos player;
target =  player;
//hint format ["player controlled is called: %1",_TeleportTo]; // Debugging 


	switch (_TeleportTo) do
		{
			 case "Alpha": {_target =  (units grpalpha select 0); };
			 case "Bravo": {_target = (units grpbravo select 0); };
			 case "Charlie": {_target =  (units grpcharlie select 0); };
			 case "Delta": {_target = (units grpdelta select 0); };
			 case "Sierra": {_target = (units grpsierra select 0); };
			 case "Echo_1": {_target = (units grpecho1 select 0); };
			 case "Echo_2": {_target = (units grpecho2 select 0); };
			 case "Fox_1": {_target = s3; };
			 case "Fox_2": {_target = s4; };
			 case "Kilo_1": {_target = s1; };
			 case "Kilo_2": {_target = s2; };
			 case "Lima": { _target = (units grplima select 0); hint"Erst demnÃ¤chst verfÃ¼gbar"; };
			 default { hint"Fehler"; };
		};
		
	if (vehicle _target == _target) then
	{

	_position = getPos _target;		
	(player) setPos _position;

	}

	else

	{
		if ((vehicle _target) emptyPositions "cargo"== 0) then
		{hint "No room in squad leader's vehicle."}
		else
		{
			player moveincargo vehicle _target;
		};
	};