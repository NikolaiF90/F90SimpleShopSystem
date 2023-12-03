class shopMenu
{
	idd = 1005;
	class controls
	{
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by PrinceF90, v1.063, #Matyjo)
		////////////////////////////////////////////////////////

		class vehicleShop_main: RscText
		{
			idc = -1;

			x = 0.396875 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.20625 * safezoneW;
			h = 0.506 * safezoneH;
			colorBackground[] = {0.176,0.388,0.251,1};
		};
		class RscText_1001: RscText
		{
			idc = -1;

			x = 0.412344 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.175313 * safezoneW;
			h = 0.429 * safezoneH;
			colorBackground[] = {0.118,0.231,0.157,1};
		};
		class RscText_1002: RscText
		{
			idc = 5001;

			text = "SHOP"; //--- ToDo: Localize;
			x = 0.463906 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.0670312 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class ShopDialog_ListBox: RscListBox
		{
			idc = 5002;

			x = 0.427812 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.242 * safezoneH;
			colorBackground[] = {0.176,0.388,0.251,1};
		};
		class RscText_1003: RscText
		{
			idc = -1;

			x = 0.427812 * safezoneW + safezoneX;
			y = 0.577 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {0.176,0.388,0.251,1};
		};
		class RscText_1004: RscText
		{
			idc = -1;

			x = 0.427812 * safezoneW + safezoneX;
			y = 0.621 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {0.176,0.388,0.251,1};
		};
		class ShopDialog_Button: RscButton
		{
			idc = 5003;
			action = "[] call F90_fnc_purchaseShopItem";

			text = "PURCHASE"; //--- ToDo: Localize;
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.665 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {0.176,0.388,0.251,1};
		};
		class ShopDialog_PriceText: RscText
		{
			idc = 5004;

			text = "Price: 0"; //--- ToDo: Localize;
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.577 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class ShopDialog_MoneyText: RscText
		{
			idc = 5005;

			text = "Money: 0"; //--- ToDo: Localize;
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.621 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.033 * safezoneH;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
		
	};
};