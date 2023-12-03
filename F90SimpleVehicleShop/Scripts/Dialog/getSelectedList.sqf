/*
	Author: PrinceF90 
 
	Description: 
	Returns the index of the currently selected item of the listbox with the idc (_listID).
	
	Parameter(s): 
	0: NUMBER - The idc of the listbox 
	
	Returns: 
	NUMBER - The index of the currently selected item in the listbox , -1 if nothing is selected
	
	Examples: 
	// Example 1: Retrieving the selected index from listbox with ID 1106
	private _lbList = 1106;
	_selectedIndex = [_lbList] call F90_fnc_getSelectedList; 
	// Example 2: Retrieving the selected index from listbox with ID 1107 
	_selectedIndex = [1107] call F90_fnc_getSelectedList;
*/
params ["_listID"];

_selected = lbCurSel _listID;

_selected;