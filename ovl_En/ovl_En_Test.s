#include <mips.h>
.set noreorder
.set noat

.section .text
func_8085D350:
    sw      a1, 0x07BC(a0)             # 000007BC
    jr      $ra                        
    nop


func_8085D35C:
    addiu   $sp, $sp, 0xFE18           # $sp = FFFFFE18
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a1, %hi(var_80862368)      # a1 = 80860000
    addiu   a1, a1, %lo(var_80862368)  # a1 = 80862368
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x01BC             # t6 = 000001BC
    addiu   t7, s0, 0x032A             # t7 = 0000032A
    addiu   t8, $zero, 0x003D          # t8 = 0000003D
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, 0x316C             # a3 = 0600316C
    addiu   a2, a2, 0x7C28             # a2 = 06007C28
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C684              
    addiu   a1, s0, 0x0178             # a1 = 00000178
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t9, s0, 0x04DC             # t9 = 000004DC
    addiu   t0, s0, 0x064A             # t0 = 0000064A
    addiu   t1, $zero, 0x003D          # t1 = 0000003D
    sw      t1, 0x0018($sp)            
    sw      t0, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    addiu   a3, a3, 0x316C             # a3 = 0600316C
    addiu   a2, a2, 0x7C28             # a2 = 06007C28
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C684              
    addiu   a1, s0, 0x0498             # a1 = 00000498
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xF280             # a2 = 8001F280
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x42B4                 # a3 = 42B40000
    lw      t4, 0x0028(s0)             # 00000028
    lui     $at, 0x4234                # $at = 42340000
    lw      t5, 0x0024(s0)             # 00000024
    sw      t4, 0x003C(s0)             # 0000003C
    lwc1    $f4, 0x003C(s0)            # 0000003C
    mtc1    $at, $f6                   # $f6 = 45.00
    sw      t5, 0x0038(s0)             # 00000038
    lw      t5, 0x002C(s0)             # 0000002C
    add.s   $f8, $f4, $f6              
    lui     t6, %hi(var_80862348)      # t6 = 80860000
    addiu   t2, $zero, 0x0028          # t2 = 00000028
    addiu   t3, $zero, 0x0064          # t3 = 00000064
    addiu   t6, t6, %lo(var_80862348)  # t6 = 80862348
    sh      t2, 0x00A8(s0)             # 000000A8
    sh      t3, 0x00AA(s0)             # 000000AA
    swc1    $f8, 0x003C(s0)            # 0000003C
    sw      t6, 0x0098(s0)             # 00000098
    addiu   a1, s0, 0x0800             # a1 = 00000800
    sw      t5, 0x0040(s0)             # 00000040
    sw      a1, 0x0034($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_808622A0)      # a3 = 80860000
    lw      a1, 0x0034($sp)            
    addiu   a3, a3, %lo(var_808622A0)  # a3 = 808622A0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x08CC             # a1 = 000008CC
    sw      a1, 0x0034($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_808622CC)      # a3 = 80860000
    lw      a1, 0x0034($sp)            
    addiu   a3, a3, %lo(var_808622CC)  # a3 = 808622CC
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x084C             # a1 = 0000084C
    sw      a1, 0x0034($sp)            
    jal     func_8004B858              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_808622F8)      # a3 = 80860000
    lw      a1, 0x0034($sp)            
    addiu   a3, a3, %lo(var_808622F8)  # a3 = 808622F8
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004B960              
    or      a2, s0, $zero              # a2 = 00000000
    addiu   t7, $zero, 0x00FE          # t7 = 000000FE
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    sb      t7, 0x00AE(s0)             # 000000AE
    sb      t8, 0x00AF(s0)             # 000000AF
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t0, $zero, 0x0040          # t0 = 00000040
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    addiu   t3, $sp, 0x0048            # t3 = FFFFFE60
    sb      t9, 0x01DA($sp)            
    sb      v0, 0x01D9($sp)            
    sb      v0, 0x01D8($sp)            
    sb      v0, 0x01D6($sp)            
    sb      v0, 0x01D5($sp)            
    sb      v0, 0x01D4($sp)            
    sb      v0, 0x01D2($sp)            
    sb      v0, 0x01D1($sp)            
    sb      v0, 0x01D0($sp)            
    sb      v0, 0x01CF($sp)            
    sb      v0, 0x01CE($sp)            
    sb      v0, 0x01CD($sp)            
    sb      v0, 0x01CC($sp)            
    sb      $zero, 0x01D7($sp)         
    sb      $zero, 0x01DB($sp)         
    sb      t0, 0x01D3($sp)            
    sw      t1, 0x01DC($sp)            
    sw      $zero, 0x01E0($sp)         
    sw      t2, 0x01E4($sp)            
    sw      t3, 0x0014($sp)            
    sw      $zero, 0x0010($sp)         
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x07FC             # a1 = 000007FC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_8001AA5C              
    or      a3, $zero, $zero           # a3 = 00000000
    lh      t4, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     t4, $at, lbl_8085D574      
    nop
    jal     func_8085DADC              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085D580 
    lh      t5, 0x001C(s0)             # 0000001C
lbl_8085D574:
    jal     func_8085DC34              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t5, 0x001C(s0)             # 0000001C
lbl_8085D580:
    bnel    t5, $zero, lbl_8085D598    
    lw      $ra, 0x002C($sp)           
    lw      t6, 0x0004(s0)             # 00000004
    ori     t7, t6, 0x0080             # t7 = 00000080
    sw      t7, 0x0004(s0)             # 00000004
    lw      $ra, 0x002C($sp)           
lbl_8085D598:
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x01E8           # $sp = 00000000


func_8085D5A8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s1, $zero              # a0 = 00000000
    beq     t6, $at, lbl_8085D5FC      
    or      a1, s0, $zero              # a1 = 00000000
    lui     $at, 0x45FA                # $at = 45FA0000
    mtc1    $at, $f4                   # $f4 = 8000.00
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    jal     func_80028158              
    swc1    $f4, 0x0010($sp)           
    bnel    v0, $zero, lbl_8085D600    
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800C6894              
    nop
lbl_8085D5FC:
    or      a0, s1, $zero              # a0 = 00000000
lbl_8085D600:
    jal     func_8001AE04              
    lw      a1, 0x07FC(s0)             # 000007FC
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, s0, 0x08CC             # a1 = 000008CC
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, s0, 0x0800             # a1 = 00000800
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004B8A8              
    addiu   a1, s0, 0x084C             # a1 = 0000084C
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_8085D640:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    sw      a2, 0x0018($sp)            
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f6, $f0, $f4              
    lw      a2, 0x0018($sp)            
    cfc1    t6, $f31                   
    ctc1    t7, $f31                   
    nop
    cvt.w.s $f8, $f6                   
    cfc1    t7, $f31                   
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beql    t7, $zero, lbl_8085D6DC    
    mfc1    t7, $f8                    
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f8, $f6, $f8              
    ctc1    t7, $f31                   
    nop
    cvt.w.s $f8, $f8                   
    cfc1    t7, $f31                   
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_8085D6D0    
    nop
    mfc1    t7, $f8                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8085D6E8 
    or      t7, t7, $at                # t7 = 80000000
lbl_8085D6D0:
    beq     $zero, $zero, lbl_8085D6E8 
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    mfc1    t7, $f8                    
lbl_8085D6DC:
    nop
    bltz    t7, lbl_8085D6D0           
    nop
lbl_8085D6E8:
    ctc1    t6, $f31                   
    sltiu   $at, t7, 0x000B            
    beq     $at, $zero, lbl_8085D7AC   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_80862430)     # $at = 80860000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80862430)($at) 
    jr      t7                         
    nop
var_8085D70C:
    lui     $at, 0x435C                # $at = 435C0000
    mtc1    $at, $f10                  # $f10 = 220.00
    lwc1    $f0, 0x0090(a2)            # 00000090
    lui     $at, 0x432A                # $at = 432A0000
    c.lt.s  $f0, $f10                  
    nop
    bc1f    lbl_8085D780               
    nop
    mtc1    $at, $f16                  # $f16 = 170.00
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x071C          # a1 = 0000071C
    c.lt.s  $f16, $f0                  
    nop
    bc1f    lbl_8085D780               
    nop
    jal     func_80021A28              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_8085D780    
    lw      a2, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_8002691C              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_8085D780    
    lw      a2, 0x0018($sp)            
    jal     func_8085F8B8              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085D7B0 
    lw      $ra, 0x0014($sp)           
lbl_8085D780:
    jal     func_8085E14C              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085D7B0 
    lw      $ra, 0x0014($sp)           
var_8085D790:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_808604F8              
    lw      a1, 0x001C($sp)            
    beq     $zero, $zero, lbl_8085D7B0 
    lw      $ra, 0x0014($sp)           
var_8085D7A4:
    jal     func_8085FBE4              
    or      a0, a2, $zero              # a0 = 00000000
lbl_8085D7AC:
    lw      $ra, 0x0014($sp)           
