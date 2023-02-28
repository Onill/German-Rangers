//if (isServer) exitWith {};

playMusic "Outro_Success";

sleep 60;

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


_targetv = plane1;
_target = player;;
_distance = 2;
_height = 2;
_angle = 0;
_maxAngle = 360;
_speed = 0.061;
_fade = false;


//Ramp Shot
_camera camSettarget _targetv;
_camera camSetRelPos [0,-20,-4];
_camera camCommit 0;
sleep 5;

//Rotor Shot
_camera camSettarget _targetv;
_camera camSetRelPos [15,5,0];
_camera camCommit 0;
sleep 10;

//Bird Shot
_camera camSettarget _targetv;
_camera camSetRelPos [0,-10,40];
_camera camCommit 0;
sleep 5;

//Front Shot
_camera camSettarget _targetv;
_camera camSetRelPos [2,100,2];
_camera camCommit 0;
sleep 10;

_camera camSettarget _targetv;
_height = 10;
_camera camSetPos [8513.84,7160.85,10];
_camera camCommit 0;

while {_height < 70} do {
	_height = _height + 1;

	_camera camSetPos [8513.84,7160.85,_height];
	_camera camCommit 0.4;
	sleep 0.4;
};

//Front Shot
_camera camSettarget _targetv;
_camera camSetRelPos [10,150,-5];
_camera camCommit 0;
sleep 6;

//Radar Station Shot
_camera camSettarget _targetv;
_camera camSetPos [8299.09,8629.69,50];
_camera camCommit 0;
sleep 20;

//Shot 1
_camera camSettarget _targetv;
_camera camSetRelPos [-20,20,200];
_camera camCommit 0;
sleep 10;

//Shot 2
_camera camSettarget _targetv;
_camera camSetRelPos [-100,500,20];
_camera camCommit 0;
sleep 10;

//Shot 3
_camera camSettarget _targetv;
_camera camSetRelPos [5,100,10];
_camera camCommit 0;
sleep 10;


//Mosque Shot
_camera camSettarget _targetv;
_height = 8;
_camera camSetPos [3945.55,7253.61,8];
_camera camCommit 0;

while {_height < 70} do {
	_height = _height + 1;

	_camera camSetPos [3945.55,7253.61,_height];
	_camera camCommit 0.4;
	sleep 0.4;
};

//Lake Shot
_camera camSettarget _targetv;
_camera camSetPos [1895.91,5953.55,20];
_camera camCommit 0;
sleep 16;

ace_hearing_disableVolumeUpdate = true;

10 fadeSpeech 0;
10 fadeRadio 0;
10 fadeSound 0;

titleText ["", "BLACK", 2, true, true];
sleep 2;

titleText ["<t color='#ffffff' size='1.4'>Seit 2001 waren Deutsche Soldaten in Afghanistan stationiert.<br/>Zuerst im Rahmen der Operation ISAF , seit 2015 in der Operation Resolute Support.</t>", "BLACK FADED", 2, true, true];
sleep 6;

titleText ["", "BLACK FADED", 2, true, true];
sleep 1;

titleText ["<t color='#ffffff' size='1.4'>2011 waren 5.433 Soldaten in Afghanistan stationiert.</t>", "BLACK FADED", 2, true, true];
sleep 6;

titleText ["", "BLACK FADED", 2, true, true];
sleep 1;

titleText ["<t color='#ffffff' size='1.4'>2021 wurde Operation Resolute Support beendet und alle NATO und US Streitkräfte aus Afghanistan abgezogen.</t>", "BLACK FADED", 2, true, true];
sleep 6;

titleText ["", "BLACK FADED", 2, true, true];
sleep 1;

titleText ["<t color='#ffffff' size='1.4'>Der Einsatz in Afghanistan ist für Deutschland der blutigste Krieg seit dem zweiten Weltkrieg.</t>", "BLACK FADED", 2, true, true];
sleep 7;

titleText ["", "BLACK FADED", 2, true, true];
sleep 1;

titleText ["<t color='#ffffff' size='1.4'>Bis 2021 starben in Afghanisten ca. 48.000 Zivilisten durch Terror und Kriegshandlungen.</t>", "BLACK FADED", 2, true, true];
sleep 7;

titleText ["", "BLACK FADED", 2, true, true];
sleep 1;

titleText ["<t color='#ffffff' size='1.4'>Seit dem Abzug der NATO 2021 steht das halbe Land und die Hauptstadt Kabul wieder unter der Kontrolle der Taliban.</t>", "BLACK FADED", 2, true, true];
sleep 6;

titleText ["", "BLACK IN", 0, true, true];

sleep 1;

titleText ["<t color='#ffffff' size='1.4'>Während des Afghanistan Krieges starben 62 deutsche Soldaten und Polizisten.</t>", "PLAIN", 2, true, true];
sleep 5;

titleText ["<t color='#ffffff' size='1.4'>Die Zahl der Verwundeten an Leib und Seele ist um ein vielfaches höher.</t>", "PLAIN", 2, true, true];
sleep 5;

titleText ["", "PLAIN", 2, true, true];
sleep 1;

titleText ["<img image='images\GermanRangersLogo.paa' shadow='0' size='10'/> <br/>
			<t color='#ffffff' size='3' font='RobotoCondensed' shadow = '2' >M I S S I O N   E R F O L G R E I C H</t>", 
			"PLAIN", 2, true, true
		];

sleep 4;

["End1", true, 2, false, false] call BIS_fnc_endMission;
