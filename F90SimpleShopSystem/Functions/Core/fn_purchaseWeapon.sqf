/*
    Author: PrinceF90

    Description:
        Function to spawn a weapon near player based on certain condition.

    Parameter(s):
        _item - The weapon being purchased, an array containing item class, name, and price. [ARRAY]

    Returns:
        None
*/
params ["_item"];

// Set player as buyer 
private _buyer = player;
// Get player's money
private _balance = [_buyer] call F90_fnc_getMoney;
// Get item's price 
private _itemPrice = _item select 2;

// Check if player has sufficient balance
if (_balance >= _itemPrice) then 
{
    // Deduct player's money 
    [_buyer, _itemPrice] call F90_fnc_deductMoney;
    
    private _wpHolder = "GroundWeaponHolder" createVehicle (position _buyer);
    private _itemClass = _item select 0;
    _wpHolder addWeaponCargoGlobal [_itemClass, 1];
    [_wpHolder, _buyer] call F90_fnc_teleportObject;

    // Notify player 
    private _itemName = _item select 1;
    [format ["You have bought %1 for %2 %3", _itemName, _itemPrice, Economy_CurrencyName]] call F90_fnc_textNotification;

    if (dialog) then {closeDialog 2};
} else 
{
    // Notify player 
    [format ["You do not have enough %1", Economy_CurrencyName], "ERROR"] call F90_fnc_textNotification;
};
