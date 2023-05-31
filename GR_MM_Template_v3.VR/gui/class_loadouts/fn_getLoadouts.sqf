/*
 *  Author: 
 */
private ["_loudout","_loudoutIndex","_index","_Tarn","_tarnData","_fraktion"];

	_loudout = loudout;
	_loudoutIndex = loudoutIndex;
	
	_Tarn = getMissionConfigValue "fraktionListN";
	_tarnData = getMissionConfigValue "fraktionList";
	_fraktion = getMissionConfigValue "fraktion";
	{
		lbAdd [1500, _x];
		lbSetData [1500, _forEachIndex, _loudoutIndex select _forEachIndex];	 
	} forEach _loudout;
	
	{
		lbAdd [2100, _x];
		lbSetData [2100, _forEachIndex, _tarnData select _forEachIndex];	 
	} forEach _Tarn;
	
	
	_index = _tarnData find _fraktion;
	
	lbSetCurSel [2100, _index];