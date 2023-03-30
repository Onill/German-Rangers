		
	_index = lbCurSel 1500;
	_index2 = lbdata[1500, _index];

	_indexCamo = lbCurSel 2100;
	_camouflagePattern = lbdata[2100, _indexCamo];
	
	_path = "loadouts\bw%1\"+ _index2 +".sqf";
	_loadouts = format [_path, _camouflagePattern];
	call compile preprocessFileLineNumbers _loadouts;	