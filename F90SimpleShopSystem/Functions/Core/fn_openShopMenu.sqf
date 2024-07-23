/*
    Author: PrinceF90

    Description:
        Initializes a shop menu for a player, displays shop data, allows the player to make purchases, and handles post-menu cleanup.

    Parameter(s):
        _shop - The shop object containing shop data. [OBJECT]
        _buyer - The player object who is buying from the shop. [OBJECT]

    Returns:
        None
*/
params ["_shop", "_buyer"];

// Close any open dialog
if (dialog) then {closeDialog 2};

// Create shop menu
createDialog "shopMenu";

// Extract shop data from shop
private _shopData = _shop getVariable "SSS_ShopData";

// Set Shop Name 
private _shopName = _shopData select 1;
ctrlSetText [ShopMenu_NameTextIDC, _shopName];

// Set player's balance
private _balanceText = [_buyer, true] call F90_fnc_getMoney;
ctrlSetText [ShopMenu_BalanceTextIDC, _balanceText];

// Populate Listbox 
private _inventory = _shopData select 2;
private _contents = [];
{
    private _itemName = _x select 1;
    private _itemPrice = _x select 2;
    private _item = format ["[%1%2]     %3", Economy_CurrencySymbol, _itemPrice, _itemName];
    _contents pushBack _item;
} forEach _inventory;
[ShopMenu_ItemsListboxIDC, _contents, 0] call F90_fnc_populateListBox;

// Store shop inventory array and purchased item into buyer
_buyer setVariable ["SSS_ShopInventory", _inventory, true];

// Store purchase button into buyer
private _function = _shopData select 3;
_buyer setVariable ["SSS_PurchaseFunction", _function, true];

// Button function
(findDisplay ShopMenu_MenuIDD) displayCtrl ShopMenu_PurchaseButton ctrlAddEventHandler ["ButtonDown", 
{
    // Extract inventory array from player (assume the buyer is player)
    private _buyer = player;
    private _shopInventory = _buyer getVariable "SSS_ShopInventory";

    // Get the data of the selected item
    private _selectedItem = _shopInventory select (lbCurSel ShopMenu_ItemsListboxIDC);

    // Extract purchase function from buyer 
    private _function = _buyer getVariable "SSS_PurchaseFunction";

    // Execute purchase function
    [_selectedItem] remoteExec [_function, _buyer];
}];

// Code to execute after menu closed
(findDisplay ShopMenu_MenuIDD) displayAddEventHandler ["Unload",
{
    // Reset unused variables to prevent any possible data leak
    _buyer setVariable ["SSS_ShopInventory", nil, true];
    _buyer setVariable ["SSS_PurchaseFunction", nil, true];
}];