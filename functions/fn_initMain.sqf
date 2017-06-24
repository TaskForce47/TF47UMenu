/**
 *  @author Willard
 *  @description
 *  Inits the main dialog
 *  @params none
 *  @return nothing
 */
waitUntil {(ctrlText 1001) != ""};

disableSerialization;

// disable gnc button, if the player is not the leader
if (leader (group player) != player) then {
    ctrlEnable [1602, false];
	((uiNamespace getVariable ['tf47_modules_umenu_main_dialog_var',nil])
        displayCtrl 1602) ctrlSetTooltip
        "Only the group leader can change the group name!";
};
