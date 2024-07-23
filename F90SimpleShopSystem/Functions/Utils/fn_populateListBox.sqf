/*
    Author: PrinceF90

    Description:
        This function populates a listbox with provided content and sets the default selection if provided. It can reverse the content in different ways or keep it as is.

    Parameter(s):
        _idc - The ID of the listbox [SCALAR]
        _content - The content to populate the listbox with [ARRAY]
        _defaultSelection - (Optional, default 0) The index of the default selection. -1 to not make any selection. [SCALAR]
        _reverseOperation - (Optional, default -1) The operation can be one of: -1 - Do not apply reverse. 0 - Reverse the original array. 1 - Reverse the copy of the array. [SCALAR]

    Returns:
        None
*/
params ["_idc", "_content", "_defaultSelection", "_reverseOperation"];

if (isNil {_reverseOperation}) then {_reverseOperation = -1};

lbClear _idc;

private _finalContent = nil;
private _reverse = false;

switch (_reverseOperation) do 
{
    // Dont reverse
    case -1: 
    {
        _finalContent = _content;
        _reverse = false;
    };
    // Reverse Original
    case 0: 
    {
        _finalContent = _content;
        _reverse = true;
    };
    // Reverse Copy
    case 1: 
    {
        _finalContent = +_content;
        _reverse = true;
    };
};

if (_reverse) then 
{
    reverse _finalContent;
};

{
    lbAdd [_idc, _x];
} forEach _finalContent;

if (isNil {_defaultSelection}) then {_defaultSelection = 0};

if (_defaultSelection != -1) then 
{
    lbSetCurSel [_idc, _defaultSelection];
};