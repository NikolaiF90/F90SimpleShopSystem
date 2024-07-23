waitUntil {!isNil "SSS_ServerInitDone"};
waitUntil {SSS_ServerInitDone};

// Give time for server to execute global functions
sleep 2;
[player] call F90_fnc_initEconomy;