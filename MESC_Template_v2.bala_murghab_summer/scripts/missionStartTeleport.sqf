if (isServer) exitWith {};

_sleepRandom = randeom [10, 20, 40];

sleep _sleepRandom;

// Teleport Player
_vehicle = objectParent player;

switch (_vehicle) do {
		case transport_1: 	{ player moveInAny start_1; };
		case transport_2: 	{ player moveInAny start_2; };
		case transport_3: 	{ player moveInAny start_3; };
		case transport_4: 	{ player moveInAny start_4; };
		case transport_5: 	{ player moveInAny start_5; };
		case transport_6: 	{ player moveInAny start_6; };
};