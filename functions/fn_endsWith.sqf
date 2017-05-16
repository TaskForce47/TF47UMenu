_result = _this params [
    ["_partialText", "", [""]],
    ["_fullText", "", [""]]
];

if(_partialText == "" || _fullText == "") exitWith {
    ["endsWith called without a valid string!", "Error", true] spawn
        BIS_fnc_guiMessage;
};

_fullTextLenght = count (_fullText);

_subString = [_fullText, _fullTextLenght - (count _partialText), _fullTextLenght] call
    BIS_fnc_trimString;

_return = (_subString == _partialText);

_return
