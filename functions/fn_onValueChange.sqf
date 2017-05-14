_result = _this params [
    ["_mode", 0, [0]],
    ["_idc", 0, [0]],
    ["_newValue", 0, [0]]
];

if(_idc < 0) exitWith {
    ["onSliderChange called without a valid idc!", "Error", true] spawn
        BIS_fnc_guiMessage;
};

if(_mode < 0 || _mode > 3) exitWith {
    ["onSliderChange called without a valid mode!", "Error", true] spawn
        BIS_fnc_guiMessage;
};

if(_newValue == -1) then {
    _newValue = parseNumber (ctrlText _idc);
    ctrlSetText [_idc, str _newValue];
    sliderSetPosition [_idc + 500, _newValue];
} else {
    _newValue = round _newValue;
    sliderSetPosition [_idc, _newValue];
    ctrlSetText [_idc - 500, str _newValue];
};
hint str [_mode, _idc, _newValue];

switch (_mode) do {
    case (0): {
        tf47_modules_umenu_vd_vdfoot = _newValue;
    };
    case (1): {
        tf47_modules_umenu_vd_vdcar = _newValue;
    };
    case (2): {
        tf47_modules_umenu_vd_vdair = _newValue;
    };
    case (3): {
        tf47_modules_umenu_vd_vdobject = _newValue;
    };
};

[] call tf47_modules_umenu_fnc_updateViewDistance;
