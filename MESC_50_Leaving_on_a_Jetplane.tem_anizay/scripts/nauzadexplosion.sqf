charge5 setDammage 1;
charge4 setDammage 1;
charge6 setDammage 1;
sleep 0.2;

charge1 setDammage 1;
sleep 0.1;
charge2 setDammage 1;
sleep 0.3;
charge3 setDammage 1;
sleep 0.1;
charge7 setDammage 1;
charge8 setDammage 1;

{_x enableAI "ALL"} forEach units NauzadTrapNorth;
{_x enableAI "ALL"} forEach units NauzadTrapWest;
{_x enableAI "ALL"} forEach units NauzadTrapSouth;