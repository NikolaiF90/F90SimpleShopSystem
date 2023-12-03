/*
	Author: PrinceF90

	Description:
	Function to handle the process of purchasing an item from a shop. It retrieves the selected item from a listbox, checks if the buyer has enough money, deducts the price from the buyer's money, and performs the appropriate action based on the shop type (weapon or vehicle).

	Parameter(s):
	0: CONTROL - _listBox: The idc of the listbox control that contains the available items.
	1: OBJECT - _buyer: The buyer object.

	Returns:
	None

	Examples:
	[ShopDialog_ListBox, player] call F90_fnc_purchaseShopItem;
	[myListBox, myBuyer] call F90_fnc_purchaseShopItem;
*/
params ["_listBox", "_buyer"];

if (isNil {_listBox}) then {_listBox = ShopDialog_ListBox} else {_listBox = _listBox};
if (isNil {_buyer}) then {_buyer = Shop_Buyer} else {_buyer = _buyer};

private _selectedList = [_listBox] call F90_fnc_getSelectedList;

// If player haven't selected anything, make the first item in the list as the default one
if (_selectedList == -1)then{_selectedList = 0}; 

private _itemsClassList = [];
private _itemsNameList = [];
private _itemsPriceList = [];

// Just to be safe, its better to use for loops instead of forEach 
for "_i" from 0 to (count Shop_Items)-1 do 
{
	private _vehicle = Shop_Items # _i;
	private _itemClass = _vehicle # 0;
	private _itemName = _vehicle # 1;
	private _itemPrice = _vehicle # 2; 

	_itemsClassList pushback _itemClass;
	_itemsNameList pushBack _itemName;
	_itemsPriceList pushBack _itemPrice;
};

private _selectionClass = _itemsClassList # _selectedList;
private _selectionPrice = _itemsPriceList # _selectedList;
private _money = ["GETMONEY", _buyer] call F90_fnc_economyHandler;

if (_money >= _selectionPrice) then 
{
	["DEDUCTMONEY", [_buyer, _selectionPrice]] call F90_fnc_economyHandler;

	switch (Shop_Type) do {
		case "WEAPON": 
		{
			// Add weapon to _buyer inventory
		};
		case "VEHICLE": 
		{
			private _spawnPos = [_buyer, 0, 100, 5] call BIS_fnc_findSafePos;
			_selectionClass createVehicle _spawnPos;
			"SmokeShellGreen" createVehicle _spawnPos;
		};
	};

	if (Shop_MenuShown) then 
	{
		closeDialog 2;
	};
} else 
{
	hint "You do not have enough money to buy that.";
};
