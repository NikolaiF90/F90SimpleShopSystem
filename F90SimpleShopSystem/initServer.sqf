SSS_ServerInitDone = false;
publicVariable "SSS_ServerInitDone";

// Configuration files must be executed on all clients
[] remoteExec ["F90_fnc_configureShop", 0, true];
[] remoteExec ["F90_fnc_initDialogVariables", 0, true];
[] remoteExec ["F90_fnc_initGlobalVariables", 0, true];
[] remoteExec ["F90_fnc_configureEconomy", 0, true];
[] call F90_fnc_initServerVariables;

// Init systems 
[] call F90_fnc_initShopSystem;
SSS_ServerInitDone = true;
publicVariable "SSS_ServerInitDone";