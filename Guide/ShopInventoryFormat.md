# Shop Inventory Format
Inventory format must be followed as failing to do so will cause an error to the script.
The shop inventory itself is an array containing list of items which is an array too.
It is essential to note that **each inventory and item has a specific format**. An inventory comprises a list of items, with each item array containing: 
1. The classname of the object to sell 
2. The item's displayname 
3. The item's price 

The format for each item is basically `["class", "displayName", price]`.

## Classname 
The classname will be used to spawn the object, or adding the object to player's inventory.
You can obtain the classname from 3den editor, configFile, or from [BiKi](https://community.bistudio.com/wiki/Arma_3:_CfgVehicles_WEST "Arma 3 Wiki Page").
Just remember, the classname must be in **STRING**.

## Display Name 
You can name your item to be anything. Or if you don't know what to name your item, you can check the configFile or [BiKi](https://community.bistudio.com/wiki/Arma_3:_CfgVehicles_WEST "Arma 3 Wiki Page") too. Just look for display name. 
Just like the classname, the displayName must be in **STRING**.

## Price
I do not have much to say about this. This one is based on your preference. Of course, price should be in number or **SCALAR**.

# Conclusion
Following the shop inventory format is straightforward once you understand where each component belongs and differentiate between inventory and item. Here is an example:

    SSS_Shop0Items =
    [
        ["arifle_MX_F", "MX 6.5mm", 500],
        ["arifle_Mk20_plain_F", "Mk20 5.56 mm", 500],
        ["arifle_Mk20_F", "Mk20 5.56 mm (Camo)", 550]
    ];

If you're planning to automate the process of adding items, I recommend you to do a lot of debugging. Utilize  `F90_fnc_debug`  to streamline debugging efforts and I might save you some times.