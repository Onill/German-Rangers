_airplanes = [plane1, plane2, plane3];

for "_i" from 0 to 1 step 0 do {

	_plane = selectRandom _airplanes;

	_plane engineon true;

	_randomWait2 = random [40, 60, 90];	
	
	sleep _randomWait2;

	_plane engineon false;

	_randomWait1 = random [100, 200, 300];
	
	sleep _randomWait1;

};