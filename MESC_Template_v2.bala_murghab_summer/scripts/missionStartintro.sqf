//Intro___________________________________________________________________

if (isServer) exitWith {};


titleText ["<img image='images\GermanRangersLogo.paa' shadow='0' size='10'/><br/><br/>Mission startet...", "BLACK", 2, true, true];

//Mute Sounds
ace_hearing_disableVolumeUpdate = true;
8 fadeSpeech 0;
8 fadeRadio 0;
8 fadeSound 0;
8 fademusic 1;

sleep 6;

titleText ["", "BLACK FADED", 3, true, true];

sleep 2;

//Start Music
playMusic "MyIntro";

0 call TFAR_fnc_setVoiceVolume;

cutText ["", "BLACK FADED", 2];
sleep 1;
//Title Text Spawns
titleText ["<t color='#ffffff' size='1'>26.07.2022: Nachdem die Ranger den Angriff aus dem Norden abgewehrt haben, haben sie in der Alkazai Schule Stellung bezogen, die nun als Lazarett für Flüchtlinge dient.</t>", "BLACK FADED", 1, true, true];
sleep 10;
titleText ["<t color='#ffffff' size='1'>In den letzten 12 Stunden ist der Strom an Flüchtlingen abgebrochen.<br/>Es wird vermutet das die restliche Zivilbevölkerung entweder tot ist, oder sich den Taliban angeschlossen hat.</t>", "BLACK FADED", 1, true, true];
sleep 9;
titleText ["<t color='#ffffff' size='1'>In der Nacht sind südlich und östlich der Schule vermehrt Feindbewegungen zu erkennen gewesen.<br/>Ein Britischer Konvoy mit Nachschub für die Ranger wird in der nächsten Stunde erwartet.</t>", "BLACK FADED", 1, true, true];
sleep 9;
titleText ["<t color='#ffffff' size='1'>Auftrag: Auf beiden Seiten des Flusses auf die Ziele Vorrücken und bei Abbas Koshteh und CP Pacifico Stellung beziehen</t>", "BLACK FADED", 1, true, true];
sleep 8;

titleText ["<t color='#ffffff' size='1'>B A L A   M U R G H A B - 26.06.2022 - German Rangers<br/>____________________</t><br/><t color='#ffffff' size='5'>Operation Slum Fighter</t>", "BLACK FADED", 2, true, true];

sleep 5;

//Fade In
titleText ["<t color='#ffffff' size='1'>B A L A   M U R G H A B - 26.06.2022 - German Rangers<br/>____________________</t><br/><t color='#ffffff' size='5'>Operation Slum Fighter</t>", "BLACK IN", 5, true, true];

//Bring Sounds Back
5 fadeSound 1;
5 fadeSpeech 1;
5 fadeRadio 1;	

30 call TFAR_fnc_setVoiceVolume;

sleep 5;

ace_hearing_disableVolumeUpdate = false;

//Text Ticker
[[["Bala Murghab, Afghanistan","size = '0.7' font='PuristaBold'"],["","<br/>"],["Alkazai School","size = '0.7'","#aaaaaa"]],safeZoneX / 4, safeZoneH / 2,true,"<t font='PuristaBold'>%1</t>",[],{ false },true] spawn BIS_fnc_typeText2;	
sleep 10;
private _t = [daytime, "HH:MM"] call BIS_fnc_timeToString;			// time at missionstart as a string
[["Time: "+_t],safeZoneX / 4, safeZoneH / 2,true,"<t font='PuristaBold'>%1</t>",[],{ false },true] spawn BIS_fnc_typeText2;