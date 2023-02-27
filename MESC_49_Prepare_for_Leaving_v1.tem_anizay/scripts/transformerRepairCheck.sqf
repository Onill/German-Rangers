_player = _this select 0;
_items = items _player;
_engineer = _player getVariable "ACE_isEngineer";
_error = false;
_missingString = "";

if (_engineer < 2) then {
	_error = true;
	_missingString = " Du bist kein Ingenieur.";
};


if ("ToolKit" in _items) then { }
else {
	_error = true;
	_missingString = _missingString + " Dir fehlt ein Toolkit.";
};


if (_error) then {
	_finalString = format ["<t color='#ffffff' size='2' font='RobotoCondensed' shadow = '2' >Du kannst den Transformator nicht reparieren.%1</t>", _missingString];
	titletext [_finalString, "PLAIN DOWN", -1, true, true];
}
else {
	for "_i" from 1 to 6 do {
	[_player,["assemble_target",100,1]] remoteExec ["say3d"];
	sleep 3;
	[_player,["repair",100,1]] remoteExec ["say3d"];
	sleep 2;
	[_player,["ACE_replaceUAVBattery",100,1]] remoteExec ["say3d"];
	sleep 5;	
	};
};

