#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B19880:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      a1, 0x004C($sp)            
    lh      t6, 0x0018(s0)             # 00000018
    lh      v0, 0x001C(s0)             # 0000001C
    lui     t9, %hi(var_80B19C20)      # t9 = 80B20000
    andi    t7, t6, 0x0001             # t7 = 00000000
    sll     t8, t7,  2                 
    subu    t8, t8, t7                 
    sll     t8, t8,  2                 
    subu    t8, t8, t7                 
    sra     t1, v0,  6                 
    sll     t8, t8,  2                 
    addiu   t9, t9, %lo(var_80B19C20)  # t9 = 80B19C20
    andi    t2, t1, 0x0001             # t2 = 00000000
    bne     t2, $zero, lbl_80B198EC    
    addu    t0, t8, t9                 
    lw      a0, 0x004C($sp)            
    andi    a1, v0, 0x003F             # a1 = 00000000
    jal     func_8002049C              
    sw      t0, 0x0044($sp)            
    beq     v0, $zero, lbl_80B198EC    
    lw      t0, 0x0044($sp)            
    beq     $zero, $zero, lbl_80B19924 
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80B198EC:
    lh      v0, 0x001C(s0)             # 0000001C
    lw      a0, 0x004C($sp)            
    sra     t3, v0, 14                 
    andi    t4, t3, 0x0001             # t4 = 00000000
    bne     t4, $zero, lbl_80B19920    
    sra     a1, v0,  8                 
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_8002049C              
    sw      t0, 0x0044($sp)            
    beq     v0, $zero, lbl_80B19920    
    lw      t0, 0x0044($sp)            
    beq     $zero, $zero, lbl_80B19924 
    addiu   v1, $zero, 0x0002          # v1 = 00000002
lbl_80B19920:
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B19924:
    sll     t6, v1,  2                 
    subu    t6, t6, v1                 
    sll     t6, t6,  2                 
    addu    v0, t0, t6                 
    lwc1    $f4, 0x0000(v0)            # 00000000
    lw      a2, 0x004C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f4, 0x0010($sp)           
    lwc1    $f6, 0x0004(v0)            # 00000004
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    swc1    $f6, 0x0014($sp)           
    lwc1    $f8, 0x0008(v0)            # 00000008
    sw      $zero, 0x001C($sp)         
    swc1    $f8, 0x0018($sp)           
    lh      t7, 0x002A(t0)             # 0000002A
    sw      $zero, 0x0024($sp)         
    sw      t7, 0x0020($sp)            
    lbu     t8, 0x0027(t0)             # 00000027
    lbu     t2, 0x0028(t0)             # 00000028
    sw      t0, 0x0044($sp)            
    sll     t9, t8,  6                 
    andi    t1, t9, 0x00C0             # t1 = 00000000
    andi    t3, t2, 0x000F             # t3 = 00000000
    or      t4, t1, t3                 # t4 = 00000000
    ori     t5, t4, 0xFF00             # t5 = 0000FF00
    sw      t5, 0x0028($sp)            
    jal     func_800253F0              
    sw      v1, 0x0040($sp)            
    lw      v1, 0x0040($sp)            
    bne     v0, $zero, lbl_80B199B4    
    lw      t0, 0x0044($sp)            
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B199E4 
    lw      $ra, 0x003C($sp)           
lbl_80B199B4:
    addu    t6, t0, v1                 
    lbu     t7, 0x0024(t6)             # 00000024
    andi    t8, t7, 0x0002             # t8 = 00000000
    beql    t8, $zero, lbl_80B199D8    
    sh      $zero, 0x00B8(s0)          # 000000B8
    lw      t2, 0x011C(s0)             # 0000011C
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sb      t9, 0x01AE(t2)             # 000001AE
    sh      $zero, 0x00B8(s0)          # 000000B8
lbl_80B199D8:
    lh      t1, 0x00B8(s0)             # 000000B8
    sh      t1, 0x0034(s0)             # 00000034
    lw      $ra, 0x003C($sp)           
lbl_80B199E4:
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_80B199F4:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s3, 0x0028($sp)            
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s2, 0x0024($sp)            
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    sdc1    $f20, 0x0010($sp)          
    sw      a1, 0x0054($sp)            
    lh      t6, 0x0018(s3)             # 00000018
    lui     t9, %hi(var_80B19C20)      # t9 = 80B20000
    addiu   t9, t9, %lo(var_80B19C20)  # t9 = 80B19C20
    andi    t7, t6, 0x0001             # t7 = 00000000
    sll     t8, t7,  2                 
    subu    t8, t8, t7                 
    sll     t8, t8,  2                 
    subu    t8, t8, t7                 
    sll     t8, t8,  2                 
    addu    s0, t8, t9                 
    lui     $at, %hi(var_80B19CA0)     # $at = 80B20000
    lwc1    $f20, %lo(var_80B19CA0)($at) 
    sw      s0, 0x004C($sp)            
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s2, $zero, 0x0003          # s2 = 00000003
lbl_80B19A54:
    lw      a0, 0x011C(s3)             # 0000011C
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A5538              
    addiu   a0, a0, 0x0024             # a0 = 00000024
    c.lt.s  $f0, $f20                  
    nop
    bc1fl   lbl_80B19BCC               
    addiu   s1, s1, 0x0001             # s1 = 00000001
    lw      t0, 0x004C($sp)            
    addu    t1, t0, s1                 
    sw      t1, 0x0034($sp)            
    lbu     t2, 0x0024(t1)             # 00000024
    andi    t3, t2, 0x0001             # t3 = 00000000
    beq     t3, $zero, lbl_80B19B44    
    nop
    lh      v0, 0x001C(s3)             # 0000001C
    lw      a0, 0x0054($sp)            
    sra     t4, v0,  6                 
    andi    t5, t4, 0x0001             # t5 = 00000000
    beq     t5, $zero, lbl_80B19AB0    
    nop
    beq     $zero, $zero, lbl_80B19AE0 
    or      s2, $zero, $zero           # s2 = 00000000
