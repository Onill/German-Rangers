if (isServer) exitWith {};

playMusic "Outro_Continue";

titleText ["<img image='images\GermanRangersLogo.paa' shadow='0' size='10'/> <br/>
			<t color='#ffffff' size='5' font='RobotoCondensed' shadow = '2' >T O   B E   C O N T I N U E D</t>
			<br/>
			<br/>
			<t color='#ffffff' size='1.5' font='RobotoCondensed' shadow = '2' >Die Mission wird nächsten Montag fortgesetzt.</t>", 
			"PLAIN", 2, true, true
		];

sleep 8;

titleText ["", "BLACK OUT", 1, true, true];
sleep 2.5;
cutText ["", "BLACK IN", 3, true, true];

_playerName = (toUpper profileName) splitString "" joinString " ";;


_personalText =  format ["<br/><br/><br/><br/><img image='images\GermanRangersLogo.paa' shadow='0' size='10'/><br/><br/><t color='#ffffff' size='3' font='RobotoCondensed' shadow = '2' >G U T E   A R B E I T ,   %1</t><br/><br/><t color='#ffffff' size='1.5' font='RobotoCondensed' shadow = '2' >Danke für deinen Einsatz bei den German Rangers!</t>", _playerName];
titleText [_personalText, "PLAIN", 2, true, true];

//Camera creating - always add to the script to make the camera work
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

showCinemaBorder true;

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
_fade = false;

_camera camSetpos position _target;
_camera camSettarget _target;
_center = [position _target select 0, position _target select 1,_height];
_camera camSetPos _center;
_camera camSetTarget _target;
_camera camCommit 0;

while {_height < 41} do {
	_height = _height + 1.5;

	_camera camSetRelPos [0,0,_height];
	_camera camCommit 0.5;
	sleep 0.5;
	
	if (_height > 33 && _fade == false) then {
		cutText ["", "BLACK OUT", 1, true, true];
		_fade = true;
	};

};

cutText ["", "BLACK IN", 3, true, true];
_fade = false;

_height = 4;
		
while {_angle < _maxAngle} do {
	_angle = _angle + 1.2;

	_camera camSetRelPos [_distance*cos(_angle),_distance*sin(_angle),_height];
	_camera camCommit 0.04;
	sleep 0.04;

	if (_angle > 320 && _fade == false) then {
		cutText ["", "BLACK OUT", 1, true, true];
		_fade = true;
	};
	
};

_camera camSetRelPos [0,60,4];

cutText ["", "BLACK IN", 3, true, true];
_fade = false;

_range = 50;

while {_range > -50} do {
	_range = _range - 0.7;

	_camera camSetRelPos [0,_range,4];
	_camera camCommit 0.07;
	sleep 0.07;
	
	if (_range < -30  && _fade == false) then {
		cutText ["", "BLACK OUT", 1, true, true];
		_fade = true;
	};

};

["End2", true, 0, false, false] call BIS_fnc_endMission;

//Camera destroying - terminates the 'camera view'
_camera CameraEffect ["Terminate","back"];
CamDestroy _camera;