lbl_8085D7B0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8085D7BC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lw      t0, 0x1C44(a3)             # 00001C44
    lh      v1, 0x00B6(a2)             # 000000B6
    lh      t6, 0x00B6(t0)             # 000000B6
    subu    v0, t6, v1                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bgezl   v0, lbl_8085D7FC           
    slti    $at, v0, 0x61A8            
    subu    v0, $zero, v0              
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    slti    $at, v0, 0x61A8            
lbl_8085D7FC:
    bnel    $at, $zero, lbl_8085D918   
    slti    $at, v0, 0x3E81            
    sw      a2, 0x0020($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    sw      a3, 0x0024($sp)            
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f6, $f0, $f4              
    lw      a2, 0x0020($sp)            
    lw      a3, 0x0024($sp)            
    cfc1    t7, $f31                   
    ctc1    t8, $f31                   
    nop
    cvt.w.s $f8, $f6                   
    cfc1    t8, $f31                   
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_8085D898    
    mfc1    t8, $f8                    
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f8, $f6, $f8              
    ctc1    t8, $f31                   
    nop
    cvt.w.s $f8, $f8                   
    cfc1    t8, $f31                   
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_8085D88C    
    nop
    mfc1    t8, $f8                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8085D8A4 
    or      t8, t8, $at                # t8 = 80000000
lbl_8085D88C:
    beq     $zero, $zero, lbl_8085D8A4 
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f8                    
lbl_8085D898:
    nop
    bltz    t8, lbl_8085D88C           
    nop
lbl_8085D8A4:
    ctc1    t7, $f31                   
    sltiu   $at, t8, 0x000A            
    beq     $at, $zero, lbl_8085DACC   
    sll     t8, t8,  2                 
    lui     $at, %hi(var_8086245C)     # $at = 80860000
    addu    $at, $at, t8               
    lw      t8, %lo(var_8086245C)($at) 
    jr      t8                         
    nop
var_8085D8C8:
    jal     func_8085FBE4              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085DAD0 
    lw      $ra, 0x0014($sp)           
var_8085D8D8:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_808604F8              
    or      a1, a3, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_8085DAD0 
    lw      $ra, 0x0014($sp)           
var_8085D8EC:
    lh      t9, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    t9, $at, lbl_8085DAD0      
    lw      $ra, 0x0014($sp)           
    lh      t1, 0x008A(a2)             # 0000008A
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8085F670              
    sh      t1, 0x0032(a2)             # 00000032
    beq     $zero, $zero, lbl_8085DAD0 
    lw      $ra, 0x0014($sp)           
    slti    $at, v0, 0x3E81            
lbl_8085D918:
    beq     $at, $zero, lbl_8085DAC4   
    or      a0, a2, $zero              # a0 = 00000000
    lh      a1, 0x008A(a2)             # 0000008A
    lui     t2, 0x0001                 # t2 = 00010000
    addu    t2, t2, a3                 
    subu    v0, a1, v1                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_8085D948           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_8085D948 
    or      v1, v0, $zero              # v1 = 00000000
lbl_8085D948:
    slti    $at, v1, 0x3E81            
    bnel    $at, $zero, lbl_8085DA18   
    lui     $at, 0x42DC                # $at = 42DC0000
    lw      t2, 0x1DE4(t2)             # 00011DE4
    andi    t3, t2, 0x0001             # t3 = 00000000
    beql    t3, $zero, lbl_8085D98C    
    lui     $at, 0x435C                # $at = 435C0000
    lh      t4, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      a0, a2, $zero              # a0 = 00000000
    beql    t4, $at, lbl_8085D98C      
    lui     $at, 0x435C                # $at = 435C0000
    jal     func_8085F670              
    sh      a1, 0x0032(a2)             # 00000032
    beq     $zero, $zero, lbl_8085DAD0 
    lw      $ra, 0x0014($sp)           
    lui     $at, 0x435C                # $at = 435C0000
lbl_8085D98C:
    mtc1    $at, $f10                  # $f10 = 220.00
    lwc1    $f0, 0x0090(a2)            # 00000090
    lui     $at, 0x432A                # $at = 432A0000
    c.lt.s  $f0, $f10                  
    nop
    bc1f    lbl_8085DA04               
    nop
    mtc1    $at, $f16                  # $f16 = 170.00
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x071C          # a1 = 0000071C
    c.lt.s  $f16, $f0                  
    nop
    bc1f    lbl_8085DA04               
    nop
    sw      a2, 0x0020($sp)            
    jal     func_80021A28              
    sw      a3, 0x0024($sp)            
    lw      a2, 0x0020($sp)            
    beq     v0, $zero, lbl_8085DACC    
    lw      a3, 0x0024($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_8002691C              
    sw      a2, 0x0020($sp)            
    bne     v0, $zero, lbl_8085DACC    
    lw      a2, 0x0020($sp)            
    jal     func_8085F8B8              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085DAD0 
    lw      $ra, 0x0014($sp)           
lbl_8085DA04:
    jal     func_8085E14C              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085DAD0 
    lw      $ra, 0x0014($sp)           
    lui     $at, 0x42DC                # $at = 42DC0000
lbl_8085DA18:
    mtc1    $at, $f4                   # $f4 = 110.00
    lwc1    $f18, 0x0090(a2)           # 00000090
    or      a0, a2, $zero              # a0 = 00000000
    c.lt.s  $f18, $f4                  
    nop
    bc1f    lbl_8085DAB4               
    nop
    sw      a2, 0x0020($sp)            
    sw      a3, 0x0024($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    sw      t0, 0x0018($sp)            
    lui     $at, %hi(var_80862484)     # $at = 80860000
    lwc1    $f6, %lo(var_80862484)($at) 
    lw      a2, 0x0020($sp)            
    lw      a3, 0x0024($sp)            
    c.lt.s  $f6, $f0                   
    lw      t0, 0x0018($sp)            
    bc1fl   lbl_8085DAD0               
    lw      $ra, 0x0014($sp)           
    lw      t5, 0x066C(t0)             # 0000066C
    andi    t6, t5, 0x0010             # t6 = 00000000
    beq     t6, $zero, lbl_8085DAA4    
    nop
    lbu     t7, 0x010C(a2)             # 0000010C
    or      a0, a2, $zero              # a0 = 00000000
    beq     t7, $zero, lbl_8085DA94    
    nop
    jal     func_8085F130              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085DACC 
    nop
lbl_8085DA94:
    jal     func_808604F8              
    or      a1, a3, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_8085DAD0 
    lw      $ra, 0x0014($sp)           
lbl_8085DAA4:
    jal     func_8085F130              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085DAD0 
    lw      $ra, 0x0014($sp)           
lbl_8085DAB4:
    jal     func_8085D640              
    or      a1, a3, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_8085DAD0 
    lw      $ra, 0x0014($sp)           
lbl_8085DAC4:
    jal     func_8085D640              
    or      a1, a3, $zero              # a1 = 00000000
lbl_8085DACC:
    lw      $ra, 0x0014($sp)           
lbl_8085DAD0:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8085DADC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x316C             # a1 = 0600316C
    addiu   a0, a2, 0x0178             # a0 = 00000178
    jal     func_8008D2D4              
    sw      a2, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     $at, 0x4060                # $at = 40600000
    mtc1    $at, $f8                   # $f8 = 3.50
    lwc1    $f6, 0x000C(a0)            # 0000000C
    lw      t7, 0x0004(a0)             # 00000004
    mtc1    $zero, $f4                 # $f4 = 0.00
    sub.s   $f10, $f6, $f8             
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t6, $zero, 0x000F          # t6 = 0000000F
    lui     a1, %hi(func_8085DB54)     # a1 = 80860000
    and     t8, t7, $at                
    addiu   a1, a1, %lo(func_8085DB54) # a1 = 8085DB54
    sb      $zero, 0x07B8(a0)          # 000007B8
    sw      t6, 0x07D8(a0)             # 000007D8
    swc1    $f10, 0x0028(a0)           # 00000028
    sw      t8, 0x0004(a0)             # 00000004
    jal     func_8085D350              
    swc1    $f4, 0x0054(a0)            # 00000054
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8085DB54:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x0178             # a0 = 00000178
    jal     func_8008C9C0              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lui     $at, 0x4316                # $at = 43160000
    lw      v0, 0x07D8(a2)             # 000007D8
    bne     v0, $zero, lbl_8085DC00    
    nop
    lwc1    $f0, 0x0094(a2)            # 00000094
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $at, $f6                   # $f6 = 150.00
    lui     a1, %hi(func_8086109C)     # a1 = 80860000
    c.le.s  $f4, $f0                   
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    addiu   a1, a1, %lo(func_8086109C) # a1 = 8086109C
    or      a0, a2, $zero              # a0 = 00000000
    bc1fl   lbl_8085DBB8               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_8085DBB8 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_8085DBB8:
    c.lt.s  $f2, $f6                   
    nop
    bc1f    lbl_8085DC00               
    nop
    sb      t6, 0x07B8(a2)             # 000007B8
    jal     func_8085D350              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lh      v0, 0x008A(a2)             # 0000008A
    lh      t7, 0x001C(a2)             # 0000001C
    sh      v0, 0x0032(a2)             # 00000032
    beq     t7, $at, lbl_8085DC24      
    sh      v0, 0x00B6(a2)             # 000000B6
    jal     func_800C6820              
    addiu   a0, $zero, 0x0038          # a0 = 00000038
    beq     $zero, $zero, lbl_8085DC28 
    lw      $ra, 0x0014($sp)           
lbl_8085DC00:
    beq     v0, $zero, lbl_8085DC10    
    lui     $at, 0x4060                # $at = 40600000
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sw      t8, 0x07D8(a2)             # 000007D8
lbl_8085DC10:
    lwc1    $f8, 0x000C(a2)            # 0000000C
    mtc1    $at, $f10                  # $f10 = 3.50
    nop
    sub.s   $f16, $f8, $f10            
    swc1    $f16, 0x0028(a2)           # 00000028
lbl_8085DC24:
    lw      $ra, 0x0014($sp)           
lbl_8085DC28:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8085DC34:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x316C             # a1 = 0600316C
    addiu   a0, a2, 0x0178             # a0 = 00000178
    jal     func_8008D2D4              
    sw      a2, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f6                   # $f6 = 150.00
    lwc1    $f4, 0x000C(a0)            # 0000000C
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    sb      $zero, 0x07B8(a0)          # 000007B8
    add.s   $f8, $f4, $f6              
    jal     func_80020F88              
    swc1    $f8, 0x0028(a0)            # 00000028
    lw      a0, 0x0018($sp)            
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     a1, %hi(func_8085DCA8)     # a1 = 80860000
    lw      t6, 0x0004(a0)             # 00000004
    addiu   a1, a1, %lo(func_8085DCA8) # a1 = 8085DCA8
    and     t7, t6, $at                
    jal     func_8085D350              
    sw      t7, 0x0004(a0)             # 00000004
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8085DCA8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x0178             # a0 = 00000178
    jal     func_8008C9C0              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f6                   # $f6 = 150.00
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f16                  # $f16 = 200.00
    lwc1    $f10, 0x0090(a2)           # 00000090
    lwc1    $f4, 0x000C(a2)            # 0000000C
    lui     $at, 0x43E1                # $at = 43E10000
    c.lt.s  $f10, $f16                 
    add.s   $f8, $f4, $f6              
    bc1f    lbl_8085DD64               
    swc1    $f8, 0x0028(a2)            # 00000028
    lwc1    $f0, 0x0094(a2)            # 00000094
    mtc1    $zero, $f18                # $f18 = 0.00
    mtc1    $at, $f4                   # $f4 = 450.00
    lui     a1, %hi(func_8085E028)     # a1 = 80860000
    c.le.s  $f18, $f0                  
    addiu   a1, a1, %lo(func_8085E028) # a1 = 8085E028
    or      a0, a2, $zero              # a0 = 00000000
    bc1fl   lbl_8085DD24               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_8085DD24 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_8085DD24:
    c.lt.s  $f2, $f4                   
    nop
    bc1fl   lbl_8085DD68               
    lw      $ra, 0x0014($sp)           
    jal     func_8085D350              
    sw      a2, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     a1, 0x3C75                 # a1 = 3C750000
    ori     a1, a1, 0xC28F             # a1 = 3C75C28F
    lw      t6, 0x0004(a0)             # 00000004
    lh      v0, 0x008A(a0)             # 0000008A
    ori     t7, t6, 0x0001             # t7 = 00000001
    sw      t7, 0x0004(a0)             # 00000004
    sh      v0, 0x0032(a0)             # 00000032
    jal     func_80020F88              
    sh      v0, 0x00B6(a0)             # 000000B6
lbl_8085DD64:
    lw      $ra, 0x0014($sp)           
lbl_8085DD68:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8085DD74:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x316C             # a1 = 0600316C
    addiu   a0, a2, 0x0178             # a0 = 00000178
    jal     func_8008D2D4              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    jal     func_800CDCCC              # Rand.Next() float
    sb      t6, 0x07B8(a2)             # 000007B8
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    mul.s   $f6, $f0, $f4              
    lw      a0, 0x0018($sp)            
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     a1, %hi(func_8085DDF8)     # a1 = 80860000
    lh      t9, 0x00B6(a0)             # 000000B6
    addiu   a1, a1, %lo(func_8085DDF8) # a1 = 8085DDF8
    swc1    $f18, 0x0068(a0)           # 00000068
    add.s   $f10, $f6, $f8             
    sh      t9, 0x0032(a0)             # 00000032
    trunc.w.s $f16, $f10                 
    mfc1    t8, $f16                   
    jal     func_8085D350              
    sw      t8, 0x07D8(a0)             # 000007D8
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8085DDF8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    addiu   a0, s0, 0x0178             # a0 = 00000178
    lw      t7, 0x1C44(t6)             # 00001C44
    jal     func_8008C9C0              
    sw      t7, 0x0024($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_80861F04              
    or      a1, s0, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_8085E014    
    lw      a0, 0x0024($sp)            
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    lh      t8, 0x00B6(a0)             # 000000B6
    lh      t9, 0x00B6(s0)             # 000000B6
    c.lt.s  $f4, $f6                   
    subu    v0, t8, t9                 
    sll     v0, v0, 16                 
    bc1f    lbl_8085DEE4               
    sra     v0, v0, 16                 
    lb      t0, 0x0833(a0)             # 00000833
    beql    t0, $zero, lbl_8085DEE8    
    lw      v0, 0x07D8(s0)             # 000007D8
    bltz    v0, lbl_8085DE78           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_8085DE78 
    or      v1, v0, $zero              # v1 = 00000000
lbl_8085DE78:
    slti    $at, v1, 0x1F40            
    bnel    $at, $zero, lbl_8085DEE8   
    lw      v0, 0x07D8(s0)             # 000007D8
    lh      v0, 0x008A(s0)             # 0000008A
    sh      v0, 0x0032(s0)             # 00000032
    jal     func_800CDCCC              # Rand.Next() float
    sh      v0, 0x00B6(s0)             # 000000B6
    lui     $at, %hi(var_80862488)     # $at = 80860000
    lwc1    $f8, %lo(var_80862488)($at) 
    lw      t1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f8, $f0                   
    nop
    bc1f    lbl_8085DED4               
    nop
    lb      t2, 0x0832(t1)             # 00000832
    addiu   $at, $zero, 0x0011         # $at = 00000011
    beq     t2, $at, lbl_8085DED4      
    nop
    jal     func_8085F670              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085E018 
    lw      $ra, 0x001C($sp)           
lbl_8085DED4:
    jal     func_808604F8              
    lw      a1, 0x002C($sp)            
    beq     $zero, $zero, lbl_8085E018 
    lw      $ra, 0x001C($sp)           
lbl_8085DEE4:
    lw      v0, 0x07D8(s0)             # 000007D8
lbl_8085DEE8:
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_8085DEFC    
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    beq     $zero, $zero, lbl_8085E014 
    sw      t3, 0x07D8(s0)             # 000007D8
lbl_8085DEFC:
    jal     func_80021A28              
    addiu   a1, $zero, 0x1555          # a1 = 00001555
    beq     v0, $zero, lbl_8085DFD8    
    lui     $at, 0x435C                # $at = 435C0000
    lwc1    $f0, 0x0090(s0)            # 00000090
    mtc1    $at, $f10                  # $f10 = 220.00
    lui     $at, 0x4320                # $at = 43200000
    c.lt.s  $f0, $f10                  
    nop
    bc1f    lbl_8085DF94               
    nop
    mtc1    $at, $f16                  # $f16 = 160.00
    nop
    c.lt.s  $f16, $f0                  
    nop
    bc1f    lbl_8085DF94               
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_8086248C)     # $at = 80860000
    lwc1    $f18, %lo(var_8086248C)($at) 
    lw      a0, 0x002C($sp)            
    c.lt.s  $f0, $f18                  
    nop
    bc1f    lbl_8085DF94               
    nop
    jal     func_8002691C              
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_8085DF84    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8085F8B8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085E018 
    lw      $ra, 0x001C($sp)           
lbl_8085DF84:
    jal     func_808604F8              
    lw      a1, 0x002C($sp)            
    beq     $zero, $zero, lbl_8085E018 
    lw      $ra, 0x001C($sp)           
lbl_8085DF94:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80862490)     # $at = 80860000
    lwc1    $f4, %lo(var_80862490)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f0                   
    nop
    bc1f    lbl_8085DFC8               
    nop
    jal     func_8085E14C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085E018 
    lw      $ra, 0x001C($sp)           
lbl_8085DFC8:
    jal     func_808604F8              
    lw      a1, 0x002C($sp)            
    beq     $zero, $zero, lbl_8085E018 
    lw      $ra, 0x001C($sp)           
lbl_8085DFD8:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80862494)     # $at = 80860000
    lwc1    $f6, %lo(var_80862494)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f6, $f0                   
    nop
    bc1f    lbl_8085E00C               
    nop
    jal     func_8085E8F4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085E018 
    lw      $ra, 0x001C($sp)           
lbl_8085E00C:
    jal     func_8085D7BC              
    lw      a1, 0x002C($sp)            
lbl_8085E014:
    lw      $ra, 0x001C($sp)           
lbl_8085E018:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8085E028:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    addiu   a0, s0, 0x0178             # a0 = 00000178
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xC438             # a1 = 0600C438
    sw      a0, 0x0024($sp)            
    jal     func_8008D278              
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008C9C0              
    lw      a0, 0x0024($sp)            
    lwc1    $f4, 0x0080(s0)            # 00000080
    lwc1    $f6, 0x0028(s0)            # 00000028
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_8085E0CC               
    lw      $ra, 0x001C($sp)           
    lw      t7, 0x07D4(s0)             # 000007D4
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    mtc1    t7, $f10                   # $f10 = 0.00
    addiu   t6, $zero, 0x000C          # t6 = 0000000C
    sb      t6, 0x07B8(s0)             # 000007B8
    cvt.s.w $f16, $f10                 
    lui     $at, %hi(var_80862498)     # $at = 80860000
    swc1    $f8, 0x0194(s0)            # 00000194
    lwc1    $f18, %lo(var_80862498)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x387A          # a1 = 0000387A
    mul.s   $f4, $f16, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t9, $f6                    
    jal     func_80022FD0              
    sw      t9, 0x07D8(s0)             # 000007D8
    lui     a1, %hi(func_8085E0DC)     # a1 = 80860000
    addiu   a1, a1, %lo(func_8085E0DC) # a1 = 8085E0DC
    jal     func_8085D350              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_8085E0CC:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8085E0DC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x0178             # a0 = 00000178
    beql    v0, $zero, lbl_8085E140    
    lw      $ra, 0x0014($sp)           
    jal     func_8085DD74              
    lw      a0, 0x0018($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    mul.s   $f6, $f0, $f4              
    lw      t8, 0x0018($sp)            
    add.s   $f10, $f6, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    t7, $f16                   
    nop
    sw      t7, 0x07D8(t8)             # 000007D8
    lw      $ra, 0x0014($sp)           
lbl_8085E140:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8085E14C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x1C20             # a0 = 06001C20
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f0                   # $f0 = 2.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a2, $f0                    
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x1C20             # a1 = 06001C20
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x0498             # a0 = 00000498
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x81B4             # a1 = 060081B4
    jal     func_8008D2D4              
    addiu   a0, s0, 0x0178             # a0 = 00000178
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    lh      t2, 0x00B6(s0)             # 000000B6
    addiu   t1, $zero, 0x000D          # t1 = 0000000D
    mul.s   $f10, $f0, $f8             
    lui     a1, %hi(func_8085E210)     # a1 = 80860000
    sb      t1, 0x07B8(s0)             # 000007B8
    addiu   a1, a1, %lo(func_8085E210) # a1 = 8085E210
    or      a0, s0, $zero              # a0 = 00000000
    sh      t2, 0x0032(s0)             # 00000032
    trunc.w.s $f16, $f10                 
    mfc1    t8, $f16                   
    nop
    sll     t9, t8, 16                 
    sra     t0, t9, 16                 
    jal     func_8085D350              
    sw      t0, 0x07D8(s0)             # 000007D8
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8085E210:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    mtc1    $zero, $f2                 # $f2 = 0.00
    lw      t6, 0x1C44(a2)             # 00001C44
    sw      a2, 0x0074($sp)            
    or      a0, a2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    sw      t6, 0x0054($sp)            
    jal     func_80861F04              
    swc1    $f2, 0x0068($sp)           
    bne     v0, $zero, lbl_8085E8E0    
    lwc1    $f2, 0x0068($sp)           
    lw      t7, 0x07D8(s0)             # 000007D8
    or      a1, s0, $zero              # a1 = 00000000
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sw      t8, 0x07D8(s0)             # 000007D8
    swc1    $f2, 0x0068($sp)           
    jal     func_80026950              
    lw      a0, 0x0074($sp)            
    beq     v0, $zero, lbl_8085E27C    
    lwc1    $f2, 0x0068($sp)           
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f2                   # $f2 = 150.00
    nop
lbl_8085E27C:
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f4                   # $f4 = 80.00
    lwc1    $f0, 0x0090(s0)            # 00000090
    addiu   a0, s0, 0x0068             # a0 = 00000068
    add.s   $f6, $f4, $f2              
    lui     a1, 0xC0A0                 # a1 = C0A00000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3F4C                 # a3 = 3F4C0000
    c.le.s  $f0, $f6                   
    lui     $at, 0x42DC                # $at = 42DC0000
    bc1fl   lbl_8085E2C8               
    mtc1    $at, $f10                  # $f10 = 110.00
    mtc1    $zero, $f8                 # $f8 = 0.00
    ori     a3, a3, 0xCCCD             # a3 = 3F4CCCCD
    jal     func_80064178              
    swc1    $f8, 0x0010($sp)           
    beq     $zero, $zero, lbl_8085E300 
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
lbl_8085E2C8:
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x40A0                 # a1 = 40A00000
    add.s   $f16, $f10, $f2            
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3F4C                 # a3 = 3F4C0000
    c.lt.s  $f16, $f0                  
    nop
    bc1fl   lbl_8085E300               
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $zero, $f18                # $f18 = 0.00
    ori     a3, a3, 0xCCCD             # a3 = 3F4CCCCD
    jal     func_80064178              
    swc1    $f18, 0x0010($sp)          
    lui     $at, 0x40A0                # $at = 40A00000
lbl_8085E300:
    mtc1    $at, $f4                   # $f4 = 5.00
    lwc1    $f0, 0x0068(s0)            # 00000068
    lui     $at, 0xC0A0                # $at = C0A00000
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f4, $f0                   
    nop
    bc1fl   lbl_8085E334               
    mtc1    $at, $f8                   # $f8 = -5.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    beq     $zero, $zero, lbl_8085E354 
    swc1    $f6, 0x0068(s0)            # 00000068
    mtc1    $at, $f8                   # $f8 = 5.00
lbl_8085E334:
    lui     $at, 0xC0A0                # $at = C0A00000
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_8085E358               
    lh      t9, 0x001C(s0)             # 0000001C
    mtc1    $at, $f10                  # $f10 = -5.00
    nop
    swc1    $f10, 0x0068(s0)           # 00000068
lbl_8085E354:
    lh      t9, 0x001C(s0)             # 0000001C
lbl_8085E358:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      a1, 0x0074($sp)            
    bnel    t9, $at, lbl_8085E394      
    lwc1    $f0, 0x0068(s0)            # 00000068
    lw      a2, 0x0068(s0)             # 00000068
    jal     func_80026850              
    lh      a3, 0x0032(s0)             # 00000032
    bne     v0, $zero, lbl_8085E390    
    lui     $at, 0xBF80                # $at = BF800000
    lwc1    $f16, 0x0068(s0)           # 00000068
    mtc1    $at, $f18                  # $f18 = -1.00
    nop
    mul.s   $f4, $f16, $f18            
    swc1    $f4, 0x0068(s0)            # 00000068
lbl_8085E390:
    lwc1    $f0, 0x0068(s0)            # 00000068
lbl_8085E394:
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    c.le.s  $f6, $f0                   
    lui     a0, 0x0600                 # a0 = 06000000
    bc1fl   lbl_8085E3BC               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_8085E3BC 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_8085E3BC:
    c.lt.s  $f2, $f8                   
    nop
    bc1f    lbl_8085E430               
    nop
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x81B4             # a0 = 060081B4
    mtc1    v0, $f10                   # $f10 = 0.00
    lw      a3, 0x0190(s0)             # 00000190
    lui     $at, 0xC0C0                # $at = C0C00000
    cvt.s.w $f16, $f10                 
    mtc1    $at, $f18                  # $f18 = -6.00
    addiu   a0, s0, 0x0178             # a0 = 00000178
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x81B4             # a1 = 060081B4
    sw      a0, 0x0034($sp)            
    swc1    $f16, 0x0010($sp)          
    sw      $zero, 0x0014($sp)         
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008D17C              
    swc1    $f18, 0x0018($sp)          
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lwc1    $f0, 0x0068(s0)            # 00000068
    lw      a0, 0x0034($sp)            
    mul.s   $f2, $f0, $f4              
    nop
    beq     $zero, $zero, lbl_8085E498 
    mtc1    $zero, $f6                 # $f6 = 0.00
lbl_8085E430:
    jal     func_8008A194              
    addiu   a0, a0, 0x26D4             # a0 = 000026D4
    mtc1    v0, $f6                    # $f6 = 0.00
    lw      a3, 0x0190(s0)             # 00000190
    lui     $at, 0xC080                # $at = C0800000
    cvt.s.w $f8, $f6                   
    mtc1    $at, $f10                  # $f10 = -4.00
    addiu   a0, s0, 0x0178             # a0 = 00000178
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x26D4             # a1 = 060026D4
    sw      a0, 0x0034($sp)            
    swc1    $f8, 0x0010($sp)           
    sw      $zero, 0x0014($sp)         
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008D17C              
    swc1    $f10, 0x0018($sp)          
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    lwc1    $f0, 0x0068(s0)            # 00000068
    lui     $at, %hi(var_8086249C)     # $at = 80860000
    lwc1    $f4, %lo(var_8086249C)($at) 
    mul.s   $f18, $f0, $f16            
    lw      a0, 0x0034($sp)            
    mul.s   $f2, $f18, $f4             
    nop
    mtc1    $zero, $f6                 # $f6 = 0.00
lbl_8085E498:
    lui     $at, 0xC020                # $at = C0200000
    c.le.s  $f6, $f0                   
    nop
    bc1fl   lbl_8085E4E4               
    mtc1    $at, $f0                   # $f0 = -2.50
    lbu     v0, 0x07CE(s0)             # 000007CE
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f0                   # $f0 = 2.50
    bne     v0, $zero, lbl_8085E4C4    
    addiu   t0, v0, 0x0001             # t0 = 00000001
    sb      t0, 0x07CE(s0)             # 000007CE
lbl_8085E4C4:
    c.lt.s  $f0, $f2                   
    nop
    bc1f    lbl_8085E4D8               
    nop
    mov.s   $f2, $f0                   
lbl_8085E4D8:
    beq     $zero, $zero, lbl_8085E500 
    swc1    $f2, 0x0194(s0)            # 00000194
    mtc1    $at, $f0                   # $f0 = 2.50
lbl_8085E4E4:
    nop
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_8085E500               
    swc1    $f2, 0x0194(s0)            # 00000194
    mov.s   $f2, $f0                   
    swc1    $f2, 0x0194(s0)            # 00000194
lbl_8085E500:
    lw      a1, 0x0054($sp)            
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    lwc1    $f8, 0x0090(s0)            # 00000090
    lh      t2, 0x00B6(s0)             # 000000B6
    lh      t1, 0x00B6(a1)             # 000000B6
    c.lt.s  $f8, $f10                  
    subu    v0, t1, t2                 
    sll     v0, v0, 16                 
    bc1f    lbl_8085E5B0               
    sra     v0, v0, 16                 
    lb      t3, 0x0833(a1)             # 00000833
    beql    t3, $zero, lbl_8085E5B4    
    lwc1    $f18, 0x0190(s0)           # 00000190
    bltz    v0, lbl_8085E548           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_8085E548 
    or      v1, v0, $zero              # v1 = 00000000
lbl_8085E548:
    slti    $at, v1, 0x1F40            
    bnel    $at, $zero, lbl_8085E5B4   
    lwc1    $f18, 0x0190(s0)           # 00000190
    lh      v0, 0x008A(s0)             # 0000008A
    sh      v0, 0x0032(s0)             # 00000032
    jal     func_800CDCCC              # Rand.Next() float
    sh      v0, 0x00B6(s0)             # 000000B6
    lui     $at, %hi(var_808624A0)     # $at = 80860000
    lwc1    $f16, %lo(var_808624A0)($at) 
    lw      t4, 0x0054($sp)            
    c.lt.s  $f16, $f0                  
    nop
    bc1f    lbl_8085E5A0               
    nop
    lb      t5, 0x0832(t4)             # 00000832
    addiu   $at, $zero, 0x0011         # $at = 00000011
    beq     t5, $at, lbl_8085E5A0      
    nop
    jal     func_8085F670              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085E8E4 
    lw      $ra, 0x002C($sp)           
lbl_8085E5A0:
    jal     func_8085FBE4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085E8E4 
    lw      $ra, 0x002C($sp)           
lbl_8085E5B0:
    lwc1    $f18, 0x0190(s0)           # 00000190
lbl_8085E5B4:
    trunc.w.s $f4, $f18                  
    mfc1    v1, $f4                    
    jal     func_8008C9C0              
    sw      v1, 0x0060($sp)            
    lwc1    $f0, 0x0194(s0)            # 00000194
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $zero, $f16                # $f16 = 0.00
    lw      v1, 0x0060($sp)            
    c.le.s  $f6, $f0                   
    nop
    bc1fl   lbl_8085E5F0               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_8085E5F0 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_8085E5F0:
    lwc1    $f12, 0x0190(s0)           # 00000190
    c.le.s  $f16, $f0                  
    sub.s   $f8, $f12, $f2             
    trunc.w.s $f18, $f12                 
    trunc.w.s $f10, $f8                  
    mfc1    t9, $f18                   
    mfc1    a0, $f10                   
    bc1fl   lbl_8085E620               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_8085E620 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_8085E620:
    beql    v1, t9, lbl_8085E668       
    lw      t2, 0x07D8(s0)             # 000007D8
    trunc.w.s $f4, $f2                   
    mfc1    t1, $f4                    
    nop
    addu    v0, t1, v1                 
    slti    $at, v0, 0x0002            
    bnel    $at, $zero, lbl_8085E64C   
    slti    $at, a0, 0x0007            
    blez    a0, lbl_8085E658           
    slti    $at, a0, 0x0007            
lbl_8085E64C:
    beq     $at, $zero, lbl_8085E664   
    slti    $at, v0, 0x0008            
    bne     $at, $zero, lbl_8085E664   
lbl_8085E658:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x383D          # a1 = 0000383D
lbl_8085E664:
    lw      t2, 0x07D8(s0)             # 000007D8
lbl_8085E668:
    or      a0, s0, $zero              # a0 = 00000000
    andi    t3, t2, 0x001F             # t3 = 00000000
    bnel    t3, $zero, lbl_8085E6B8    
    lui     $at, 0x435C                # $at = 435C0000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3838          # a1 = 00003838
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lw      t4, 0x07D8(s0)             # 000007D8
    mul.s   $f8, $f0, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    t6, $f10                   
    nop
    sll     t7, t6, 16                 
    sra     t8, t7, 16                 
    addu    t9, t4, t8                 
    sw      t9, 0x07D8(s0)             # 000007D8
    lui     $at, 0x435C                # $at = 435C0000
lbl_8085E6B8:
    mtc1    $at, $f16                  # $f16 = 220.00
    lwc1    $f0, 0x0090(s0)            # 00000090
    lui     $at, 0x4320                # $at = 43200000
    c.lt.s  $f0, $f16                  
    nop
    bc1f    lbl_8085E79C               
    nop
    mtc1    $at, $f18                  # $f18 = 160.00
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f18, $f0                  
    nop
    bc1f    lbl_8085E79C               
    nop
    jal     func_80021A28              
    addiu   a1, $zero, 0x071C          # a1 = 0000071C
    beq     v0, $zero, lbl_8085E79C    
    lw      a0, 0x0074($sp)            
    jal     func_8002691C              
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_8085E73C    
    lw      t0, 0x0054($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_808624A4)     # $at = 80860000
    lwc1    $f4, %lo(var_808624A4)($at) 
    c.lt.s  $f0, $f4                   
    nop
    bc1f    lbl_8085E79C               
    nop
    jal     func_8085F8B8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085E8E4 
    lw      $ra, 0x002C($sp)           
lbl_8085E73C:
    lb      t1, 0x0141(t0)             # 00000141
    beq     t1, $zero, lbl_8085E79C    
    nop
    lbu     t2, 0x010C(s0)             # 0000010C
    lw      t3, 0x0074($sp)            
    lui     t5, 0x0001                 # t5 = 00010000
    beq     t2, $zero, lbl_8085E794    
    addu    t5, t5, t3                 
    lw      t5, 0x1DE4(t5)             # 00011DE4
    or      a1, t3, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    andi    t6, t5, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_8085E784    
    nop
    jal     func_808604F8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085E8E4 
    lw      $ra, 0x002C($sp)           
lbl_8085E784:
    jal     func_8085D7BC              
    lw      a1, 0x0074($sp)            
    beq     $zero, $zero, lbl_8085E79C 
    nop
lbl_8085E794:
    jal     func_8085EBD8              
    or      a0, s0, $zero              # a0 = 00000000
lbl_8085E79C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_808624A8)     # $at = 80860000
    lwc1    $f6, %lo(var_808624A8)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f6                   
    nop
    bc1f    lbl_8085E7CC               
    nop
    lh      v0, 0x008A(s0)             # 0000008A
    sh      v0, 0x0032(s0)             # 00000032
    sh      v0, 0x00B6(s0)             # 000000B6
lbl_8085E7CC:
    jal     func_80021A28              
    addiu   a1, $zero, 0x11C7          # a1 = 000011C7
    bne     v0, $zero, lbl_8085E810    
    lui     $at, 0x42DC                # $at = 42DC0000
    jal     func_8085DD74              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    nop
    mul.s   $f8, $f0, $f2              
    add.s   $f10, $f8, $f2             
    trunc.w.s $f16, $f10                 
    mfc1    t4, $f16                   
    beq     $zero, $zero, lbl_8085E8E0 
    sw      t4, 0x07D8(s0)             # 000007D8
lbl_8085E810:
    lwc1    $f18, 0x0090(s0)           # 00000090
    mtc1    $at, $f4                   # $f4 = 10.00
    nop
    c.lt.s  $f18, $f4                  
    nop
    bc1f    lbl_8085E8B0               
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_808624AC)     # $at = 80860000
    lwc1    $f6, %lo(var_808624AC)($at) 
    lw      t8, 0x0054($sp)            
    c.lt.s  $f6, $f0                   
    nop
    bc1f    lbl_8085E8A0               
    nop
    lw      t9, 0x066C(t8)             # 0000066C
    andi    t0, t9, 0x0010             # t0 = 00000000
    beq     t0, $zero, lbl_8085E890    
    nop
    lbu     t1, 0x010C(s0)             # 0000010C
    or      a0, s0, $zero              # a0 = 00000000
    beq     t1, $zero, lbl_8085E880    
    nop
    jal     func_8085F130              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085E8E0 
    nop
