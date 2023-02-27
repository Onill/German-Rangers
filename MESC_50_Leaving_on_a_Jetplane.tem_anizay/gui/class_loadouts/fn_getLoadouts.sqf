/*
 *  Author: 
 */
private ["_loudout","_loudoutIndex","_index","_tarnData"];

	_loudout = loudout;
	_loudoutIndex = loudoutIndex;
	
	{
		lbAdd [1500, _x];
		lbSetData [1500, _forEachIndex, _loudoutIndex select _forEachIndex];	 
	} forEach _loudout;
	
	_Tarn = ["Flecktarn","Troptarn"];
	_tarnData = ["fleck","tropen"];
	
	{
		lbAdd [2100, _x];
		lbSetData [2100, _forEachIndex, _tarnData select _forEachIndex];	 
	} forEach _Tarn;
	
	lbSetCurSel [2100, tarnfarbe];