#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B32C70:
    addiu   $sp, $sp, 0xFFF0           # $sp = FFFFFFF0
    sw      a0, 0x0010($sp)            
    sw      a1, 0x0014($sp)            
    addiu   v1, $sp, 0x0000            # v1 = FFFFFFF0
    lw      t7, 0x0000(a3)             # 00000000
    addiu   t2, $zero, 0x0008          # t2 = 00000008
    lui     t4, %hi(func_80B32CFC)     # t4 = 80B30000
    sw      t7, 0x0000(v1)             # FFFFFFF0
    lw      t6, 0x0004(a3)             # 00000004
    lw      t9, 0x0000(v1)             # FFFFFFF0
    lui     t5, %hi(func_80B32EFC)     # t5 = 80B30000
    sw      t6, 0x0004(v1)             # FFFFFFF4
    lw      t7, 0x0008(a3)             # 00000008
    addiu   t4, t4, %lo(func_80B32CFC) # t4 = 80B32CFC
    addiu   t5, t5, %lo(func_80B32EFC) # t5 = 80B32EFC
    sw      t7, 0x0008(v1)             # FFFFFFF8
    sw      t9, 0x0000(a2)             # 00000000
    lw      t8, 0x0004(v1)             # FFFFFFF4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      t8, 0x0004(a2)             # 00000004
    lw      t9, 0x0008(v1)             # FFFFFFF8
    sw      t9, 0x0008(a2)             # 00000008
    lw      t1, 0x0000(v1)             # FFFFFFF0
    sw      t1, 0x002C(a2)             # 0000002C
    lw      t0, 0x0004(v1)             # FFFFFFF4
    sw      t0, 0x0030(a2)             # 00000030
    lw      t1, 0x0008(v1)             # FFFFFFF8
    sh      t2, 0x005C(a2)             # 0000005C
    sw      t1, 0x0034(a2)             # 00000034
    lw      t3, 0x000C(a3)             # 0000000C
    sw      t4, 0x0028(a2)             # 00000028
    sw      t5, 0x0024(a2)             # 00000024
    sh      t3, 0x0040(a2)             # 00000040
    jr      $ra                        
    addiu   $sp, $sp, 0x0010           # $sp = 00000000


func_80B32CFC:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s2, 0x0028($sp)            
    or      s2, a2, $zero              # s2 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s1, 0x0024($sp)            
    sw      s0, 0x0020($sp)            
    sdc1    $f20, 0x0018($sp)          
    sw      a0, 0x0068($sp)            
    sw      a1, 0x006C($sp)            
    lh      t7, 0x005C(s2)             # 0000005C
    lw      t6, 0x0068($sp)            
    lui     t9, %hi(var_80B32F48)      # t9 = 80B30000
    sll     t8, t7,  2                 
    subu    t8, t8, t7                 
    sll     t8, t8,  2                 
    addiu   t9, t9, %lo(var_80B32F48)  # t9 = 80B32F48
    addu    s1, t8, t9                 
    lw      s0, 0x0000(t6)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    addu    a0, t6, $at                
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFEC
    jal     func_8008EC20              
    addiu   a3, $sp, 0x0050            # a3 = FFFFFFE8
    lui     $at, %hi(var_80B32FB0)     # $at = 80B30000
    lwc1    $f2, %lo(var_80B32FB0)($at) 
    lwc1    $f0, 0x0050($sp)           
    or      a3, $zero, $zero           # a3 = 00000000
    c.lt.s  $f0, $f2                   
    nop
    bc1f    lbl_80B32D8C               
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f20                  # $f20 = 3.00
    beq     $zero, $zero, lbl_80B32DA8 
    lwc1    $f12, 0x0000(s2)           # 00000000
lbl_80B32D8C:
    div.s   $f4, $f0, $f2              
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    nop
    mul.s   $f20, $f4, $f6             
    nop
    lwc1    $f12, 0x0000(s2)           # 00000000
