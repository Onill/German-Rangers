/*
    briefing.sqf
	wird in der initPlayerLocal eingebunden und ausgeführt.
    
    Briefingeinträge werden mit createDiaryRecord erstellt.
    Der Text der einzelnen Einträge kann noch mit folgenden Befehlen formatiert
    werden:
    <br/>                                               			- Zeilenumbruch
    <t/>                                                			- Einrücken (Tabulator)
    <img image='BILDPFAD' width='200' height='200'/>    			- Bild einbinden
    <marker name='MARKER'>TEXT</marker>                 			- Verlinkung auf Marker
    <execute expression='CODE'>TEXT</execute>           			- Code ausführen
	<font face='PuristaMedium' size=14 color='#fc9300'>TEXT</font>			- Schriftyp, Textgröße, Farbe, 
	https://community.bistudio.com/wiki/FXY_File_Format#Arma_3
 */

_gerrng = player createDiarySubject ["GerRng","German Rangers"];

player createDiaryRecord ["GerRng",["Mission Control Center","
<font face='PuristaMedium' size=18 color='#fc9700'>Mission Control Center</font><br/>
<br/>
Das Mission Control Center ist ein Menü für den Zeus / Kilo. Es ist nur in der Zeus Ansicht über ACE (standardmäßig 'WINDOWS-Taste') aufrufbar.<br/>
Hier kann die Mission gestartet werden. Danach ist das Base Menü nur noch in der Basis verfügbar (wichtig bei Missionen wo die Spieler im Feld starten). Spieler die nachjoinen oder reconnecten starten in der Basis.<br/>
<br/>
Es gibt aber auch zwei verschiedene Enden ('To Be Continued' für den Fall das die Mission nicht beendet wurde und zu einem späteren Zeitpunkt fortgesetzt wird, 'Mission Erfüllt' für den Fall das die Mission erfolgreich abgeschlossen wurde).<br/>
Jedes Ende beendet die Mission mit einer kurzen Abschlusssequenz für alle Spieler. Die Dokumentation des Missionsstand durch den Zeus muss vorher erfolgen. Manuelles ausloggen ist nicht erforderlich.<br/>
<br/>
Jede Funktion benötigt eine Bestätigung über ein Interface bevor diese ausgeführt wird.<br/>
<br/>
Zusätzlich können Missionsbauer extra Chapter einbauen mit denen die Zeuse bestimmte Ereignisse triggern können. Diese sind dann im Missionsskript zu beschreiben.<br/>
"]];


player createDiaryRecord ["GerRng",["Lima Supply Point","
<font face='PuristaMedium' size=18 color='#fc9700'>Lima Supply Point</font><br/>
<br/>
Am Lima Supply Point können Nachschubkisten gespawned werden die vorgefertigte Inhalte haben. Jede Kiste kann über ACE getragen oder gezogen werden und kann in den ACE Storage von Fahrzeugen verladen und entladen werden.<br/>
In den Missionen gibt es meist einen Statischen Supply Point (meist dargestellt durch einen Vehicle Service Point) und einen mobilen Supply Point (meist ein HEMTT Cargo).<br/>
<br/>
Bei dem statischen Supply Point wird die Kiste an einer Markierung auf dem Boden vor dem Supply Point gespawnt.<br/>
Bei dem mobilen Supply Point spawnt die Kiste am Heck des Fahrzeuges.<br/>
<br/>
Es sollte darauf geachtet werden, dass nicht mehrere Kisten hintereinander gespawnt werden.<br/>
<br/>
Die Funktion zum spawnen der Kisten kann über das ACE Interaction Menü aufgerufen werden (standardmäßig 'WINDOWS-Taste') und ist NUR sichtbar wenn man in der Gruppe Lima oder Kilo geslottet hat.
"]];

player createDiaryRecord ["GerRng",["Base Menü","
<font face='PuristaMedium' size=18 color='#fc9700'>GerRng Base Menü</font><br/>
<br/>
<font face='PuristaMedium' size=14 color='#fc9700'>Aufruf</font><br/>
<br/>
Das Base Menü ist innerhalb der Basis und überall vor Missionsstart aufrufbar. Auf den Übungsplätzen sind alle Funktionen des Base Menüs überall und jederzeit erreichbar.<br/>
Ihr erreicht es über das ACE Self-Interaction Menü (Standard 'STRG + WINDOWS').<br/>
<br/>
Innerhalb des Base Menüs gibt es drei Optionen:<br/>
<br/>
<font face='PuristaMedium' size=14 color='#fc9700'>1. Teleport</font><br/>
<br/>
Hier könnt ihr euch zu einer der Gruppen Teleportieren. Klickt auf die Gruppe und dann auf Teleport.<br/>
Der Teleport funktioniert auch für Gruppenführer UND wenn der Gruppen- oder Truppführer in einem Fahrzeug sitzt in dem ein weiterer Sitzplatz frei ist!<br/>
<br/>
<font face='PuristaMedium' size=14 color='#fc9700'>2. Loadouts</font><br/>
<br/>
Öffnet eine Loadout Liste mit den Standard-Loadouts entsprechend eurer Gruppenzugehörigkeit (Zug, Sierra, Echo, Lima).<br/>
Wählt ein Loadout aus der Liste in der Mitte und klickt dann auf den Button 'Take Loadout'.<br/>
<br/>
Wenn ihr das Loadout einer anderen Gruppe ausprobieren wollt, klickt auf das German Ranger Logo oben rechts. Nun seht ihr in der Spalte 'Loadouts' die verfügbaren Gruppen.<br/>
<br/>
<font face='PuristaMedium' size=14 color='#fc9700'>3. Waffenkammer</font><br/>
<br/>
Die Waffenkammer ist ein ACE Arsenal über das ihr eure Ausrüstung individualisieren könnt. Sie ist eurer Rolle entsprechend vorgefiltert. Das bedeutet ALLES was ihr auswählen könnt, ist für eure Rolle freigegeben.<br/>
<br/>
<font face='PuristaMedium' size=14 color='#ff0000'>Wenn ihr eine Waffe wechselt müsst ihr selber darauf achten entsprechend Magazine wieder in euer Inventar zu laden!</font><br/>
<br/>
Wenn eine Mission von vorher fortgesetzt wird, ist die Waffenkammer nur eingeschränkt verfügbar. Ihr könnt dann eure Waffe nicht wechseln und auch kein Material aufmunitionieren. In diesem Fall ist die Waffenkammer rein kosmetisch.<br/>
"]];



player createDiaryRecord ["Diary",["Hintergrund","
<font face='PuristaMedium' size=14 color='#fc9700'>Name der Operation</font><br/>
<br/>
Geschichtlicher Hintergrund über die Mission
"]];

player createDiaryRecord ["Diary",["Verlauf","
<font face='PuristaMedium' size=14 color='#fc9700'></font><br/>
<br/>
"]];

player createDiaryRecord ["Diary",["Ausstattung","
<font face='PuristaMedium' size=14 color='#fc9700'>Fahrzeuge</font><br/>
<font face='PuristaMedium' size=8 color='#fc9700'>Freigabe durch Kilo, Bereitstellung durch LIMA</font><br/>
<br/>
- Lima Mobile Supply Truck HEMTT Container<br/>
- Trakkar Transport | 17 Sitze<br/>
- Trakkar Repair | 3 Sitze <br/>
- Trakkar Medical | 17 Sitze<br/>
- Trakkar Fuel | 3 Sitze<br/>
- Trakkar Ammunition | 3 Sitze<br/>
- Fennek AvD | 4 Sitze<br/>
<br/>
- Fennek | 4 Sitze<br/>
- Dingo | 6 Sitze<br/>
<br/>
<br/>
<font face='PuristaMedium' size=14 color='#fc9700'>Helicopter</font><br/>
<font face='PuristaMedium' size=8 color='#fc9700'>Freigabe durch Kilo, Nutzung NUR LIMA</font><br/>
<br/>
- CH-53G | TK 30 <br/>
- CH-47F | TK 27 <br/>
- AW101 Merlin | TK 16<br/>
- CH-412 Transport | TK 11<br/>
- CH-146 Gryffon Radar | TK 8 <br/>
- CH-146 Gryffon MedEvac | TK 4<br/>
<br/>
TK = Transportkapazität, ohne Pilot und Copilot.<br/>
<br/>
<br/>
<font face='PuristaMedium' size=14 color='#fc9700'>Drohnen</font><br/>
<font face='PuristaMedium' size=8 color='#fc9700'>Freigabe durch Kilo, Nutzung NUR LIMA</font><br/>
<br/>
- MQ-9 Reaper<br/>
<br/>
<br/>
<font face='PuristaMedium' size=14 color='#fc9700'>Feuerunterstützung</font><br/>
<font face='PuristaMedium' size=8 color='#fc9700'>Freigabe durch Kilo, Nutzung NUR LIMA / Verfügbar über UAV Terminal</font><br/>
<br/>
- Mk 45 Hammer (USS Liberty)<br/>
- Mk 41 VSL (Tomahawk) (USS Liberty)<br/>
"]];

player createDiaryRecord ["Diary",["Auftrag","
<font face='PuristaMedium' size=14 color='#fc9700'>OPERATION - XX.XX.XXXX XX:XX Uhr</font><br/>
<br/>
<font face='PuristaMedium' size=14 color='#fc9700'>ZUG:</font><br/>
1. <marker name='marker_0'>Ziel 1</marker><br/>
"]];
