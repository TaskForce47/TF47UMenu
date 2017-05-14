tf47_modules_umenu_vd_vdfoot = profileNamespace getVariable
    ["tf47_modules_umenu_vd_savedFoot", viewDistance];
tf47_modules_umenu_vd_vdcar = profileNamespace getVariable
    ["tf47_modules_umenu_vd_savedCar", viewDistance];
tf47_modules_umenu_vd_vdair = profileNamespace getVariable
    ["tf47_modules_umenu_vd_savedAir", viewDistance];
tf47_modules_umenu_vd_vdobject = profileNamespace getVariable
    ["tf47_modules_umenu_vd_savedObject", getObjectViewDistance select 0];
tf47_modules_umenu_vd_vdterrain = profileNamespace getVariable
    ["tf47_modules_umenu_vd_savedTerrain", 12.5];

player addEventHandler ["GetInMan", {
    if((_this select 2) isKindOf "LandVehicle" || (_this select 2) isKindOf "Ship") then {
        setViewDistance tf47_modules_umenu_vd_vdcar;
    } else {
        setViewDistance tf47_modules_umenu_vd_vdair;
    };
}];

player addEventHandler ["GetOutMan", {
    setViewDistance tf47_modules_umenu_vd_vdfoot;
}];

[] call tf47_modules_umenu_fnc_updateViewDistance;
