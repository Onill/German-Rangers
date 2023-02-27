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

_intel = player createDiarySubject ["Intel","Intel"];

player createDiaryRecord ["Intel", ["Chroma Conclave", "
<font face='PuristaMedium' size=14 color='#fc9700'>Chroma Conclave</font>
<br/>
<img image ='images\cc_pics\cc_ubersicht1.paa' width='360' height='360'/>"]];

player createDiaryRecord ["Diary",["MESC","
<img image ='images\cc_pics\mesc1.paa' width='300' height='300'/><br/>
<font face='PuristaMedium' size=14 color='#fc9700'>Middle East Stability Coalition</font>
<br/>
19.08.2021
<br/>
<br/>
Nach der Eroberung Afghanistans durch die Taliban, und die Flucht des Regierungspräsidenten ist das Land fest in der Hand der Terroristen. 
Mit diesen Problemen konfrontiert wurde eine internationale Koalition gegründet, um die rechtmäßige Regierung wieder einzusetzen und die Bevölkerung zu schützen. 
Die German Rangers werden aufgrund ihrer zurückliegenden erfolgreichen Einsatzhistorie die Speerspitze bilden und als erste NATO-Kräfte im Einsatzgebiet agieren.
"]];