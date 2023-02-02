/*
 *  Author: 
 */
private ["_loudout","_loudoutIndex","_index"];

	_loudout = ["Schütze","DM-Schütze","Schütze EH B","MG-Schütze","Sanitäter","AT-Schütze","AT-Assistent","Grenadier","Truppführer","Gruppenführer","Fox - Nahsicherer","AvD","Zugführung"];
	_loudoutIndex = ["Zug_Schutze","Zug_DM","Zug_EHB","Zug_MG","Zug_Sanitater","Zug_AT","Zug_ATA","Zug_Grenadier","Zug_Truppfuhrer","Zug_Gruppenfuhrer","Zug_Fox_Nahsicherer","Zug_Fox_AvD","Zug_Zugfuhrer"];		  
	
	{
	lbAdd [1500, _x];
	lbSetData [1500, _forEachIndex, _loudoutIndex select _forEachIndex];	 
	} forEach _Loudout;
	
	_Tarn = ["Flecktarn","Troptarn"];
	_tarnData = ["fleck","tropen"];
	{
	lbAdd [2100, _x];
	lbSetData [2100, _forEachIndex, _tarnData select _forEachIndex];	 
	} forEach _Tarn;
	lbSetCurSel [2100, tarnMuster];