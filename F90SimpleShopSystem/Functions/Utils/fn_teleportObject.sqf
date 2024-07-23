/*
    Author: PrinceF90

    Description:
        Teleports a unit to a specified position relative to an object, considering terrain height and building obstacles.

    Parameter(s):
        _unit - The unit to teleport [OBJECT]
        _object - The object relative to which the unit will be teleported [OBJECT]
        _rotDegree - (Optional, default is 0 which is object's front) The rotation degree for positioning the unit [NUMBER]
        _heading - (Optional, will set the unit's facing object if unspecified) The heading direction for the unit after teleportation [NUMBER]

    Returns:
        None
*/
params ["_unit", "_object", "_rotDegree", "_heading"];

private _objectPosition = getPosASL _object;
private _terrainHeight = getTerrainHeightASL _objectPosition;
private _teleportPos = [];

// Default _rotDegree will teleport unit to object's front
if (isNil {_rotDegree}) then {_rotDegree = 0};
if (_objectPosition select 2 > _terrainHeight) then
{
    // Adjust for buildings
    private _adjustedPos = _objectPosition;
    _teleportPos = _adjustedPos getPos [1.25, getDir _object + _rotDegree];
    _unit setPosASL (AGLToASL _teleportPos);
} else 
{
    // Teleport to exact position(if it's not inside a building)
    _teleportPos = _object getPos [2, getDir _object + _rotDegree];
    _unit setPos _teleportPos;
};

// Change unit's heading 
if (isNil {_heading}) then {_heading = _unit getDir _object};
_unit setDir _heading;
_teleportPos