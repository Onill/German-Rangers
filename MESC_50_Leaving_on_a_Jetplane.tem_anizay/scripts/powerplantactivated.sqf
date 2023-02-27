// Smoke part 1
_posATL = getPosATL smokepos1;

private _ps1 = "#particlesource" createVehicleLocal _posATL;
_ps1 setParticleParams [
	["\A3\Data_F\ParticleEffects\Universal\Universal", 16, 7, 1], "", "Billboard",
	1, 10, [0, 0, 0.5], [0, 0, 2.9], 1, 1.275, 1, 0.066, [4, 5, 10, 10],
	[[0.3, 0.3, 0.3, 0.33], [0.4, 0.4, 0.4, 0.33], [0.2, 0.2, 0, 0]],
	[0, 1], 1, 0, "", "", _ps1];
_ps1 setParticleRandom [0, [0, 0, 0], [0.33, 0.33, 0], 0, 0.25, [0.05, 0.05, 0.05, 0.05], 0, 0];
_ps1 setDropInterval 0.5;

// Smoke part 2
_posATL = getPosATL smokepos2;
private _ps2 = "#particlesource" createVehicleLocal _posATL;
_ps2 setParticleParams [
	["\A3\Data_F\ParticleEffects\Universal\Universal", 16, 9, 1], "", "Billboard",
	1, 15, [0, 0, 0.5], [0, 0, 2.9], 1, 1.275, 1, 0.066, [4, 5, 10, 10],
	[[0.1, 0.1, 0.1, 0.75], [0.4, 0.4, 0.4, 0.5], [1, 1, 1, 0.2]],
	[0], 1, 0, "", "", _ps2];
_ps2 setParticleRandom [0, [0, 0, 0], [0.5, 0.5, 0], 0, 0.25, [0.05, 0.05, 0.05, 0.05], 0, 0];
_ps2 setDropInterval 0.25;

while {1 > 0} do {
	[powerplant,["Device_disassembled_loop",100,1]] remoteExec ["say3D"];
	sleep 4;
};