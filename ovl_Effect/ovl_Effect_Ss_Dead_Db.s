#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B37E40:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    lw      t7, 0x0000(a3)             # 00000000
    lui     v0, 0x0403                 # v0 = 04030000
    addiu   v0, v0, 0x2480             # v0 = 04032480
    sw      t7, 0x0000(a2)             # 00000000
    lw      t6, 0x0004(a3)             # 00000004
    sll     t2, v0,  4                 
    srl     t3, t2, 28                 
    sw      t6, 0x0004(a2)             # 00000004
    lw      t7, 0x0008(a3)             # 00000008
    sll     t4, t3,  2                 
    lui     t5, 0x8012                 # t5 = 80120000
    sw      t7, 0x0008(a2)             # 00000008
    lw      t9, 0x000C(a3)             # 0000000C
    addu    t5, t5, t4                 
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t9, 0x000C(a2)             # 0000000C
    lw      t8, 0x0010(a3)             # 00000010
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t6, v0, $at                
    sw      t8, 0x0010(a2)             # 00000010
    lw      t9, 0x0014(a3)             # 00000014
    lui     $at, 0x8000                # $at = 80000000
    lui     t3, %hi(func_80B37F5C)     # t3 = 80B30000
    sw      t9, 0x0014(a2)             # 00000014
    lw      t1, 0x0018(a3)             # 00000018
    lui     t4, %hi(func_80B38130)     # t4 = 80B40000
    addiu   t3, t3, %lo(func_80B37F5C) # t3 = 80B37F5C
    sw      t1, 0x0018(a2)             # 00000018
    lw      t0, 0x001C(a3)             # 0000001C
    addiu   t4, t4, %lo(func_80B38130) # t4 = 80B38130
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      t0, 0x001C(a2)             # 0000001C
    lw      t1, 0x0020(a3)             # 00000020
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    sw      t1, 0x0020(a2)             # 00000020
    lw      t5, 0x0C38(t5)             # 80120C38
    addu    t7, t5, t6                 
    addu    t8, t7, $at                
    sw      t8, 0x0038(a2)             # 00000038
    lw      t9, 0x0034(a3)             # 00000034
    sh      t0, 0x005A(a2)             # 0000005A
    sh      t9, 0x005C(a2)             # 0000005C
    lh      t1, 0x0026(a3)             # 00000026
    sh      t1, 0x0052(a2)             # 00000052
    lw      t2, 0x0034(a3)             # 00000034
    sw      t3, 0x0028(a2)             # 00000028
    sw      t4, 0x0024(a2)             # 00000024
    sh      t2, 0x0056(a2)             # 00000056
    lh      t5, 0x0024(a3)             # 00000024
    sh      $zero, 0x0042(a2)          # 00000042
    sh      t5, 0x0040(a2)             # 00000040
    lh      t6, 0x0038(a3)             # 00000038
    sh      t6, 0x0054(a2)             # 00000054
    lbu     t7, 0x0028(a3)             # 00000028
    sh      t7, 0x0044(a2)             # 00000044
    lbu     t8, 0x0029(a3)             # 00000029
    sh      t8, 0x0046(a2)             # 00000046
    lbu     t9, 0x002A(a3)             # 0000002A
    sh      t9, 0x0048(a2)             # 00000048
    lbu     t0, 0x002B(a3)             # 0000002B
    sh      t0, 0x004A(a2)             # 0000004A
    lbu     t1, 0x002C(a3)             # 0000002C
    sh      t1, 0x004C(a2)             # 0000004C
    lbu     t2, 0x002D(a3)             # 0000002D
    sh      t2, 0x004E(a2)             # 0000004E
    lbu     t3, 0x002E(a3)             # 0000002E
    sh      t3, 0x0050(a2)             # 00000050
    jr      $ra                        
    nop


