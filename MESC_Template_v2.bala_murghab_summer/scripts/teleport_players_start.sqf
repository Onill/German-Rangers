if (!isServer) exitWith {};

sleep 10;

{
	_x setPos (getMarkerPos "mrk_start_alpha" findEmptyPosition [10,20]);
	sleep 0.1;
} forEach units grpalpha;

{
	_x setPos (getMarkerPos "mrk_start_bravo" findEmptyPosition [10,20]);
	sleep 0.1;
} forEach units grpbravo;

{
	_x setPos (getMarkerPos "mrk_start_charlie" findEmptyPosition [10,20]);
	sleep 0.1;
} forEach units grpcharlie;

{
	_x setPos (getMarkerPos "mrk_start_delta" findEmptyPosition [10,20]);
	sleep 0.1;
} forEach units grpdelta;

{
	_x setPos (getMarkerPos "mrk_start_sierra" findEmptyPosition [10,20]);
	sleep 0.1;
} forEach units grpsierra;

{
	_x setPos (getMarkerPos "mrk_start_echo" findEmptyPosition [10,20]);
	sleep 0.1;
} forEach units grpecho1;

{
	_x setPos (getMarkerPos "mrk_start_echo" findEmptyPosition [10,20]);
	sleep 0.1;
} forEach units grpecho2;

{
	_x setPos (getMarkerPos "mrk_start_fox" findEmptyPosition [10,20]);
	sleep 0.1;
} forEach units grpfox;

{
	_x setPos (getMarkerPos "mrk_start_kilo" findEmptyPosition [10,20]);
	sleep 0.1;
} forEach units grpkilo;
