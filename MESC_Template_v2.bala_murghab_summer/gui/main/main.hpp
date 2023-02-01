class Main_Dialog
{
	idd = IDD_MainDialog;
	name = "Teleport Menu";
	
	//access = 0;
	movingEnable = false;
	//onLoad = TeleportTo = "";
	//onUnload  = "hint str _this";
	//enableSimulation = false;
	
	controlsBackground[] = {
		Background		
	};
	
	controls[] = {
		Teleport,
		ZUG,
		//Sierra,
		//Echo,
		//Lima,
		Text2
	};
	
	objects[] = {
		//Objects
	};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Onill, v1.063, #Ziqota)
////////////////////////////////////////////////////////

	class Background: RscText
	{
		idc = 1000;
		x = 0.257187 * safezoneW + safezoneX;
		y = 0.262 * safezoneH + safezoneY;
		w = 0.4725 * safezoneW;
		h = 0.56 * safezoneH;
		colorBackground[] = {1,1,1,0.8};
	};
	class Teleport: RscButton
	{
		idc = 1600;
		text = "Teleport"; //--- ToDo: Localize;
		x = 0.29 * safezoneW + safezoneX;
		y = 0.374 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
		action = _menueDialog = createDialog "Teleport_Dialog";
	};
	class ZUG: RscButton
	{
		idc = 1601;
		text = "Zug"; 
		x = 0.395 * safezoneW + safezoneX;
		y = 0.374 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
		action = _menueDialog = createDialog "Teleport_Dialog";
	};
	class Sierra: RscButton
	{
		idc = 1602;
		text = "Sierra"; 
		x = 0.395 * safezoneW + safezoneX;
		y = 0.486 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Echo: RscButton
	{
		idc = 1603;
		text = "Echo";
		x = 0.395 * safezoneW + safezoneX;
		y = 0.598 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Lima: RscButton
	{
		idc = 1604;
		text = "Lima"; 
		x = 0.395 * safezoneW + safezoneX;
		y = 0.71 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Leer32: RscButton
	{
		idc = 1605;
		x = 0.513125 * safezoneW + safezoneX;
		y = 0.486 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Leer31: RscButton
	{
		idc = 1606;
		x = 0.513125 * safezoneW + safezoneX;
		y = 0.374 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Leer12: RscButton
	{
		idc = 1607;
		x = 0.29 * safezoneW + safezoneX;
		y = 0.486 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Leer34: RscButton
	{
		idc = 1608;
		x = 0.513125 * safezoneW + safezoneX;
		y = 0.71 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Leer33: RscButton
	{
		idc = 1609;
		x = 0.513125 * safezoneW + safezoneX;
		y = 0.598 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Leer41: RscButton
	{
		idc = 1610;
		x = 0.618125 * safezoneW + safezoneX;
		y = 0.374 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Leer13: RscButton
	{
		idc = 1612;
		x = 0.29 * safezoneW + safezoneX;
		y = 0.598 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Leer14: RscButton
	{
		idc = 1613;
		x = 0.29 * safezoneW + safezoneX;
		y = 0.71 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Leer42: RscButton
	{
		idc = 1614;
		x = 0.618125 * safezoneW + safezoneX;
		y = 0.486 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Leer43: RscButton
	{
		idc = 1615;
		x = 0.618125 * safezoneW + safezoneX;
		y = 0.598 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Leer44: RscButton
	{
		idc = 1616;
		x = 0.618125 * safezoneW + safezoneX;
		y = 0.71 * safezoneH + safezoneY;
		w = 0.065625 * safezoneW;
		h = 0.084 * safezoneH;
	};
	class Text2: RscText
	{
		idc = 1001;
		text = "Loadouts"; //--- ToDo: Localize;
		x = 0.401563 * safezoneW + safezoneX;
		y = 0.29 * safezoneH + safezoneY;
		w = 0.0525 * safezoneW;
		h = 0.07 * safezoneH;
		colorText[] = {-1,-1,-1,0.8};
	};
	class Text3: RscText
	{
		idc = 1002;
		text = "Loadouts"; //--- ToDo: Localize;
		x = 0.519688 * safezoneW + safezoneX;
		y = 0.29 * safezoneH + safezoneY;
		w = 0.0525 * safezoneW;
		h = 0.07 * safezoneH;
		colorText[] = {-1,-1,-1,0.8};
	};
	class Text4: RscText
	{
		idc = 1003;
		text = "Loadouts"; //--- ToDo: Localize;
		x = 0.624687 * safezoneW + safezoneX;
		y = 0.29 * safezoneH + safezoneY;
		w = 0.0525 * safezoneW;
		h = 0.07 * safezoneH;
		colorText[] = {-1,-1,-1,0.8};
	};
	class Text1: RscText
	{
		idc = 1004;
		text = "Loadouts"; //--- ToDo: Localize;
		x = 0.296562 * safezoneW + safezoneX;
		y = 0.29 * safezoneH + safezoneY;
		w = 0.0525 * safezoneW;
		h = 0.07 * safezoneH;
		colorText[] = {-1,-1,-1,0.8};
	};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
};