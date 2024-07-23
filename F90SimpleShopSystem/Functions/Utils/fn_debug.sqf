/*
	Author: PrinceF90 
 
	Description: 
		This function logs debug information, displays it in-game, and optionally saves it to the player's recent notifications.
	Parameters: 
		_debugOn - Indicates whether debugging is enabled or not. [BOOL]
		_fileName - The name of the file for logging purposes. [STRING]
		_text - The debug text to be logged. [STRING]
		_visibleInGame - (Optional, default false). Determines if the debug text should be displayed in-game as systemChat. [BOOL]

	Returns: 
		_returnText - The formatted debug text that was logged, or an empty string if debugging is disabled.
*/

params ["_debugOn", "_fileName", "_text", "_visibleInGame"];

if (typeName _debugOn != "BOOL") exitWith { diag_log "F90Debug: (ERROR) F90_fnc_debug only accept boolean as the first parameters." };
if (isNil {_fileName}) then {_fileName = "DEBUG";} else { if (_fileName isEqualTo "" || _fileName isEqualTo " ") then {_fileName = "DEBUG"};};
if (isNil {_text}) then {_text = "Debug Marker"};
if (isNil {_visibleInGame}) then { _visibleInGame = false };

private _returnText = "";

if (_debugOn) then
{
	_returnText = format ["[F90SSS %1] %2", _fileName, _text];
	diag_log _returnText;
	if (_visibleInGame) then 
	{
		systemChat _returnText;
	};
};

_returnText