#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A2FF70:
    sw      a1, 0x0004($sp)            
    lh      v0, 0x001C(a0)             # 0000001C
    lui     t6, %hi(func_80A2FFD0)     # t6 = 80A30000
    addiu   t6, t6, %lo(func_80A2FFD0) # t6 = 80A2FFD0
    slti    $at, v0, 0xFFFF            
    beq     $at, $zero, lbl_80A2FF94   
    nop
    sh      $zero, 0x001C(a0)          # 0000001C
    lh      v0, 0x001C(a0)             # 0000001C
lbl_80A2FF94:
    beql    v0, $zero, lbl_80A2FFB8    
    sw      t6, 0x013C(a0)             # 0000013C
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f8                   # $f8 = 40.00
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f8             
    swc1    $f10, 0x0144(a0)           # 00000144
    sw      t6, 0x013C(a0)             # 0000013C
lbl_80A2FFB8:
    jr      $ra                        
    nop


func_80A2FFC0:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80A2FFD0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    or      a2, a1, $zero              # a2 = 00000000
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a0, 0x0038($sp)            
    lwc1    $f4, 0x0024(a1)            # 00000024
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    addiu   a3, $zero, 0x00E0          # a3 = 000000E0
    swc1    $f4, 0x0010($sp)           
    lwc1    $f6, 0x0028(a1)            # 00000028
    swc1    $f6, 0x0014($sp)           
    lwc1    $f8, 0x002C(a1)            # 0000002C
    sw      $zero, 0x001C($sp)         
    swc1    $f8, 0x0018($sp)           
    lh      t6, 0x008A(a1)             # 0000008A
    sw      a1, 0x0038($sp)            
    sw      $zero, 0x0028($sp)         
    sw      $zero, 0x0024($sp)         
    jal     func_800253F0              
    sw      t6, 0x0020($sp)            
    lw      a1, 0x0038($sp)            
    lui     t7, %hi(func_80A30048)     # t7 = 80A30000
    beq     v0, $zero, lbl_80A30038    
    sw      v0, 0x0140(a1)             # 00000140
    addiu   t7, t7, %lo(func_80A30048) # t7 = 80A30048
    sw      t7, 0x013C(a1)             # 0000013C
lbl_80A30038:
    lw      $ra, 0x0034($sp)           
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80A30048:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lw      v1, 0x0140(s0)             # 00000140
    beq     v1, $zero, lbl_80A30080    
    nop
    lw      t6, 0x0130(v1)             # 00000130
    or      v0, v1, $zero              # v0 = 00000000
    bnel    t6, $zero, lbl_80A30094    
    lh      t7, 0x024A(v0)             # 0000024A
    beq     $zero, $zero, lbl_80A3019C 
    lw      $ra, 0x001C($sp)           
lbl_80A30080:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A3019C 
    lw      $ra, 0x001C($sp)           
    lh      t7, 0x024A(v0)             # 0000024A
lbl_80A30094:
    lui     $at, 0x4348                # $at = 43480000
    beql    t7, $zero, lbl_80A300B4    
    mtc1    $at, $f6                   # $f6 = 200.00
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A3019C 
    lw      $ra, 0x001C($sp)           
    mtc1    $at, $f6                   # $f6 = 0.00
lbl_80A300B4:
    lwc1    $f8, 0x0144(s0)            # 00000144
    lwc1    $f4, 0x0090(s0)            # 00000090
    add.s   $f10, $f6, $f8             
    c.lt.s  $f4, $f10                  
    nop
    bc1fl   lbl_80A30188               
    lh      t1, 0x024E(v0)             # 0000024E
    lh      t8, 0x0250(v0)             # 00000250
    bnel    t8, $zero, lbl_80A3019C    
    lw      $ra, 0x001C($sp)           
    lh      t9, 0x0252(v0)             # 00000252
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    bnel    t9, $zero, lbl_80A3019C    
    lw      $ra, 0x001C($sp)           
    sh      t0, 0x024E(v0)             # 0000024E
    lh      a0, 0x008A(s0)             # 0000008A
    jal     func_800636C4              # sins?
    sw      v0, 0x002C($sp)            
    lwc1    $f18, 0x0090(s0)           # 00000090
    neg.s   $f16, $f0                  
    mul.s   $f6, $f16, $f18            
    swc1    $f6, 0x0020($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x008A(s0)             # 0000008A
    lwc1    $f4, 0x0090(s0)            # 00000090
    neg.s   $f8, $f0                   
    lwc1    $f18, 0x0020($sp)          
    mul.s   $f10, $f8, $f4             
    lw      v0, 0x002C($sp)            
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    lui     a3, 0x4120                 # a3 = 41200000
    addiu   a0, v0, 0x0024             # a0 = 00000024
    swc1    $f10, 0x0028($sp)          
    lwc1    $f16, 0x0024(s0)           # 00000024
    add.s   $f6, $f16, $f18            
    mfc1    a1, $f6                    
    jal     func_80064280              
    nop
    lwc1    $f8, 0x002C(s0)            # 0000002C
    lwc1    $f4, 0x0028($sp)           
    lw      v0, 0x002C($sp)            
    lui     a2, 0x3E99                 # a2 = 3E990000
    add.s   $f10, $f8, $f4             
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    lui     a3, 0x4120                 # a3 = 41200000
    addiu   a0, v0, 0x002C             # a0 = 0000002C
    mfc1    a1, $f10                   
    jal     func_80064280              
    nop
    beq     $zero, $zero, lbl_80A3019C 
    lw      $ra, 0x001C($sp)           
    lh      t1, 0x024E(v0)             # 0000024E
lbl_80A30188:
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    beql    t1, $zero, lbl_80A3019C    
    lw      $ra, 0x001C($sp)           
    sh      t2, 0x0250(v0)             # 00000250
    lw      $ra, 0x001C($sp)           
lbl_80A3019C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A301AC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x013C(a0)             # 0000013C
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A301D0:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop

.section .data

var_80A301E0: .word 0x00F60000, 0x00000010, 0x00010000, 0x00000148
.word func_80A2FF70
.word func_80A2FFC0
.word func_80A301AC
.word func_80A301D0

.section .rodata


