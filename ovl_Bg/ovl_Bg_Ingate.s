#include <mips.h>
.set noreorder
.set noat

.section .text
func_80AA1810:
    sw      a1, 0x0154(a0)             # 00000154
    jr      $ra                        
    nop


func_80AA181C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    sw      $zero, 0x0024($sp)         
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x11B8             # a0 = 060011B8
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      a0, 0x0034($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sw      v0, 0x013C(s0)             # 0000013C
    lw      t6, 0x0034($sp)            
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   $at, $zero, 0x0063         # $at = 00000063
    lh      t7, 0x00A4(t6)             # 000000A4
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    bne     t7, $at, lbl_80AA18B8      
    nop
    lw      t8, 0x0004(v0)             # 8011A5D4
    bne     t8, $zero, lbl_80AA18B8    
    nop
    lhu     t9, 0x0ED6(v0)             # 8011B4A6
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    andi    t0, t9, 0x0100             # t0 = 00000000
    beq     t0, $zero, lbl_80AA18C8    
    nop
    lw      t1, 0x0008(v0)             # 8011A5D8
    ori     $at, $zero, 0xFFF0         # $at = 0000FFF0
    beq     t1, $at, lbl_80AA18C8      
    nop
lbl_80AA18B8:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AA1928 
    lw      $ra, 0x001C($sp)           
lbl_80AA18C8:
    jal     func_80020F88              
    ori     a1, a1, 0xCCCD             # a1 = 0000CCCD
    lh      t2, 0x001C(s0)             # 0000001C
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    andi    t3, t2, 0x0001             # t3 = 00000000
    beq     t3, $zero, lbl_80AA1918    
    or      a0, s0, $zero              # a0 = 00000000
    lhu     t4, 0x13FA(v0)             # 8011B9CA
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lw      t6, 0x0034($sp)            
    andi    t5, t4, 0x000F             # t5 = 00000000
    bne     t5, $at, lbl_80AA1918      
    lui     a1, %hi(func_80AA196C)     # a1 = 80AA0000
    sh      $zero, 0x1D74(t6)          # 00001D74
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AA1810              
    addiu   a1, a1, %lo(func_80AA196C) # a1 = 80AA196C
    beq     $zero, $zero, lbl_80AA1928 
    lw      $ra, 0x001C($sp)           
lbl_80AA1918:
    lui     a1, %hi(func_80AA1A6C)     # a1 = 80AA0000
    jal     func_80AA1810              
    addiu   a1, a1, %lo(func_80AA1A6C) # a1 = 80AA1A6C
    lw      $ra, 0x001C($sp)           
lbl_80AA1928:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA1938:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA196C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lhu     v0, 0x1D74(a1)             # 00001D74
    or      a0, a2, $zero              # a0 = 00000000
    slti    $at, v0, 0x0032            
    bnel    $at, $zero, lbl_80AA19C8   
    slti    $at, v0, 0x000A            
    lh      t6, 0x001C(a2)             # 0000001C
    addiu   v0, $zero, 0x4000          # v0 = 00004000
    andi    t7, t6, 0x0002             # t7 = 00000000
    bnel    t7, $zero, lbl_80AA19A8    
    lh      t8, 0x0032(a2)             # 00000032
    addiu   v0, $zero, 0xC000          # v0 = FFFFC000
    lh      t8, 0x0032(a2)             # 00000032
lbl_80AA19A8:
    lui     a1, %hi(func_80AA1A6C)     # a1 = 80AA0000
    addiu   a1, a1, %lo(func_80AA1A6C) # a1 = 80AA1A6C
    addu    t9, t8, v0                 
    jal     func_80AA1810              
    sh      t9, 0x00B6(a2)             # 000000B6
    beq     $zero, $zero, lbl_80AA1A60 
    lw      $ra, 0x0014($sp)           
    slti    $at, v0, 0x000A            
lbl_80AA19C8:
    bne     $at, $zero, lbl_80AA1A5C   
    addiu   a0, v0, 0xFFF6             # a0 = FFFFFFF6
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    addu    $at, a0, $zero             
    sll     a0, a0,  2                 
    subu    a0, a0, $at                
    sll     a0, a0,  3                 
    addu    a0, a0, $at                
    sll     a0, a0,  4                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    slti    $at, a0, 0x4001            
    bne     $at, $zero, lbl_80AA1A08   
    nop
    addiu   a0, $zero, 0x4000          # a0 = 00004000
lbl_80AA1A08:
    jal     func_800636C4              # sins?
    sw      a2, 0x0018($sp)            
    lui     $at, 0x4680                # $at = 46800000
    mtc1    $at, $f4                   # $f4 = 16384.00
    lw      a2, 0x0018($sp)            
    mul.s   $f6, $f0, $f4              
    lh      t1, 0x001C(a2)             # 0000001C
    andi    t2, t1, 0x0002             # t2 = 00000000
    trunc.w.s $f8, $f6                   
    mfc1    v1, $f8                    
    nop
    sll     v0, v1, 16                 
    bne     t2, $zero, lbl_80AA1A50    
    sra     v0, v0, 16                 
    or      v0, v1, $zero              # v0 = 00000000
    subu    v0, $zero, v0              
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
lbl_80AA1A50:
    lh      t3, 0x0032(a2)             # 00000032
    addu    t4, t3, v0                 
    sh      t4, 0x00B6(a2)             # 000000B6
lbl_80AA1A5C:
    lw      $ra, 0x0014($sp)           
lbl_80AA1A60:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA1A6C:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80AA1A7C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA1AA0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298              
    sw      a0, 0x0024($sp)            
    lw      a2, 0x0024($sp)            
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x002C($sp)            
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x001C($sp)            
    lw      a1, 0x001C($sp)            
    lw      a2, 0x0024($sp)            
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t2, 0x0600                 # t2 = 06000000
    addiu   t2, t2, 0x1040             # t2 = 06001040
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(a2)             # 000002C0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_80AA1B30: .word 0x01400600, 0x00000000, 0x01290000, 0x00000158
.word func_80AA181C
.word func_80AA1938
.word func_80AA1A7C
.word func_80AA1AA0

.section .rodata


