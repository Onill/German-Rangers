if (isServer) exitWith {};

_result = false;
private _result = ["Soll die Mission mit ERFOLGREICH beendet werden?", "Confirm", true, true] call BIS_fnc_guiMessage;

if (!_result) exitWith {};

playMusic "MyOutro";

titleText ["<img image='images\GermanRangersLogo.paa' shadow='0' size='10'/> <br/>
			<t color='#ffffff' size='5' font='RobotoCondensed' shadow = '2' >M I S S I O N   E R F Ü L L T</t>
			<br/>
			<br/>
			<t color='#ffffff' size='1.5' font='RobotoCondensed' shadow = '2' >Auftrag erfolreich abgeschlossen.</t>", 
			"PLAIN", 2, true, true
		];

sleep 18;

titleText ["", "BLACK OUT", 1, true, true];
sleep 2.5;
cutText ["", "BLACK IN", 3, true, true];

["end1", true, 42, false, false] call BIS_fnc_endMission;

titleText ["<br/><br/><br/><br/><img image='images\GermanRangersLogo.paa' shadow='0' size='10'/><br/><br/>
			<t color='#ffffff' size='3' font='RobotoCondensed' shadow = '2' >G U T E   A R B E I T ,   R A N G E R S</t>
			<br/>
			<br/>
			<t color='#ffffff' size='1.5' font='RobotoCondensed' shadow = '2' >Sammeln zur Nachbesprechung im Lagezentrum.</t>", "PLAIN", 2, true, true];



//Camera creating - always add to the script to make the camera work
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

//Camera moves in a circle around the player - advanced implementation example. Parameters, customization.
//launch = [target unit, distance, height, max angle, speed];
//Target unit - name of the unit the camera rotates around
//Distance - number, distance of the camera and the target
//Height - number, height in meters of the camera above the ground
//Max angle - number, maximum angle at which the rotation stops
//Speed - number, interval of a 'tick', or change. Lower for faster rotations.
//launch = [player,10,4,360,0.1] execVM "camera.sqf";


_target = player;
_distance = 10;
_height = 1;
_angle = 0;
_maxAngle = 360;
_speed = 0.061;

_camera camSetpos position _target;
_camera camSettarget _target;
_center = [position _target select 0, position _target select 1,_height];
_camera camSetPos _center;
_camera camSetTarget _target;
_camera camCommit 0;

while {_height < 35} do {
	_height = _height + 1;

	_camera camSetRelPos [0,0,_height];
	_camera camCommit 0.5;
	sleep 0.5;

	};

_height = 4;
		
while {_angle < _maxAngle} do {
	_angle = _angle + 1;

	_camera camSetRelPos [_distance*cos(_angle),_distance*sin(_angle),_height];
	_camera camCommit _speed;
	sleep _speed;

	};

//Camera destroying - terminates the 'camera view'
_camera CameraEffect ["Terminate","back"];
CamDestroy _camera;