func_80B37F5C:
    addiu   $sp, $sp, 0xFEF8           # $sp = FFFFFEF8
    sw      s1, 0x0018($sp)            
    or      s1, a2, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0014($sp)            
    sw      a0, 0x0108($sp)            
    sw      a1, 0x010C($sp)            
    lw      t6, 0x0108($sp)            
    lw      s0, 0x0000(t6)             # 00000000
    lh      t7, 0x0040(s1)             # 00000040
    lui     $at, %hi(var_80B382D0)     # $at = 80B40000
    lwc1    $f8, %lo(var_80B382D0)($at) 
    mtc1    t7, $f4                    # $f4 = 0.00
    lw      a1, 0x0000(s1)             # 00000000
    lw      a2, 0x0004(s1)             # 00000004
    cvt.s.w $f6, $f4                   
    lw      a3, 0x0008(s1)             # 00000008
    addiu   a0, $sp, 0x00C4            # a0 = FFFFFFBC
    mul.s   $f0, $f6, $f8              
    jal     func_8008F82C              # guTranslateF
    swc1    $f0, 0x003C($sp)           
    lwc1    $f0, 0x003C($sp)           
    addiu   a0, $sp, 0x0084            # a0 = FFFFFF7C
    mfc1    a1, $f0                    
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    jal     func_8008F4A8              # guScaleF
    nop
    addiu   a0, $sp, 0x00C4            # a0 = FFFFFFBC
    addiu   a1, $sp, 0x0084            # a1 = FFFFFF7C
    jal     func_8008EDB8              
    addiu   a2, $sp, 0x0044            # a2 = FFFFFF3C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8008FC98              
    addiu   a1, $sp, 0x0044            # a1 = FFFFFF3C
    beq     v0, $zero, lbl_80B3811C    
    or      a1, v0, $zero              # a1 = 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      a1, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    jal     func_8007E930              
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t1, 0xFB00                 # t1 = FB000000
    addiu   t0, v0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(v0)             # 00000000
    lh      t2, 0x0050(s1)             # 00000050
    lh      t9, 0x004E(s1)             # 0000004E
    lh      t6, 0x004C(s1)             # 0000004C
    andi    t3, t2, 0x00FF             # t3 = 00000000
    sll     t4, t3,  8                 
    andi    t0, t9, 0x00FF             # t0 = 00000000
    sll     t7, t6, 24                 
    or      t8, t4, t7                 # t8 = 00000000
    sll     t1, t0, 16                 
    or      t2, t8, t1                 # t2 = FB000000
    sw      t2, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t5, 0xFA00                 # t5 = FA000000
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v0)             # 00000000
    lh      t6, 0x004A(s1)             # 0000004A
    lh      t1, 0x0046(s1)             # 00000046
    lh      t9, 0x0044(s1)             # 00000044
    andi    t4, t6, 0x00FF             # t4 = 00000000
    lh      t6, 0x0048(s1)             # 00000048
    andi    t2, t1, 0x00FF             # t2 = 00000000
    sll     t0, t9, 24                 
    or      t8, t4, t0                 # t8 = 00000000
    sll     t3, t2, 16                 
    andi    t7, t6, 0x00FF             # t7 = 00000000
    sll     t9, t7,  8                 
    or      t5, t8, t3                 # t5 = 00000008
    or      t4, t5, t9                 # t4 = 00000008
    sw      t4, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t1, 0xDB06                 # t1 = DB060000
    ori     t1, t1, 0x0020             # t1 = DB060020
    addiu   t0, v0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(v0)             # 00000000
    lh      t2, 0x0042(s1)             # 00000042
    lui     v1, %hi(var_80B382A8)      # v1 = 80B40000
    lui     t9, 0x8012                 # t9 = 80120000
    sll     t8, t2,  2                 
    addu    v1, v1, t8                 
    lw      v1, %lo(var_80B382A8)(v1)  
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t6, v1,  4                 
    srl     t7, t6, 28                 
    sll     t5, t7,  2                 
    addu    t9, t9, t5                 
    lw      t9, 0x0C38(t9)             # 80120C38
    and     t3, v1, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t4, t3, t9                 
    addu    t0, t4, $at                
    sw      t0, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t2, 0xDE00                 # t2 = DE000000
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(v0)             # 00000000
    lw      t8, 0x0038(s1)             # 00000038
    sw      t8, 0x0004(v0)             # 00000004
lbl_80B3811C:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0108           # $sp = 00000000


