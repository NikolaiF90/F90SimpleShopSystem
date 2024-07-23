
/*
    Author: PrinceF90

    Description:
        Same as engine's addItem, but will return false if item can't be added to unit due to some reasons like full inventory.

    Parameter(s):
        _item - The item to be added to the unit's loadout. [ANY]
        _unit - The unit to which the item will be added. [OBJECT]

    Returns:
        _itemCreated - A boolean indicating whether the item was successfully added (true) or not (false).
*/
params ["_item", "_unit"];

private _oldLoadout = getUnitLoadout _unit;

_unit addItem _item;
sleep 0.1;
private _newUnitLoadout = getUnitLoadout _unit;

private _itemCreated = false;
if !(_oldLoadout isEqualTo _newUnitLoadout) then 
{
    _itemCreated = true;
};

_itemCreated