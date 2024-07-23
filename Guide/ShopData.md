# Shop Data
I'll try to keep this one as simple as possible.
The data itself is stored in an array. The format for a shop data is simple. You will need:
1. The shop object.
2. The name of the shop.
3. The shop's inventory. 
4. The function to execute when clicking purchase button.
5. And the marker type.

## Shop Object
If you create your shop by script like `_shop1 = "B_Soldier_F" createVehicle [0,0,0]` then the shop object would be _shop1. If you add your shop from the 3den editor, then please fill in Variable Name, as your shop object will be stored inside that variable. 
And please make sure the data of the first element is **OBJECT**.

## Shop Name 
Name your shop anything. Just make sure it's in **STRING** format. This name will be used when displaying the shop menu. 

## Inventory
Inventory is an **ARRAY** containing list of items available for the shop to sell. Note that, each items is an **ARRAY** containing the item's data.
I suggest you to take a look at [Inventory Format](ShopInventoryFormat.md)

## Purchase Function
This element stores a **STRING** function. This function will be executed when player clicks Purchase button. 
There are some pre-made functions that might be useful. Some of it is `F90_fnc_purchaseItem`, `F90_fnc_purchaseVehicle`, `F90_fnc_purchaseWeapon`. These pre-made functions is somewhat sufficient as it handles few condition such as player's money and inventory. 
Just remember, the function must be in **STRING** not CODE.

## Marker type 
Leaving this element empty won't be a problem. The system will use default icon `"fmarker_Shop"` as the shop's marker. Just install the mod I've included in the system. 
Yes, I've included a [simple marker mod](https://github.com/NikolaiF90/F90SimpleShopSystem/tree/main/Dependencies) too. This mod is very lightweight as it only stores the markers icon. To install the mod, move the mod folder to you mods collection, the folder name usually starts with **@**. Then exit Arma 3 if you already had it open. From the launcher, click the add local mod and choose the addon folder `@modName\addons`. That's all. You can start your game and the mod will applied immediately.
If you do not wish the extra works of installing mods, just use any marker type as the icon. Maybe `loc_Ruin`.