lbl_80B19AB0:
    jal     func_8002049C              
    andi    a1, v0, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80B19AC8    
    sll     t6, s1,  3                 
    beq     $zero, $zero, lbl_80B19ACC 
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80B19AC8:
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B19ACC:
    lui     t7, %hi(var_80B19C78)      # t7 = 80B20000
    addu    t7, t7, t6                 
    lw      t7, %lo(var_80B19C78)(t7)  
    lh      v0, 0x001C(s3)             # 0000001C
    xor     s2, t7, v1                 
lbl_80B19AE0:
    sra     t8, v0, 14                 
    andi    t9, t8, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_80B19AF8    
    lw      a0, 0x0054($sp)            
    beq     $zero, $zero, lbl_80B19B2C 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B19AF8:
    lui     t1, %hi(var_80B19C78)      # t1 = 80B20000
    addiu   t1, t1, %lo(var_80B19C78)  # t1 = 80B19C78
    sra     a1, v0,  8                 
    sll     t0, s1,  3                 
    addu    s0, t0, t1                 
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80B19B24    
    or      v1, $zero, $zero           # v1 = 00000000
    beq     $zero, $zero, lbl_80B19B24 
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80B19B24:
    lw      t2, 0x0004(s0)             # 00000004
    xor     v0, t2, v1                 
lbl_80B19B2C:
    bne     s2, $zero, lbl_80B19B3C    
    nop
    beq     v0, $zero, lbl_80B19B44    
    nop
lbl_80B19B3C:
    jal     func_800646F0              
    addiu   a0, $zero, 0x4807          # a0 = 00004807
lbl_80B19B44:
    lui     t4, %hi(var_80B19C78)      # t4 = 80B20000
    addiu   t4, t4, %lo(var_80B19C78)  # t4 = 80B19C78
    sll     t3, s1,  3                 
    addu    s0, t3, t4                 
    lw      t5, 0x0000(s0)             # 00000000
    lui     s2, %hi(var_80B19C90)      # s2 = 80B20000
    addiu   s2, s2, %lo(var_80B19C90)  # s2 = 80B19C90
    sll     t6, t5,  2                 
    addu    t7, s2, t6                 
    lw      t9, 0x0000(t7)             # 00000000
    lh      a1, 0x001C(s3)             # 0000001C
    lw      a0, 0x0054($sp)            
    jalr    $ra, t9                    
    andi    a1, a1, 0x003F             # a1 = 00000000
    lw      t8, 0x0004(s0)             # 00000004
    lh      a1, 0x001C(s3)             # 0000001C
    lw      a0, 0x0054($sp)            
    sll     t0, t8,  2                 
    addu    t1, s2, t0                 
    lw      t9, 0x0000(t1)             # 00000000
    sra     a1, a1,  8                 
    andi    a1, a1, 0x003F             # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lw      t2, 0x0034($sp)            
    lbu     t3, 0x0024(t2)             # 00000024
    andi    t4, t3, 0x0002             # t4 = 00000000
    beql    t4, $zero, lbl_80B19BD8    
    lw      $ra, 0x002C($sp)           
    lw      t6, 0x011C(s3)             # 0000011C
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    beq     $zero, $zero, lbl_80B19BD4 
    sb      t5, 0x01AE(t6)             # 000001AE
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_80B19BCC:
    bne     s1, s2, lbl_80B19A54       
    addiu   s0, s0, 0x000C             # s0 = 0000000C
lbl_80B19BD4:
    lw      $ra, 0x002C($sp)           
lbl_80B19BD8:
    ldc1    $f20, 0x0010($sp)          
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    lw      s2, 0x0024($sp)            
    lw      s3, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    nop
    nop
    nop

.section .data

var_80B19C00: .word 0x017D0600, 0x00000020, 0x00030000, 0x0000013C
.word func_80B19880
.word 0x80027EF4, 0x80027EF4
.word func_80B199F4
var_80B19C20: .word \
0x44250000, 0x43E60000, 0x44250000, 0x44250000, \
0x43E48000, 0x44070000, 0x44430000, 0x43E30000, \
0x44070000, 0x000003FF, 0x02000000, 0xC4174000, \
0xC44D0000, 0xC3910000, 0xC3B68000, 0xC4624000, \
0xC3910000, 0xC3B68000, 0xC4624000, 0xC3910000, \
0x000300FF, 0x00000000
var_80B19C78: .word \
0x00000000, 0x00000000, 0x00000001, 0x00000000, \
0x00000000, 0x00000001
var_80B19C90: .word 0x80020510, 0x800204D0, 0x00000000, 0x00000000

.section .rodata

var_80B19CA0: .word 0x3A83126F, 0x00000000, 0x00000000, 0x00000000

