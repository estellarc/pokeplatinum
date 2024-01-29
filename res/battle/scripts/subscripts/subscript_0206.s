    .include "macros/btlcmd.inc"

    .data

_000:
    PlayBattleAnimation BTLSCR_MSG_TEMP, BATTLE_ANIMATION_HELD_ITEM
    Wait 
    // {0} normalized its status using its {1}!
    PrintMessage pl_msg_00000368_00896, TAG_NICKNAME_ITEM, BTLSCR_MSG_TEMP, BTLSCR_MSG_TEMP
    Wait 
    SetHealthbarStatus BTLSCR_MSG_TEMP, BATTLE_ANIMATION_NONE
    WaitButtonABTime 30
    UpdateMonData OPCODE_SET, BTLSCR_MSG_TEMP, BATTLEMON_STATUS, MON_CONDITION_NONE
    UpdateMonData OPCODE_FLAG_OFF, BTLSCR_MSG_TEMP, BATTLEMON_VOLATILE_STATUS, VOLATILE_CONDITION_NIGHTMARE
    UpdateMonData OPCODE_FLAG_OFF, BTLSCR_MSG_TEMP, BATTLEMON_VOLATILE_STATUS, VOLATILE_CONDITION_CONFUSION
    Call BATTLE_SUBSCRIPT_PLUCK_CHECK
    End 