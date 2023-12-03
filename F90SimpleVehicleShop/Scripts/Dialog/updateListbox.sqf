/*
	Author: PrinceF90 
 
	Description: 
	Function to clear the specified listbox and fills it with items from the specified array. 
	
	Parameter(s): 
	0: SCALAR - _listbox: The idc of the listbox to be cleared and filled. 
	1: ARRAY - _items: The array containing items to be added to the listbox. 
	
	Returns: 
	None 
	
	Examples: 
	[5001, ["Item 1", "Item 2", "Item 3"]] call F90_fnc_updateListbox;
	[5002, ["Apple", "Banana", "Orange"]] call F90_fnc_updateListbox;
*/
params ["_listbox", "_items"];

lbClear _listbox; 

// Fill items in the "_items" array into the LB
{
	lbAdd [_listbox, _x];
} forEach _items;
