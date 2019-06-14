#include <mips.h>
.set noreorder
.set noat

.section .text
func_8091E4E0:
    sw      a1, 0x0180(a0)             # 00000180
    jr      $ra                        
    nop


func_8091E4EC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a1, %hi(var_8091E930)      # a1 = 80920000
    addiu   a1, a1, %lo(var_8091E930)  # a1 = 8091E930
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x006C             # a3 = 0600006C
    addiu   a2, a2, 0x2190             # a2 = 06002190
    lw      a0, 0x0034($sp)            
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8008C684              
    sw      $zero, 0x0018($sp)         
    lui     a1, 0x45AB                 # a1 = 45AB0000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    ori     a1, a1, 0xE000             # a1 = 45ABE000
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    jal     func_8001EC20              
    lui     a3, 0x4080                 # a3 = 40800000
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    $at, $f8                   # $f8 = 40.00
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f10                  # $f10 = 70.00
    addiu   t6, $zero, 0x09C4          # t6 = 000009C4
    sw      $zero, 0x0184(s0)          # 00000184
    sw      $zero, 0x0188(s0)          # 00000188
    sh      t6, 0x01B0(s0)             # 000001B0
    sb      $zero, 0x00AE(s0)          # 000000AE
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x001C(s0)             # 0000001C
    swc1    $f4, 0x0198(s0)            # 00000198
    swc1    $f6, 0x019C(s0)            # 0000019C
    swc1    $f0, 0x0190(s0)            # 00000190
    swc1    $f0, 0x0194(s0)            # 00000194
    swc1    $f0, 0x01A8(s0)            # 000001A8
    swc1    $f8, 0x01A0(s0)            # 000001A0
    jal     func_8091E5E8              
    swc1    $f10, 0x01AC(s0)           # 000001AC
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8091E5D8:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_8091E5E8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x006C             # a0 = 0600006C
    lw      t6, 0x0030($sp)            
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    lh      t7, 0x018C(t6)             # 0000018C
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    addiu   a1, $zero, 0x0023          # a1 = 00000023
    beq     t7, $zero, lbl_8091E630    
    cvt.s.w $f2, $f4                   
    mtc1    $zero, $f0                 # $f0 = 0.00
    beq     $zero, $zero, lbl_8091E63C 
    swc1    $f0, 0x0028($sp)           
lbl_8091E630:
    mtc1    $at, $f0                   # $f0 = 1.00
    nop
    swc1    $f0, 0x0028($sp)           
lbl_8091E63C:
    jal     func_80063BF0              
    swc1    $f2, 0x002C($sp)           
    lw      v1, 0x0030($sp)            
    lwc1    $f0, 0x0028($sp)           
    mtc1    $zero, $f12                # $f12 = 0.00
    lwc1    $f2, 0x002C($sp)           
    sw      v0, 0x0188(v1)             # 00000188
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a2, $f0                    
    mfc1    a3, $f12                   
    addiu   a1, a1, 0x006C             # a1 = 0600006C
    sw      $zero, 0x0014($sp)         
    addiu   a0, v1, 0x013C             # a0 = 0000013C
    swc1    $f12, 0x0018($sp)          
    jal     func_8008D17C              
    swc1    $f2, 0x0010($sp)           
    lui     a1, %hi(func_8091E69C)     # a1 = 80920000
    addiu   a1, a1, %lo(func_8091E69C) # a1 = 8091E69C
    jal     func_8091E4E0              
    lw      a0, 0x0030($sp)            
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8091E69C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_800CF470              
    lwc1    $f12, 0x01A4(s0)           # 000001A4
    lwc1    $f6, 0x0190(s0)            # 00000190
    lwc1    $f4, 0x00BC(s0)            # 000000BC
    mtc1    $zero, $f2                 # $f2 = 0.00
    mul.s   $f8, $f0, $f6              
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mfc1    a1, $f2                    
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a3, 0x3F00                 # a3 = 3F000000
    add.s   $f10, $f4, $f8             
    swc1    $f10, 0x00BC(s0)           # 000000BC
    jal     func_80064178              
    swc1    $f2, 0x0010($sp)           
    lh      t6, 0x018C(s0)             # 0000018C
    beq     t6, $zero, lbl_8091E704    
    nop
    lwc1    $f0, 0x0068(s0)            # 00000068
    add.s   $f16, $f0, $f0             
    swc1    $f16, 0x0158(s0)           # 00000158
