[
	transformer_1,										// Object the action is attached to
	"repair",											// Title of the action
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa",	// Idle icon shown on screen
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa",	// Progress icon shown on screen
	"_this distance _target < 4",						// Condition for the action to be shown
	"_caller distance _target < 4",						// Condition for the action to progress
	{[_caller]execVM "scripts\transformerRepairCheck.sqf";},			// Code executed when action starts
	{},													// Code executed on every progress tick
	{[_caller] execVM "scripts\transformerRepair1.sqf"},		// Code executed on completion
	{},													// Code executed on interrupted
	[],													// Arguments passed to the scripts as _this select 3
	60,													// Action duration in seconds
	1000,												// Priority
	true,												// Remove on completion
	false												// Show in unconscious state
] remoteExec ["BIS_fnc_holdActionAdd", 0, transformer_1];		// MP compatible implementation