# F90 Simple Shop System
[![Change log Version 1.0.0](https://img.shields.io/badge/Version-1.0.0-white?style=plastic&logo=github&labelColor=black&color=teal)](CHANGELOG.md)  
[![Hits](https://hits.sh/github.com/NikolaiF90/F90SimpleShop.svg?style=plastic&label=Repo%20Visits&extraCount=1&color=268f6e&labelColor=000000&logo=githubsponsors)](https://hits.sh/github.com/NikolaiF90/F90SimpleShop/)

[![Buy Me A Coffee](https://img.shields.io/badge/Buy_Me_A_Coffee-teal?style=plastic&logo=buymeacoffee&labelColor=black)](https://www.buymeacoffee.com/princef90)


![CoverImage](F90SimpleShopCover.jpg)

## Description
F90 Simple Shop System is a script that enables ARMA 3 mission maker to easily implement a shop system in their custom mission.

## Features 
* Can be used to create any kinds of shops(Vehicle shop, weapon shop, recruit units, and etc).
* Any objects can be assigned as a shop. 
* Fast and fully optimized. 
* Fully customizeable according to your preference.
* Easy to maintain.

## Installation
* Download the latest release from the [releases](https://github.com/NikolaiF90/F90SimpleShop/releases) page.
* Extract the zip file to your mission folder.

## Usage
* Open 3DEN Mission Editor.
* Add your shop objects across the map. Shop objects can be anything from units to objects. 
* Name your shop object to something that can be easily remembered like VehicleShop_0, VehicleShop_1 and so on.
* Create a shop object for each side. 
* Inside your mission folder >> Scripts >> configureShop.sqf, you will see a few settings.
* Change those settings to your preferences. Default values works great too. You can try with default value if you're not so sure. 
* Edit the value of Shop_Money to your "money" variable. Default is "Milcash". Note that the value must be in STRING. Also this will only apllies to unit's money.
* If you intend to use another score system, like team score, or faction points etc, you can take a look at Scripts >> economyHandler.sqf. 
* Back with configureShop.sqf, scroll a little bit to the bottom, you will see a few arrays named Shop_BLUFORWeaponShops, Shop_OPFORVehicleShops and etc. Add your shop object inside those arrays according to their side and types. 
* Inside your mission folder >> Scripts >> InitShopItems.sqf, you can add anything to sell on the shop. Here you should include the item classname, display name, and price.
* From here you are pretty much done. You don't need to edit anything else. 

## Contributing
* Fork the repository.
* Create a branch for your changes.
* Create a pull request. 

## License 
[![License APL-SA](https://img.shields.io/badge/APL--SA-black?style=plastic)](https://www.bohemia.net/community/licenses/arma-public-license-share-alike)

With this license you are free to adapt (i.e. modify, rework or update) and share (i.e. copy, distribute or transmit) the material under the following conditions:   
* Attribution - You must attribute the material in the manner specified by the author or licensor (but not in any way that suggests that they endorse you or your use of the material).
* Noncommercial - You may not use this material for any commercial purposes.
* Arma Only - You may not convert or adapt this material to be used in other games than Arma.
* Share Alike - If you adapt, or build upon this material, you may distribute the resulting material only under the same license.

## Credits
* [NikolaiF90 (PrinceF90)](https://github.com/NikolaiF90)