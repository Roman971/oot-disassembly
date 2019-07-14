# "Kanji Code" part of the code file
#
# The purpose of this file's content is unclear but it supposedly handles Kanji character codes and contains a local char table.
#
# General Documentation about Text:
# https://wiki.cloudmodding.com/oot/Text_Format
#
# Starts at VRAM: 800AF790 / VROM: B256F0
#

.section .text
func_800AF790:
    ori     $at, $zero, 0x8800         # $at = 00008800
    slt     $at, a0, $at
    bne     $at, $zero, lbl_800AF7DC
    addiu   a2, $zero, 0x00BC          # a2 = 000000BC
    srl     a1, a0,  8
    addi    a1, a1, 0xFF78             # a1 = FFFFFF78
    multu   a2, a1
    andi    a3, a0, 0x00FF             # a3 = 00000000
    addi    a3, a3, 0xFFC0             # a3 = FFFFFFC0
    slti    $at, a3, 0x0040
    mflo    a2
    bnel    $at, $zero, lbl_800AF7CC
    mflo    a2
    addi    a3, a3, 0xFFFF             # a3 = FFFFFFBF
    mflo    a2
lbl_800AF7CC:
    addi    a3, a3, 0x030A             # a3 = 000002C9
    add     a3, a3, a2
    jr      $ra
    sll     v0, a3,  7
lbl_800AF7DC:
    srl     a1, a0,  8
    addi    a1, a1, 0xFF7F             # a1 = FFFFFEF7
    multu   a2, a1
    andi    a3, a0, 0x00FF             # a3 = 00000000
    addi    a3, a3, 0xFFC0             # a3 = FFFFFFC0
    slti    $at, a3, 0x0040
    mflo    a2
    bnel    $at, $zero, lbl_800AF808
    mflo    a2
    addi    a3, a3, 0xFFFF             # a3 = FFFFFFBF
    mflo    a2
lbl_800AF808:
    add     a3, a3, a2
    lui     a2, 0x800B                 # a2 = 800B0000
    sll     a3, a3,  1
    addiu   a2, a2, 0xF828             # a2 = 800AF828
    add     a3, a3, a2
    lh      a2, 0x0000(a3)             # FFFFFFBF
    jr      $ra
    sll     v0, a2,  7


.section .data

