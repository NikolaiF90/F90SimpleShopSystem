/*
	Author: PrinceF90

	Description:
	Configuration file for a shop system. Edit it according to your preferance.

	Parameter(s):
	N/A

	Returns:
	N/A

	Examples:
	No examples provided as this file is for configuration purposes only.
*/

Shop_Money = "Milcash"; // Change the milcash to your "money". Note: The value must be in string
Shop_UpdateInterval = 0.1; // Time interval in seconds to update shop
Shop_IconSize = [0.5,0.5]; // Size of the icons shown in map

//	Texts (For Map Markers)
Shop_WeaponShopText = "Weapon Shop";
Shop_VehicleShopText = "Vehicle Shop";

// Icons (For Map Markers)
Shop_BLUFORWeaponIcon = "b_Ordnance";
Shop_OPFORWeaponIcon = "o_Ordnance";
Shop_GUERWeaponIcon = "n_Ordnance";
Shop_CIVWeaponIcon = "c_unknown";

Shop_BLUFORVehicleIcon = "b_service";
Shop_OPFORVehicleIcon = "o_service";
Shop_GUERVehicleIcon = "n_service";
Shop_CIVVehicleIcon = "c_unknown";

// Array of all weapon shops placed in editor
Shop_BLUFORWeaponShops = 
[
	// Fill your BLUFOR weapon shop here
];

Shop_OPFORWeaponShops = 
[
	// Fill your OPFOR weapon shop here
];

Shop_GUERWeaponShops = 
[
	// Fill your GUER weapon shop here
];

Shop_CIVWeaponShops = 
[
	// Fill your CIV weapon shop here
];

// Array of all vehicle shops placed in editor
Shop_BLUFORVehicleShops = 
[
	VehicleShop_0
	// Fill your BLUFOR vehicle shop here
];

Shop_OPFORVehicleShops = 
[
	VehicleShop_1
	// Fill your OPFOR vehicle shop here
];

Shop_GUERVehicleShops = 
[
	// Fill your GUER vehicle shop here
];

Shop_CIVVehicleShops = 
[
	// Fill your CIV vehicle shop here
];

// Do not edit this
configureShopDone = true;