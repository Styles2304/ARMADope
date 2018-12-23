/*
* Author: Styles2304
* 	Adds entries to current gun list
*
* Arguments:
* 	None
*
* Return Value:
* 	None
* 
* Usage:
* 	Copy and paste into debug
*/

nul = [] spawn {
	_gunList = profileNamespace getVariable "ACE_ATragMX_gunList";
	_gunListAdditions =	[["HK417A2 M993AP",928,100,0.0392338,-0.001035,0.76,0,2,10,120,0,0,8.2,7.82,27.94,0.359,1,"ICAO",[[-15,902.35],[0,909.35],[10,915.35],[15,920.35],[25,935.35],[30,945.35],[35,954.35]],[[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0]],true],
						["HK417A2 M118LR",779,100,0.0525311,-0.001035,0.76,0,2,10,120,0,0,11.3,7.82,27.94,0.483,1,"ICAO",[[-15,753.5],[0,761.5],[10,767.5],[15,772.5],[25,785.5],[30,793.5],[35,807.5]],[[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0]],true],
						["M200 418.9gr",866,100,0.0442953,-0.001035,1.01,0,2,10,120,0,0,27.2,10.3,33,0.871,1,"ICAO",[[-15,840],[0,847],[10,854],[15,860],[25,872],[30,882],[35,893]],[[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0]],true]];

	call ace_atragmx_fnc_clear_user_data;

	{ _entry = _x;
		_gunList pushBack _entry;
	} forEach _gunListAdditions;

	profileNamespace setVariable ["ACE_ATragMX_gunList", _gunList];
	call ace_atragmx_fnc_initGunList
};