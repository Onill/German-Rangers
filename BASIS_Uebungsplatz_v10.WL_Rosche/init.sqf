[] spawn {
        {
            _x addCuratorEditableObjects [allUnits, true];
            _x addCuratorEditableObjects [vehicles, true];
            _x addCuratorEditableObjects [allUnitsUAV, true];
            _x addCuratorEditableObjects [allMines, true];
        } forEach allCurators;
    };

//disable targets from moving automatically
nopop = true;

//start the main script
_0 = [20,area_granaten] execVM "scripts\reset.sqf";
_0 = [250,area_cqb] execVM "scripts\reset.sqf";
_0 = [1000,area_sniper] execVM "scripts\reset.sqf";