lbl_8085E880:
    jal     func_808604F8              
    lw      a1, 0x0074($sp)            
    beq     $zero, $zero, lbl_8085E8E4 
    lw      $ra, 0x002C($sp)           
lbl_8085E890:
    jal     func_8085F130              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085E8E4 
    lw      $ra, 0x002C($sp)           
lbl_8085E8A0:
    jal     func_8085FBE4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085E8E4 
    lw      $ra, 0x002C($sp)           
lbl_8085E8B0:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_808624B0)     # $at = 80860000
    lwc1    $f8, %lo(var_808624B0)($at) 
    lui     $at, 0x40A0                # $at = 40A00000
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_8085E8E4               
    lw      $ra, 0x002C($sp)           
    mtc1    $at, $f10                  # $f10 = 5.00
    nop
    swc1    $f10, 0x0068(s0)           # 00000068
lbl_8085E8E0:
    lw      $ra, 0x002C($sp)           
lbl_8085E8E4:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0070           # $sp = 00000000
    jr      $ra                        
    nop


func_8085E8F4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xE2B0             # a1 = 0600E2B0
    addiu   a0, a2, 0x0178             # a0 = 00000178
    jal     func_8008D2D4              
    sw      a2, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x000E          # t6 = 0000000E
    lui     a1, %hi(func_8085E93C)     # a1 = 80860000
    addiu   a1, a1, %lo(func_8085E93C) # a1 = 8085E93C
    jal     func_8085D350              
    sb      t6, 0x07B8(a0)             # 000007B8
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8085E93C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x002C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lw      a0, 0x002C($sp)            
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80861F04              
    sw      a2, 0x0028($sp)            
    bne     v0, $zero, lbl_8085EBC8    
    lw      a2, 0x0028($sp)            
    lh      v0, 0x008A(a2)             # 0000008A
    lh      a0, 0x00B6(a2)             # 000000B6
    subu    v0, v0, a0                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    blezl   v0, lbl_8085E9C8           
    mtc1    v0, $f6                    # $f6 = 0.00
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x4228                # $at = 42280000
    mtc1    $at, $f8                   # $f8 = 42.00
    cvt.s.w $f6, $f4                   
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f16                  # $f16 = 300.00
    div.s   $f10, $f6, $f8             
    add.s   $f18, $f10, $f16           
    trunc.w.s $f4, $f18                  
    mfc1    t8, $f4                    
    nop
    sll     t9, t8,  1                 
    addu    t0, a0, t9                 
    sll     a1, t8, 16                 
    sra     a1, a1, 16                 
    beq     $zero, $zero, lbl_8085EA04 
    sh      t0, 0x00B6(a2)             # 000000B6
    mtc1    v0, $f6                    # $f6 = 0.00
lbl_8085E9C8:
    lui     $at, 0x4228                # $at = 42280000
    mtc1    $at, $f10                  # $f10 = 42.00
    cvt.s.w $f8, $f6                   
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f18                  # $f18 = 300.00
    div.s   $f16, $f8, $f10            
    sub.s   $f4, $f16, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t3, $f6                    
    nop
    sll     t4, t3,  1                 
    addu    t5, a0, t4                 
    sll     a1, t3, 16                 
    sra     a1, a1, 16                 
    sh      t5, 0x00B6(a2)             # 000000B6
lbl_8085EA04:
    lh      t6, 0x00B6(a2)             # 000000B6
    blez    v0, lbl_8085EA48           
    sh      t6, 0x0032(a2)             # 00000032
    mtc1    a1, $f8                    # $f8 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    cvt.s.w $f10, $f8                  
    lui     $at, %hi(var_808624B4)     # $at = 80860000
    lwc1    $f16, %lo(var_808624B4)($at) 
    mul.s   $f2, $f10, $f16            
    c.lt.s  $f12, $f2                  
    nop
    bc1f    lbl_8085EA40               
    nop
    mov.s   $f2, $f12                  
lbl_8085EA40:
    beq     $zero, $zero, lbl_8085EA7C 
    swc1    $f2, 0x0194(a2)            # 00000194
lbl_8085EA48:
    mtc1    a1, $f18                   # $f18 = 0.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f12                  # $f12 = -1.00
    cvt.s.w $f4, $f18                  
    lui     $at, %hi(var_808624B8)     # $at = 80860000
    lwc1    $f6, %lo(var_808624B8)($at) 
    mul.s   $f2, $f4, $f6              
    c.lt.s  $f2, $f12                  
    nop
    bc1fl   lbl_8085EA7C               
    swc1    $f2, 0x0194(a2)            # 00000194
    mov.s   $f2, $f12                  
    swc1    $f2, 0x0194(a2)            # 00000194
lbl_8085EA7C:
    lwc1    $f8, 0x0190(a2)            # 00000190
    sw      a2, 0x0028($sp)            
    addiu   a0, a2, 0x0178             # a0 = 00000178
    trunc.w.s $f10, $f8                  
    mfc1    v1, $f10                   
    jal     func_8008C9C0              
    sw      v1, 0x001C($sp)            
    lw      a2, 0x0028($sp)            
    mtc1    $zero, $f14                # $f14 = 0.00
    lw      v1, 0x001C($sp)            
    lwc1    $f0, 0x0194(a2)            # 00000194
    c.le.s  $f14, $f0                  
    nop
    bc1fl   lbl_8085EAC4               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_8085EAC4 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_8085EAC4:
    lwc1    $f12, 0x0190(a2)           # 00000190
    c.le.s  $f14, $f0                  
    sub.s   $f16, $f12, $f2            
    trunc.w.s $f4, $f12                  
    trunc.w.s $f18, $f16                 
    mfc1    t0, $f4                    
    mfc1    a0, $f18                   
    bc1fl   lbl_8085EAF4               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_8085EAF4 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_8085EAF4:
    beql    v1, t0, lbl_8085EB44       
    or      a0, a2, $zero              # a0 = 00000000
    trunc.w.s $f6, $f2                   
    mfc1    t2, $f6                    
    nop
    addu    v0, t2, v1                 
    slti    $at, v0, 0x0003            
    bnel    $at, $zero, lbl_8085EB20   
    slti    $at, a0, 0x0007            
    blez    a0, lbl_8085EB2C           
    slti    $at, a0, 0x0007            
lbl_8085EB20:
    beq     $at, $zero, lbl_8085EB40   
    slti    $at, v0, 0x0009            
    bne     $at, $zero, lbl_8085EB40   
lbl_8085EB2C:
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x383D          # a1 = 0000383D
    jal     func_80022FD0              
    sw      a2, 0x0028($sp)            
    lw      a2, 0x0028($sp)            
lbl_8085EB40:
    or      a0, a2, $zero              # a0 = 00000000