lbl_8091E704:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t7, 0x0188(s0)             # 00000188
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    bgtz    t8, lbl_8091E728           
    sw      t8, 0x0188(s0)             # 00000188
    jal     func_8091E73C              
    lh      a1, 0x001C(s0)             # 0000001C
lbl_8091E728:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8091E73C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    addiu   a0, $zero, 0x0014          # a0 = 00000014
    jal     func_80063BF0              
    addiu   a1, $zero, 0x002D          # a1 = 0000002D
    lw      a0, 0x0018($sp)            
    lui     a1, %hi(func_8091E77C)     # a1 = 80920000
    addiu   a1, a1, %lo(func_8091E77C) # a1 = 8091E77C
    jal     func_8091E4E0              
    sw      v0, 0x0188(a0)             # 00000188
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8091E77C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    jal     func_800CF470              
    lwc1    $f12, 0x01A4(s0)           # 000001A4
    lwc1    $f6, 0x0190(s0)            # 00000190
    lwc1    $f4, 0x00BC(s0)            # 000000BC
    mtc1    $zero, $f16                # $f16 = 0.00
    mul.s   $f8, $f0, $f6              
    lw      a1, 0x0198(s0)             # 00000198
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lw      a3, 0x019C(s0)             # 0000019C
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0068             # a0 = 00000068
    add.s   $f10, $f4, $f8             
    swc1    $f10, 0x00BC(s0)           # 000000BC
    jal     func_80064178              
    swc1    $f16, 0x0010($sp)          
    addiu   a0, s0, 0x0024             # a0 = 00000024
    addiu   a1, s0, 0x0008             # a1 = 00000008
    sw      a1, 0x0028($sp)            
    jal     func_80063EB8              
    sw      a0, 0x002C($sp)            
    lwc1    $f18, 0x01A0(s0)           # 000001A0
    lw      a0, 0x002C($sp)            
    lw      a1, 0x0028($sp)            
    c.lt.s  $f18, $f0                  
    nop
    bc1t    lbl_8091E80C               
    nop
    lw      t6, 0x0188(s0)             # 00000188
    slti    $at, t6, 0x0004            
    beq     $at, $zero, lbl_8091E830   
    nop
lbl_8091E80C:
    jal     func_80063F00              
    nop
    sll     a1, v0, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x0032             # a0 = 00000032
    jal     func_800639B8              
    lh      a2, 0x01B0(s0)             # 000001B0
    beq     $zero, $zero, lbl_8091E85C 
    lh      t3, 0x0032(s0)             # 00000032
lbl_8091E830:
    jal     func_800CF470              
    lwc1    $f12, 0x01A4(s0)           # 000001A4
    lwc1    $f6, 0x0194(s0)            # 00000194
    lh      t7, 0x0032(s0)             # 00000032
    mul.s   $f4, $f0, $f6              
    trunc.w.s $f8, $f4                   
    mfc1    t1, $f8                    
    nop
    addu    t2, t7, t1                 
    sh      t2, 0x0032(s0)             # 00000032
    lh      t3, 0x0032(s0)             # 00000032
lbl_8091E85C:
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sh      t3, 0x00B6(s0)             # 000000B6
    lw      t4, 0x0188(s0)             # 00000188
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t5, t4, 0xFFFF             # t5 = FFFFFFFF
    bgez    t5, lbl_8091E884           
    sw      t5, 0x0188(s0)             # 00000188
    jal     func_8091E5E8              
    lh      a1, 0x001C(s0)             # 0000001C
lbl_8091E884:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8091E898:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lwc1    $f4, 0x01A4(a0)            # 000001A4
    lwc1    $f6, 0x01A8(a0)            # 000001A8
    lw      t9, 0x0180(a0)             # 00000180
    add.s   $f8, $f4, $f6              
    jalr    $ra, t9                    
    swc1    $f8, 0x01A4(a0)            # 000001A4
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8091E8C8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      t6, 0x0020($sp)            
    lw      a0, 0x0024($sp)            
    or      a3, $zero, $zero           # a3 = 00000000
    lw      a1, 0x0140(t6)             # 00000140
    lw      a2, 0x015C(t6)             # 0000015C
    sw      $zero, 0x0014($sp)         
    jal     func_8008993C              
    sw      $zero, 0x0010($sp)         
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_8091E910: .word 0x00720600, 0x00000000, 0x00770000, 0x000001CC
.word func_8091E4EC
.word func_8091E5D8
.word func_8091E898
.word func_8091E8C8
var_8091E930: .word 0x304C15E0, 0x00000000, 0x00000000, 0x00000000

.section .rodata


