/*
	Author: PrinceF90

	Description:
	This file initializes and configures the shop system. It calls a function to configure the shop, waits until the configuration is done, sets variables for shop menu status and shop type, and adds shops and their icons based on predefined arrays.

	Parameter(s):
	N/A

	Returns:
	N/A

	Examples:
	No examples provided as this file is for initialization and configuration purposes only.
*/
configureShopDone = false;
[] call F90_fnc_configureShop;
waitUntil {configureShopDone};

Shop_MenuShown = false;
Shop_Type = nil;

//	Note: The array should be in the same order where index 0:west, index 1:east, index 2:independent, index 3:civilian 
private _allWeaponShops = [Shop_BLUFORWeaponShops] + [Shop_OPFORWeaponShops] + [Shop_GUERweaponShops] + [Shop_CIVWeaponShops];
private _allVehicleShops = [Shop_BLUFORVehicleShops] + [Shop_OPFORVehicleShops] + [Shop_GUERVehicleShops] + [Shop_CIVVehicleShops];

{
	private _shops = _x;
	private _sideIndex = _forEachIndex;

	{
		private _shop = _x;
		private _pos = position _shop;
		private _index = _forEachIndex;
		private _side = switch (_sideIndex) do 
		{
			case 0: {west};
			case 1: {east};
			case 2: {independent};
			case 3: {civilian};
		};
		
		["VEHICLE",_shop,_side] call F90_fnc_addShop;
		["VEHICLE",_side,_index,_pos] call F90_fnc_createShopIcon;
		
	} forEach _shops;
} forEach _allVehicleShops;