lbl_80B32DA8:
    lwc1    $f14, 0x0004(s2)           # 00000004
    jal     func_800AA7F4              
    lw      a2, 0x0008(s2)             # 00000008
    mfc1    a2, $f20                   
    mov.s   $f12, $f20                 
    mov.s   $f14, $f20                 
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t0, v0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s0)             # 000002D0
    or      a0, s0, $zero              # a0 = 00000000
    sw      t1, 0x0000(v0)             # 00000000
    jal     func_800AB900              
    or      s2, v0, $zero              # s2 = 00000000
    sw      v0, 0x0004(s2)             # 00000004
    jal     func_8007E978              
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0020             # t3 = DB060020
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v0)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    lui     t8, 0x8012                 # t8 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t4, a0,  4                 
    srl     t5, t4, 28                 
    sll     t7, t5,  2                 
    addu    t8, t8, t7                 
    lw      t8, 0x0C38(t8)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t9, a0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t8, t9                 
    addu    t0, t6, $at                
    sw      t0, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t2, 0xFA00                 # t2 = FA000000
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(v0)             # 00000000
    lbu     t8, 0x0005(s1)             # 00000005
    lbu     t4, 0x0004(s1)             # 00000004
    lbu     t1, 0x0006(s1)             # 00000006
    sll     t9, t8, 16                 
    sll     t5, t4, 24                 
    or      t6, t5, t9                 # t6 = 00000000
    sll     t2, t1,  8                 
    or      t3, t6, t2                 # t3 = FA000000
    ori     t4, t3, 0x00FF             # t4 = FA0000FF
    sw      t4, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t8, 0xFB00                 # t8 = FB000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v0)             # 00000000
    lbu     t6, 0x0009(s1)             # 00000009
    lbu     t9, 0x0008(s1)             # 00000008
    lbu     t7, 0x000A(s1)             # 0000000A
    sll     t2, t6, 16                 
    sll     t0, t9, 24                 
    or      t3, t0, t2                 # t3 = FA000000
    sll     t8, t7,  8                 
    or      t5, t3, t8                 # t5 = FB000000
    ori     t9, t5, 0x00FF             # t9 = FB0000FF
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t0, 0x0403                 # t0 = 04030000
    addiu   t0, t0, 0xA330             # t0 = 0402A330
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(v0)             # 00000000
    sw      t0, 0x0004(v0)             # 00000004
    lw      $ra, 0x002C($sp)           
    ldc1    $f20, 0x0018($sp)          
    lw      s0, 0x0020($sp)            
    lw      s1, 0x0024($sp)            
    lw      s2, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_80B32EFC:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    lh      t6, 0x005C(a2)             # 0000005C
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     t6, $at, lbl_80B32F2C      
    nop
    lh      t7, 0x0040(a2)             # 00000040
    lui     t8, 0x8012                 # t8 = 80120000
    beq     t7, $zero, lbl_80B32F2C    
    nop
    lw      t8, -0x4600(t8)            # 8011BA00
    sh      $zero, 0x0D38(t8)          # 80120D38
lbl_80B32F2C:
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

.word 0x00000014
.word func_80B32C70
var_80B32F48: .word \
0x04029F30, 0xC80000FF, 0x000000FF, 0x04029B30, \
0xFF6400FF, 0x640000FF, 0x04029730, 0xFFC800FF, \
0xC80000FF, 0x04029330, 0xFFFF00FF, 0xFF0000FF, \
0x04028F30, 0xFFFF96FF, 0xFF9600FF, 0x04028B30, \
0xFFFFFFFF, 0xFFFF00FF, 0x04028730, 0xFFFFFFFF, \
0x00FF00FF, 0x04028330, 0xFFFFFFFF, 0x00FFFFFF, \
0x00000000, 0x00000000

.section .rodata

var_80B32FB0: .word 0x44BB8000, 0x00000000, 0x00000000, 0x00000000