func_80B38130:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      a1, 0x0034($sp)            
    or      a1, a2, $zero              # a1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0030($sp)            
    lh      v0, 0x0056(a1)             # 00000056
    lh      t6, 0x005C(a1)             # 0000005C
    lh      t4, 0x0044(a1)             # 00000044
    mtc1    v0, $f8                    # $f8 = 0.00
    subu    t7, v0, t6                 
    sll     t8, t7,  3                 
    addu    t8, t8, t7                 
    mtc1    t8, $f4                    # $f4 = 0.00
    cvt.s.w $f10, $f8                  
    addiu   t5, t4, 0xFFF6             # t5 = FFFFFFF6
    lh      t1, 0x0040(a1)             # 00000040
    lh      t2, 0x0052(a1)             # 00000052
    sh      t5, 0x0044(a1)             # 00000044
    cvt.s.w $f6, $f4                   
    lh      t6, 0x0044(a1)             # 00000044
    addu    t3, t1, t2                 
    sh      t3, 0x0040(a1)             # 00000040
    div.s   $f16, $f6, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t0, $f18                   
    bgez    t6, lbl_80B381A0           
    sh      t0, 0x0042(a1)             # 00000042
    sh      $zero, 0x0044(a1)          # 00000044
lbl_80B381A0:
    lh      t7, 0x0046(a1)             # 00000046
    addiu   t8, t7, 0xFFF6             # t8 = FFFFFFF6
    sh      t8, 0x0046(a1)             # 00000046
    lh      t9, 0x0046(a1)             # 00000046
    bgezl   t9, lbl_80B381C0           
    lh      t0, 0x0048(a1)             # 00000048
    sh      $zero, 0x0046(a1)          # 00000046
    lh      t0, 0x0048(a1)             # 00000048
lbl_80B381C0:
    addiu   t1, t0, 0xFFF6             # t1 = FFFFFFF6
    sh      t1, 0x0048(a1)             # 00000048
    lh      t2, 0x0048(a1)             # 00000048
    bgezl   t2, lbl_80B381DC           
    lh      t3, 0x004C(a1)             # 0000004C
    sh      $zero, 0x0048(a1)          # 00000048
    lh      t3, 0x004C(a1)             # 0000004C
lbl_80B381DC:
    addiu   t4, t3, 0xFFF6             # t4 = FFFFFFF6
    sh      t4, 0x004C(a1)             # 0000004C
    lh      t5, 0x004C(a1)             # 0000004C
    bgezl   t5, lbl_80B381F8           
    lh      t6, 0x004E(a1)             # 0000004E
    sh      $zero, 0x004C(a1)          # 0000004C
    lh      t6, 0x004E(a1)             # 0000004E
lbl_80B381F8:
    addiu   t7, t6, 0xFFF6             # t7 = FFFFFFF6
    sh      t7, 0x004E(a1)             # 0000004E
    lh      t8, 0x004E(a1)             # 0000004E
    bgezl   t8, lbl_80B38214           
    lh      t9, 0x0050(a1)             # 00000050
    sh      $zero, 0x004E(a1)          # 0000004E
    lh      t9, 0x0050(a1)             # 00000050
lbl_80B38214:
    addiu   t0, t9, 0xFFF6             # t0 = FFFFFFF6
    sh      t0, 0x0050(a1)             # 00000050
    lh      t1, 0x0050(a1)             # 00000050
    bgezl   t1, lbl_80B38230           
    lh      t2, 0x0054(a1)             # 00000054
    sh      $zero, 0x0050(a1)          # 00000050
    lh      t2, 0x0054(a1)             # 00000054
lbl_80B38230:
    beql    t2, $zero, lbl_80B38290    
    lw      $ra, 0x001C($sp)           
    lh      t3, 0x0042(a1)             # 00000042
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x0030($sp)            
    bne     t3, $at, lbl_80B3828C      
    addiu   a2, a1, 0x002C             # a2 = 0000002C
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    addu    a0, a0, $at                
    addiu   a3, $sp, 0x002C            # a3 = FFFFFFFC
    jal     func_8008EC20              
    sw      a2, 0x0024($sp)            
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t4, 0x8010                 # t4 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t4, t4, 0x43A8             # t4 = 801043A8
    sw      t4, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x3878          # a0 = 00003878
    lw      a1, 0x0024($sp)            
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_80B3828C:
    lw      $ra, 0x001C($sp)           
lbl_80B38290:
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

.word 0x00000020
.word func_80B37E40
var_80B382A8: .word \
0x0402D480, 0x0402DC80, 0x0402E480, 0x0402EC80, \
0x0402F480, 0x0402FC80, 0x04030480, 0x04030C80, \
0x04031480, 0x04031C80

.section .rodata

var_80B382D0: .word 0x3C23D70A, 0x00000000, 0x00000000, 0x00000000