var_800AF828: .word \
0x00000001, 0x00020003, 0x00040005, 0x00060007, \
0x00080009, 0x000A000B, 0x000C000D, 0x000E000F, \
0x00100011, 0x00120013, 0x00140015, 0x00160017, \
0x00180019, 0x001A001B, 0x001C001D, 0x001E001F, \
0x00200021, 0x00220023, 0x00240025, 0x00260027, \
0x00280029, 0x002A002B, 0x002C002D, 0x002E002F, \
0x00300031, 0x00320033, 0x00340035, 0x00360037, \
0x00380039, 0x003A003B, 0x003C003D, 0x003E003F, \
0x00400041, 0x00420043, 0x00440045, 0x00460047, \
0x00480049, 0x004A004B, 0x004C004D, 0x004E004F, \
0x00500051, 0x00520053, 0x00540055, 0x00560057, \
0x00580059, 0x005A005B, 0x005C005D, 0x005E005F, \
0x00600061, 0x00620063, 0x00640065, 0x00660067, \
0x00680069, 0x006A006B, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x0000006C, \
0x006D006E, 0x006F0070, 0x00710072, 0x00730000, \
0x00000000, 0x00000000, 0x00000000, 0x00000074, \
0x00750076, 0x00770078, 0x0079007A, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x007B007C, 0x007D007E, 0x007F0080, \
0x00810082, 0x00830084, 0x00850086, 0x00870088, \
0x00000000, 0x00000000, 0x00000000, 0x00000089, \
0x008A008B, 0x008C008D, 0x008E008F, 0x00900000, \
0x00000000, 0x00000091, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000092, 0x00930094, 0x00950096, \
0x00970098, 0x0099009A, 0x009B0000, 0x00000000, \
0x00000000, 0x00000000, 0x009C009D, 0x009E009F, \
0x00A000A1, 0x00A200A3, 0x00A400A5, 0x00A600A7, \
0x00A800A9, 0x00AA00AB, 0x00AC00AD, 0x00AE00AF, \
0x00B000B1, 0x00B200B3, 0x00B400B5, 0x00000000, \
0x00000000, 0x00000000, 0x00B600B7, 0x00B800B9, \
0x00BA00BB, 0x00BC00BD, 0x00BE00BF, 0x00C000C1, \
0x00C200C3, 0x00C400C5, 0x00C600C7, 0x00C800C9, \
0x00CA00CB, 0x00CC00CD, 0x00CE00CF, 0x00000000, \
0x00000000, 0x00D000D1, 0x00D200D3, 0x00D400D5, \
0x00D600D7, 0x00D800D9, 0x00DA00DB, 0x00DC00DD, \
0x00DE00DF, 0x00E000E1, 0x00E200E3, 0x00E400E5, \
0x00E600E7, 0x00E800E9, 0x00EA00EB, 0x00EC00ED, \
0x00EE00EF, 0x00F000F1, 0x00F200F3, 0x00F400F5, \
0x00F600F7, 0x00F800F9, 0x00FA00FB, 0x00FC00FD, \
0x00FE00FF, 0x01000101, 0x01020103, 0x01040105, \
0x01060107, 0x01080109, 0x010A010B, 0x010C010D, \
0x010E010F, 0x01100111, 0x01120113, 0x01140115, \
0x01160117, 0x01180119, 0x011A011B, 0x011C011D, \
0x011E011F, 0x01200121, 0x01220123, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x01240125, 0x01260127, 0x01280129, 0x012A012B, \
0x012C012D, 0x012E012F, 0x01300131, 0x01320133, \
0x01340135, 0x01360137, 0x01380139, 0x013A013B, \
0x013C013D, 0x013E013F, 0x01400141, 0x01420143, \
0x01440145, 0x01460147, 0x01480149, 0x014A014B, \
0x014C014D, 0x014E014F, 0x01500151, 0x01520153, \
0x01540155, 0x01560157, 0x01580159, 0x015A015B, \
0x015C015D, 0x015E015F, 0x01600161, 0x01620163, \
0x01640165, 0x01660167, 0x01680169, 0x016A016B, \
0x016C016D, 0x016E016F, 0x01700171, 0x01720173, \
0x01740175, 0x01760177, 0x01780179, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x017A017B, \
0x017C017D, 0x017E017F, 0x01800181, 0x01820183, \
0x01840185, 0x01860187, 0x01880189, 0x018A018B, \
0x018C018D, 0x018E018F, 0x01900191, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01920193, \
0x01940195, 0x01960197, 0x01980199, 0x019A019B, \
0x019C019D, 0x019E019F, 0x01A001A1, 0x01A201A3, \
0x01A401A5, 0x01A601A7, 0x01A801A9, 0x01AA0000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01AB01AC, 0x01AD01AE, \
0x01AF01B0, 0x01B101B2, 0x01B301B4, 0x01B501B6, \
0x01B701B8, 0x01B901BA, 0x01BB01BC, 0x01BD01BE, \
0x01BF01C0, 0x01C101C2, 0x01C301C4, 0x01C501C6, \
0x01C701C8, 0x01C901CA, 0x01CB0000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01CC01CD, 0x01CE01CF, \
0x01D001D1, 0x01D201D3, 0x01D401D5, 0x01D601D7, \
0x01D801D9, 0x01DA01DB, 0x01DC01DD, 0x01DE01DF, \
0x01E001E1, 0x01E201E3, 0x01E401E5, 0x01E601E7, \
0x01E801E9, 0x01EA01EB, 0x01EC0000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x01ED01EE, 0x01EF01F0, 0x01F101F2, \
0x01F301F4, 0x01F501F6, 0x01F701F8, 0x01F901FA, \
0x01FB01FC, 0x01FD01FE, 0x01FF0200, 0x02010202, \
0x02030204, 0x02050206, 0x02070208, 0x0209020A, \
0x020B020C, 0x020D0000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x020E020F, 0x02100211, 0x02120213, 0x02140215, \
0x02160217, 0x02180219, 0x021A021B, 0x021C021D, \
0x021E021F, 0x02200221, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x02220223, \
0x02240225, 0x02260227, 0x02280229, 0x022A022B, \
0x022C022D, 0x022E022F, 0x02300231, 0x02320233, \
0x02340235, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x02360237, 0x02380239, \
0x023A023B, 0x023C023D, 0x023E0000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x023F0240, 0x02410242, 0x02430244, 0x02450246, \
0x02470248, 0x00000000, 0x00000000, 0x0249024A, \
0x024B024C, 0x024D024E, 0x024F0250, 0x02510252, \
0x02530254, 0x02550256, 0x02570000, 0x00000000, \
0x00000000, 0x02580259, 0x025A025B, 0x025C025D, \
0x025E025F, 0x02600261, 0x02620263, 0x02640265, \
0x02660000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x02670268, 0x0269026A, 0x026B026C, \
0x026D026E, 0x026F0270, 0x02710272, 0x02730274, \
0x02750276, 0x02770278, 0x0279027A, 0x027B027C, \
0x027D027E, 0x027F0280, 0x02810000, 0x00000000, \
0x00000000, 0x00000000, 0x02820283, 0x02840285, \
0x02860287, 0x02880289, 0x028A028B, 0x028C028D, \
0x028E028F, 0x02900291, 0x02920293, 0x02940295, \
0x02960297, 0x02980299, 0x029A029B, 0x029C029D, \
0x029E029F, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x02A002A1, \
0x02A202A3, 0x02A402A5, 0x02A602A7, 0x02A802A9, \
0x02AA02AB, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x02AC02AD, \
0x02AE0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x02AF02B0, 0x02B102B2, 0x02B302B4, \
0x02B502B6, 0x02B702B8, 0x02B902BA, 0x02BB02BC, \
0x02BD02BE, 0x02BF0000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x02C002C1, 0x02C202C3, 0x02C402C5, 0x02C602C7, \
0x02C802C9, 0x02CA02CB, 0x02CC02CD, 0x02CE02CF, \
0x02D002D1, 0x02D202D3, 0x02D402D5, 0x02D602D7, \
0x02D80000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x02D902DA, 0x02DB02DC, 0x02DD02DE, 0x02DF02E0, \
0x02E102E2, 0x02E302E4, 0x02E502E6, 0x02E702E8, \
0x02E902EA, 0x02EB02EC, 0x02ED02EE, 0x02EF02F0, \
0x02F102F2, 0x02F302F4, 0x02F502F6, 0x02F702F8, \
0x02F902FA, 0x02FB02FC, 0x02FD0000, 0x00000000, \
0x00000000, 0x00000000, 0x02FE02FF, 0x03000301, \
0x03020000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x03030304, 0x03050306, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000307, 0x03080309, 0x00000000, 0x00000000, \
0x00000000, 0x00000000