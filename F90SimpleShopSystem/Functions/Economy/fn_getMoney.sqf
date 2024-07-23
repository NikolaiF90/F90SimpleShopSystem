/*
    Author: PrinceF90

    Description:
        This function retrieves the money value associated with a provided unit and converts it to a formatted string if specified.

    Parameter(s):
        _unit - The unit from which to retrieve the money value. [OBJECT]
        _convertToString - (Optional, default false) A flag to indicate whether the money value should be converted to a formatted string. [BOOL]

    Returns:
        _return - The money value retrieved from the unit. If _convertToString is true, it returns a formatted string including the currency name and symbol.
*/
params ["_unit", "_convertToString"];

if (isNil {_unit}) exitWith {[Shop_Debug, "getMoney", "(ERROR) Function not executed. Provided unit is not exist", true, true] call F90_fnc_debug};
if (isNull _unit) exitWith {[Shop_Debug, "getMoney", "(ERROR) Function not executed. Provided unit is not exist", true, true] call F90_fnc_debug};

private _return = nil;
private _money = _unit getVariable [Economy_CurrencyName, nil];

if (isNil {_convertToString}) then {_convertToString = false};

if (_convertToString) then 
{
    _return = format ["%1: %2%3", Economy_CurrencyName, Economy_CurrencySymbol, _money];
} else 
{
    _return = _money;
};

_return