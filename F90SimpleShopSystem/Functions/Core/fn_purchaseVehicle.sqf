/* 
    Author: PrinceF90 

    Description: 
        Function to spawn specified vehicle based on certain condition. 

    Parameter(s): 
        _item - The vehicle being purchased, an array containing vehicle class, name, and price. [ARRAY]

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
    
    private _itemClass = _item select 0;
    private _spawnPos = [_buyer, 10, 50, 15] call BIS_fnc_findSafePos;
    // Spawn vehicle
    _itemClass createVehicle _spawnPos;

    // Notify player 
    private _itemName = _item select 1;
    [format ["You have bought %1 for %2 %3", _itemName, _itemPrice, Economy_CurrencyName]] call F90_fnc_textNotification;

    if (dialog) then {closeDialog 2};
} else 
{
    // Notify player 
    [format ["You do not have enough %1", Economy_CurrencyName], "ERROR"] call F90_fnc_textNotification;
};
