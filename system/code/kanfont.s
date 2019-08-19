# "Kanji Font" part of the code file
#
# Handles loading character fonts (textures) into memory.
#
# General Documentation about Text:
# https://wiki.cloudmodding.com/oot/Text_Format
#
# Starts at VRAM: 8005BC90 / VROM: AD1BF0
#

.section .text
func_8005BC90:
# Load jpn_font_static character into memory
# Uses 800AF790 (kancode.s) to map the character to its font offset
# A0 = Current Message Context (GC + 0x2200)
# A1 = u16 character code to load
# A2 = u16 ? (offset to apply in RAM when loading the character)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    andi    a1, a1, 0xFFFF
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    jal     func_800AF790              # Map character code (A1) to jpn_font_static offset (kancode.s)
    or      a0, a1, $zero              # a0 = a1 = character code
    lw      t6, 0x0018($sp)
    lhu     t7, 0x0022($sp)
    lui     t8, 0x004E
    addiu   t8, t8, 0x9F40             # t8 = 0x004D9F40 (ROM st: jpn_font_static)
    addu    a0, t6, t7
    addiu   a0, a0, 0x0008             # a0 = GC + 0x2200 + A2 + 0x8
    addu    a1, v0, t8                 # a1 = ROM address of the character font to load
    jal     func_80000DF0              # DMALoadFile(GC + 0x2200 + A2 + 0x8, jpn_font_static:st + kancode(A1), 0x80)
    addiu   a2, $zero, 0x0080          # a2 = 0x80
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8005BCE4:
# Load nes_font_static character into memory
# Maps the character to its font offset directly (offset = (code & 0xFF) << 7)
# A0 = Current Message Context (GC + 0x2200)
# A1 = u16 character code to load
# A2 = u16 ? (offset to apply in RAM when loading the character)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    andi    a3, a1, 0x00FF
    lw      t6, 0x0018($sp)
    lhu     t7, 0x0022($sp)
    lui     t9, 0x0093
    addiu   t9, t9, 0x8000             # t9 = 0x00928000 (ROM st: nes_font_static)
    sll     t8, a3,  7                 # offset = (A1 & 0xFF) << 7
    addu    a0, t6, t7
    addiu   a0, a0, 0x0008             # a0 = GC + 0x2200 + A2 + 0x8
    addu    a1, t8, t9                 # a1 = ROM address of the character font to load
    jal     func_80000DF0              # DMALoadFile(GC + 0x2200 + A2 + 0x8, nes_font_static:st + (A1 & 0xFF) << 7, 0x80)
    addiu   a2, $zero, 0x0080          # a2 = 0x80
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8005BD34:
# Load message_static character into memory
# Maps the character to its font offset directly (offset = code << 7 + 0x4000)
# A0 = Current Message Context (GC + 0x2200)
# A1 = u16 character code to load
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero
    lhu     t6, 0x001E($sp)
    lui     t9, 0x008E
    addiu   t9, t9, 0x6000             # t9 = 0x008E6000 (ROM st: message_static)
    sll     t7, t6,  7
    addiu   t8, t7, 0x4000             # offset = A1 << 7 + 0x4000
    addu    a1, t8, t9                 # a1 = ROM address of the character font to load
    addiu   a0, a3, 0x3C08             # a0 = GC + 0x2200 + 0x3C00 + 0x8
    jal     func_80000DF0              # DMALoadFile(GC + 0x2200 + 0x3C00 + 0x8, message_static:st + A1 << 7 + 0x4000, 0x80)
    addiu   a2, $zero, 0x0080          # a2 = 0x80
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8005BD78:
# Load "File Select" Character Set Data into memory
# A0 = some message context ptr?
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s5, 0x002C($sp)
    lui     a3, 0x0804                 # a3 = 08040000
    addiu   a3, a3, 0xA150             # a3 = 0803A150
    or      s5, a0, $zero              # s5 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s8, 0x0038($sp)
    sw      s7, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lui     t6, 0x0800                 # t6 = 08000000
    lui     t7, 0x0804                 # t7 = 08040000
    addiu   t6, t6, 0x0000             # t6 = 08000000
    addiu   t7, t7, 0xA340             # t7 = 0803A340
    lui     t8, 0x008F                 # t8 = 008F0000
    subu    v0, a3, t6
    subu    a2, t7, a3
    addiu   t8, t8, 0xB000             # t8 = 008EB000
    ori     $at, $zero, 0xDC88         # $at = 0000DC88
    sw      v0, 0x0000(s5)             # 00000000
    sw      a2, 0x0004(s5)             # 00000004
    addu    a0, s5, $at
    addu    a1, v0, t8
    jal     func_80000DF0
    or      s0, a2, $zero              # s0 = 00000000
    ori     s8, $zero, 0x8000          # s8 = 00008000
    addu    t9, s5, s8
    lhu     t0, 0x5C88(t9)             # 00005C88
    ori     s7, $zero, 0x8170          # s7 = 00008170
    or      s2, $zero, $zero           # s2 = 00000000
    beq     s7, t0, lbl_8005BE6C
    or      s1, $zero, $zero           # s1 = 00000000
    srl     s6, s0,  1
    slt     $at, s6, s1
lbl_8005BE10:
    bne     $at, $zero, lbl_8005BE6C
    sll     t1, s1,  1
    addu    t2, s5, t1
    addu    s0, t2, s8
    lhu     a0, 0x5C88(s0)             # 00005C88
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    sll     t3, s2,  3
    beq     a0, $at, lbl_8005BE58
    addu    s3, s5, t3
    lui     s4, 0x004E                 # s4 = 004E0000
    addiu   s4, s4, 0x9F40             # s4 = 004D9F40
    jal     func_800AF790
    addiu   s3, s3, 0x3C88             # s3 = 00003C88
    or      a0, s3, $zero              # a0 = 00003C88
    addu    a1, s4, v0
    jal     func_80000DF0
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   s2, s2, 0x0010             # s2 = 00000010
lbl_8005BE58:
    lhu     t4, 0x5C8A(s0)             # 00005C8A
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   s0, s0, 0x0002             # s0 = 00000002
    bnel    s7, t4, lbl_8005BE10
    slt     $at, s6, s1
lbl_8005BE6C:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    lw      s5, 0x002C($sp)
    lw      s6, 0x0030($sp)
    lw      s7, 0x0034($sp)
    lw      s8, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    nop
