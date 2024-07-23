/*
    Author: PrinceF90

    Description:
        This function sets the amount of money associated with a specified unit to a specific value.

    Parameter(s):
        _unit - The unit for which the money amount is set. [OBJECT]
        _amount - The amount to set as the new money balance. [SCALAR]

    Returns:
        _amount - The amount that was set for the specified unit.
*/
params ["_unit", "_amount"];

if (isNil {_unit}) exitWith {[Shop_Debug, "setMoney", "(ERROR) Function not executed. Provided unit is not exist", true, true] call F90_fnc_debug};
if (isNull _unit) exitWith {[Shop_Debug, "setMoney", "(ERROR) Function not executed. Provided unit is not exist", true, true] call F90_fnc_debug};
if (isNil {_amount}) then {_amount = 0};

_unit setVariable [Economy_CurrencyName, _amount, true];

_amount