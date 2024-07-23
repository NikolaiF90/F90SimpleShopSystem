/*
    Author: PrinceF90

    Description:
        This function creates a marker with the ability to generate a random marker name, and display the marker to the player.

    Parameter(s):
        _nameArray - An array containing the marker name and a boolean flag to make the marker name unique. Format ARRAY: _markerName, _makeUnique. [ARRAY or STRING]
        _position - Position2D, PositionAGL or Object. In case of an object, the object's model centre's PositionASL is used (see getPosWorld). [ARRAY or OBJECT]
        _markerType - The type of marker to be created. Defaults to "hd_dot" if not provided. [STRING]
        _channel - (Optional, default -1) the marker channel - see Channel IDs (for multiplayer) [SCALAR]
        _creator - (Optional, default objNull) the marker creator (for multiplayer). [OBJECT]

    Returns:
        _markerName - the marker's name or empty string if the marker name is not unique.
*/
params ["_nameArray", "_position", "_markerType", "_channel", "_creator"];

private _markerName = "";
private _makeUnique = false;

if (_nameArray isEqualType []) then 
{
    _markerName = _nameArray select 0;
    _makeUnique = _nameArray select 1;
} else 
{
    _markerName = _nameArray;
};

if (_makeUnique) then 
{
    _markerName = [_markerName] call F90_fnc_generateUniqueID;
};

if (isNil {_markerType}) then { _markerType = "hd_dot"};
if (isNil {_channel}) then {_channel = -1};
if (isNil {_creator}) then {_creator = objNull};

private _marker = createMarker [_markerName, _position, _channel, _creator];
_marker setMarkerType _markerType;

_marker