lbl_8085EB44:
    addiu   a1, $zero, 0x071C          # a1 = 0000071C
    jal     func_80021A28              
    sw      a2, 0x0028($sp)            
    beq     v0, $zero, lbl_8085EBC8    
    lw      a2, 0x0028($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    sw      a2, 0x0028($sp)            
    lui     $at, %hi(var_808624BC)     # $at = 80860000
    lwc1    $f8, %lo(var_808624BC)($at) 
    lw      a2, 0x0028($sp)            
    c.lt.s  $f8, $f0                   
    nop
    bc1f    lbl_8085EBC0               
    nop
    jal     func_800CDCCC              # Rand.Next() float
    sw      a2, 0x0028($sp)            
    lui     $at, %hi(var_808624C0)     # $at = 80860000
    lwc1    $f10, %lo(var_808624C0)($at) 
    lw      a2, 0x0028($sp)            
    c.lt.s  $f10, $f0                  
    or      a0, a2, $zero              # a0 = 00000000
    bc1f    lbl_8085EBB0               
    nop
    jal     func_8085EBD8              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085EBCC 
    lw      $ra, 0x0014($sp)           
lbl_8085EBB0:
    jal     func_8085D7BC              
    lw      a1, 0x002C($sp)            
    beq     $zero, $zero, lbl_8085EBCC 
    lw      $ra, 0x0014($sp)           
lbl_8085EBC0:
    jal     func_8085E14C              
    or      a0, a2, $zero              # a0 = 00000000
lbl_8085EBC8:
    lw      $ra, 0x0014($sp)           
lbl_8085EBCC:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8085EBD8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xE2B0             # a1 = 0600E2B0
    jal     func_8008D2D4              
    addiu   a0, s0, 0x0178             # a0 = 00000178
    addiu   t6, $zero, 0x000F          # t6 = 0000000F
    jal     func_800CDCCC              # Rand.Next() float
    sb      t6, 0x07B8(s0)             # 000007B8
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f2                   # $f2 = 0.50
    lui     $at, 0xBF00                # $at = BF000000
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_8085EC30               
    swc1    $f2, 0x0068(s0)            # 00000068
    mtc1    $at, $f4                   # $f4 = -0.50
    beq     $zero, $zero, lbl_8085EC30 
    swc1    $f4, 0x0068(s0)            # 00000068
    swc1    $f2, 0x0068(s0)            # 00000068
lbl_8085EC30:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f6                   # $f6 = 15.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f10                  # $f10 = 25.00
    mul.s   $f8, $f0, $f6              
    mtc1    $zero, $f4                 # $f4 = 0.00
    lh      t1, 0x00B6(s0)             # 000000B6
    lui     a1, %hi(func_8085EC9C)     # a1 = 80860000
    addiu   a1, a1, %lo(func_8085EC9C) # a1 = 8085EC9C
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f4, 0x07DC(s0)            # 000007DC
    add.s   $f16, $f8, $f10            
    sh      t1, 0x0032(s0)             # 00000032
    trunc.w.s $f18, $f16                 
    mfc1    t8, $f18                   
    nop
    sll     t9, t8, 16                 
    sra     t0, t9, 16                 
    jal     func_8085D350              
    sw      t0, 0x07D8(s0)             # 000007D8
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8085EC9C:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x1C44(a2)             # 00001C44
    mtc1    $zero, $f4                 # $f4 = 0.00
    sw      a2, 0x004C($sp)            
    or      a0, a2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    sw      t6, 0x0030($sp)            
    jal     func_80861F04              
    swc1    $f4, 0x002C($sp)           
    bne     v0, $zero, lbl_8085F11C    
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0010($sp)            
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    lh      t8, 0x00B6(s0)             # 000000B6
    ori     $at, $zero, 0x8000         # $at = 00008000
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t9, t8, 0x3E80             # t9 = 00003E80
    sh      t9, 0x0032(s0)             # 00000032
    lw      t0, 0x0030($sp)            
    lh      t1, 0x00B6(t0)             # 000000B6
    addu    t2, t1, $at                
    sh      t2, 0x0046($sp)            
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.le.s  $f6, $f0                   
    nop
    bc1f    lbl_8085ED5C               
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f2                   # $f2 = 6.00
    lui     $at, 0x3F00                # $at = 3F000000
    c.lt.s  $f0, $f2                   
    nop
    bc1f    lbl_8085ED54               
    nop
    mtc1    $at, $f8                   # $f8 = 0.50
    nop
    add.s   $f10, $f0, $f8             
    beq     $zero, $zero, lbl_8085ED90 
    swc1    $f10, 0x0068(s0)           # 00000068
lbl_8085ED54:
    beq     $zero, $zero, lbl_8085ED90 
    swc1    $f2, 0x0068(s0)            # 00000068
lbl_8085ED5C:
    lui     $at, 0xC0C0                # $at = C0C00000
    mtc1    $at, $f2                   # $f2 = -6.00
    lui     $at, 0x3F00                # $at = 3F000000
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_8085ED90               
    swc1    $f2, 0x0068(s0)            # 00000068
    mtc1    $at, $f16                  # $f16 = 0.50
    nop
    sub.s   $f18, $f0, $f16            
    beq     $zero, $zero, lbl_8085ED90 
    swc1    $f18, 0x0068(s0)           # 00000068
    swc1    $f2, 0x0068(s0)            # 00000068
lbl_8085ED90:
    lhu     v0, 0x0088(s0)             # 00000088
    andi    v0, v0, 0x0008             # v0 = 00000000
    bne     v0, $zero, lbl_8085EDD0    
    nop
    lh      t3, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      a0, s0, $zero              # a0 = 00000000
    bne     t3, $at, lbl_8085EEB0      
    lw      a1, 0x004C($sp)            
    lw      a2, 0x0068(s0)             # 00000068
    jal     func_80026850              
    lh      a3, 0x0032(s0)             # 00000032
    bnel    v0, $zero, lbl_8085EEB4    
    lw      a0, 0x004C($sp)            
    lhu     v0, 0x0088(s0)             # 00000088
    andi    v0, v0, 0x0008             # v0 = 00000000
lbl_8085EDD0:
    beq     v0, $zero, lbl_8085EE2C    
    lui     $at, %hi(var_808624C4)     # $at = 80860000
    lwc1    $f4, 0x0068(s0)            # 00000068
    mtc1    $zero, $f6                 # $f6 = 0.00
    nop
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_8085EE0C               
    lh      v0, 0x00B6(s0)             # 000000B6
    lh      v0, 0x00B6(s0)             # 000000B6
    addiu   v0, v0, 0x3FFF             # v0 = 00003FFF
    sll     v0, v0, 16                 
    beq     $zero, $zero, lbl_8085EE18 
    sra     v0, v0, 16                 
    lh      v0, 0x00B6(s0)             # 000000B6
lbl_8085EE0C:
    addiu   v0, v0, 0xC001             # v0 = 00000000
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
lbl_8085EE18:
    lh      t4, 0x007E(s0)             # 0000007E
    subu    v0, t4, v0                 
    sll     v0, v0, 16                 
    beq     $zero, $zero, lbl_8085EE40 
    sra     v0, v0, 16                 
lbl_8085EE2C:
    lwc1    $f8, 0x0068(s0)            # 00000068
    lwc1    $f10, %lo(var_808624C4)($at) 
    or      v0, $zero, $zero           # v0 = 00000000
    mul.s   $f16, $f8, $f10            
    swc1    $f16, 0x0068(s0)           # 00000068
lbl_8085EE40:
    bltz    v0, lbl_8085EE50           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_8085EE50 
    or      v1, v0, $zero              # v1 = 00000000
lbl_8085EE50:
    slti    $at, v1, 0x4001            
    bne     $at, $zero, lbl_8085EEB0   
    lui     $at, %hi(var_808624C8)     # $at = 80860000
    lwc1    $f4, %lo(var_808624C8)($at) 
    lwc1    $f18, 0x0068(s0)           # 00000068
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, 0x3F00                # $at = 3F000000
    mul.s   $f6, $f18, $f4             
    swc1    $f6, 0x0068(s0)            # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_8085EEA4               
    mtc1    $at, $f18                  # $f18 = 0.50
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    nop
    sub.s   $f16, $f0, $f10            
    beq     $zero, $zero, lbl_8085EEB0 
    swc1    $f16, 0x0068(s0)           # 00000068
    mtc1    $at, $f18                  # $f18 = 0.50
lbl_8085EEA4:
    nop
    add.s   $f4, $f0, $f18             
    swc1    $f4, 0x0068(s0)            # 00000068
lbl_8085EEB0:
    lw      a0, 0x004C($sp)            
lbl_8085EEB4:
    jal     func_80026950              
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_8085EED0    
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f2                   # $f2 = 200.00
    nop
    swc1    $f2, 0x002C($sp)           
lbl_8085EED0:
    lui     $at, 0x42A0                # $at = 42A00000
    lwc1    $f2, 0x002C($sp)           
    mtc1    $at, $f6                   # $f6 = 80.00
    lwc1    $f0, 0x0090(s0)            # 00000090
    addiu   a0, s0, 0x07DC             # a0 = 000007DC
    add.s   $f8, $f6, $f2              
    lui     a1, 0xC020                 # a1 = C0200000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3F4C                 # a3 = 3F4C0000
    c.le.s  $f0, $f8                   
    lui     $at, 0x42DC                # $at = 42DC0000
    bc1fl   lbl_8085EF20               
    mtc1    $at, $f16                  # $f16 = 110.00
    mtc1    $zero, $f10                # $f10 = 0.00
    ori     a3, a3, 0xCCCD             # a3 = 3F4CCCCD
    jal     func_80064178              
    swc1    $f10, 0x0010($sp)          
    beq     $zero, $zero, lbl_8085EF80 
    mtc1    $zero, $f8                 # $f8 = 0.00
    mtc1    $at, $f16                  # $f16 = 0.00
lbl_8085EF20:
    addiu   a0, s0, 0x07DC             # a0 = 000007DC
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    add.s   $f18, $f16, $f2            
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x40D4                 # a3 = 40D40000
    c.lt.s  $f18, $f0                  
    nop
    bc1fl   lbl_8085EF70               
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a3, 0x3F4C                 # a3 = 3F4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3F4CCCCD
    addiu   a0, s0, 0x07DC             # a0 = 000007DC
    lui     a1, 0x4020                 # a1 = 40200000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    beq     $zero, $zero, lbl_8085EF80 
    mtc1    $zero, $f8                 # $f8 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
lbl_8085EF70:
    ori     a3, a3, 0xCCCD             # a3 = 0000CCCD
    jal     func_80064178              
    swc1    $f6, 0x0010($sp)           
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_8085EF80:
    lwc1    $f10, 0x07DC(s0)           # 000007DC
    c.eq.s  $f8, $f10                  
    nop
    bc1tl   lbl_8085EFD0               
    lui     $at, 0x3F00                # $at = 3F000000
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lwc1    $f18, 0x07DC(s0)           # 000007DC
    lwc1    $f16, 0x0024(s0)           # 00000024
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f4, $f0, $f18             
    add.s   $f6, $f16, $f4             
    jal     func_80063684              # coss?
    swc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x07DC(s0)           # 000007DC
    lwc1    $f8, 0x002C(s0)            # 0000002C
    mul.s   $f18, $f0, $f10            
    add.s   $f16, $f8, $f18            
    swc1    $f16, 0x002C(s0)           # 0000002C
    lui     $at, 0x3F00                # $at = 3F000000
lbl_8085EFD0:
    mtc1    $at, $f6                   # $f6 = 0.50
    lwc1    $f4, 0x0068(s0)            # 00000068
    lwc1    $f8, 0x0190(s0)            # 00000190
    addiu   a0, s0, 0x0178             # a0 = 00000178
    mul.s   $f10, $f4, $f6             
    trunc.w.s $f18, $f8                  
    mfc1    v1, $f18                   
    swc1    $f10, 0x0194(s0)           # 00000194
    jal     func_8008C9C0              
    sw      v1, 0x003C($sp)            
    mtc1    $zero, $f14                # $f14 = 0.00
    lwc1    $f0, 0x0194(s0)            # 00000194
    lw      v1, 0x003C($sp)            
    c.le.s  $f14, $f0                  
    nop
    bc1fl   lbl_8085F020               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_8085F020 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_8085F020:
    lwc1    $f12, 0x0190(s0)           # 00000190
    c.le.s  $f14, $f0                  
    sub.s   $f16, $f12, $f2            
    trunc.w.s $f6, $f12                  
    trunc.w.s $f4, $f16                  
    mfc1    t8, $f6                    
    mfc1    a0, $f4                    
    bc1fl   lbl_8085F050               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_8085F050 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_8085F050:
    beql    v1, t8, lbl_8085F098       
    lw      t1, 0x004C($sp)            
    trunc.w.s $f10, $f2                  
    mfc1    t0, $f10                   
    nop
    addu    v0, t0, v1                 
    slti    $at, v0, 0x0002            
    bnel    $at, $zero, lbl_8085F07C   
    slti    $at, a0, 0x0007            
    blez    a0, lbl_8085F088           
    slti    $at, a0, 0x0007            
lbl_8085F07C:
    beq     $at, $zero, lbl_8085F094   
    slti    $at, v0, 0x0008            
    bne     $at, $zero, lbl_8085F094   
lbl_8085F088:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x383D          # a1 = 0000383D
lbl_8085F094:
    lw      t1, 0x004C($sp)            
lbl_8085F098:
    lui     t2, 0x0001                 # t2 = 00010000
    or      a0, s0, $zero              # a0 = 00000000
    addu    t2, t2, t1                 
    lw      t2, 0x1DE4(t2)             # 00011DE4
    andi    t3, t2, 0x005F             # t3 = 00000000
    bnel    t3, $zero, lbl_8085F0C0    
    lh      t4, 0x0046($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3838          # a1 = 00003838
    lh      t4, 0x0046($sp)            
lbl_8085F0C0:
    lh      t5, 0x00B6(s0)             # 000000B6
    or      a0, s0, $zero              # a0 = 00000000
    subu    v0, t4, t5                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bgezl   v0, lbl_8085F0EC           
    slti    $at, v0, 0x6801            
    subu    v0, $zero, v0              
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    slti    $at, v0, 0x6801            
lbl_8085F0EC:
    beq     $at, $zero, lbl_8085F100   
    nop
    lw      v0, 0x07D8(s0)             # 000007D8
    bne     v0, $zero, lbl_8085F110    
    nop
lbl_8085F100:
    jal     func_8085D7BC              
    lw      a1, 0x004C($sp)            
    beq     $zero, $zero, lbl_8085F120 
    lw      $ra, 0x0024($sp)           
lbl_8085F110:
    beq     v0, $zero, lbl_8085F11C    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sw      t6, 0x07D8(s0)             # 000007D8
lbl_8085F11C:
    lw      $ra, 0x0024($sp)           
lbl_8085F120:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_8085F130:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xB00C             # a1 = 0600B00C
    jal     func_8008D1C4              
    addiu   a0, s0, 0x0178             # a0 = 00000178
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    jal     func_800C95C4              
    addiu   a1, $zero, 0x3838          # a1 = 00003838
    lbu     t6, 0x085C(s0)             # 0000085C
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    lui     a1, %hi(func_8085F1B4)     # a1 = 80860000
    andi    t7, t6, 0xFFFB             # t7 = 00000000
    sb      t7, 0x085C(s0)             # 0000085C
    sb      t8, 0x07B8(s0)             # 000007B8
    addiu   a1, a1, %lo(func_8085F1B4) # a1 = 8085F1B4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8085D350              
    swc1    $f4, 0x0068(s0)            # 00000068
    lbu     t0, 0x07CE(s0)             # 000007CE
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    sb      t9, 0x0869(s0)             # 00000869
    beq     t0, $zero, lbl_8085F1A0    
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    sb      t1, 0x07CE(s0)             # 000007CE
lbl_8085F1A0:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8085F1B4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lwc1    $f0, 0x0190(s0)            # 00000190
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    trunc.w.s $f6, $f0                   
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    swc1    $f4, 0x0068(s0)            # 00000068
    mfc1    v1, $f6                    
    nop
    slti    $at, v1, 0x0004            
    beql    $at, $zero, lbl_8085F218   
    addiu   $at, $zero, 0x0007         # $at = 00000007
    lh      a1, 0x008A(s0)             # 0000008A
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lwc1    $f0, 0x0190(s0)            # 00000190
    trunc.w.s $f8, $f0                   
    mfc1    v1, $f8                    
    nop
    addiu   $at, $zero, 0x0007         # $at = 00000007
lbl_8085F218:
    bne     v1, $at, lbl_8085F22C      
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3839          # a1 = 00003839
    lwc1    $f0, 0x0190(s0)            # 00000190
lbl_8085F22C:
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f10                  # $f10 = 7.00
    lui     $at, 0x4130                # $at = 41300000
    c.lt.s  $f10, $f0                  
    nop
    bc1fl   lbl_8085F26C               
    sb      $zero, 0x07F8(s0)          # 000007F8
    mtc1    $at, $f16                  # $f16 = 11.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    c.lt.s  $f0, $f16                  
    nop
    bc1fl   lbl_8085F26C               
    sb      $zero, 0x07F8(s0)          # 000007F8
    beq     $zero, $zero, lbl_8085F26C 
    sb      t8, 0x07F8(s0)             # 000007F8
    sb      $zero, 0x07F8(s0)          # 000007F8
lbl_8085F26C:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0178             # a0 = 00000178
    beq     v0, $zero, lbl_8085F2AC    
    lw      t9, 0x002C($sp)            
    lui     t0, 0x0001                 # t0 = 00010000
    addu    t0, t0, t9                 
    lw      t0, 0x1DE4(t0)             # 00011DE4
    andi    t1, t0, 0x0001             # t1 = 00000000
    beq     t1, $zero, lbl_8085F2A4    
    nop
    jal     func_8085F2C0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085F2B0 
    lw      $ra, 0x0024($sp)           
lbl_8085F2A4:
    jal     func_8085F53C              
    or      a0, s0, $zero              # a0 = 00000000
lbl_8085F2AC:
    lw      $ra, 0x0024($sp)           
lbl_8085F2B0:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8085F2C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xB4E4             # a1 = 0600B4E4
    addiu   a0, a2, 0x0178             # a0 = 00000178
    jal     func_8008D1C4              
    sw      a2, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0012          # t6 = 00000012
    lui     a1, %hi(func_8085F310)     # a1 = 80860000
    addiu   a1, a1, %lo(func_8085F310) # a1 = 8085F310
    sb      t6, 0x07B8(a0)             # 000007B8
    jal     func_8085D350              
    swc1    $f4, 0x0068(a0)            # 00000068
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8085F310:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lw      t6, 0x0024($sp)            
    addiu   a0, a2, 0x0178             # a0 = 00000178
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      a2, 0x0020($sp)            
    jal     func_8008C9C0              
    sw      t7, 0x001C($sp)            
    beq     v0, $zero, lbl_8085F52C    
    lw      a2, 0x0020($sp)            
    lbu     v0, 0x085C(a2)             # 0000085C
    andi    t8, v0, 0x0002             # t8 = 00000000
    beq     t8, $zero, lbl_8085F374    
    nop
    lh      t0, 0x001C(a2)             # 0000001C
    andi    t9, v0, 0xFFFD             # t9 = 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     t0, $at, lbl_8085F374      
    sb      t9, 0x085C(a2)             # 0000085C
    jal     func_8085F670              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085F530 
    lw      $ra, 0x0014($sp)           
lbl_8085F374:
    jal     func_800CDCCC              # Rand.Next() float
    sw      a2, 0x0020($sp)            
    lui     $at, %hi(var_808624CC)     # $at = 80860000
    lwc1    $f4, %lo(var_808624CC)($at) 
    lw      a2, 0x0020($sp)            
    lw      a1, 0x001C($sp)            
    c.lt.s  $f4, $f0                   
    or      a0, a2, $zero              # a0 = 00000000
    bc1f    lbl_8085F3D4               
    nop
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8085DD74              
    sw      a2, 0x0020($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f2                   # $f2 = 5.00
    lw      a2, 0x0020($sp)            
    mul.s   $f6, $f0, $f2              
    add.s   $f8, $f6, $f2              
    trunc.w.s $f10, $f8                  
    mfc1    t2, $f10                   
    beq     $zero, $zero, lbl_8085F52C 
    sw      t2, 0x07D8(a2)             # 000007D8
lbl_8085F3D4:
    jal     func_800213B4              
    sw      a2, 0x0020($sp)            
    lw      a2, 0x0020($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    sh      v0, 0x0032(a2)             # 00000032
    lui     $at, %hi(var_808624D0)     # $at = 80860000
    lwc1    $f16, %lo(var_808624D0)($at) 
    lw      a2, 0x0020($sp)            
    lw      t4, 0x001C($sp)            
    c.lt.s  $f16, $f0                  
    nop
    bc1fl   lbl_8085F42C               
    lh      a0, 0x00B6(a2)             # 000000B6
    lh      t3, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    t3, $at, lbl_8085F42C      
    lh      a0, 0x00B6(a2)             # 000000B6
    jal     func_8085F670              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085F530 
    lw      $ra, 0x0014($sp)           
    lh      a0, 0x00B6(a2)             # 000000B6
lbl_8085F42C:
    lh      t5, 0x00B6(t4)             # 000000B6
    lw      a1, 0x0024($sp)            
    subu    v0, t5, a0                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_8085F450           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_8085F450 
    or      v1, v0, $zero              # v1 = 00000000
lbl_8085F450:
    slti    $at, v1, 0x2711            
    beq     $at, $zero, lbl_8085F524   
    nop
    lh      a1, 0x008A(a2)             # 0000008A
    lw      t7, 0x001C($sp)            
    subu    v0, a1, a0                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_8085F480           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_8085F480 
    or      v1, v0, $zero              # v1 = 00000000
lbl_8085F480:
    slti    $at, v1, 0x3E81            
    bnel    $at, $zero, lbl_8085F4B4   
    lw      t8, 0x066C(t7)             # 0000066C
    lh      t6, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      a0, a2, $zero              # a0 = 00000000
    beql    t6, $at, lbl_8085F4B4      
    lw      t8, 0x066C(t7)             # 0000066C
    jal     func_8085F670              
    sh      a1, 0x0032(a2)             # 00000032
    beq     $zero, $zero, lbl_8085F530 
    lw      $ra, 0x0014($sp)           
    lw      t8, 0x066C(t7)             # 0000066C
lbl_8085F4B4:
    andi    t9, t8, 0x0010             # t9 = 00000000
    beq     t9, $zero, lbl_8085F514    
    nop
    lbu     t0, 0x010C(a2)             # 0000010C
    lw      a1, 0x0024($sp)            
    lui     t1, 0x0001                 # t1 = 00010000
    beq     t0, $zero, lbl_8085F4E4    
    addu    t1, t1, a1                 
    jal     func_8085F130              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085F530 
    lw      $ra, 0x0014($sp)           
lbl_8085F4E4:
    lw      t1, 0x1DE4(t1)             # 00001DE4
    andi    t2, t1, 0x0001             # t2 = 00000000
    beq     t2, $zero, lbl_8085F504    
    nop
    jal     func_808604F8              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085F530 
    lw      $ra, 0x0014($sp)           
lbl_8085F504:
    jal     func_8085F670              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085F530 
    lw      $ra, 0x0014($sp)           
lbl_8085F514:
    jal     func_8085F130              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085F530 
    lw      $ra, 0x0014($sp)           
lbl_8085F524:
    jal     func_808604F8              
    or      a0, a2, $zero              # a0 = 00000000
lbl_8085F52C:
    lw      $ra, 0x0014($sp)           
lbl_8085F530:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8085F53C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xBE4C             # a1 = 0600BE4C
    addiu   a0, a2, 0x0178             # a0 = 00000178
    jal     func_8008D1C4              
    sw      a2, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t8, $zero, 0x0011          # t8 = 00000011
    lbu     t6, 0x085C(a0)             # 0000085C
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    lui     a1, %hi(func_8085F5B8)     # a1 = 80860000
    andi    t7, t6, 0xFFFB             # t7 = 00000000
    addiu   a1, a1, %lo(func_8085F5B8) # a1 = 8085F5B8
    sb      t7, 0x085C(a0)             # 0000085C
    sb      t8, 0x07B8(a0)             # 000007B8
    sb      t9, 0x0869(a0)             # 00000869
    jal     func_8085D350              
    swc1    $f4, 0x0068(a0)            # 00000068
    lw      a2, 0x0018($sp)            
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    lbu     t0, 0x07CE(a2)             # 000007CE
    beql    t0, $zero, lbl_8085F5AC    
    lw      $ra, 0x0014($sp)           
    sb      t1, 0x07CE(a2)             # 000007CE
    lw      $ra, 0x0014($sp)           
lbl_8085F5AC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8085F5B8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lwc1    $f0, 0x0190(a2)            # 00000190
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   $at, $zero, 0x0002         # $at = 00000002
    trunc.w.s $f6, $f0                   
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x3839          # a1 = 00003839
    swc1    $f4, 0x0068(a2)            # 00000068
    mfc1    t7, $f6                    
    nop
    bnel    t7, $at, lbl_8085F608      
    lui     $at, 0x3F80                # $at = 3F800000
    jal     func_80022FD0              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lwc1    $f0, 0x0190(a2)            # 00000190
    lui     $at, 0x3F80                # $at = 3F800000
lbl_8085F608:
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     $at, 0x4100                # $at = 41000000
    addiu   a0, a2, 0x0178             # a0 = 00000178
    c.lt.s  $f8, $f0                   
    nop
    bc1fl   lbl_8085F648               
    sb      $zero, 0x07F8(a2)          # 000007F8
    mtc1    $at, $f10                  # $f10 = 8.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_8085F648               
    sb      $zero, 0x07F8(a2)          # 000007F8
    beq     $zero, $zero, lbl_8085F648 
    sb      t8, 0x07F8(a2)             # 000007F8
    sb      $zero, 0x07F8(a2)          # 000007F8
lbl_8085F648:
    jal     func_8008C9C0              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_8085F660    
    lw      a2, 0x0018($sp)            
    jal     func_8085F130              
    or      a0, a2, $zero              # a0 = 00000000
lbl_8085F660:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8085F670:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1978             # a1 = 06001978
    jal     func_8008D1C4              
    addiu   a0, s0, 0x0178             # a0 = 00000178
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x386C          # a1 = 0000386C
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    lui     a1, %hi(func_8085F710)     # a1 = 80860000
    sb      t6, 0x07B8(s0)             # 000007B8
    sw      t7, 0x07D8(s0)             # 000007D8
    addiu   a1, a1, %lo(func_8085F710) # a1 = 8085F710
    jal     func_8085D350              
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t8, 0x07CE(s0)             # 000007CE
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    beql    t8, $zero, lbl_8085F6D4    
    lh      t0, 0x001C(s0)             # 0000001C
    sb      t9, 0x07CE(s0)             # 000007CE
    lh      t0, 0x001C(s0)             # 0000001C
lbl_8085F6D4:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     t0, $at, lbl_8085F6EC      
    lui     $at, 0xC130                # $at = C1300000
    mtc1    $at, $f4                   # $f4 = -11.00
    beq     $zero, $zero, lbl_8085F6FC 
    swc1    $f4, 0x0068(s0)            # 00000068
lbl_8085F6EC:
    lui     $at, 0xC0E0                # $at = C0E00000
    mtc1    $at, $f6                   # $f6 = -7.00
    nop
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_8085F6FC:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8085F710:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)            
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    lw      v1, 0x07D8(s0)             # 000007D8
    or      a0, s0, $zero              # a0 = 00000000
    bne     v1, $zero, lbl_8085F760    
    addiu   t7, v1, 0xFFFF             # t7 = FFFFFFFF
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3838          # a1 = 00003838
    beq     $zero, $zero, lbl_8085F764 
    nop
lbl_8085F760:
    sw      t7, 0x07D8(s0)             # 000007D8
lbl_8085F764:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0178             # a0 = 00000178
    beq     v0, $zero, lbl_8085F878    
    lui     $at, 0x4080                # $at = 40800000
    lw      a0, 0x002C($sp)            
    jal     func_80861F04              
    or      a1, s0, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_8085F8A4    
    lui     $at, 0x42C8                # $at = 42C80000
    lwc1    $f0, 0x0090(s0)            # 00000090
    mtc1    $at, $f4                   # $f4 = 100.00
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x435C                # $at = 435C0000
    c.le.s  $f0, $f4                   
    nop
    bc1fl   lbl_8085F800               
    mtc1    $at, $f16                  # $f16 = 220.00
    jal     func_80021A28              
    addiu   a1, $zero, 0x1555          # a1 = 00001555
    beq     v0, $zero, lbl_8085F7C8    
    nop
    jal     func_8085F130              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085F86C 
    lw      t2, 0x0004(s0)             # 00000004
lbl_8085F7C8:
    jal     func_8085DD74              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f2                   # $f2 = 5.00
    nop
    mul.s   $f6, $f0, $f2              
    add.s   $f8, $f6, $f2              
    trunc.w.s $f10, $f8                  
    mfc1    t9, $f10                   
    beq     $zero, $zero, lbl_8085F868 
    sw      t9, 0x07D8(s0)             # 000007D8
    mtc1    $at, $f16                  # $f16 = 5.00
lbl_8085F800:
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f0, $f16                  
    nop
    bc1f    lbl_8085F834               
    nop
    jal     func_80021A28              
    addiu   a1, $zero, 0x0E38          # a1 = 00000E38
    beq     v0, $zero, lbl_8085F834    
    nop
    jal     func_8085F8B8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085F86C 
    lw      t2, 0x0004(s0)             # 00000004
lbl_8085F834:
    jal     func_8085DD74              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f2                   # $f2 = 5.00
    nop
    mul.s   $f18, $f0, $f2             
    add.s   $f4, $f18, $f2             
    trunc.w.s $f6, $f4                   
    mfc1    t1, $f6                    
    nop
    sw      t1, 0x07D8(s0)             # 000007D8
lbl_8085F868:
    lw      t2, 0x0004(s0)             # 00000004
lbl_8085F86C:
    ori     t3, t2, 0x0001             # t3 = 00000001
    beq     $zero, $zero, lbl_8085F8A4 
    sw      t3, 0x0004(s0)             # 00000004
lbl_8085F878:
    lwc1    $f8, 0x0188(s0)            # 00000188
    mtc1    $at, $f10                  # $f10 = 5.00
    lwc1    $f18, 0x0190(s0)           # 00000190
    or      a0, s0, $zero              # a0 = 00000000
    sub.s   $f16, $f8, $f10            
    c.eq.s  $f16, $f18                 
    nop
    bc1fl   lbl_8085F8A8               
    lw      $ra, 0x0024($sp)           
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
lbl_8085F8A4:
    lw      $ra, 0x0024($sp)           
lbl_8085F8A8:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8085F8B8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xA324             # a1 = 0600A324
    jal     func_8008D1C4              
    addiu   a0, s0, 0x0178             # a0 = 00000178
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    jal     func_800C95C4              
    addiu   a1, $zero, 0x3838          # a1 = 00003838
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f6                   # $f6 = 8.00
    addiu   t6, $zero, 0x0017          # t6 = 00000017
    sw      $zero, 0x07D8(s0)          # 000007D8
    sb      t6, 0x07B8(s0)             # 000007B8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x386C          # a1 = 0000386C
    swc1    $f4, 0x0060(s0)            # 00000060
    jal     func_80022FD0              
    swc1    $f6, 0x0068(s0)            # 00000068
    lbu     t8, 0x085C(s0)             # 0000085C
    lh      t7, 0x00B6(s0)             # 000000B6
    lui     a1, %hi(func_8085F964)     # a1 = 80860000
    andi    t9, t8, 0xFFFB             # t9 = 00000000
    sb      t9, 0x085C(s0)             # 0000085C
    addiu   a1, a1, %lo(func_8085F964) # a1 = 8085F964
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8085D350              
    sh      t7, 0x0032(s0)             # 00000032
    lbu     t1, 0x07CE(s0)             # 000007CE
    addiu   t0, $zero, 0x0020          # t0 = 00000020
    sb      t0, 0x0869(s0)             # 00000869
    beq     t1, $zero, lbl_8085F950    
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    sb      t2, 0x07CE(s0)             # 000007CE
lbl_8085F950:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8085F964:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    addiu   a0, s0, 0x0178             # a0 = 00000178
    jal     func_8008C9C0              
    sw      a0, 0x0024($sp)            
    beq     v0, $zero, lbl_8085F9E0    
    lw      a0, 0x0024($sp)            
    lw      t6, 0x07D8(s0)             # 000007D8
    lui     a1, 0x0601                 # a1 = 06010000
    bnel    t6, $zero, lbl_8085F9D4    
    mtc1    $zero, $f4                 # $f4 = 0.00
    jal     func_8008D1C4              
    addiu   a1, a1, 0xA99C             # a1 = 0600A99C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      v0, 0x07D8(s0)             # 000007D8
    sb      v0, 0x07F8(s0)             # 000007F8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3839          # a1 = 00003839
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x386C          # a1 = 0000386C
    beq     $zero, $zero, lbl_8085F9E4 
    lw      t7, 0x07D8(s0)             # 000007D8
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_8085F9D4:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8085DD74              
    swc1    $f4, 0x0068(s0)            # 00000068
lbl_8085F9E0:
    lw      t7, 0x07D8(s0)             # 000007D8
lbl_8085F9E4:
    lui     $at, 0x40A0                # $at = 40A00000
    beql    t7, $zero, lbl_8085FA14    
    lwc1    $f0, 0x0080(s0)            # 00000080
    lwc1    $f6, 0x0190(s0)            # 00000190
    mtc1    $at, $f8                   # $f8 = 5.00
    nop
    c.le.s  $f8, $f6                   
    nop
    bc1fl   lbl_8085FA14               
    lwc1    $f0, 0x0080(s0)            # 00000080
    sb      $zero, 0x07F8(s0)          # 000007F8
    lwc1    $f0, 0x0080(s0)            # 00000080
lbl_8085FA14:
    lwc1    $f10, 0x0028(s0)           # 00000028
    c.le.s  $f10, $f0                  
    nop
    bc1fl   lbl_8085FA64               
    lw      $ra, 0x001C($sp)           
    mtc1    $zero, $f2                 # $f2 = 0.00
    lwc1    $f16, 0x0068(s0)           # 00000068
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f2, $f16                  
    nop
    bc1tl   lbl_8085FA58               
    swc1    $f0, 0x0028(s0)            # 00000028
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    mtc1    $zero, $f2                 # $f2 = 0.00
    lwc1    $f0, 0x0080(s0)            # 00000080
    swc1    $f0, 0x0028(s0)            # 00000028
lbl_8085FA58:
    swc1    $f2, 0x0060(s0)            # 00000060
    swc1    $f2, 0x0068(s0)            # 00000068
    lw      $ra, 0x001C($sp)           
lbl_8085FA64:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8085FA74:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xA324             # a1 = 0600A324
    addiu   a0, a2, 0x0178             # a0 = 00000178
    jal     func_8008D1C4              
    sw      a2, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f4                   # $f4 = 14.00
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f6                   # $f6 = 6.00
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    addiu   a1, $zero, 0x386C          # a1 = 0000386C
    sw      $zero, 0x07D8(a0)          # 000007D8
    sb      t6, 0x07B8(a0)             # 000007B8
    swc1    $f4, 0x0060(a0)            # 00000060
    jal     func_80022FD0              
    swc1    $f6, 0x0068(a0)            # 00000068
    lw      a0, 0x0018($sp)            
    lui     a1, %hi(func_8085FAEC)     # a1 = 80860000
    addiu   a1, a1, %lo(func_8085FAEC) # a1 = 8085FAEC
    lh      t7, 0x00B6(a0)             # 000000B6
    jal     func_8085D350              
    sh      t7, 0x0032(a0)             # 00000032
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8085FAEC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)            
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    addiu   a0, s0, 0x0178             # a0 = 00000178
    jal     func_8008C9C0              
    sw      a0, 0x0034($sp)            
    lwc1    $f4, 0x0080(s0)            # 00000080
    lwc1    $f6, 0x0028(s0)            # 00000028
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_8085FBD4               
    lw      $ra, 0x002C($sp)           
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    lwc1    $f10, 0x0060(s0)           # 00000060
    lh      t7, 0x008A(s0)             # 0000008A
    lwc1    $f8, 0x0080(s0)            # 00000080
    trunc.w.s $f16, $f10                 
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t0, $zero, 0x000C          # t0 = 0000000C
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    mfc1    v0, $f16                   
    sh      t7, 0x00B6(s0)             # 000000B6
    swc1    $f8, 0x0028(s0)            # 00000028
    subu    v0, $zero, v0              
    bne     v0, $zero, lbl_8085FB88    
    sw      v0, 0x07D4(s0)             # 000007D4
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x07D4(s0)             # 000007D4
lbl_8085FB88:
    swc1    $f0, 0x0060(s0)            # 00000060
    swc1    $f0, 0x0068(s0)            # 00000068
    sb      t0, 0x07B8(s0)             # 000007B8
    sw      t1, 0x07D8(s0)             # 000007D8
    lui     a1, 0x0601                 # a1 = 06010000
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sw      t2, 0x0014($sp)            
    addiu   a1, a1, 0xC438             # a1 = 0600C438
    swc1    $f0, 0x0018($sp)           
    swc1    $f0, 0x0010($sp)           
    jal     func_8008D17C              
    lw      a0, 0x0034($sp)            
    lui     a1, %hi(func_8085E0DC)     # a1 = 80860000
    addiu   a1, a1, %lo(func_8085E0DC) # a1 = 8085E0DC
    jal     func_8085D350              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
lbl_8085FBD4:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8085FBE4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x1C20             # a0 = 06001C20
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f0                   # $f0 = 2.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a2, $f0                    
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x1C20             # a1 = 06001C20
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x0178             # a0 = 00000178
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   t7, $zero, 0x0015          # t7 = 00000015
    sb      t7, 0x07B8(s0)             # 000007B8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0068(s0)            # 00000068
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lui     $at, 0x4130                # $at = 41300000
    mtc1    $at, $f18                  # $f18 = 11.00
    mul.s   $f16, $f0, $f10            
    lh      t0, 0x00B6(s0)             # 000000B6
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    lui     a1, %hi(func_8085FCA4)     # a1 = 80860000
    sb      t1, 0x07CE(s0)             # 000007CE
    addiu   a1, a1, %lo(func_8085FCA4) # a1 = 8085FCA4
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f4, $f16, $f18            
    sh      t0, 0x0032(s0)             # 00000032
    trunc.w.s $f6, $f4                   
    mfc1    t9, $f6                    
    jal     func_8085D350              
    sw      t9, 0x07D8(s0)             # 000007D8
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8085FCA4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    mfc1    a1, $f0                    
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3F00                 # a3 = 3F000000
    jal     func_80064178              
    swc1    $f0, 0x0010($sp)           
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0178             # a0 = 00000178
    lh      a1, 0x008A(s0)             # 0000008A
    lh      t6, 0x00B6(s0)             # 000000B6
    subu    v0, a1, t6                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_8085FD00           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_8085FD00 
    or      v1, v0, $zero              # v1 = 00000000
lbl_8085FD00:
    slti    $at, v1, 0x3E81            
    bnel    $at, $zero, lbl_8085FD44   
    lw      v0, 0x07D8(s0)             # 000007D8
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      t8, 0x002C($sp)            
    beq     t7, $at, lbl_8085FD40      
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t9, t9, t8                 
    lw      t9, 0x1DE4(t9)             # 00011DE4
    or      a0, s0, $zero              # a0 = 00000000
    andi    t0, t9, 0x0001             # t0 = 00000000
    beql    t0, $zero, lbl_8085FD44    
    lw      v0, 0x07D8(s0)             # 000007D8
    jal     func_8085F670              
    sh      a1, 0x0032(s0)             # 00000032
lbl_8085FD40:
    lw      v0, 0x07D8(s0)             # 000007D8
lbl_8085FD44:
    bne     v0, $zero, lbl_8085FD5C    
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    jal     func_8085FD74              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085FD64 
    lw      $ra, 0x0024($sp)           
lbl_8085FD5C:
    sw      t1, 0x07D8(s0)             # 000007D8
    lw      $ra, 0x0024($sp)           
lbl_8085FD64:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8085FD74:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x316C             # a1 = 0600316C
    addiu   a0, a3, 0x0178             # a0 = 00000178
    lui     a2, 0xC080                 # a2 = C0800000
    jal     func_8008D328              
    sw      a3, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x0016          # t6 = 00000016
    lui     a1, %hi(func_8085FDC0)     # a1 = 80860000
    addiu   a1, a1, %lo(func_8085FDC0) # a1 = 8085FDC0
    jal     func_8085D350              
    sb      t6, 0x07B8(a0)             # 000007B8
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8085FDC0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    mfc1    a1, $f0                    
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3FC0                 # a3 = 3FC00000
    jal     func_80064178              
    swc1    $f0, 0x0010($sp)           
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0178             # a0 = 00000178
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f4, 0x01A0(s0)            # 000001A0
    or      a1, s0, $zero              # a1 = 00000000
    c.eq.s  $f0, $f4                   
    nop
    bc1fl   lbl_8085FE68               
    lw      $ra, 0x0024($sp)           
    swc1    $f0, 0x0068(s0)            # 00000068
    sb      $zero, 0x07CE(s0)          # 000007CE
    jal     func_80861F04              
    lw      a0, 0x002C($sp)            
    bne     v0, $zero, lbl_8085FE64    
    lui     $at, 0x43FA                # $at = 43FA0000
    lwc1    $f6, 0x0090(s0)            # 00000090
    mtc1    $at, $f8                   # $f8 = 500.00
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f6, $f8                   
    nop
    bc1f    lbl_8085FE5C               
    nop
    jal     func_8085D7BC              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085FE68 
    lw      $ra, 0x0024($sp)           
lbl_8085FE5C:
    jal     func_808604F8              
    lw      a1, 0x002C($sp)            
lbl_8085FE64:
    lw      $ra, 0x0024($sp)           
lbl_8085FE68:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8085FE78:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x8604             # a1 = 06008604
    jal     func_8008D1C4              
    addiu   a0, s0, 0x0178             # a0 = 00000178
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x383A          # a1 = 0000383A
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f4                   # $f4 = -2.00
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    sb      t6, 0x07B8(s0)             # 000007B8
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    swc1    $f4, 0x0068(s0)            # 00000068
    sw      t7, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a1, %hi(func_8085FEF8)     # a1 = 80860000
    addiu   a1, a1, %lo(func_8085FEF8) # a1 = 8085FEF8
    jal     func_8085D350              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8085FEF8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    mfc1    a1, $f0                    
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    lw      t7, 0x1C44(t6)             # 00001C44
    swc1    $f0, 0x0010($sp)           
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178              
    sw      t7, 0x002C($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0178             # a0 = 00000178
    beql    v0, $zero, lbl_8085FFD4    
    lw      t2, 0x002C($sp)            
    lhu     t8, 0x0088(s0)             # 00000088
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      a1, s0, $zero              # a1 = 00000000
    andi    t9, t8, 0x0008             # t9 = 00000000
    beq     t9, $zero, lbl_8085FFB8    
    swc1    $f4, 0x0068(s0)            # 00000068
    lh      t0, 0x007E(s0)             # 0000007E
    lh      t1, 0x00B6(s0)             # 000000B6
    subu    v0, t0, t1                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_8085FF84           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_8085FF84 
    or      v1, v0, $zero              # v1 = 00000000
lbl_8085FF84:
    slti    $at, v1, 0x38A4            
    beq     $at, $zero, lbl_8085FFB8   
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f8                   # $f8 = 80.00
    lwc1    $f6, 0x0090(s0)            # 00000090
    c.lt.s  $f6, $f8                   
    nop
    bc1f    lbl_8085FFB8               
    nop
    jal     func_8085FA74              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8085FFD4 
    lw      t2, 0x002C($sp)            
lbl_8085FFB8:
    jal     func_80861F04              
    lw      a0, 0x0034($sp)            
    bne     v0, $zero, lbl_808600AC    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8085D7BC              
    lw      a1, 0x0034($sp)            
    lw      t2, 0x002C($sp)            
lbl_8085FFD4:
    lb      t3, 0x0833(t2)             # 00000833
    beql    t3, $zero, lbl_808600B0    
    lw      $ra, 0x0024($sp)           
    lhu     t4, 0x0088(s0)             # 00000088
    andi    t5, t4, 0x0008             # t5 = 00000000
    beq     t5, $zero, lbl_80860048    
    nop
    lh      t6, 0x007E(s0)             # 0000007E
    lh      t7, 0x00B6(s0)             # 000000B6
    subu    v0, t6, t7                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80860014           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_80860014 
    or      v1, v0, $zero              # v1 = 00000000
lbl_80860014:
    slti    $at, v1, 0x38A4            
    beq     $at, $zero, lbl_80860048   
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f16                  # $f16 = 80.00
    lwc1    $f10, 0x0090(s0)           # 00000090
    c.lt.s  $f10, $f16                 
    nop
    bc1f    lbl_80860048               
    nop
    jal     func_8085FA74              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808600A8 
    addiu   t1, $zero, 0x0008          # t1 = 00000008
lbl_80860048:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_808624D4)     # $at = 80860000
    lwc1    $f18, %lo(var_808624D4)($at) 
    c.lt.s  $f18, $f0                  
    nop
    bc1f    lbl_8086009C               
    nop
    lh      t8, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      t9, 0x002C($sp)            
    beq     t8, $at, lbl_8086009C      
    nop
    lb      t0, 0x0832(t9)             # 00000832
    addiu   $at, $zero, 0x0011         # $at = 00000011
    beq     t0, $at, lbl_8086009C      
    nop
    jal     func_8085F670              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808600A8 
    addiu   t1, $zero, 0x0008          # t1 = 00000008
lbl_8086009C:
    jal     func_8085FBE4              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t1, $zero, 0x0008          # t1 = 00000008
lbl_808600A8:
    sb      t1, 0x07B8(s0)             # 000007B8
lbl_808600AC:
    lw      $ra, 0x0024($sp)           
lbl_808600B0:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_808600C0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0444             # a1 = 06000444
    jal     func_8008D1C4              
    addiu   a0, s0, 0x0178             # a0 = 00000178
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x383A          # a1 = 0000383A
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f4                   # $f4 = -2.00
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    sb      t6, 0x07B8(s0)             # 000007B8
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    swc1    $f4, 0x0068(s0)            # 00000068
    sw      t7, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a1, %hi(func_80860140)     # a1 = 80860000
    addiu   a1, a1, %lo(func_80860140) # a1 = 80860140
    jal     func_8085D350              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80860140:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    mfc1    a1, $f0                    
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    lw      t7, 0x1C44(t6)             # 00001C44
    swc1    $f0, 0x0010($sp)           
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178              
    sw      t7, 0x002C($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0178             # a0 = 00000178
    beql    v0, $zero, lbl_808601B8    
    lw      t8, 0x002C($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f4, 0x0068(s0)            # 00000068
    jal     func_80861F04              
    lw      a0, 0x0034($sp)            
    bne     v0, $zero, lbl_80860290    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8085D7BC              
    lw      a1, 0x0034($sp)            
    lw      t8, 0x002C($sp)            
lbl_808601B8:
    lb      t9, 0x0833(t8)             # 00000833
    beql    t9, $zero, lbl_80860294    
    lw      $ra, 0x0024($sp)           
    lhu     t0, 0x0088(s0)             # 00000088
    andi    t1, t0, 0x0008             # t1 = 00000000
    beq     t1, $zero, lbl_8086022C    
    nop
    lh      t2, 0x007E(s0)             # 0000007E
    lh      t3, 0x00B6(s0)             # 000000B6
    subu    v0, t2, t3                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_808601F8           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_808601F8 
    or      v1, v0, $zero              # v1 = 00000000
lbl_808601F8:
    slti    $at, v1, 0x38A4            
    beq     $at, $zero, lbl_8086022C   
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f8                   # $f8 = 80.00
    lwc1    $f6, 0x0090(s0)            # 00000090
    c.lt.s  $f6, $f8                   
    nop
    bc1f    lbl_8086022C               
    nop
    jal     func_8085FA74              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8086028C 
    addiu   t7, $zero, 0x0008          # t7 = 00000008
lbl_8086022C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_808624D8)     # $at = 80860000
    lwc1    $f10, %lo(var_808624D8)($at) 
    c.lt.s  $f10, $f0                  
    nop
    bc1f    lbl_80860280               
    nop
    lh      t4, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      t5, 0x002C($sp)            
    beq     t4, $at, lbl_80860280      
    nop
    lb      t6, 0x0832(t5)             # 00000832
    addiu   $at, $zero, 0x0011         # $at = 00000011
    beq     t6, $at, lbl_80860280      
    nop
    jal     func_8085F670              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8086028C 
    addiu   t7, $zero, 0x0008          # t7 = 00000008
lbl_80860280:
    jal     func_8085FBE4              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t7, $zero, 0x0008          # t7 = 00000008
lbl_8086028C:
    sb      t7, 0x07B8(s0)             # 000007B8
lbl_80860290:
    lw      $ra, 0x0024($sp)           
lbl_80860294:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_808602A4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f6                   # $f6 = -4.00
    lbu     t7, 0x07D2(s0)             # 000007D2
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x000B          # t6 = 0000000B
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    sb      t6, 0x07B8(s0)             # 000007B8
    sb      $zero, 0x07CE(s0)          # 000007CE
    sb      $zero, 0x07F8(s0)          # 000007F8
    swc1    $f6, 0x0068(s0)            # 00000068
    bne     t7, $at, lbl_80860308      
    swc1    $f4, 0x0194(s0)            # 00000194
    addiu   t8, $zero, 0x0050          # t8 = 00000050
    sw      t8, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x8000          # a1 = FFFF8000
    addiu   a2, $zero, 0x0078          # a2 = 00000078
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    beq     $zero, $zero, lbl_80860354 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80860308:
    addiu   t9, $zero, 0x0050          # t9 = 00000050
    sw      t9, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0078          # a2 = 00000078
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lbu     t0, 0x07D2(s0)             # 000007D2
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    addiu   a0, s0, 0x0178             # a0 = 00000178
    bne     t0, $at, lbl_80860344      
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t1, $zero, 0x0024          # t1 = 00000024
    beq     $zero, $zero, lbl_80860350 
    sh      t1, 0x07D0(s0)             # 000007D0
lbl_80860344:
    addiu   a1, a1, 0x8604             # a1 = 06008604
    jal     func_8008D278              
    addiu   a2, $zero, 0x0000          # a2 = 00000000
lbl_80860350:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80860354:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    lui     a1, %hi(func_80860380)     # a1 = 80860000
    addiu   a1, a1, %lo(func_80860380) # a1 = 80860380
    jal     func_8085D350              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80860380:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    lui     $at, 0x3F80                # $at = 3F800000
    sw      s0, 0x0020($sp)            
    mtc1    $at, $f2                   # $f2 = 1.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    mfc1    a1, $f0                    
    mfc1    a2, $f2                    
    lw      t7, 0x1C44(t6)             # 00001C44
    mfc1    a3, $f2                    
    swc1    $f0, 0x0010($sp)           
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_80064178              
    sw      t7, 0x002C($sp)            
    lbu     t8, 0x0114(s0)             # 00000114
    bnel    t8, $zero, lbl_808604E8    
    lw      $ra, 0x0024($sp)           
    lbu     t9, 0x00AF(s0)             # 000000AF
    or      a0, s0, $zero              # a0 = 00000000
    lw      t0, 0x002C($sp)            
    bnel    t9, $zero, lbl_808603F8    
    lb      t1, 0x0833(t0)             # 00000833
    jal     func_80860CE4              
    lw      a1, 0x0034($sp)            
    beq     $zero, $zero, lbl_808604E8 
    lw      $ra, 0x0024($sp)           
    lb      t1, 0x0833(t0)             # 00000833
lbl_808603F8:
    beql    t1, $zero, lbl_808604C4    
    mtc1    $zero, $f10                # $f10 = 0.00
    lhu     t2, 0x0088(s0)             # 00000088
    andi    t3, t2, 0x0008             # t3 = 00000000
    beq     t3, $zero, lbl_80860468    
    nop
    lh      t4, 0x007E(s0)             # 0000007E
    lh      t5, 0x00B6(s0)             # 000000B6
    subu    v0, t4, t5                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80860434           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_80860434 
    or      v1, v0, $zero              # v1 = 00000000
lbl_80860434:
    slti    $at, v1, 0x38A4            
    beq     $at, $zero, lbl_80860468   
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f6                   # $f6 = 80.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    c.lt.s  $f4, $f6                   
    nop
    bc1f    lbl_80860468               
    nop
    jal     func_8085FA74              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808604B8 
    addiu   t8, $zero, 0x0008          # t8 = 00000008
lbl_80860468:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_808624DC)     # $at = 80860000
    lwc1    $f8, %lo(var_808624DC)($at) 
    lw      t6, 0x002C($sp)            
    c.lt.s  $f8, $f0                   
    nop
    bc1f    lbl_808604AC               
    nop
    lb      t7, 0x0832(t6)             # 00000832
    addiu   $at, $zero, 0x0011         # $at = 00000011
    beq     t7, $at, lbl_808604AC      
    nop
    jal     func_8085F670              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808604B8 
    addiu   t8, $zero, 0x0008          # t8 = 00000008
lbl_808604AC:
    jal     func_8085FBE4              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t8, $zero, 0x0008          # t8 = 00000008
lbl_808604B8:
    beq     $zero, $zero, lbl_808604E4 
    sb      t8, 0x07B8(s0)             # 000007B8
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_808604C4:
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f10, 0x0068(s0)           # 00000068
    jal     func_80861F04              
    lw      a0, 0x0034($sp)            
    bne     v0, $zero, lbl_808604E4    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8085D7BC              
    lw      a1, 0x0034($sp)            
lbl_808604E4:
    lw      $ra, 0x0024($sp)           
lbl_808604E8:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_808604F8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_80026950              
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80860530    
    addiu   a0, s0, 0x0178             # a0 = 00000178
    jal     func_8085EBD8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808605EC 
    lw      $ra, 0x0024($sp)           
lbl_80860530:
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xE2B0             # a1 = 0600E2B0
    jal     func_8008D328              
    lui     a2, 0xC000                 # a2 = C0000000
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)            
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    lw      t7, 0x002C($sp)            
    lui     t8, 0x0001                 # t8 = 00010000
    lui     $at, 0x4080                # $at = 40800000
    addu    t8, t8, t7                 
    lw      t8, 0x1DE4(t8)             # 00011DE4
    andi    t9, t8, 0x0001             # t9 = 00000000
    beql    t9, $zero, lbl_80860590    
    mtc1    $at, $f6                   # $f6 = 4.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f4                   # $f4 = -4.00
    beq     $zero, $zero, lbl_80860598 
    swc1    $f4, 0x0068(s0)            # 00000068
    mtc1    $at, $f6                   # $f6 = -4.00
lbl_80860590:
    nop
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_80860598:
    lh      t0, 0x00B6(s0)             # 000000B6
    addiu   t1, t0, 0x3FFF             # t1 = 00003FFF
    jal     func_800CDCCC              # Rand.Next() float
    sh      t1, 0x0032(s0)             # 00000032
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f2                   # $f2 = 20.00
    addiu   t4, $zero, 0x0018          # t4 = 00000018
    lui     a1, %hi(func_808605FC)     # a1 = 80860000
    mul.s   $f8, $f0, $f2              
    sb      t4, 0x07B8(s0)             # 000007B8
    addiu   a1, a1, %lo(func_808605FC) # a1 = 808605FC
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f10, $f8, $f2             
    trunc.w.s $f16, $f10                 
    mfc1    t3, $f16                   
    jal     func_8085D350              
    sw      t3, 0x07D8(s0)             # 000007D8
    mtc1    $zero, $f18                # $f18 = 0.00
    nop
    swc1    $f18, 0x07DC(s0)           # 000007DC
    lw      $ra, 0x0024($sp)           
lbl_808605EC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_808605FC:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0054($sp)            
    lw      t6, 0x0054($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lw      t7, 0x1C44(t6)             # 00001C44
    swc1    $f4, 0x0034($sp)           
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    sw      t7, 0x0048($sp)            
    lh      a1, 0x008A(s0)             # 0000008A
    sw      t8, 0x0010($sp)            
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    lbu     v1, 0x07CE(s0)             # 000007CE
    mtc1    $zero, $f6                 # $f6 = 0.00
    bne     v1, $zero, lbl_80860654    
    addiu   t9, v1, 0x0001             # t9 = 00000001
    sb      t9, 0x07CE(s0)             # 000007CE
lbl_80860654:
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.le.s  $f6, $f0                   
    nop
    bc1f    lbl_8086069C               
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f2                   # $f2 = 6.00
    lui     $at, 0x3E00                # $at = 3E000000
    c.lt.s  $f0, $f2                   
    nop
    bc1f    lbl_80860694               
    nop
    mtc1    $at, $f8                   # $f8 = 0.13
    nop
    add.s   $f10, $f0, $f8             
    beq     $zero, $zero, lbl_808606D0 
    swc1    $f10, 0x0068(s0)           # 00000068
lbl_80860694:
    beq     $zero, $zero, lbl_808606D0 
    swc1    $f2, 0x0068(s0)            # 00000068
lbl_8086069C:
    lui     $at, 0xC0C0                # $at = C0C00000
    mtc1    $at, $f2                   # $f2 = -6.00
    lui     $at, 0x3E00                # $at = 3E000000
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_808606D0               
    swc1    $f2, 0x0068(s0)            # 00000068
    mtc1    $at, $f16                  # $f16 = 0.13
    nop
    sub.s   $f18, $f0, $f16            
    beq     $zero, $zero, lbl_808606D0 
    swc1    $f18, 0x0068(s0)           # 00000068
    swc1    $f2, 0x0068(s0)            # 00000068
lbl_808606D0:
    lhu     v0, 0x0088(s0)             # 00000088
    andi    v0, v0, 0x0008             # v0 = 00000000
    bne     v0, $zero, lbl_80860720    
    nop
    lh      t0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t0, $at, lbl_80860804      
    lh      t2, 0x00B6(s0)             # 000000B6
    lh      a3, 0x00B6(s0)             # 000000B6
    lw      a1, 0x0054($sp)            
    lw      a2, 0x0068(s0)             # 00000068
    addiu   a3, a3, 0x3FFF             # a3 = 00003FFF
    sll     a3, a3, 16                 
    jal     func_80026850              
    sra     a3, a3, 16                 
    bnel    v0, $zero, lbl_80860804    
    lh      t2, 0x00B6(s0)             # 000000B6
    lhu     v0, 0x0088(s0)             # 00000088
    andi    v0, v0, 0x0008             # v0 = 00000000
lbl_80860720:
    beq     v0, $zero, lbl_8086077C    
    lui     $at, %hi(var_808624E0)     # $at = 80860000
    lwc1    $f4, 0x0068(s0)            # 00000068
    mtc1    $zero, $f6                 # $f6 = 0.00
    nop
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_8086075C               
    lh      v0, 0x00B6(s0)             # 000000B6
    lh      v0, 0x00B6(s0)             # 000000B6
    addiu   v0, v0, 0x3FFF             # v0 = 00003FFF
    sll     v0, v0, 16                 
    beq     $zero, $zero, lbl_80860768 
    sra     v0, v0, 16                 
    lh      v0, 0x00B6(s0)             # 000000B6
lbl_8086075C:
    addiu   v0, v0, 0xC001             # v0 = 00000000
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
lbl_80860768:
    lh      t1, 0x007E(s0)             # 0000007E
    subu    v0, t1, v0                 
    sll     v0, v0, 16                 
    beq     $zero, $zero, lbl_80860790 
    sra     v0, v0, 16                 
lbl_8086077C:
    lwc1    $f8, 0x0068(s0)            # 00000068
    lwc1    $f10, %lo(var_808624E0)($at) 
    or      v0, $zero, $zero           # v0 = 00000000
    mul.s   $f16, $f8, $f10            
    swc1    $f16, 0x0068(s0)           # 00000068
lbl_80860790:
    bltz    v0, lbl_808607A0           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_808607A0 
    or      v1, v0, $zero              # v1 = 00000000
lbl_808607A0:
    slti    $at, v1, 0x4001            
    bne     $at, $zero, lbl_80860800   
    lui     $at, %hi(var_808624E4)     # $at = 80860000
    lwc1    $f4, %lo(var_808624E4)($at) 
    lwc1    $f18, 0x0068(s0)           # 00000068
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, 0x3F00                # $at = 3F000000
    mul.s   $f6, $f18, $f4             
    swc1    $f6, 0x0068(s0)            # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_808607F4               
    mtc1    $at, $f18                  # $f18 = 0.50
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    nop
    sub.s   $f16, $f0, $f10            
    beq     $zero, $zero, lbl_80860800 
    swc1    $f16, 0x0068(s0)           # 00000068
    mtc1    $at, $f18                  # $f18 = 0.50
lbl_808607F4:
    nop
    add.s   $f4, $f0, $f18             
    swc1    $f4, 0x0068(s0)            # 00000068
lbl_80860800:
    lh      t2, 0x00B6(s0)             # 000000B6
lbl_80860804:
    or      a1, s0, $zero              # a1 = 00000000
    addiu   t3, t2, 0x3FFF             # t3 = 00003FFF
    sh      t3, 0x0032(s0)             # 00000032
    jal     func_80026950              
    lw      a0, 0x0054($sp)            
    beq     v0, $zero, lbl_8086082C    
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f2                   # $f2 = 200.00
    nop
    swc1    $f2, 0x0034($sp)           
lbl_8086082C:
    lui     $at, 0x42A0                # $at = 42A00000
    lwc1    $f2, 0x0034($sp)           
    mtc1    $at, $f6                   # $f6 = 80.00
    lwc1    $f0, 0x0090(s0)            # 00000090
    addiu   a0, s0, 0x07DC             # a0 = 000007DC
    add.s   $f8, $f6, $f2              
    lui     a1, 0xC020                 # a1 = C0200000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3F4C                 # a3 = 3F4C0000
    c.le.s  $f0, $f8                   
    lui     $at, 0x42DC                # $at = 42DC0000
    bc1fl   lbl_8086087C               
    mtc1    $at, $f16                  # $f16 = 110.00
    mtc1    $zero, $f10                # $f10 = 0.00
    ori     a3, a3, 0xCCCD             # a3 = 3F4CCCCD
    jal     func_80064178              
    swc1    $f10, 0x0010($sp)          
    beq     $zero, $zero, lbl_808608DC 
    mtc1    $zero, $f8                 # $f8 = 0.00
    mtc1    $at, $f16                  # $f16 = 0.00
lbl_8086087C:
    addiu   a0, s0, 0x07DC             # a0 = 000007DC
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    add.s   $f18, $f16, $f2            
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x40D4                 # a3 = 40D40000
    c.lt.s  $f18, $f0                  
    nop
    bc1fl   lbl_808608CC               
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a3, 0x3F4C                 # a3 = 3F4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3F4CCCCD
    addiu   a0, s0, 0x07DC             # a0 = 000007DC
    lui     a1, 0x4020                 # a1 = 40200000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    beq     $zero, $zero, lbl_808608DC 
    mtc1    $zero, $f8                 # $f8 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
lbl_808608CC:
    ori     a3, a3, 0xCCCD             # a3 = 0000CCCD
    jal     func_80064178              
    swc1    $f6, 0x0010($sp)           
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_808608DC:
    lwc1    $f10, 0x07DC(s0)           # 000007DC
    c.eq.s  $f8, $f10                  
    nop
    bc1tl   lbl_8086092C               
    lui     $at, 0x3F00                # $at = 3F000000
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lwc1    $f18, 0x07DC(s0)           # 000007DC
    lwc1    $f16, 0x0024(s0)           # 00000024
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f4, $f0, $f18             
    add.s   $f6, $f16, $f4             
    jal     func_80063684              # coss?
    swc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x07DC(s0)           # 000007DC
    lwc1    $f8, 0x002C(s0)            # 0000002C
    mul.s   $f18, $f0, $f10            
    add.s   $f16, $f8, $f18            
    swc1    $f16, 0x002C(s0)           # 0000002C
    lui     $at, 0x3F00                # $at = 3F000000
lbl_8086092C:
    mtc1    $at, $f6                   # $f6 = 0.50
    lwc1    $f4, 0x0068(s0)            # 00000068
    lwc1    $f8, 0x0190(s0)            # 00000190
    addiu   a0, s0, 0x0178             # a0 = 00000178
    mul.s   $f10, $f4, $f6             
    trunc.w.s $f18, $f8                  
    mfc1    t5, $f18                   
    swc1    $f10, 0x0194(s0)           # 00000194
    jal     func_8008C9C0              
    sw      t5, 0x0040($sp)            
    mtc1    $zero, $f14                # $f14 = 0.00
    lwc1    $f0, 0x0194(s0)            # 00000194
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x3838          # a1 = 00003838
    c.le.s  $f14, $f0                  
    nop
    bc1fl   lbl_80860980               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80860980 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_80860980:
    lwc1    $f12, 0x0190(s0)           # 00000190
    c.le.s  $f14, $f0                  
    sub.s   $f16, $f12, $f2            
    trunc.w.s $f4, $f16                  
    mfc1    v1, $f4                    
    bc1fl   lbl_808609A8               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_808609A8 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_808609A8:
    lw      t7, 0x07D8(s0)             # 000007D8
    andi    t8, t7, 0x001F             # t8 = 00000000
    bnel    t8, $zero, lbl_808609D4    
    trunc.w.s $f6, $f12                  
    sw      v1, 0x003C($sp)            
    jal     func_80022FD0              
    swc1    $f2, 0x002C($sp)           
    lw      v1, 0x003C($sp)            
    lwc1    $f2, 0x002C($sp)           
    lwc1    $f12, 0x0190(s0)           # 00000190
    trunc.w.s $f6, $f12                  
lbl_808609D4:
    lw      a0, 0x0040($sp)            
    mfc1    t0, $f6                    
    nop
    beql    a0, t0, lbl_80860A28       
    lw      v0, 0x07D8(s0)             # 000007D8
    trunc.w.s $f10, $f2                  
    mfc1    t2, $f10                   
    nop
    addu    v0, t2, a0                 
    slti    $at, v0, 0x0002            
    bnel    $at, $zero, lbl_80860A0C   
    slti    $at, v1, 0x0007            
    blez    v1, lbl_80860A18           
    slti    $at, v1, 0x0007            
lbl_80860A0C:
    beq     $at, $zero, lbl_80860A24   
    slti    $at, v0, 0x0008            
    bne     $at, $zero, lbl_80860A24   
lbl_80860A18:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x383D          # a1 = 0000383D
lbl_80860A24:
    lw      v0, 0x07D8(s0)             # 000007D8
lbl_80860A28:
    lw      a0, 0x0054($sp)            
    bne     v0, $zero, lbl_80860ADC    
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    jal     func_80026950              
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80860A54    
    lw      a0, 0x0054($sp)            
    jal     func_8085DD74              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80860AE4 
    lw      $ra, 0x0024($sp)           
lbl_80860A54:
    jal     func_8002691C              
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80860A88    
    lw      t3, 0x0048($sp)            
    lw      a0, 0x0054($sp)            
    jal     func_80861F04              
    or      a1, s0, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_80860AE0    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8085D7BC              
    lw      a1, 0x0054($sp)            
    beq     $zero, $zero, lbl_80860AE4 
    lw      $ra, 0x0024($sp)           
lbl_80860A88:
    lb      t4, 0x0141(t3)             # 00000141
    lw      t5, 0x0054($sp)            
    lui     t6, 0x0001                 # t6 = 00010000
    beq     t4, $zero, lbl_80860ACC    
    addu    t6, t6, t5                 
    lw      t6, 0x1DE4(t6)             # 00011DE4
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80860ABC    
    nop
    jal     func_8085DD74              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80860AE4 
    lw      $ra, 0x0024($sp)           
lbl_80860ABC:
    jal     func_8085E14C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80860AE4 
    lw      $ra, 0x0024($sp)           
lbl_80860ACC:
    jal     func_8085E14C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80860AE4 
    lw      $ra, 0x0024($sp)           
lbl_80860ADC:
    sw      t8, 0x07D8(s0)             # 000007D8
lbl_80860AE0:
    lw      $ra, 0x0024($sp)           
lbl_80860AE4:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra                        
    nop


func_80860AF4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x383A          # a1 = 0000383A
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sb      t6, 0x07B8(s0)             # 000007B8
    lw      a2, 0x0024($sp)            
    addiu   a0, s0, 0x07E0             # a0 = 000007E0
    jal     func_80025D04              
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    lb      t7, 0x07F8(s0)             # 000007F8
    sh      $zero, 0x0014(s0)          # 00000014
    bltzl   t7, lbl_80860B58           
    lw      t9, 0x0004(s0)             # 00000004
    jal     func_8001A890              
    lw      a0, 0x07FC(s0)             # 000007FC
    jal     func_80014254              
    or      a0, v0, $zero              # a0 = 00000000
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    sb      t8, 0x07F8(s0)             # 000007F8
    lw      t9, 0x0004(s0)             # 00000004
lbl_80860B58:
    lh      t1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t0, t9, $at                
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     t1, $at, lbl_80860B84      
    sw      t0, 0x0004(s0)             # 00000004
    lw      a0, 0x0024($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0006          # a3 = 00000006
    jal     func_800265D4              
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
lbl_80860B84:
    lui     a1, %hi(func_80860BA8)     # a1 = 80860000
    addiu   a1, a1, %lo(func_80860BA8) # a1 = 80860BA8
    jal     func_8085D350              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80860BA8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lw      t6, 0x011C(s0)             # 0000011C
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t6, $zero, lbl_80860C10    
    lh      t9, 0x0014(s0)             # 00000014
    lh      t7, 0x0014(s0)             # 00000014
    bnel    t7, $zero, lbl_80860BE4    
    lh      a3, 0x001C(s0)             # 0000001C
    lh      t8, 0x07E8(s0)             # 000007E8
    sh      t8, 0x0014(s0)             # 00000014
    lh      a3, 0x001C(s0)             # 0000001C
lbl_80860BE4:
    addiu   a1, s0, 0x07E0             # a1 = 000007E0
    lw      a2, 0x002C($sp)            
    addiu   a3, a3, 0x0008             # a3 = 00000008
    sll     a3, a3, 16                 
    jal     func_80025F04              
    sra     a3, a3, 16                 
    beql    v0, $zero, lbl_80860CD4    
    lw      $ra, 0x0024($sp)           
    beq     $zero, $zero, lbl_80860CD0 
    sw      s0, 0x011C(s0)             # 0000011C
    lh      t9, 0x0014(s0)             # 00000014
lbl_80860C10:
    bnel    t9, $zero, lbl_80860C70    
    lh      t6, 0x001C(s0)             # 0000001C
    lh      t1, 0x001C(s0)             # 0000001C
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     t1, $at, lbl_80860C38      
    sb      t0, 0x00AF(s0)             # 000000AF
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    beq     $zero, $zero, lbl_80860C4C 
    sh      t2, 0x001C(s0)             # 0000001C
lbl_80860C38:
    lw      a0, 0x002C($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    jal     func_800265D4              
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
lbl_80860C4C:
    lw      t4, 0x0004(s0)             # 00000004
    sw      $zero, 0x011C(s0)          # 0000011C
    or      a0, s0, $zero              # a0 = 00000000
    ori     t5, t4, 0x0001             # t5 = 00000001
    jal     func_8085F670              
    sw      t5, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_80860CD4 
    lw      $ra, 0x0024($sp)           
    lh      t6, 0x001C(s0)             # 0000001C
lbl_80860C70:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lw      a0, 0x002C($sp)            
    bne     t6, $at, lbl_80860CD0      
    or      a1, s0, $zero              # a1 = 00000000
    lui     $at, 0x45FA                # $at = 45FA0000
    mtc1    $at, $f4                   # $f4 = 8000.00
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    jal     func_80028158              
    swc1    $f4, 0x0010($sp)           
    bne     v0, $zero, lbl_80860CD0    
    lw      a0, 0x002C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    jal     func_80013A84              
    addiu   a3, $zero, 0x00D0          # a3 = 000000D0
    lw      v0, 0x0118(s0)             # 00000118
    beq     v0, $zero, lbl_80860CC8    
    nop
    lh      t7, 0x0018(v0)             # 00000018
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0018(v0)             # 00000018
lbl_80860CC8:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80860CD0:
    lw      $ra, 0x0024($sp)           
lbl_80860CD4:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80860CE4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1420             # a1 = 06001420
    addiu   a0, a2, 0x0178             # a0 = 00000178
    jal     func_8008D1C4              
    sw      a2, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x383B          # a1 = 0000383B
    lw      a2, 0x0018($sp)            
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      t6, 0x0004(a2)             # 00000004
    lh      t8, 0x001C(a2)             # 0000001C
    sb      $zero, 0x07CE(a2)          # 000007CE
    and     t7, t6, $at                
    slti    $at, t8, 0x0004            
    sw      t7, 0x0004(a2)             # 00000004
    sb      $zero, 0x0114(a2)          # 00000114
    beq     $at, $zero, lbl_80860D64   
    swc1    $f4, 0x0068(a2)            # 00000068
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    lui     a1, %hi(func_80860D80)     # a1 = 80860000
    sb      t9, 0x07B8(a2)             # 000007B8
    addiu   a1, a1, %lo(func_80860D80) # a1 = 80860D80
    jal     func_8085D350              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80860D74 
    lw      $ra, 0x0014($sp)           
lbl_80860D64:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80860AF4              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80860D74:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80860D80:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0178             # a0 = 00000178
    beql    v0, $zero, lbl_80860DF4    
    lwc1    $f10, 0x0190(s0)           # 00000190
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    lui     a1, %hi(func_80861124)     # a1 = 80860000
    mul.s   $f4, $f0, $f2              
    sb      t8, 0x07B8(s0)             # 000007B8
    addiu   a1, a1, %lo(func_80861124) # a1 = 80861124
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f6, $f4, $f2              
    trunc.w.s $f8, $f6                   
    mfc1    t7, $f8                    
    jal     func_8085D350              
    sw      t7, 0x07D8(s0)             # 000007D8
    addiu   a0, s0, 0x07E0             # a0 = 000007E0
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    jal     func_80025D04              
    lw      a2, 0x0024($sp)            
    lwc1    $f10, 0x0190(s0)           # 00000190
lbl_80860DF4:
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    or      a0, s0, $zero              # a0 = 00000000
    trunc.w.s $f16, $f10                 
    mfc1    t0, $f16                   
    nop
    bnel    t0, $at, lbl_80860E1C      
    lw      $ra, 0x001C($sp)           
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387A          # a1 = 0000387A
    lw      $ra, 0x001C($sp)           
lbl_80860E1C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80860E2C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9A90             # a1 = 06009A90
    addiu   a0, a2, 0x0178             # a0 = 00000178
    jal     func_8008D1C4              
    sw      a2, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x383B          # a1 = 0000383B
    lw      a2, 0x0018($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    lh      t7, 0x001C(a2)             # 0000001C
    sb      t6, 0x07B8(a2)             # 000007B8
    sb      $zero, 0x0114(a2)          # 00000114
    slti    $at, t7, 0x0004            
    sb      $zero, 0x07CE(a2)          # 000007CE
    beq     $at, $zero, lbl_80860EAC   
    swc1    $f4, 0x0068(a2)            # 00000068
    lw      t8, 0x0004(a2)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     a1, %hi(func_80860EC8)     # a1 = 80860000
    and     t9, t8, $at                
    sw      t9, 0x0004(a2)             # 00000004
    addiu   a1, a1, %lo(func_80860EC8) # a1 = 80860EC8
    jal     func_8085D350              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80860EBC 
    lw      $ra, 0x0014($sp)           
lbl_80860EAC:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80860AF4              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80860EBC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80860EC8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0178             # a0 = 00000178
    beql    v0, $zero, lbl_80860F3C    
    lwc1    $f10, 0x0190(s0)           # 00000190
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    lui     a1, %hi(func_80861124)     # a1 = 80860000
    mul.s   $f4, $f0, $f2              
    sb      t8, 0x07B8(s0)             # 000007B8
    addiu   a1, a1, %lo(func_80861124) # a1 = 80861124
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f6, $f4, $f2              
    trunc.w.s $f8, $f6                   
    mfc1    t7, $f8                    
    jal     func_8085D350              
    sw      t7, 0x07D8(s0)             # 000007D8
    addiu   a0, s0, 0x07E0             # a0 = 000007E0
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    jal     func_80025D04              
    lw      a2, 0x0024($sp)            
    lwc1    $f10, 0x0190(s0)           # 00000190
lbl_80860F3C:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    or      a0, s0, $zero              # a0 = 00000000
    trunc.w.s $f16, $f10                 
    mfc1    v0, $f16                   
    nop
    beq     v0, $at, lbl_80860F60      
    addiu   $at, $zero, 0x0019         # $at = 00000019
    bnel    v0, $at, lbl_80860F6C      
    lw      $ra, 0x001C($sp)           
lbl_80860F60:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387A          # a1 = 0000387A
    lw      $ra, 0x001C($sp)           
lbl_80860F6C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80860F7C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    lwc1    $f6, 0x0190(a0)            # 00000190
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, $zero, 0x0013          # t7 = 00000013
    lui     a1, %hi(func_80860FD0)     # a1 = 80860000
    sb      $zero, 0x07F8(a0)          # 000007F8
    sb      t6, 0x01AD(a0)             # 000001AD
    sb      t7, 0x07B8(a0)             # 000007B8
    addiu   a1, a1, %lo(func_80860FD0) # a1 = 80860FD0
    swc1    $f4, 0x0194(a0)            # 00000194
    swc1    $f6, 0x0184(a0)            # 00000184
    jal     func_8085D350              
    swc1    $f8, 0x0188(a0)            # 00000188
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80860FD0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0178             # a0 = 00000178
    beql    v0, $zero, lbl_8086108C    
    lw      $ra, 0x001C($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_808624E8)     # $at = 80860000
    lwc1    $f4, %lo(var_808624E8)($at) 
    lw      a1, 0x0024($sp)            
    lui     t8, 0x0001                 # t8 = 00010000
    c.lt.s  $f4, $f0                   
    addu    t8, t8, a1                 
    bc1fl   lbl_80861054               
    lw      t8, 0x1DE4(t8)             # 00011DE4
    jal     func_8085DD74              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f2                   # $f2 = 5.00
    nop
    mul.s   $f6, $f0, $f2              
    add.s   $f8, $f6, $f2              
    trunc.w.s $f10, $f8                  
    mfc1    t7, $f10                   
    beq     $zero, $zero, lbl_80861088 
    sw      t7, 0x07D8(s0)             # 000007D8
    lw      t8, 0x1DE4(t8)             # 00001DE4
lbl_80861054:
    andi    t9, t8, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_80861080    
    nop
    lh      t0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     t0, $at, lbl_80861080      
    nop
    jal     func_8085F670              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8086108C 
    lw      $ra, 0x001C($sp)           
lbl_80861080:
    jal     func_808604F8              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80861088:
    lw      $ra, 0x001C($sp)           
lbl_8086108C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8086109C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    addiu   a0, a1, 0x0178             # a0 = 00000178
    jal     func_8008C9C0              
    sw      a1, 0x0018($sp)            
    lw      a1, 0x0018($sp)            
    lui     $at, %hi(var_808624EC)     # $at = 80860000
    lwc1    $f4, %lo(var_808624EC)($at) 
    lwc1    $f0, 0x0054(a1)            # 00000054
    lui     $at, %hi(var_808624F0)     # $at = 80860000
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80861108               
    lwc1    $f4, 0x000C(a1)            # 0000000C
    lwc1    $f6, %lo(var_808624F0)($at) 
    lui     $at, 0x4060                # $at = 40600000
    mtc1    $at, $f16                  # $f16 = 3.50
    lwc1    $f10, 0x000C(a1)           # 0000000C
    add.s   $f8, $f0, $f6              
    sub.s   $f18, $f10, $f16           
    swc1    $f8, 0x0054(a1)            # 00000054
    beq     $zero, $zero, lbl_80861114 
    swc1    $f18, 0x0028(a1)           # 00000028
    lwc1    $f4, 0x000C(a1)            # 0000000C
lbl_80861108:
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_8085F670              
    swc1    $f4, 0x0028(a1)            # 00000028
lbl_80861114:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80861124:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sh      t6, 0x001C(s0)             # 0000001C
    lh      a3, 0x001C(s0)             # 0000001C
    lw      a2, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80025F04              
    addiu   a1, s0, 0x07E0             # a1 = 000007E0
    beq     v0, $zero, lbl_8086118C    
    lw      a0, 0x0024($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    jal     func_80013A84              
    addiu   a3, $zero, 0x00D0          # a3 = 000000D0
    lw      v0, 0x0118(s0)             # 00000118
    beq     v0, $zero, lbl_80861184    
    nop
    lh      t7, 0x0018(v0)             # 00000018
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0018(v0)             # 00000018
lbl_80861184:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_8086118C:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808611A0:
    sw      a1, 0x0004($sp)            
    lh      t6, 0x07C2(a0)             # 000007C2
    lh      t7, 0x00B6(a0)             # 000000B6
    lh      v0, 0x008A(a0)             # 0000008A
    addiu   t1, $zero, 0xF830          # t1 = FFFFF830
    addu    t0, t6, t7                 
    subu    v0, v0, t0                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    slti    $at, v0, 0xF830            
    beq     $at, $zero, lbl_808611D8   
    addiu   t5, $zero, 0xC7D1          # t5 = FFFFC7D1
    beq     $zero, $zero, lbl_808611F0 
    sh      t1, 0x07C8(a0)             # 000007C8
lbl_808611D8:
    slti    $at, v0, 0x07D1            
    bne     $at, $zero, lbl_808611EC   
    or      v1, v0, $zero              # v1 = 00000000
    beq     $zero, $zero, lbl_808611EC 
    addiu   v1, $zero, 0x07D0          # v1 = 000007D0
lbl_808611EC:
    sh      v1, 0x07C8(a0)             # 000007C8
lbl_808611F0:
    lh      t2, 0x07C2(a0)             # 000007C2
    lh      t3, 0x07C8(a0)             # 000007C8
    addu    t4, t2, t3                 
    sh      t4, 0x07C2(a0)             # 000007C2
    lh      v0, 0x07C2(a0)             # 000007C2
    slti    $at, v0, 0xC7D1            
    beql    $at, $zero, lbl_8086121C   
    slti    $at, v0, 0x3830            
    jr      $ra                        
    sh      t5, 0x07C2(a0)             # 000007C2
lbl_80861218:
    slti    $at, v0, 0x3830            
lbl_8086121C:
    bne     $at, $zero, lbl_8086122C   
    or      v1, v0, $zero              # v1 = 00000000
    beq     $zero, $zero, lbl_8086122C 
    addiu   v1, $zero, 0x382F          # v1 = 0000382F
lbl_8086122C:
    sh      v1, 0x07C2(a0)             # 000007C2
    jr      $ra                        
    nop


func_80861238:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lbu     v0, 0x08DD(s0)             # 000008DD
    lw      t6, 0x0024($sp)            
    andi    t7, v0, 0x0080             # t7 = 00000000
    beq     t7, $zero, lbl_80861290    
    lw      a3, 0x1C44(t6)             # 00001C44
    lbu     t9, 0x0811(s0)             # 00000811
    lbu     t1, 0x07B8(s0)             # 000007B8
    andi    t8, v0, 0xFF7F             # t8 = 00000000
    andi    t0, t9, 0xFFFD             # t0 = 00000000
    slti    $at, t1, 0x000A            
    sb      t8, 0x08DD(s0)             # 000008DD
    bne     $at, $zero, lbl_808613C4   
    sb      t0, 0x0811(s0)             # 00000811
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f4                   # $f4 = -4.00
    beq     $zero, $zero, lbl_808613C4 
    swc1    $f4, 0x0068(s0)            # 00000068
lbl_80861290:
    lbu     v1, 0x0811(s0)             # 00000811
    andi    t2, v1, 0x0002             # t2 = 00000000
    beql    t2, $zero, lbl_808613C8    
    lw      $ra, 0x001C($sp)           
    lbu     a0, 0x00B1(s0)             # 000000B1
    andi    t3, v1, 0xFFFD             # t3 = 00000000
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     a0, $at, lbl_808613C4      
    sb      t3, 0x0811(s0)             # 00000811
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     a0, $at, lbl_808613C4      
    addiu   a1, s0, 0x0818             # a1 = 00000818
    lb      t4, 0x07F8(s0)             # 000007F8
    sb      a0, 0x07D2(s0)             # 000007D2
    or      a0, s0, $zero              # a0 = 00000000
    blezl   t4, lbl_808612DC           
    lbu     t5, 0x0835(a3)             # 00000835
    sb      $zero, 0x07F8(s0)          # 000007F8
    lbu     t5, 0x0835(a3)             # 00000835
lbl_808612DC:
    lh      t6, 0x008A(s0)             # 0000008A
    or      a2, $zero, $zero           # a2 = 00000000
    sb      t5, 0x07CC(s0)             # 000007CC
    jal     func_800283BC              
    sh      t6, 0x0032(s0)             # 00000032
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    jal     func_800C95C4              
    addiu   a1, $zero, 0x3838          # a1 = 00003838
    lbu     v0, 0x00B1(s0)             # 000000B1
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_8086131C      
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    beq     v0, $at, lbl_8086131C      
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bne     v0, $at, lbl_80861344      
    or      a0, s0, $zero              # a0 = 00000000
lbl_8086131C:
    lbu     t7, 0x07B8(s0)             # 000007B8
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beql    t7, $at, lbl_808613C8      
    lw      $ra, 0x001C($sp)           
    jal     func_80028390              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808602A4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808613C8 
    lw      $ra, 0x001C($sp)           
lbl_80861344:
    jal     func_80021A28              
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    beq     v0, $zero, lbl_80861390    
    nop
    jal     func_80028390              
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80861380    
    lw      a0, 0x0024($sp)            
    jal     func_80025B4C              
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80860CE4              
    lw      a1, 0x0024($sp)            
    beq     $zero, $zero, lbl_808613C8 
    lw      $ra, 0x001C($sp)           
lbl_80861380:
    jal     func_8085FE78              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808613C8 
    lw      $ra, 0x001C($sp)           
lbl_80861390:
    jal     func_80028390              
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_808613BC    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80860E2C              
    lw      a1, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_80025B4C              
    or      a1, s0, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808613C8 
    lw      $ra, 0x001C($sp)           
lbl_808613BC:
    jal     func_808600C0              
    or      a0, s0, $zero              # a0 = 00000000
lbl_808613C4:
    lw      $ra, 0x001C($sp)           
lbl_808613C8:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808613D8:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0054($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80861238              
    lw      a1, 0x0054($sp)            
    lbu     t6, 0x00B1(s0)             # 000000B1
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beql    t6, $at, lbl_808616A0      
    addiu   a1, s0, 0x0800             # a1 = 00000800
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f0                   # $f0 = 30.00
    addiu   t7, $zero, 0x001D          # t7 = 0000001D
    sw      t7, 0x0014($sp)            
    mfc1    a3, $f0                    
    lw      a0, 0x0054($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x4296                 # a2 = 42960000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lh      t8, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t8, $at, lbl_808614C0      
    lhu     t1, 0x0088(s0)             # 00000088
    lwc1    $f0, 0x000C(s0)            # 0000000C
    lwc1    $f4, 0x0028(s0)            # 00000028
    c.le.s  $f4, $f0                   
    nop
    bc1fl   lbl_80861470               
    lwc1    $f8, 0x0080(s0)            # 00000080
    mtc1    $zero, $f6                 # $f6 = 0.00
    swc1    $f0, 0x0028(s0)            # 00000028
    swc1    $f6, 0x0060(s0)            # 00000060
    lwc1    $f8, 0x0080(s0)            # 00000080
lbl_80861470:
    c.le.s  $f8, $f0                   
    nop
    bc1fl   lbl_80861488               
    lw      t9, 0x07BC(s0)             # 000007BC
    swc1    $f0, 0x0080(s0)            # 00000080
lbl_80861484:
    lw      t9, 0x07BC(s0)             # 000007BC
lbl_80861488:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0054($sp)            
    jalr    $ra, t9                    
    nop
    lbu     v0, 0x07CE(s0)             # 000007CE
    sltiu   $at, v0, 0x0005            
    beq     $at, $zero, lbl_80861640   
    sll     t0, v0,  2                 
    lui     $at, %hi(var_808624F4)     # $at = 80860000
    addu    $at, $at, t0               
    lw      t0, %lo(var_808624F4)($at) 
    jr      t0                         
    nop
    lhu     t1, 0x0088(s0)             # 00000088
lbl_808614C0:
    lw      a0, 0x0054($sp)            
    andi    t2, t1, 0x0002             # t2 = 00000000
    beq     t2, $zero, lbl_80861484    
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    lw      a1, 0x0078(s0)             # 00000078
    lbu     a2, 0x007D(s0)             # 0000007D
    jal     func_80034540              
    sw      a0, 0x0038($sp)            
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v0, $at, lbl_80861510      
    lw      a0, 0x0038($sp)            
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beq     v0, $at, lbl_80861510      
    nop
    lw      a1, 0x0078(s0)             # 00000078
    jal     func_800343D4              
    lbu     a2, 0x007D(s0)             # 0000007D
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bnel    v0, $at, lbl_80861488      
    lw      t9, 0x07BC(s0)             # 000007BC
lbl_80861510:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808617F4 
    lw      $ra, 0x002C($sp)           
var_80861520:
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x1C20             # a0 = 06001C20
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f0                   # $f0 = 2.00
    cvt.s.w $f16, $f10                 
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    mfc1    a2, $f0                    
    sw      t3, 0x0014($sp)            
    addiu   a1, a1, 0x1C20             # a1 = 06001C20
    swc1    $f16, 0x0010($sp)          
    addiu   a0, s0, 0x0498             # a0 = 00000498
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lui     t4, %hi(var_80862240)      # t4 = 80860000
    addiu   t4, t4, %lo(var_80862240)  # t4 = 80862240
    lbu     a1, 0x0178(s0)             # 00000178
    lw      a2, 0x0198(s0)             # 00000198
    lw      a3, 0x04B8(s0)             # 000004B8
    sw      t4, 0x0010($sp)            
    jal     func_8008B698              
    lw      a0, 0x0054($sp)            
    lbu     t5, 0x07CE(s0)             # 000007CE
    addiu   t6, t5, 0x0001             # t6 = 00000001
    beq     $zero, $zero, lbl_80861640 
    sb      t6, 0x07CE(s0)             # 000007CE
var_80861594:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0498             # a0 = 00000498
    lui     a3, %hi(var_80862240)      # a3 = 80860000
    addiu   a3, a3, %lo(var_80862240)  # a3 = 80862240
    addiu   a0, s0, 0x0178             # a0 = 00000178
    lw      a1, 0x0198(s0)             # 00000198
    jal     func_8008D408              
    lw      a2, 0x04B8(s0)             # 000004B8
    beq     $zero, $zero, lbl_80861644 
    lbu     t8, 0x0114(s0)             # 00000114
var_808615BC:
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f18                  # $f18 = 4.00
    addiu   t7, v0, 0x0001             # t7 = 00000001
    sb      t7, 0x07CE(s0)             # 000007CE
    swc1    $f18, 0x04C0(s0)           # 000004C0
var_808615D0:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    lwc1    $f0, 0x04C0(s0)            # 000004C0
    mtc1    $zero, $f6                 # $f6 = 0.00
    sub.s   $f4, $f0, $f12             
    mov.s   $f2, $f0                   
    swc1    $f4, 0x04C0(s0)            # 000004C0
    lwc1    $f0, 0x04C0(s0)            # 000004C0
    c.le.s  $f0, $f6                   
    nop
    bc1fl   lbl_8086160C               
    div.s   $f8, $f0, $f2              
    sb      $zero, 0x07CE(s0)          # 000007CE
    lwc1    $f0, 0x04C0(s0)            # 000004C0
    div.s   $f8, $f0, $f2              
lbl_8086160C:
    lw      a1, 0x04B8(s0)             # 000004B8
    lbu     a0, 0x0178(s0)             # 00000178
    lw      a3, 0x0198(s0)             # 00000198
    or      a2, a1, $zero              # a2 = 00000000
    sub.s   $f10, $f12, $f8            
    jal     func_8008AFB8              
    swc1    $f10, 0x0010($sp)          
    lui     a3, %hi(var_80862240)      # a3 = 80860000
    addiu   a3, a3, %lo(var_80862240)  # a3 = 80862240
    addiu   a0, s0, 0x0178             # a0 = 00000178
    lw      a1, 0x0198(s0)             # 00000198
    jal     func_8008D408              
    lw      a2, 0x04B8(s0)             # 000004B8
lbl_80861640:
    lbu     t8, 0x0114(s0)             # 00000114
lbl_80861644:
    bnel    t8, $zero, lbl_808616A0    
    addiu   a1, s0, 0x0800             # a1 = 00000800
    lbu     t9, 0x00AF(s0)             # 000000AF
    beql    t9, $zero, lbl_808616A0    
    addiu   a1, s0, 0x0800             # a1 = 00000800
    lbu     v0, 0x07B8(s0)             # 000007B8
    addiu   $at, $zero, 0x0010         # $at = 00000010
    addiu   a0, s0, 0x07C2             # a0 = 000007C2
    beq     v0, $at, lbl_8086168C      
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   $at, $zero, 0x0017         # $at = 00000017
    beql    v0, $at, lbl_80861690      
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808611A0              
    lw      a1, 0x0054($sp)            
    beq     $zero, $zero, lbl_808616A0 
    addiu   a1, s0, 0x0800             # a1 = 00000800
lbl_8086168C:
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_80861690:
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    addiu   a1, s0, 0x0800             # a1 = 00000800
lbl_808616A0:
    sw      a1, 0x0034($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t0, 0x0028(s0)             # 00000028
    lui     $at, 0x4234                # $at = 42340000
    lw      t1, 0x0024(s0)             # 00000024
    sw      t0, 0x003C(s0)             # 0000003C
    lwc1    $f16, 0x003C(s0)           # 0000003C
    mtc1    $at, $f18                  # $f18 = 45.00
    sw      t1, 0x0038(s0)             # 00000038
    lw      t1, 0x002C(s0)             # 0000002C
    add.s   $f4, $f16, $f18            
    lbu     t2, 0x00AF(s0)             # 000000AF
    sw      t1, 0x0040(s0)             # 00000040
    lui     $at, 0x0001                # $at = 00010000
    swc1    $f4, 0x003C(s0)            # 0000003C
    bgtz    t2, lbl_808616F0           
    lw      a0, 0x0054($sp)            
    lbu     t3, 0x0114(s0)             # 00000114
    beq     t3, $zero, lbl_8086175C    
lbl_808616F0:
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at                
    sw      a1, 0x0038($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0034($sp)            
    lbu     t4, 0x07B8(s0)             # 000007B8
    slti    $at, t4, 0x000A            
    bnel    $at, $zero, lbl_80861744   
    lbu     t8, 0x07CE(s0)             # 000007CE
    lbu     t5, 0x0114(s0)             # 00000114
    lw      a0, 0x0054($sp)            
    lw      a1, 0x0038($sp)            
    beq     t5, $zero, lbl_80861738    
    nop
    lhu     t6, 0x0112(s0)             # 00000112
    andi    t7, t6, 0x4000             # t7 = 00000000
    bnel    t7, $zero, lbl_80861744    
    lbu     t8, 0x07CE(s0)             # 000007CE
lbl_80861738:
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0034($sp)            
    lbu     t8, 0x07CE(s0)             # 000007CE
lbl_80861744:
    lw      a0, 0x0054($sp)            
    lw      a1, 0x0038($sp)            
    beql    t8, $zero, lbl_80861760    
    lb      t9, 0x07F8(s0)             # 000007F8
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x08CC             # a2 = 000008CC
lbl_8086175C:
    lb      t9, 0x07F8(s0)             # 000007F8
lbl_80861760:
    blezl   t9, lbl_808617A8           
    lh      t3, 0x001C(s0)             # 0000001C
    lbu     v0, 0x085C(s0)             # 0000085C
    lui     $at, 0x0001                # $at = 00010000
    or      a0, s0, $zero              # a0 = 00000000
    andi    t0, v0, 0x0004             # t0 = 00000000
    bne     t0, $zero, lbl_8086179C    
    andi    t2, v0, 0xFFFB             # t2 = 00000000
    lw      a0, 0x0054($sp)            
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   a2, s0, 0x084C             # a2 = 0000084C
    jal     func_8004BD50              # CollisionCheck_setAT
    addu    a1, a0, $at                
    beq     $zero, $zero, lbl_808617A8 
    lh      t3, 0x001C(s0)             # 0000001C
lbl_8086179C:
    jal     func_80860F7C              
    sb      t2, 0x085C(s0)             # 0000085C
    lh      t3, 0x001C(s0)             # 0000001C
lbl_808617A8:
    lw      t4, 0x0054($sp)            
    bnel    t3, $zero, lbl_808617F4    
    lw      $ra, 0x002C($sp)           
    lbu     t5, 0x1C27(t4)             # 00001C27
    lui     t8, 0x8002                 # t8 = 80020000
    beql    t5, $zero, lbl_808617E0    
    lw      t9, 0x0004(s0)             # 00000004
    lw      t6, 0x0004(s0)             # 00000004
    addiu   t8, t8, 0xF280             # t8 = 8001F280
    sw      t8, 0x00C0(s0)             # 000000C0
    ori     t7, t6, 0x0081             # t7 = 00000081
    beq     $zero, $zero, lbl_808617F0 
    sw      t7, 0x0004(s0)             # 00000004
    lw      t9, 0x0004(s0)             # 00000004
lbl_808617E0:
    addiu   $at, $zero, 0xFF7E         # $at = FFFFFF7E
    sw      $zero, 0x00C0(s0)          # 000000C0
    and     t0, t9, $at                
    sw      t0, 0x0004(s0)             # 00000004
lbl_808617F0:
    lw      $ra, 0x002C($sp)           
lbl_808617F4:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra                        
    nop


func_80861804:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      a3, 0x0044($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0038($sp)            
    sw      a2, 0x0040($sp)            
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     a1, $at, lbl_80861860      
    lw      v0, 0x0048($sp)            
    lw      v1, 0x004C($sp)            
    lh      t6, 0x0000(v0)             # 00000000
    lh      t9, 0x0002(v0)             # 00000002
    lh      t7, 0x07C2(v1)             # 000007C2
    lh      t3, 0x0004(v0)             # 00000004
    addu    t8, t6, t7                 
    sh      t8, 0x0000(v0)             # 00000000
    lh      t1, 0x07C0(v1)             # 000007C0
    subu    t2, t9, t1                 
    sh      t2, 0x0002(v0)             # 00000002
    lh      t4, 0x07C4(v1)             # 000007C4
    addu    t5, t3, t4                 
    beq     $zero, $zero, lbl_80861998 
    sh      t5, 0x0004(v0)             # 00000004
lbl_80861860:
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     a1, $at, lbl_80861998      
    lui     t9, 0xFB00                 # t9 = FB000000
    lw      v1, 0x0000(a3)             # 00000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t7, 0xE700                 # t7 = E7000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     $at, 0x0001                # $at = 00010000
    addu    a2, a3, $at                
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      t9, 0x0000(v0)             # 00000000
    lw      a0, 0x1DE4(a2)             # 00001DE4
    sw      a3, 0x0038($sp)            
    sw      a2, 0x0018($sp)            
    addu    $at, a0, $zero             
    sll     a0, a0,  5                 
    subu    a0, a0, $at                
    sll     a0, a0,  2                 
    addu    a0, a0, $at                
    sll     a0, a0,  4                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sw      v0, 0x0020($sp)            
    lui     $at, 0x432F                # $at = 432F0000
    mtc1    $at, $f4                   # $f4 = 175.00
    addiu   v0, $zero, 0x07D0          # v0 = 000007D0
    lw      a2, 0x0018($sp)            
    mul.s   $f6, $f0, $f4              
    trunc.w.s $f8, $f6                   
    mfc1    t2, $f8                    
    nop
    sll     t3, t2, 16                 
    sra     t4, t3, 16                 
    bltzl   t4, lbl_80861948           
    lw      t7, 0x1DE4(a2)             # 00001DE4
    lw      t5, 0x1DE4(a2)             # 00001DE4
    multu   t5, v0                     
    mflo    a0                         
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x432F                # $at = 432F0000
    mtc1    $at, $f10                  # $f10 = 175.00
    nop
    mul.s   $f16, $f0, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    v0, $f18                   
    nop
    sll     v0, v0, 16                 
    beq     $zero, $zero, lbl_80861984 
    sra     v0, v0, 16                 
    lw      t7, 0x1DE4(a2)             # 00001DE4
lbl_80861948:
    multu   t7, v0                     
    mflo    a0                         
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x432F                # $at = 432F0000
    mtc1    $at, $f4                   # $f4 = 175.00
    nop
    mul.s   $f6, $f0, $f4              
    trunc.w.s $f8, $f6                   
    mfc1    v0, $f8                    
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    subu    v0, $zero, v0              
lbl_80861984:
    lw      t4, 0x0020($sp)            
    addiu   t1, v0, 0x0050             # t1 = 00000050
    sll     t2, t1, 24                 
    ori     t3, t2, 0x00FF             # t3 = 000000FF
    sw      t3, 0x0004(t4)             # 00000004
lbl_80861998:
    lw      v1, 0x004C($sp)            
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t5, 0x001C(v1)             # 0000001C
    bne     t5, $zero, lbl_808619C8    
    nop
    lw      t6, 0x0004(v1)             # 00000004
    addiu   $at, $zero, 0x0080         # $at = 00000080
    lw      t8, 0x0040($sp)            
    andi    t7, t6, 0x0080             # t7 = 00000000
    beq     t7, $at, lbl_808619C8      
    nop
    sw      $zero, 0x0000(t8)          # 00000000
lbl_808619C8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_808619D8:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s0, 0x0030($sp)            
    lw      s0, 0x0090($sp)            
    sw      $ra, 0x0034($sp)           
    sw      a0, 0x0080($sp)            
    sw      a1, 0x0084($sp)            
    sw      a2, 0x0088($sp)            
    sw      a3, 0x008C($sp)            
    lw      t8, 0x0088($sp)            
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    addiu   t7, $zero, 0x003C          # t7 = 0000003C
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    sw      t6, 0x007C($sp)            
    sw      t9, 0x0018($sp)            
    sw      t7, 0x0010($sp)            
    addiu   a0, s0, 0x07E0             # a0 = 000007E0
    lw      a1, 0x0084($sp)            
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    jal     func_80025DFC              
    sw      t8, 0x0014($sp)            
    lw      t0, 0x0084($sp)            
    addiu   $at, $zero, 0x0022         # $at = 00000022
    lui     a0, %hi(var_808623AC)      # a0 = 80860000
    bne     t0, $at, lbl_80861B38      
    lw      t6, 0x0084($sp)            
    addiu   a1, s0, 0x0898             # a1 = 00000898
    sw      a1, 0x0044($sp)            
    jal     func_800AB958              
    addiu   a0, a0, %lo(var_808623AC)  # a0 = 808623AC
    lui     a0, %hi(var_808623B8)      # a0 = 80860000
    addiu   a1, s0, 0x088C             # a1 = 0000088C
    sw      a1, 0x0048($sp)            
    jal     func_800AB958              
    addiu   a0, a0, %lo(var_808623B8)  # a0 = 808623B8
    lui     a0, %hi(var_808623C4)      # a0 = 80860000
    addiu   a1, s0, 0x08B0             # a1 = 000008B0
    sw      a1, 0x003C($sp)            
    jal     func_800AB958              
    addiu   a0, a0, %lo(var_808623C4)  # a0 = 808623C4
    lui     a0, %hi(var_808623D0)      # a0 = 80860000
    addiu   a3, s0, 0x08A4             # a3 = 000008A4
    or      a1, a3, $zero              # a1 = 000008A4
    sw      a3, 0x0040($sp)            
    jal     func_800AB958              
    addiu   a0, a0, %lo(var_808623D0)  # a0 = 808623D0
    lw      t1, 0x003C($sp)            
    lw      a3, 0x0040($sp)            
    addiu   a0, s0, 0x084C             # a0 = 0000084C
    lw      a1, 0x0048($sp)            
    lw      a2, 0x0044($sp)            
    jal     func_80050B64              
    sw      t1, 0x0010($sp)            
    lui     a0, %hi(var_80862394)      # a0 = 80860000
    addiu   a0, a0, %lo(var_80862394)  # a0 = 80862394
    jal     func_800AB958              
    addiu   a1, $sp, 0x0070            # a1 = FFFFFFF0
    lui     a0, %hi(var_808623A0)      # a0 = 80860000
    addiu   a0, a0, %lo(var_808623A0)  # a0 = 808623A0
    jal     func_800AB958              
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFE4
    lb      v0, 0x07F8(s0)             # 000007F8
    blez    v0, lbl_80861B14           
    nop
    lh      t2, 0x001C(s0)             # 0000001C
    lw      t3, 0x0080($sp)            
    bne     t2, $zero, lbl_80861AF4    
    nop
    lbu     t4, 0x1C27(t3)             # 00001C27
    beq     t4, $zero, lbl_80861B14    
    nop
lbl_80861AF4:
    jal     func_8001A890              
    lw      a0, 0x07FC(s0)             # 000007FC
    or      a0, v0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0070            # a1 = FFFFFFF0
    jal     func_80013F30              
    addiu   a2, $sp, 0x0064            # a2 = FFFFFFE4
    beq     $zero, $zero, lbl_80861C54 
    lh      t9, 0x07D0(s0)             # 000007D0
lbl_80861B14:
    bltzl   v0, lbl_80861C54           
    lh      t9, 0x07D0(s0)             # 000007D0
    jal     func_8001A890              
    lw      a0, 0x07FC(s0)             # 000007FC
    jal     func_80014254              
    or      a0, v0, $zero              # a0 = 00000000
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    beq     $zero, $zero, lbl_80861C50 
    sb      t5, 0x07F8(s0)             # 000007F8
lbl_80861B38:
    addiu   $at, $zero, 0x001B         # $at = 0000001B
    bne     t6, $at, lbl_80861B9C      
    lui     a3, %hi(var_80862388)      # a3 = 80860000
    lbu     t7, 0x07CE(s0)             # 000007CE
    lui     a0, %hi(var_808623A0)      # a0 = 80860000
    addiu   a0, a0, %lo(var_808623A0)  # a0 = 808623A0
    beq     t7, $zero, lbl_80861B9C    
    nop
    jal     func_800AB958              
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFE4
    lwc1    $f4, 0x0064($sp)           
    trunc.w.s $f6, $f4                   
    mfc1    t9, $f6                    
    nop
    sh      t9, 0x0912(s0)             # 00000912
    lwc1    $f8, 0x0068($sp)           
    trunc.w.s $f10, $f8                  
    mfc1    t1, $f10                   
    nop
    sh      t1, 0x0914(s0)             # 00000914
    lwc1    $f16, 0x006C($sp)          
    trunc.w.s $f18, $f16                 
    mfc1    t3, $f18                   
    beq     $zero, $zero, lbl_80861C50 
    sh      t3, 0x0916(s0)             # 00000916
lbl_80861B9C:
    addiu   a3, a3, %lo(var_80862388)  # a3 = 00002388
    addiu   t4, $zero, 0x0037          # t4 = 00000037
    sw      t4, 0x0010($sp)            
    sw      a3, 0x0014($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0084($sp)            
    jal     func_8001F74C              
    addiu   a2, $zero, 0x0030          # a2 = 00000030
    lw      t5, 0x0084($sp)            
    addiu   $at, $zero, 0x0030         # $at = 00000030
    beq     t5, $at, lbl_80861BD4      
    addiu   $at, $zero, 0x0037         # $at = 00000037
    bnel    t5, $at, lbl_80861C54      
    lh      t9, 0x07D0(s0)             # 000007D0
lbl_80861BD4:
    lbu     v0, 0x07B8(s0)             # 000007B8
    addiu   $at, $zero, 0x0015         # $at = 00000015
    beq     v0, $at, lbl_80861BEC      
    addiu   $at, $zero, 0x0016         # $at = 00000016
    bnel    v0, $at, lbl_80861C54      
    lh      t9, 0x07D0(s0)             # 000007D0
lbl_80861BEC:
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0068(s0)            # 00000068
    lui     a0, %hi(var_80862388)      # a0 = 80860000
    addiu   a0, a0, %lo(var_80862388)  # a0 = 80862388
    c.eq.s  $f4, $f6                   
    nop
    bc1tl   lbl_80861C54               
    lh      t9, 0x07D0(s0)             # 000007D0
    jal     func_800AB958              
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFE4
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f8                   # $f8 = 8.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    addiu   t8, $zero, 0x000F          # t8 = 0000000F
    sw      t8, 0x001C($sp)            
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0010($sp)            
    lw      a0, 0x0080($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0064            # a2 = FFFFFFE4
    lui     a3, 0x4120                 # a3 = 41200000
    sw      $zero, 0x0020($sp)         
    jal     func_800260E8              
    swc1    $f8, 0x0014($sp)           
lbl_80861C50:
    lh      t9, 0x07D0(s0)             # 000007D0
lbl_80861C54:
    lw      t0, 0x0084($sp)            
    beq     t9, $zero, lbl_80861D4C    
    addiu   t1, t0, 0xFFF5             # t1 = FFFFFFF5
    sltiu   $at, t1, 0x0032            
    beq     $at, $zero, lbl_80861CE4   
    sll     t1, t1,  2                 
    lui     $at, %hi(var_80862508)     # $at = 80860000
    addu    $at, $at, t1               
    lw      t1, %lo(var_80862508)($at) 
    jr      t1                         
    nop
var_80861C80:
    beq     $zero, $zero, lbl_80861CE4 
    sw      $zero, 0x007C($sp)         
var_80861C88:
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    beq     $zero, $zero, lbl_80861CE4 
    sw      t2, 0x007C($sp)            
var_80861C94:
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    beq     $zero, $zero, lbl_80861CE4 
    sw      t3, 0x007C($sp)            
var_80861CA0:
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    beq     $zero, $zero, lbl_80861CE4 
    sw      t4, 0x007C($sp)            
var_80861CAC:
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    beq     $zero, $zero, lbl_80861CE4 
    sw      t5, 0x007C($sp)            
var_80861CB8:
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    beq     $zero, $zero, lbl_80861CE4 
    sw      t6, 0x007C($sp)            
var_80861CC4:
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    beq     $zero, $zero, lbl_80861CE4 
    sw      t7, 0x007C($sp)            
var_80861CD0:
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    beq     $zero, $zero, lbl_80861CE4 
    sw      t8, 0x007C($sp)            
var_80861CDC:
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    sw      t9, 0x007C($sp)            
lbl_80861CE4:
    lw      t0, 0x007C($sp)            
    lui     a0, %hi(var_808623A0)      # a0 = 80860000
    addiu   a0, a0, %lo(var_808623A0)  # a0 = 808623A0
    bltzl   t0, lbl_80861D50           
    lw      $ra, 0x0034($sp)           
    jal     func_800AB958              
    addiu   a1, $sp, 0x0050            # a1 = FFFFFFD0
    lwc1    $f10, 0x0050($sp)          
    lw      t1, 0x007C($sp)            
    trunc.w.s $f16, $f10                 
    sll     t2, t1,  2                 
    subu    t2, t2, t1                 
    sll     t2, t2,  1                 
    mfc1    t4, $f16                   
    addu    v0, s0, t2                 
    sh      t4, 0x013C(v0)             # 0000013C
    lwc1    $f18, 0x0054($sp)          
    trunc.w.s $f4, $f18                  
    mfc1    t6, $f4                    
    nop
    sh      t6, 0x013E(v0)             # 0000013E
    lwc1    $f6, 0x0058($sp)           
    trunc.w.s $f8, $f6                   
    mfc1    t8, $f8                    
    nop
    sh      t8, 0x0140(v0)             # 00000140
lbl_80861D4C:
    lw      $ra, 0x0034($sp)           
lbl_80861D50:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0080           # $sp = 00000000
    jr      $ra                        
    nop


func_80861D60:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0044($sp)            
    jal     func_8007E298              
    lw      a0, 0x0000(t6)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)            
    jal     func_80022438              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lh      t7, 0x001C(s0)             # 0000001C
    lui     a3, %hi(func_80861804)     # a3 = 80860000
    addiu   a3, a3, %lo(func_80861804) # a3 = 80861804
    slti    $at, t7, 0x0004            
    bne     $at, $zero, lbl_80861DB0   
    lw      a0, 0x0044($sp)            
    lw      t8, 0x011C(s0)             # 0000011C
    bne     t8, $zero, lbl_80861DCC    
lbl_80861DB0:
    lui     t9, %hi(func_808619D8)     # t9 = 80860000
    addiu   t9, t9, %lo(func_808619D8) # t9 = 808619D8
    lw      a1, 0x017C(s0)             # 0000017C
    lw      a2, 0x0198(s0)             # 00000198
    sw      s0, 0x0014($sp)            
    jal     func_8008993C              
    sw      t9, 0x0010($sp)            
lbl_80861DCC:
    lh      t0, 0x07D0(s0)             # 000007D0
    beql    t0, $zero, lbl_80861E64    
    lw      $ra, 0x003C($sp)           
    lh      t3, 0x07D0(s0)             # 000007D0
    lbu     t1, 0x0114(s0)             # 00000114
    or      a1, s0, $zero              # a1 = 00000000
    addiu   t4, t3, 0xFFFF             # t4 = FFFFFFFF
    sh      t4, 0x07D0(s0)             # 000007D0
    lh      v1, 0x07D0(s0)             # 000007D0
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sb      t2, 0x0114(s0)             # 00000114
    andi    t5, v1, 0x0003             # t5 = 00000000
    bne     t5, $zero, lbl_80861E60    
    sra     v0, v1,  2                 
    sll     t6, v0,  2                 
    subu    t6, t6, v0                 
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    sll     t6, t6,  1                 
    addu    a2, s0, t6                 
    addiu   t7, $zero, 0x0096          # t7 = 00000096
    addiu   t8, $zero, 0x0096          # t8 = 00000096
    addiu   t9, $zero, 0x00FA          # t9 = 000000FA
    addiu   t0, $zero, 0x00EB          # t0 = 000000EB
    addiu   t1, $zero, 0x00F5          # t1 = 000000F5
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    sw      t2, 0x0024($sp)            
    sw      t1, 0x0020($sp)            
    sw      t0, 0x001C($sp)            
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    addiu   a2, a2, 0x013C             # a2 = 0000013C
    lw      a0, 0x0044($sp)            
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    jal     func_8001DCEC              
    swc1    $f4, 0x0028($sp)           
lbl_80861E60:
    lw      $ra, 0x003C($sp)           
lbl_80861E64:
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80861E74:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xE2B0             # a1 = 0600E2B0
    addiu   a0, a3, 0x0178             # a0 = 00000178
    lui     a2, 0xC000                 # a2 = C0000000
    jal     func_8008D328              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lwc1    $f4, 0x001C($sp)           
    lh      t6, 0x00B6(a3)             # 000000B6
    swc1    $f4, 0x0068(a3)            # 00000068
    addiu   t7, t6, 0x3FFF             # t7 = 00003FFF
    jal     func_800CDCCC              # Rand.Next() float
    sh      t7, 0x0032(a3)             # 00000032
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f10                  # $f10 = 15.00
    mul.s   $f8, $f0, $f6              
    lw      a0, 0x0018($sp)            
    addiu   t0, $zero, 0x0018          # t0 = 00000018
    lui     a1, %hi(func_808605FC)     # a1 = 80860000
    addiu   a1, a1, %lo(func_808605FC) # a1 = 808605FC
    sb      t0, 0x07B8(a0)             # 000007B8
    add.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t9, $f18                   
    jal     func_8085D350              
    sw      t9, 0x07D8(a0)             # 000007D8
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80861F04:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    lw      a0, 0x0028($sp)            
    or      a1, a3, $zero              # a1 = 00000000
    lui     a2, 0x4396                 # a2 = 43960000
    jal     func_80026614              
    sw      a3, 0x002C($sp)            
    lw      a3, 0x002C($sp)            
    beq     v0, $zero, lbl_80862224    
    or      a1, v0, $zero              # a1 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    sw      v0, 0x0024($sp)            
    jal     func_800213B4              
    sw      a3, 0x002C($sp)            
    lw      a3, 0x002C($sp)            
    or      t0, $zero, $zero           # t0 = 00000000
    lhu     a0, 0x00B6(a3)             # 000000B6
    lhu     t7, 0x0088(a3)             # 00000088
    subu    v1, v0, a0                 
    sll     v1, v1, 16                 
    andi    t8, t7, 0x0008             # t8 = 00000000
    beq     t8, $zero, lbl_80861F84    
    sra     v1, v1, 16                 
    lhu     t9, 0x007E(a3)             # 0000007E
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    subu    a2, t9, a0                 
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    beq     $zero, $zero, lbl_80861F84 
    sh      a2, 0x0020($sp)            
lbl_80861F84:
    lw      a1, 0x0024($sp)            
    addiu   a0, a3, 0x0024             # a0 = 00000024
    sh      v1, 0x0022($sp)            
    sw      a3, 0x002C($sp)            
    sh      t0, 0x001E($sp)            
    jal     func_80063E18              
    addiu   a1, a1, 0x0024             # a1 = 00000024
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    lw      a3, 0x002C($sp)            
    lh      v1, 0x0022($sp)            
    c.lt.s  $f0, $f4                   
    lh      a2, 0x0020($sp)            
    lh      t0, 0x001E($sp)            
    lw      a0, 0x0028($sp)            
    bc1f    lbl_80862074               
    or      a1, a3, $zero              # a1 = 00000000
    lw      a0, 0x0028($sp)            
    or      a1, a3, $zero              # a1 = 00000000
    sh      v1, 0x0022($sp)            
    jal     func_8002691C              
    sw      a3, 0x002C($sp)            
    lh      v1, 0x0022($sp)            
    beq     v0, $zero, lbl_8086200C    
    lw      a3, 0x002C($sp)            
    lw      t1, 0x0024($sp)            
    addiu   $at, $zero, 0x0066         # $at = 00000066
    lh      t2, 0x0000(t1)             # 00000000
    bne     t2, $at, lbl_8086200C      
    nop
    jal     func_8085FA74              
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80862228 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8086200C:
    bltz    v1, lbl_8086201C           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_8086201C 
    or      v0, v1, $zero              # v0 = 00000000
lbl_8086201C:
    slti    $at, v0, 0x2000            
    beq     $at, $zero, lbl_80862038   
    nop
    jal     func_8085FBE4              
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80862228 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80862038:
    bltz    v1, lbl_80862048           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_80862048 
    or      v0, v1, $zero              # v0 = 00000000
lbl_80862048:
    slti    $at, v0, 0x6000            
    beq     $at, $zero, lbl_80862064   
    nop
    jal     func_8085F670              
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80862228 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80862064:
    jal     func_8085FA74              
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80862228 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80862074:
    sh      v1, 0x0022($sp)            
    sh      a2, 0x0020($sp)            
    sw      a3, 0x002C($sp)            
    jal     func_8002691C              
    sh      t0, 0x001E($sp)            
    lh      v1, 0x0022($sp)            
    lh      a2, 0x0020($sp)            
    lw      a3, 0x002C($sp)            
    beq     v0, $zero, lbl_808620C0    
    lh      t0, 0x001E($sp)            
    lw      t3, 0x0024($sp)            
    addiu   $at, $zero, 0x0066         # $at = 00000066
    lh      t4, 0x0000(t3)             # 00000000
    bne     t4, $at, lbl_808620C0      
    nop
    jal     func_8085FA74              
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80862228 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808620C0:
    bltz    v1, lbl_808620D0           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_808620D0 
    or      v0, v1, $zero              # v0 = 00000000
lbl_808620D0:
    slti    $at, v0, 0x2000            
    bne     $at, $zero, lbl_808620F8   
    lw      t5, 0x0028($sp)            
    bltz    v1, lbl_808620EC           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_808620EC 
    or      v0, v1, $zero              # v0 = 00000000
lbl_808620EC:
    slti    $at, v0, 0x6001            
    bne     $at, $zero, lbl_80862178   
    nop
lbl_808620F8:
    lui     v1, 0x0001                 # v1 = 00010000
    addu    v1, v1, t5                 
    lw      v1, 0x1DE4(v1)             # 00011DE4
    slti    $at, a2, 0x2001            
    or      a0, a3, $zero              # a0 = 00000000
    andi    v1, v1, 0x0001             # v1 = 00000000
    sll     v1, v1, 16                 
    beq     t0, $zero, lbl_80862134    
    sra     v1, v1, 16                 
    bne     $at, $zero, lbl_80862134   
    slti    $at, a2, 0x6000            
    beq     $at, $zero, lbl_80862134   
    nop
    beq     $zero, $zero, lbl_80862150 
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80862134:
    beq     t0, $zero, lbl_80862150    
    slti    $at, a2, 0xE000            
    beq     $at, $zero, lbl_80862150   
    slti    $at, a2, 0xA001            
    bne     $at, $zero, lbl_80862150   
    nop
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80862150:
    beq     v1, $zero, lbl_80862168    
    lui     a1, 0x4080                 # a1 = 40800000
    jal     func_80861E74              
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80862228 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80862168:
    jal     func_80861E74              
    lui     a1, 0xC080                 # a1 = C0800000
    beq     $zero, $zero, lbl_80862228 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80862178:
    bltz    v1, lbl_80862188           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_80862188 
    or      v0, v1, $zero              # v0 = 00000000
lbl_80862188:
    slti    $at, v0, 0x6000            
    beq     $at, $zero, lbl_8086221C   
    lw      t6, 0x0028($sp)            
    lui     v1, 0x0001                 # v1 = 00010000
    addu    v1, v1, t6                 
    lw      v1, 0x1DE4(v1)             # 00011DE4
    andi    v1, v1, 0x0001             # v1 = 00000000
    sll     v1, v1, 16                 
    beq     t0, $zero, lbl_808621D4    
    sra     v1, v1, 16                 
    bltz    a2, lbl_808621C0           
    subu    v0, $zero, a2              
    beq     $zero, $zero, lbl_808621C0 
    or      v0, a2, $zero              # v0 = 00000000
lbl_808621C0:
    slti    $at, v0, 0x6001            
    bne     $at, $zero, lbl_808621D4   
    nop
    beq     $zero, $zero, lbl_808621FC 
    or      v1, $zero, $zero           # v1 = 00000000
lbl_808621D4:
    beq     t0, $zero, lbl_808621FC    
    nop
    bltz    a2, lbl_808621EC           
    subu    v0, $zero, a2              
    beq     $zero, $zero, lbl_808621EC 
    or      v0, a2, $zero              # v0 = 00000000
lbl_808621EC:
    slti    $at, v0, 0x2000            
    beq     $at, $zero, lbl_808621FC   
    nop
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_808621FC:
    beq     v1, $zero, lbl_80862214    
    nop
    jal     func_8085F670              
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80862228 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80862214:
    jal     func_8085FA74              
    or      a0, a3, $zero              # a0 = 00000000
lbl_8086221C:
    beq     $zero, $zero, lbl_80862228 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80862224:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80862228:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_80862240: .word \
0x00000000, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010101, 0x01010101, \
0x01010101, 0x01010100, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80862280: .word 0x00020500, 0x00000015, 0x00320000, 0x00000918
.word func_8085D35C
.word func_8085D5A8
.word func_808613D8
.word func_80861D60
var_808622A0: .word \
0x05000939, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x00190041, 0x00000000, 0x00000000
var_808622CC: .word \
0x09000D00, 0x00010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFC1FFFF, 0x00000000, 0x00010000, \
0x00140046, 0xFFCE0000, 0x00000000
var_808622F8: .word \
0x0A110000, 0x00030000, 0x00000000, 0xFFCFFFFF, \
0x00100000, 0x00000000, 0x00000000, 0x81000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80862348: .word \
0x1002D102, 0x10020210, 0x01020402, 0xF4E20202, \
0x0260F3E0, 0x00000104, 0x02020804, 0x00000400
var_80862368: .word \
0x8917001B, 0xB04C01F4, 0xC850000F, 0xB0540000, \
0x386CFA24, 0x44898000, 0xC42F0000, 0x00000000
var_80862388: .word 0x43960000, 0x00000000, 0x00000000
var_80862394: .word 0x45548000, 0x00000000, 0x00000000
var_808623A0: .word 0x00000000, 0x00000000, 0x00000000
var_808623AC: .word 0x45DAC000, 0x447A0000, 0x00000000
var_808623B8: .word 0x453B8000, 0xC4FA0000, 0xC47A0000
var_808623C4: .word 0x453B8000, 0xC4FA0000, 0x447A0000
var_808623D0: .word \
0xC4A28000, 0x44898000, 0x00000000, 0xC53B8000, \
0x44ED8000, 0x44480000, 0xC53B8000, 0xC4898000, \
0x44480000, 0x44ED8000, 0x44ED8000, 0x44480000, \
0xC53B8000, 0xC4898000, 0x44480000, 0x44ED8000, \
0xC4898000, 0x44480000, 0x44ED8000, 0x44ED8000, \
0x44480000, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80862430: .word var_8085D70C
.word var_8085D70C
.word var_8085D7A4
.word var_8085D790
.word var_8085D790
.word var_8085D70C
.word var_8085D70C
.word var_8085D790
.word lbl_8085D780
.word var_8085D7A4
.word var_8085D7A4
var_8086245C: .word var_8085D8C8
.word var_8085D8D8
.word var_8085D8EC
.word var_8085D8C8
.word var_8085D8EC
.word var_8085D8D8
.word var_8085D8D8
.word var_8085D8C8
.word var_8085D8D8
.word var_8085D8EC
var_80862484: .word 0x3E4CCCCD
var_80862488: .word 0x3F333333
var_8086248C: .word 0x3E99999A
var_80862490: .word 0x3E99999A
var_80862494: .word 0x3F333333
var_80862498: .word 0x3E19999A
var_8086249C: .word 0x3CA3D70A
var_808624A0: .word 0x3F333333
var_808624A4: .word 0x3DCCCCCD
var_808624A8: .word 0x3ECCCCCD
var_808624AC: .word 0x3E4CCCCD
var_808624B0: .word 0x3DCCCCCD
var_808624B4: .word 0x3CA3D70A
var_808624B8: .word 0x3CA3D70A
var_808624BC: .word 0x3F4CCCCD
var_808624C0: .word 0x3F333333
var_808624C4: .word 0xBF4CCCCD
var_808624C8: .word 0xBF4CCCCD
var_808624CC: .word 0x3F333333
var_808624D0: .word 0x3F333333
var_808624D4: .word 0x3F333333
var_808624D8: .word 0x3F333333
var_808624DC: .word 0x3F333333
var_808624E0: .word 0xBF4CCCCD
var_808624E4: .word 0xBF4CCCCD
var_808624E8: .word 0x3F333333
var_808624EC: .word 0x3C75C28F
var_808624F0: .word 0x3B03126F
var_808624F4: .word lbl_80861640
.word var_80861520
.word var_80861594
.word var_808615BC
.word var_808615D0
var_80862508: .word var_80861C80
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word var_80861C88
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word var_80861CA0
.word lbl_80861CE4
.word var_80861CB8
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word var_80861C94
.word lbl_80861CE4
.word lbl_80861CE4
.word var_80861CAC
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word var_80861CD0
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word lbl_80861CE4
.word var_80861CDC
.word lbl_80861CE4
.word lbl_80861CE4
.word var_80861CC4

