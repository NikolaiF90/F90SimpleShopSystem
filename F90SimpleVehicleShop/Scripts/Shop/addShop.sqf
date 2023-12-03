/*
	Author: PrinceF90

	Description:
	Function to adds an action to the specified object that opens a shop menu when triggered.

	Parameter(s):
	0: STRING - _shopType: The type of shop associated with the object (can be "WEAPON" or "VEHICLE").
	1: OBJECT - _object: The object to add the action to.
	2: SIDE - _owner: The side of the object.

	Returns:
	None

	Examples:
	["VEHICLE", VehicleShop_0, west] call F90_fnc_addShop;
	["WEAPON", WeaponShop_1, east] call F90_fnc_addShop;
*/
params ["_shopType", "_object", "_owner"];

_object setVariable ["Owner", _owner];
_object setVariable ["ShopType", _shopType];
_object addAction ["Purchase Vehicle", 
{
	params ["_target", "_caller", "_actionId", "_arguments"]; 

	if (dialog) then {closeDialog 2};
	Shop_MenuShown = createDialog "shopMenu";

	if (isNil {Shop_Buyer}) then 
	{
		Shop_Buyer = _caller;
	};

	private _owner = _target getVariable "Owner";
	Shop_Type = _target getVariable "ShopType";

	if (isNil {Shop_Items}) then 
	{
		switch (Shop_Type) do 
		{
			case "WEAPON": 
			{
				Shop_NameText = "Weapon Shop";
				Shop_Items = switch (_owner) do 
				{
					// Add your weapon list here
					case west: { };
					case east: { };
					case independent: { };
					case civilian: { };
				};
			};
			case "VEHICLE": 
			{
				Shop_NameText = "Vehicle Shop";
				Shop_Items = switch (_owner) do 
				{
					case west: { Shop_BLUFORVehicleList };
					case east: { Shop_OPFORVehicleList };
					case independent: { Shop_GUERVehicleList };
					case civilian: { Shop_CIVVehicleList };
				};
			};
		};
	};

	private _itemsClassList = [];
	private _itemsNameList = [];
	private _itemsPriceList = [];

	// Just to be safe, its better to use for loops instead of forEach 
	for "_i" from 0 to (count Shop_Items)-1 do 
	{
		private _items = Shop_Items # _i;
		private _itemClass = _items # 0;
		private _itemName = _items # 1;
		private _itemPrice = _items # 2;

		_itemsClassList pushback _itemClass;
		_itemsNameList pushBack _itemName;
		_itemsPriceList pushBack _itemPrice;
	};

	ctrlSetText [ShopDialog_ShopText, Shop_NameText];
	[ShopDialog_ListBox, _itemsNameList] call F90_fnc_updateListbox;
	[ShopDialog_ListBox, _itemsPriceList] spawn F90_fnc_updateItemsPrice;
	[Shop_Buyer, ShopDialog_MoneyText] call F90_fnc_updateMoneyText;
}, nil, 5, false, true, "" , "true", 10];