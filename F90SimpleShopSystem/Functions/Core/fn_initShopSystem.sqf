waitUntil {!isNil "SSS_AllShops"};
{
    private _shopData = _x;

    private _shop = _shopData select 0;
    private _shopName = _shopData select 1;
    // Store the data to the shop
    _shop setVariable ["SSS_ShopData", _shopData, true];

    private _actionText = format ["Open %1", _shopName];
    
    // Add Shop action
    [
        _shop,
        _actionText,
        {
            params ["_target", "_caller", "_actionId", "_arguments"];
            [_target, _caller] call F90_fnc_openShopMenu;
        },
        "alive _target && alive _this",
        "SSS_OpenActionID"
    ] remoteExec ["F90_fnc_addAction", 0, true];

    private _markerType = "fmarker_Shop";
    if (count _shopData > 4) then 
    {
        _markerType = _shopData select 4;
        if (_markerType isEqualTo "" || _markerType isEqualTo " ") then 
        {
            _markerType = "fmarker_Shop";
        };
    };
    [["Shop", true], position _shop, _markerType] call F90_fnc_createMarker;
} forEach SSS_AllShops;

