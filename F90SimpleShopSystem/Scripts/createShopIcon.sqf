/*
	Author: PrinceF90 
 
	Description: 
	This function creates a marker on the map based on the provided parameters. The marker represents a shop of either weapon or vehicle type, with different icons and text based on the side. 
	
	Parameter(s): 
	0: STRING - _shopType: Specifies the type of shop ("WEAPON" or "VEHICLE"). 
	1: SIDE - _side: Specifies the side of the shop (west,east,independent,civilian). 
	2: NUMBER - _index: Specifies the index of the marker. 
	3: ARRAY - _pos: Specifies the position of the marker on the map. 
	
	Returns: 
	None 
	
	Examples: 
	// Example usage for a weapon shop  
	["WEAPON", "west", 1, [1000, 2000, 0]] call F90_fnc_createShopIcon; 
	
	// Example usage for a vehicle shop 
	["VEHICLE", "east", 2, [1500, 2500, 0]] call F90_fnc_createShopIcon;
*/

params ["_shopType", "_side", "_index", "_pos"];

private 
[
	"_markerText",
	"_markerName",
	"_marker",
	"_markerIcon"
];
switch (_shopType) do {
	case "WEAPON": 
	{
		_markerText = (str _side) + " " + Shop_WeaponShopText;
		_markerIcon = switch (_side) do
		{
			case west: {Shop_BLUFORWeaponIcon};
			case east: {Shop_OPFORWeaponIcon};
			case independent: {Shop_GUERWeaponIcon};
			case civilian: {Shop_CIVWeaponIcon};
		};
	};
	case "VEHICLE": 
	{
		_markerText = (str _side) + " " + Shop_VehicleShopText;
		_markerIcon = switch (_side) do
		{
			case west: {Shop_BLUFORVehicleIcon};
			case east: {Shop_OPFORVehicleIcon};
			case independent: {Shop_GUERVehicleIcon};
			case civilian: {Shop_CIVVehicleIcon};
		};
	};
};

_markerName = _markerText + (str _index);
_marker = createMarker [_markerName, _pos];
_marker setMarkerType _markerIcon;
_marker setMarkerText _markerText;
_marker setMarkerAlpha 1;
_marker setMarkerSize Shop_IconSize;