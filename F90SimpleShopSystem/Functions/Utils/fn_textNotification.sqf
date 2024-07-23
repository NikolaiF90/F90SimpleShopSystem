/*
    Author: PrinceF90

    Description:
        This function generates a formatted text and displays dynamic text notifications and store to unit's notification.

    Parameter(s):
        _text - The text or array of texts to be displayed. Use array for multi-line texts. [STRING or ARRAY]
        _type - (Optional, default "DEFAULT"). The type of notification (DEFAULT, WARNING, ERROR). [STRING]
        _duration - (Optional, default 4). The duration the notification stays on screen. [SCALAR]
        _layer - (Optional, default 101). The layer of the notification. [SCALAR]

    Returns:
        None
*/

params ["_text", "_type", "_duration", "_layer"];

if (isNil {_type}) then 
{
    _type = "DEFAULT";
};

if (isNil {_duration}) then
{
    _duration = 4;
};

if (isNil {_layer}) then 
{
    _layer = 101;
};

private _formattedText = "";

private _notificationText = "";
private _dynamicText = "";

if (_text isEqualType []) then 
{
    _notificationText = _text select 0;
    _dynamicText = _text select 0;
    private _lineCount = count _text;
    if (_lineCount > 1) then 
    {
        for "_i" from 1 to (_lineCount) -1 do
        {
            _notificationText = _notificationText + (_text select _i);
            _dynamicText = _dynamicText + "<br />" + (_text select _i);
        };
    };
} else 
{
    _notificationText = _text;
    _dynamicText = _text;
};

switch (_type) do {
    case "DEFAULT": 
    {
        _formattedText = format ["<t font='PuristaSemibold' size='0.5' color='#00ff00'>NEW NOTIFICATION <br />%1</t>", _dynamicText];
    };
    case "WARNING":
    {
        _formattedText = format ["<t font='PuristaSemibold' size='0.5' color='#ffb200'>WARNING <br />%1</t>", _dynamicText];
    };
    case "ERROR":
    {
        _formattedText = format ["<t font='PuristaSemibold' size='0.5' color='#ff0000'>ERROR <br />%1</t>", _dynamicText];
    };
};

[_formattedText, 0, safeZoneY + 0.2, _duration, 1, 0, _layer] spawn BIS_fnc_dynamicText;