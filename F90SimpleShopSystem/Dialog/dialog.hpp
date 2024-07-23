class shopMenu
{
	idd = 1100;
	class controls
	{
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by Nikolai, v1.063, #Ziryne)
		////////////////////////////////////////////////////////

		class bg_ShopMenu1: RscText
		{
			idc = 1101;
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.4125 * safezoneW;
			h = 0.55 * safezoneH;
			colorBackground[] = {0.125,0.235,0.2,1};
		};
		class bg_ShopMenu2: RscText
		{
			idc = 1102;
			x = 0.298904 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.402187 * safezoneW;
			h = 0.451 * safezoneH;
			colorBackground[] = {0.192,0.365,0.31,1};
		};
		class text_ShopMenuTitle: RscText
		{
			idc = 1103;
			text = "Shop Name Here"; //--- ToDo: Localize;
			x = 0.453594 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.0825 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class button_ShopBuy: RscButton
		{
			idc = 1104;
			
			text = "Purchase"; //--- ToDo: Localize;
			x = 0.608281 * safezoneW + safezoneX;
			y = 0.731 * safezoneH + safezoneY;
			w = 0.0928125 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {0.192,0.365,0.31,1};
			tooltip = "Purchase The Selected Item"; //--- ToDo: Localize;
		};
		class button_ShopClose: RscButton
		{
			idc = 1105;
			action = "[] call F90_fnc_closeMenu";

			text = "Close"; //--- ToDo: Localize;
			x = 0.520625 * safezoneW + safezoneX;
			y = 0.731 * safezoneH + safezoneY;
			w = 0.0825 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {0.5,0,0,1};
			tooltip = "Close This Menu"; //--- ToDo: Localize;
		};
		class text_ShopBalance: RscText
		{
			idc = 1106;
			text = "Money: XXXXXXX"; //--- ToDo: Localize;
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.0928125 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class listBox_ShopItems: RscListbox
		{
			idc = 1107;
			x = 0.298906 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.402187 * safezoneW;
			h = 0.429 * safezoneH;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
	};
};