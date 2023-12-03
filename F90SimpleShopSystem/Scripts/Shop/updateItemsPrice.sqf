/*
	Author: PrinceF90 
 
	Description: 
	Function to continuously updates the price text in a vehicle shop menu based on the selected item in a list. It retrieves the selected index from the list, checks if it is valid, and updates the price text accordingly. The script runs in a loop as long as the vehicle shop menu is shown. 
	
	Parameter(s): 
	0: CONTROL - _listBox: The idc of the ListBox control containing the items. 
	1: ARRAY - _priceArray: An array containing the prices of the items. 
	
	Returns: 
	None 

	Examples: 
	[5002, _priceList] call F90_fnc_updateVehiclePrice;
*/
params ["_listBox", "_priceArray"];

private _selection = -1;
private _stringPrefix = "Price: ";
private _priceString = "0";

_selection = [_listBox] call F90_fnc_getSelectedList;
// If player haven't selected anything, make the first item in the list as the default one
if (_selection == -1)then{_selection = 0}; 

while {Shop_MenuShown} do 
{
	_priceString = _stringPrefix + str (_priceArray # _selection);
	ctrlSetText [ShopDialog_PriceText, _priceString];

	_selection = [_listBox] call F90_fnc_getSelectedList;

	if !(dialog) then 
	{
		Shop_MenuShown = false; // This will destroy the loops
		Shop_Type = nil;
		Shop_Buyer = nil;
		Shop_Items = nil;
		Shop_NameText = "Shop";
	};
	sleep Shop_UpdateInterval;
};