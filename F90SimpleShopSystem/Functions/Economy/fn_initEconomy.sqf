/*
    Author: PrinceF90

    Description:
        This function initializes the economy system by setting the starting money for a specified unit or the player if no unit is provided.

    Parameter(s):
        _unit - (Optional, default player). The unit for which the economy is initialized. [OBJECT]

    Returns:
        None
*/
params ["_unit"];

if (isNil {_unit}) then {_unit = player};

private _amount = _unit getVariable [Economy_CurrencyName, nil];
if (isNil {_amount}) then 
{
    _amount = Economy_PlayerStartingMoney;
};
_unit setVariable [Economy_CurrencyName, _amount, true];

[Economy_Debug, "initEconomy", format ["%1 milcash has been given to %2", _amount, name _unit], false] call F90_fnc_debug;
