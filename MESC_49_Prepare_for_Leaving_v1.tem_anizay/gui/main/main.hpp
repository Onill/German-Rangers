class main_gui
{
	idd = 1234;
	class ControlsBackground
	{
		
class Background: RscFrame
{
	idc = 1800;
	x = 0.25 * safezoneW + safezoneX;
	y = 0.166667 * safezoneH + safezoneY;
	w = 0.523438 * safezoneW;
	h = 0.694444 * safezoneH;
	colorBackground[] = {0,0,0,0.8};
};
class UpperBackground: RscFrame
{
	idc = 1801;
	x = 0.238541 * safezoneW + safezoneX;
	y = 0.153704 * safezoneH + safezoneY;
	w = 0.523438 * safezoneW;
	h = 0.0694444 * safezoneH;
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0,0,0,1};
};
	};
	class Controls
	{
		
class Exit: RscButtonMenuCancel
{
	x = 0.683855 * safezoneW + safezoneX;
	y = 0.158334 * safezoneH + safezoneY;
	w = 0.0770833 * safezoneW;
	h = 0.062037 * safezoneH;
};
class MainButton: RscButton
{
	idc = 1600;
	text = "Menu"; //--- ToDo: Localize;
	x = 0.240104 * safezoneW + safezoneX;
	y = 0.155556 * safezoneH + safezoneY;
	w = 0.0551042 * safezoneW;
	h = 0.0635185 * safezoneH;
};
class Teleport: RscButtonMenu
{
	idc = 2400;
	text = "Teleport"; //--- ToDo: Localize;
	x = 0.25 * safezoneW + safezoneX;
	y = 0.263889 * safezoneH + safezoneY;
	w = 0.0703125 * safezoneW;
	h = 0.0555556 * safezoneH;
};

	};
};
