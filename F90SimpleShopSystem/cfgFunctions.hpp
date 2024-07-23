class F90
{
	class Core
	{
		file = "Functions\Core";
		
		class configureShop {};
		class initDialogVariables {};
		class initGlobalVariables {};
		class initServerVariables {};
		class initShopSystem {};
		class openShopMenu {};
		class purchaseItem {};
		class purchaseVehicle {};
		class purchaseWeapon {};
	};
	class Economy
	{
		file = "Functions\Economy";

		class addMoney {};
		class configureEconomy {};
		class deductMoney {};
		class getMoney {};
		class initEconomy {};
		class setMoney {};
	};
	class Utils 
	{
		file = "Functions\Utils";

		class addAction {};
		class addItemToUnit {};
		class closeMenu {};
		class createMarker {};
		class debug {};
		class generateUniqueID {};
		class populateListBox {};
		class teleportObject {};
		class textNotification {};
	};
};