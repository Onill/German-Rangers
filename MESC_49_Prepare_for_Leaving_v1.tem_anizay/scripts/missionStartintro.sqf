//Intro___________________________________________________________________

//if (isServer) exitWith {};

//Start Music
playMusic "MyIntro";

sleep 3;

_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

showCinemaBorder false;

_targetv = objectParent player;

//Motor Shot
_camera camSettarget heli1;
_camera camSetRelPos [-2,-4,1];
_camera camCommit 0;
sleep 5;

//Rotor Shot
_camera camSettarget heli1;
_camera camSetRelPos [2,3,2.5];
_camera camCommit 0;
sleep 5;

//Cockpit Shot
_camera camSettarget _targetv;
_camera camSetRelPos [0,5.02,0];
_camera camCommit 0;
sleep 3;

//Player Shot
_camera camSettarget player;
_camera camSetRelPos [3,3,0];
_camera camCommit 0;
sleep 3;


_camera camSettarget heli3;
_height = 3;
_camera camSetPos [3167.44,1979.48,_height];
_camera camCommit 0;

while {_height < 50} do {
	_height = _height + 1;

	_camera camSetPos [3167.44,1979.48,_height];
	_camera camCommit 0.4;
	sleep 0.4;
};

//Follow Heli
_camera camSettarget heli1;
_a = 0;
_b = 40;
_camera camSetRelPos [0,_b,_a];
_camera camCommit 0;
for "_1" from 0 to 15  do {
	_camera camSetRelPos [0,_b,0];
	_camera camCommit 0.5;
	sleep 0.5;
	_b = _b - 45;
};

//Camera destroying - terminates the 'camera view'
_camera CameraEffect ["Terminate","back"];
CamDestroy _camera;

sleep 1;

//Title Text Spawns
titleText ["<t color='#ffffff' size='1.5'>31.07.2022: Fünf Tage nach der Schlacht um Bala Murghab</t>", "PLAIN DOWN", 2, true, true];
sleep 6;
titleText ["<t color='#ffffff' size='1.5'>Die OPZ hat die MESC Mission offiziell für beendet erklärt.</t>", "PLAIN DOWN", 2, true, true];
sleep 8;

//Camera creating - always add to the script to make the camera work
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];


//Front Shot
_camera camSettarget _targetv;
_camera camSetRelPos [100,100,100];
_camera camCommit 0;
titleText ["", "PLAIN DOWN", 2, true, true];
sleep 1;
titleText ["<t color='#ffffff' size='1.5'>Die Ranger befinden sich auf dem Weg zum Lanway Airfield in Anizay, wo sie beim Rückbau der NATO Stützpunkte helfen werden.</t>", "PLAIN DOWN", 2, true, true];
sleep 10;
titleText ["", "PLAIN DOWN", 2, true, true];
sleep 1;

//Front Shot
_camera camSettarget _targetv;
_camera camSetRelPos [200,0,50];
_camera camCommit 0;
sleep 1;
titleText ["<t color='#ffffff' size='1.5'>Zur Durchführung des Logistikauftrages hat die OPZ die Gruppe LIMA ins Leben gerufen, die den Rückbau organisieren wird.</t>", "PLAIN DOWN", 0.7, true, true];
sleep 10;
titleText ["", "PLAIN DOWN", 2, true, true];
sleep 1;

//Front Shot
_camera camSettarget _targetv;
_camera camSetRelPos [0,500,200];
_camera camCommit 0;
sleep 1;
titleText ["<t color='#ffffff' size='1.5'>Zusammen mit Lima werden die Ranger Deutsches Material aus den Stützpunkten zurückführen.</t>", "PLAIN DOWN", 2, true, true];
sleep 9;
titleText ["", "PLAIN DOWN", 2, true, true];
sleep 1;

//Front Shot
_camera camSettarget _targetv;
_camera camSetRelPos [100,0,200];
_camera camCommit 0;
sleep 1;
titleText ["<t color='#ffffff' size='1.5'>Außerdem werden die Ranger IDAP bei der Verteilung von Hilfsgütern unterstützen.</t>", "PLAIN DOWN", 2, true, true];
sleep 9;
titleText ["", "PLAIN DOWN", 2, true, true];
sleep 1;

//Front Shot
_camera camSettarget _targetv;
_camera camSetRelPos [200,200,100];
_camera camCommit 0;
sleep 1;
titleText ["<t color='#ffffff' size='1.5'>Abzug der Ranger ist am nächsten Tag, 01-1900-AUG-2023 </t>", "PLAIN DOWN", 2, true, true];
sleep 9;
titleText ["", "PLAIN DOWN", 2, true, true];
sleep 1;

_camera camSettarget _targetv;
_camera camSetRelPos [0,500,200];
_camera camCommit 0;
titleText ["<t color='#ffffff' size='1'>B A L A   M U R G H A B - 26.06.2022 - German Rangers<br/>____________________</t><br/><t color='#ffffff' size='5'>Operation Torch Part II</t>", "PLAIN", 1, true, true];
sleep 5;

//Camera destroying - terminates the 'camera view'
_camera CameraEffect ["Terminate","back"];
CamDestroy _camera;

sleep 80;

//Camera creating - always add to the script to make the camera work
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

//Front Shot
_camera camSettarget _targetv;
_camera camSetRelPos [0,150,10];
_camera camCommit 0;

sleep 10;

//Static Swoop Shot
_camera camSettarget heli5;
_camera camSetPos [8462.6,7177.1,4];
_camera camCommit 0;

sleep 8;

//Front Shot
_camera camSettarget _targetv;
_camera camSetRelPos [-100,-100,10];
_camera camCommit 0;

sleep 10;

_camera camSettarget heli3;
_height = 3;
_camera camSetPos [8698.21,6718.94,_height];
_camera camCommit 0;

while {_height < 50} do {
	_height = _height + 1;

	_camera camSetPos [8698.21,6718.94,_height];
	_camera camCommit 0.4;
	sleep 0.4;
};

//Camera destroying - terminates the 'camera view'
_camera CameraEffect ["Terminate","back"];
CamDestroy _camera;

sleep 2;

//Text Ticker
[[["Anizay, Afghanistan","size = '0.7' font='PuristaBold'"],["","<br/>"],["Lanway Airfield","size = '0.7'","#aaaaaa"]],safeZoneX / 4, safeZoneH / 2,true,"<t font='PuristaBold'>%1</t>",[],{ false },true] spawn BIS_fnc_typeText2;	
sleep 6;
private _t = [daytime, "HH:MM"] call BIS_fnc_timeToString;			// time at missionstart as a string
[["Time: "+_t],safeZoneX / 4, safeZoneH / 2,true,"<t font='PuristaBold'>%1</t>",[],{ false },true] spawn BIS_fnc_typeText2;
