#include <mips.h>
.set noreorder
.set noat

.section .text
func_80959A10:
    sw      a1, 0x0188(a0)             # 00000188
    jr      $ra                        
    nop


func_80959A1C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lh      v0, 0x001C(s0)             # 0000001C
    sh      $zero, 0x00B8(s0)          # 000000B8
    lh      t6, 0x00B8(s0)             # 000000B8
    andi    t7, v0, 0x0300             # t7 = 00000000
    beq     t7, $zero, lbl_80959AB0    
    sh      t6, 0x00B6(s0)             # 000000B6
    andi    t8, v0, 0x0200             # t8 = 00000000
    beq     t8, $zero, lbl_80959A80    
    lw      a0, 0x002C($sp)            
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    jal     func_8004AB7C              
    sw      a1, 0x0020($sp)            
    lui     a3, %hi(var_80959FB0)      # a3 = 80960000
    lw      a1, 0x0020($sp)            
    addiu   a3, a3, %lo(var_80959FB0)  # a3 = 80959FB0
    lw      a0, 0x002C($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    beq     $zero, $zero, lbl_80959A90 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80959A80:
    lw      t9, 0x0004(s0)             # 00000004
    ori     t0, t9, 0x0010             # t0 = 00000010
    sw      t0, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
lbl_80959A90:
    jal     func_80020F88              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a1, %hi(func_80959B14)     # a1 = 80960000
    addiu   a1, a1, %lo(func_80959B14) # a1 = 80959B14
    jal     func_80959A10              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80959AC4 
    sb      $zero, 0x001F(s0)          # 0000001F
lbl_80959AB0:
    lui     a1, %hi(func_80959C4C)     # a1 = 80960000
    addiu   a1, a1, %lo(func_80959C4C) # a1 = 80959C4C
    jal     func_80959A10              
    or      a0, s0, $zero              # a0 = 00000000
    sb      $zero, 0x001F(s0)          # 0000001F
lbl_80959AC4:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80959AD8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      t6, 0x001C(a2)             # 0000001C
    or      a0, a3, $zero              # a0 = 00000000
    andi    t7, t6, 0x0200             # t7 = 00000000
    beql    t7, $zero, lbl_80959B08    
    lw      $ra, 0x0014($sp)           
    jal     func_8004ABCC              
    addiu   a1, a2, 0x013C             # a1 = 0000013C
    lw      $ra, 0x0014($sp)           
lbl_80959B08:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80959B14:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    sw      $zero, 0x002C($sp)         
    lh      t6, 0x001C(s0)             # 0000001C
    lui     $at, %hi(var_8095A000)     # $at = 80960000
    andi    t7, t6, 0x0200             # t7 = 00000000
    bnel    t7, $zero, lbl_80959B88    
    lbu     t1, 0x014D(s0)             # 0000014D
    lwc1    $f4, 0x008C(s0)            # 0000008C
    lwc1    $f6, %lo(var_8095A000)($at) 
    lw      a0, 0x0034($sp)            
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80959BDC               
    lw      t5, 0x002C($sp)            
    jal     func_8005991C              
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    beq     v0, $zero, lbl_80959BD8    
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x002C($sp)            
    lw      t9, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t0, t9, $at                
    beq     $zero, $zero, lbl_80959BD8 
    sw      t0, 0x0004(s0)             # 00000004
    lbu     t1, 0x014D(s0)             # 0000014D
lbl_80959B88:
    addiu   a2, s0, 0x013C             # a2 = 0000013C
    or      a1, a2, $zero              # a1 = 0000013C
    andi    t2, t1, 0x0002             # t2 = 00000000
    beq     t2, $zero, lbl_80959BB8    
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x002C($sp)            
    lw      a0, 0x0034($sp)            
    jal     func_8004ABCC              
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    beq     $zero, $zero, lbl_80959BDC 
    lw      t5, 0x002C($sp)            
lbl_80959BB8:
    jal     func_80050B00              
    sw      a2, 0x0028($sp)            
    lw      a0, 0x0034($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0028($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at                
lbl_80959BD8:
    lw      t5, 0x002C($sp)            
lbl_80959BDC:
    or      a0, s0, $zero              # a0 = 00000000
    beql    t5, $zero, lbl_80959C30    
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    lui     a1, %hi(func_80959C4C)     # a1 = 80960000
    addiu   a1, a1, %lo(func_80959C4C) # a1 = 80959C4C
    andi    t7, t6, 0xFCFF             # t7 = 00000000
    jal     func_80959A10              
    sh      t7, 0x001C(s0)             # 0000001C
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t8, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    or      a0, s0, $zero              # a0 = 00000000
lbl_80959C30:
    jal     func_80022D94              
    lw      a1, 0x0034($sp)            
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80959C4C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a3, a1, $zero              # a3 = 00000000
    lw      v1, 0x1C44(a3)             # 00001C44
    lui     a1, 0x3C23                 # a1 = 3C230000
    lui     a2, 0x3A83                 # a2 = 3A830000
    ori     a2, a2, 0x126F             # a2 = 3A83126F
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    sw      a3, 0x002C($sp)            
    addiu   a0, s0, 0x0050             # a0 = 00000050
    jal     func_8006385C              
    sw      v1, 0x0024($sp)            
    lw      v1, 0x0024($sp)            
    beq     v0, $zero, lbl_80959DE0    
    lw      a3, 0x002C($sp)            
    lb      t6, 0x001F(s0)             # 0000001F
    lui     t7, 0x0001                 # t7 = 00010000
    addu    t7, t7, a3                 
    beq     t6, $zero, lbl_80959D5C    
    or      a0, a3, $zero              # a0 = 00000000
    lb      t7, 0x1E15(t7)             # 00011E15
    bne     t7, $zero, lbl_80959D5C    
    nop
    lw      t8, 0x066C(v1)             # 0000066C
    sll     t9, t8,  0                 
    bgez    t9, lbl_80959D5C           
    nop
    lb      t0, 0x083F(v1)             # 0000083F
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a2, $zero, 0x04FF          # a2 = 000004FF
    bne     t0, $zero, lbl_80959D5C    
    nop
    lh      v0, 0x001C(s0)             # 0000001C
    sw      a3, 0x002C($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    sra     v0, v0, 12                 
    andi    v0, v0, 0x0007             # v0 = 00000000
    addiu   v0, v0, 0xFFFF             # v0 = FFFFFFFF
    jal     func_8009D94C              
    sw      v0, 0x0020($sp)            
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    swc1    $f4, 0x1388(v1)            # 8011B958
    lh      t1, 0x0016(s0)             # 00000016
    lw      v0, 0x0020($sp)            
    lw      a3, 0x002C($sp)            
    sh      t1, 0x1390(v1)             # 8011B960
    lh      t3, 0x001C(s0)             # 0000001C
    lui     t5, %hi(var_80959FDC)      # t5 = 80960000
    bgez    v0, lbl_80959D2C           
    sb      t3, 0x1397(v1)             # 8011B967
    lh      v0, 0x0018(s0)             # 00000018
    addiu   v0, v0, 0x0001             # v0 = 00000001
lbl_80959D2C:
    sll     t4, v0,  1                 
    addu    t5, t5, t4                 
    lh      t5, %lo(var_80959FDC)(t5)  
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a3               
    lui     a1, %hi(func_80959E00)     # a1 = 80960000
    addiu   a1, a1, %lo(func_80959E00) # a1 = 80959E00
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80959A10              
    sh      t5, 0x1E1A($at)            # 00011E1A
    beq     $zero, $zero, lbl_80959DE4 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80959D5C:
    jal     func_8007943C              
    sw      v1, 0x0024($sp)            
    bne     v0, $zero, lbl_80959DDC    
    lw      v1, 0x0024($sp)            
    lw      v0, 0x066C(v1)             # 0000066C
    lui     $at, 0x0880                # $at = 08800000
    and     t6, v0, $at                
    bne     t6, $zero, lbl_80959DDC    
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f2                   # $f2 = 15.00
    lwc1    $f6, 0x0090(s0)            # 00000090
    lui     $at, 0xC248                # $at = C2480000
    c.le.s  $f6, $f2                   
    nop
    bc1fl   lbl_80959DE0               
    sb      $zero, 0x001F(s0)          # 0000001F
    lwc1    $f0, 0x0094(s0)            # 00000094
    mtc1    $at, $f8                   # $f8 = -50.00
    nop
    c.le.s  $f8, $f0                   
    nop
    bc1fl   lbl_80959DE0               
    sb      $zero, 0x001F(s0)          # 0000001F
    c.le.s  $f0, $f2                   
    lui     $at, 0x8000                # $at = 80000000
    or      t7, v0, $at                # t7 = 80000000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    bc1fl   lbl_80959DE0               
    sb      $zero, 0x001F(s0)          # 0000001F
    sw      t7, 0x066C(v1)             # 0000066C
    beq     $zero, $zero, lbl_80959DE0 
    sb      t8, 0x001F(s0)             # 0000001F
lbl_80959DDC:
    sb      $zero, 0x001F(s0)          # 0000001F
lbl_80959DE0:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80959DE4:
    jal     func_80020F88              
    lw      a1, 0x0050(s0)             # 00000050
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80959E00:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0094(a2)            # 00000094
    lui     $at, 0x4170                # $at = 41700000
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_80959EA0               
    lw      $ra, 0x0014($sp)           
    mtc1    $at, $f8                   # $f8 = 15.00
    lwc1    $f10, 0x0090(a2)           # 00000090
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_80959EA0               
    lw      $ra, 0x0014($sp)           
    lw      t6, 0x1C44(a1)             # 00001C44
    sw      t6, 0x001C($sp)            
    lh      a0, 0x008A(a2)             # 0000008A
    jal     func_800636C4              # sins?
    sw      a2, 0x0020($sp)            
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f16                  # $f16 = 15.00
    lw      a2, 0x0020($sp)            
    lw      t7, 0x001C($sp)            
    mul.s   $f18, $f0, $f16            
    lwc1    $f4, 0x0024(a2)            # 00000024
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x0024(t7)            # 00000024
    jal     func_80063684              # coss?
    lh      a0, 0x008A(a2)             # 0000008A
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f8                   # $f8 = 15.00
    lw      a2, 0x0020($sp)            
    lw      t8, 0x001C($sp)            
    mul.s   $f10, $f0, $f8             
    lwc1    $f16, 0x002C(a2)           # 0000002C
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x002C(t8)           # 0000002C
    lw      $ra, 0x0014($sp)           
lbl_80959EA0:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80959EAC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      t9, 0x0188(a0)             # 00000188
    jalr    $ra, t9                    
    nop
    lw      a1, 0x001C($sp)            
    lh      t6, 0x07A0(a1)             # 000007A0
    sll     t7, t6,  2                 
    addu    t8, a1, t7                 
    jal     func_8004977C              
    lw      a0, 0x0790(t8)             # 00000790
    lw      t1, 0x0018($sp)            
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t0, v0, $at                
    sh      t0, 0x00B6(t1)             # 000000B6
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80959F00:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0              
    sw      a0, 0x0024($sp)            
    lw      a2, 0x0024($sp)            
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(a2)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x002C($sp)            
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x001C($sp)            
    lw      a1, 0x001C($sp)            
    lw      a2, 0x0024($sp)            
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t2, 0x0500                 # t2 = 05000000
    addiu   t2, t2, 0x1390             # t2 = 05001390
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(a2)             # 000002D0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_80959F90: .word 0x009B0700, 0x02000000, 0x00020000, 0x0000018C
.word func_80959A1C
.word func_80959AD8
.word func_80959EAC
.word func_80959F00
var_80959FB0: .word \
0x0A000900, 0x00010000, 0x02000000, 0x00000000, \
0x00000000, 0x00000048, 0x00000000, 0x00010000, \
0x0032000A, 0x00000000, 0x00000000
var_80959FDC: .word \
0x036D003F, 0x0598059C, 0x05A005A4, 0x05A805AC, \
0x05B005B4, 0x05B805BC, 0x05C005C4, 0x05FC0000, \
0x00000000

.section .rodata

var_8095A000: .word 0x471C4000, 0x00000000, 0x00000000, 0x00000000

