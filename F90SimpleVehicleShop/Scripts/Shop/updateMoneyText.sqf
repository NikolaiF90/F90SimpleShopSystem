/*
	Author: PrinceF90 
 
	Description: 
	Function to update the text of a control in the UI with the player's money balance. It retrieves the player's money from the economy handler function, formats it with a prefix, and sets the text of the specified control to display the updated money balance.

	Parameter(s): 
	0: OBJECT - _unit: The unit (player) for which the money balance is being displayed. 
	1: CONTROL - _ctrl: The idc of the control in the UI that will display the money balance.
	
	Returns: 
	None 
	
	Examples: 
	[player, 5001] call F90_fnc_updateMoneyText;
*/
params ["_unit", "_ctrl"];

private _money = ["GETMONEY", _unit] call F90_fnc_economyHandler;
private _moneyTextPrefix = "Balance: ";

ctrlSetText [_ctrl, format ["%1%2",_moneyTextPrefix,_money]];