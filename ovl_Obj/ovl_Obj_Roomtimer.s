#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B25340:
    sw      a1, 0x0004($sp)            
    lh      v0, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x03FF         # $at = 000003FF
    lui     t0, %hi(func_80B253C8)     # t0 = 80B20000
    andi    t8, v0, 0x03FF             # t8 = 00000000
    sh      t8, 0x001C(a0)             # 0000001C
    sra     t6, v0, 10                 
    lh      v0, 0x001C(a0)             # 0000001C
    andi    t7, t6, 0x003F             # t7 = 00000000
    sw      t7, 0x0140(a0)             # 00000140
    beq     v0, $at, lbl_80B25388      
    addiu   t0, t0, %lo(func_80B253C8) # t0 = 80B253C8
    slti    $at, v0, 0x0259            
    bne     $at, $zero, lbl_80B25384   
    addiu   t9, $zero, 0x0258          # t9 = 00000258
    beq     $zero, $zero, lbl_80B25388 
    sh      t9, 0x001C(a0)             # 0000001C
lbl_80B25384:
    sh      v0, 0x001C(a0)             # 0000001C
lbl_80B25388:
    sw      t0, 0x013C(a0)             # 0000013C
    jr      $ra                        
    nop


func_80B25394:
    sw      a1, 0x0004($sp)            
    lh      t6, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x03FF         # $at = 000003FF
    lui     v0, 0x8012                 # v0 = 80120000
    beq     t6, $at, lbl_80B253C0      
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lh      t7, 0x13D0(v0)             # 8011B9A0
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    blez    t7, lbl_80B253C0           
    nop
    sh      t8, 0x13CE(v0)             # 8011B99E
lbl_80B253C0:
    jr      $ra                        
    nop


func_80B253C8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      t6, 0x0018($sp)            
    addiu   $at, $zero, 0x03FF         # $at = 000003FF
    lh      a2, 0x001C(t6)             # 0000001C
    beq     a2, $at, lbl_80B253F4      
    sll     a0, a2, 16                 
    jal     func_8007397C              
    sra     a0, a0, 16                 
lbl_80B253F4:
    lw      a0, 0x001C($sp)            
    lw      a2, 0x0018($sp)            
    addiu   a3, $zero, 0x0006          # a3 = 00000006
    jal     func_800265D4              
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    lw      t9, 0x0018($sp)            
    lui     t8, %hi(func_80B25428)     # t8 = 80B20000
    addiu   t8, t8, %lo(func_80B25428) # t8 = 80B25428
    sw      t8, 0x013C(t9)             # 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B25428:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_80020694              
    lb      a1, 0x0003(s0)             # 00000003
    beql    v0, $zero, lbl_80B2549C    
    lh      t8, 0x001C(s0)             # 0000001C
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x03FF         # $at = 000003FF
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    beq     t6, $at, lbl_80B25468      
    lui     $at, 0x8012                # $at = 80120000
    sh      t7, -0x4662($at)           # 8011B99E
lbl_80B25468:
    lw      a0, 0x002C($sp)            
    jal     func_80020658              
    lb      a1, 0x0003(s0)             # 00000003
    lw      a0, 0x002C($sp)            
    jal     func_800204D0              
    lw      a1, 0x0140(s0)             # 00000140
    jal     func_800646F0              
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B254F4 
    lw      $ra, 0x0024($sp)           
    lh      t8, 0x001C(s0)             # 0000001C
lbl_80B2549C:
    addiu   $at, $zero, 0x03FF         # $at = 000003FF
    lui     t9, 0x8012                 # t9 = 80120000
    beql    t8, $at, lbl_80B254F4      
    lw      $ra, 0x0024($sp)           
    lh      t9, -0x4660(t9)            # 8011B9A0
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    bne     t9, $zero, lbl_80B254F0    
    addiu   a0, $zero, 0x5801          # a0 = 00005801
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t0, 0x0014($sp)            
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C              
    sw      a3, 0x0010($sp)            
    jal     func_8009D9B8              
    lw      a0, 0x002C($sp)            
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B254F0:
    lw      $ra, 0x0024($sp)           
lbl_80B254F4:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B25504:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x013C(a0)             # 0000013C
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_80B25530: .word 0x01870500, 0x00000010, 0x00010000, 0x00000144
.word func_80B25340
.word func_80B25394
.word func_80B25504
.word 0x00000000

.section .rodata


