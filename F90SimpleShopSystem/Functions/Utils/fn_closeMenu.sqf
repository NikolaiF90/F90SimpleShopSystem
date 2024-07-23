/*
    Author: PrinceF90

    Description:
        This function checks if a dialog is open and closes it if it is. It then executes custom code passed as a parameter.

    Parameter(s):
        0: STRING - Optional. The custom code to be executed

    Returns:
        None
*/
params ["_code"];

if (dialog) then 
{
    closeDialog 2;
};

if !(isNil {_code}) then 
{
    _fnc_customCode = _code;

    [] call _fnc_customCode;
};