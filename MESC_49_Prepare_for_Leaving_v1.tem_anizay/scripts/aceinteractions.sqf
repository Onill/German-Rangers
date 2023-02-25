_searchBody = ["SearchBody","Leiche untersuchen","",{titletext ["<t color='#ffffff' size='2' font='RobotoCondensed' shadow = '2' >Das Opfer wurde mit mehreren Kugeln einer Kleinkaliberwaffe getötet.</t>", "PLAIN DOWN", -1, true, true];},{true}] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _searchBody] call ace_interact_menu_fnc_addActionToObject;

_searchBloodpool = ["SearchPool","Blutlache untersuchen","",{titletext ["<t color='#ffffff' size='2' font='RobotoCondensed' shadow = '2' >Das Blut ist kalt und getrocknet.</t>", "PLAIN DOWN", -1, true, true];},{true}] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _searchBloodpool] call ace_interact_menu_fnc_addActionToObject;

_searchWallet = ["SearchWallet","Brieftasche untersuchen","",{titletext ["<t color='#ffffff' size='2' font='RobotoCondensed' shadow = '2' >ID: Ahmed Asis Abhadeli, Wohnhaft: Gorqan, Anizay</t>", "PLAIN DOWN", -1, true, true];},{true}] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _searchWallet] call ace_interact_menu_fnc_addActionToObject;

_searchPhone = ["SearchPhone","Smartphone untersuchen","",{titletext ["<t color='#ffffff' size='2' font='RobotoCondensed' shadow = '2' >Das Handy wurde mutwillig zerstört. Es sind Blutspuren auf dem Display zu sehen.</t>", "PLAIN DOWN", -1, true, true];},{true}] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _searchPhone] call ace_interact_menu_fnc_addActionToObject;

_searchBarrell = ["SearchBarell","Fass untersuchen","",{titletext ["<t color='#ffffff' size='2' font='RobotoCondensed' shadow = '2' >Es scheint als hätte jemand Dokumente verbrannt.</t>", "PLAIN DOWN", -1, true, true];},{true}] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _searchBarrell] call ace_interact_menu_fnc_addActionToObject;

_searchtracks1 = ["SearchTracks1","Reifenspuren untersuchen","",{titletext ["<t color='#ffffff' size='2' font='RobotoCondensed' shadow = '2' >Die Reifenspuren würden zu einem Traktor passen.</t>", "PLAIN DOWN", -1, true, true];},{true}] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _searchtracks1] call ace_interact_menu_fnc_addActionToObject;

_searchtracks2 = ["SearchTracks2","Reifenspuren untersuchen","",{titletext ["<t color='#ffffff' size='2' font='RobotoCondensed' shadow = '2' >Die Reifenspuren führen weiter die Straße entlang.</t>", "PLAIN DOWN", -1, true, true];},{true}] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _searchtracks2] call ace_interact_menu_fnc_addActionToObject;

_searchtracks3 = ["SearchTracks3","Reifenspuren untersuchen","",{titletext ["<t color='#ffffff' size='2' font='RobotoCondensed' shadow = '2' >Das Fahrzeug ist hier abgebogen.</t>", "PLAIN DOWN", -1, true, true];},{true}] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _searchtracks3] call ace_interact_menu_fnc_addActionToObject;