_callsign = "";

if(ctrlVisible 1400) then {
    _callsign = ctrlText 1400;
} else {
    _callsign = lbText [2101, lbCurSel 2101];
};
_leaderName = ctrlText 1401;

_markerType = lbData [2100, lbCurSel 2100];

if(_callsign == "" || _leaderName == "" || _markerType == "") exitWith {};

_freq = ctrlText 1402;

_savedTeams = missionNamespace getVariable ["tf47_modules_umenu_savedTeam", []];

_savedTeams pushBack [_callsign, _markerType, _leaderName, _freq];

missionNamespace setVariable ["tf47_modules_umenu_savedTeam", _savedTeams, true];
