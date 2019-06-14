#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A25980:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    lui     v0, %hi(var_80A27EA8)      # v0 = 80A20000
    mtc1    $zero, $f2                 # $f2 = 0.00
    addiu   v0, v0, %lo(var_80A27EA8)  # v0 = 80A27EA8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    addiu   v1, $zero, 0x000C          # v1 = 0000000C
    swc1    $f2, 0x0030($sp)           
    swc1    $f2, 0x002C($sp)           
    lh      t6, 0x001C(a2)             # 0000001C
    or      a1, $zero, $zero           # a1 = 00000000
    multu   t6, v1                     
    mflo    t7                         
    addu    t8, v0, t7                 
    lwc1    $f0, 0x0000(t8)            # 00000000
    swc1    $f0, 0x0388(a2)            # 00000388
    swc1    $f0, 0x0034($sp)           
    lh      t9, 0x001C(a2)             # 0000001C
    multu   t9, v1                     
    mflo    t0                         
    addu    t1, v0, t0                 
    lwc1    $f12, 0x0004(t1)           # 00000004
    jal     func_800AAB94              
    sw      a2, 0x0038($sp)            
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFF4
    jal     func_800AB958              
    addiu   a1, $sp, 0x0020            # a1 = FFFFFFE8
    lw      a2, 0x0038($sp)            
    lwc1    $f6, 0x0020($sp)           
    lui     t4, %hi(var_80A27EA8)      # t4 = 80A20000
    lwc1    $f4, 0x037C(a2)            # 0000037C
    lwc1    $f10, 0x0384(a2)           # 00000384
    lh      t2, 0x001C(a2)             # 0000001C
    add.s   $f8, $f4, $f6              
    addiu   t4, t4, %lo(var_80A27EA8)  # t4 = 80A27EA8
    sll     t3, t2,  2                 
    subu    t3, t3, t2                 
    swc1    $f8, 0x0024(a2)            # 00000024
    lwc1    $f16, 0x0028($sp)          
    sll     t3, t3,  2                 
    addu    v0, t3, t4                 
    add.s   $f18, $f10, $f16           
    lwc1    $f6, 0x0380(a2)            # 00000380
    lui     $at, %hi(var_80A27F50)     # $at = 80A20000
    mtc1    $zero, $f2                 # $f2 = 0.00
    swc1    $f18, 0x002C(a2)           # 0000002C
    lwc1    $f4, 0x0008(v0)            # 00000008
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0028(a2)            # 00000028
    lwc1    $f16, %lo(var_80A27F50)($at) 
    lwc1    $f10, 0x0004(v0)           # 00000004
    ori     $at, $zero, 0x8000         # $at = 00008000
    swc1    $f2, 0x0068(a2)            # 00000068
    mul.s   $f18, $f10, $f16           
    swc1    $f2, 0x0060(a2)            # 00000060
    swc1    $f2, 0x006C(a2)            # 0000006C
    trunc.w.s $f4, $f18                  
    mfc1    v1, $f4                    
    nop
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    addu    v1, v1, $at                
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    sh      v1, 0x00B6(a2)             # 000000B6
    sh      v1, 0x0032(a2)             # 00000032
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80A25A94:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lh      v0, 0x001C(a2)             # 0000001C
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    bne     v0, $zero, lbl_80A25B10    
    lw      a0, 0x001C($sp)            
    lw      t7, 0x0004(a2)             # 00000004
    addiu   $at, $zero, 0xFFEE         # $at = FFFFFFEE
    lui     t6, %hi(func_80A27A80)     # t6 = 80A20000
    and     t8, t7, $at                
    addiu   t6, t6, %lo(func_80A27A80) # t6 = 80A27A80
    sw      t8, 0x0004(a2)             # 00000004
    sw      $zero, 0x012C(a2)          # 0000012C
    sw      $zero, 0x0134(a2)          # 00000134
    sw      t6, 0x0130(a2)             # 00000130
    sw      t8, 0x0004(a2)             # 00000004
    lw      a0, 0x001C($sp)            
    sw      a2, 0x0018($sp)            
    addiu   a3, $zero, 0x0006          # a3 = 00000006
    jal     func_800265D4              
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    lw      a2, 0x0018($sp)            
    lui     t2, %hi(func_80A26C08)     # t2 = 80A20000
    addiu   t1, $zero, 0x40AC          # t1 = 000040AC
    addiu   t2, t2, %lo(func_80A26C08) # t2 = 80A26C08
    sh      t1, 0x010E(a2)             # 0000010E
    beq     $zero, $zero, lbl_80A25B3C 
    sw      t2, 0x0344(a2)             # 00000344
lbl_80A25B10:
    addu    a0, a0, $at                
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_80081628              # ObjectIndex
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    sb      v0, 0x035A(a2)             # 0000035A
    lb      t3, 0x035A(a2)             # 0000035A
    bgezl   t3, lbl_80A25B40           
    lw      $ra, 0x0014($sp)           
    jal     func_80020EB4              
    or      a0, a2, $zero              # a0 = 00000000
lbl_80A25B3C:
    lw      $ra, 0x0014($sp)           
lbl_80A25B40:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A25B4C:
    lh      t6, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lui     t7, %hi(func_80A27B90)     # t7 = 80A20000
    beq     t6, $at, lbl_80A25B68      
    addiu   t7, t7, %lo(func_80A27B90) # t7 = 80A27B90
    jr      $ra                        
    sw      $zero, 0x0134(a0)          # 00000134
lbl_80A25B68:
    sw      t7, 0x0134(a0)             # 00000134
    jr      $ra                        
    nop


func_80A25B74:
    lui     t6, %hi(func_80A27B90)     # t6 = 80A20000
    addiu   t6, t6, %lo(func_80A27B90) # t6 = 80A27B90
    sw      t6, 0x0134(a0)             # 00000134
    jr      $ra                        
    nop


func_80A25B88:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, s1, $at                
    jal     func_80081688              
    lb      a1, 0x035A(s0)             # 0000035A
    beq     v0, $zero, lbl_80A25E6C    
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    lw      t6, 0x0004(s0)             # 00000004
    lh      v0, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_80A27EFC)      # a1 = 80A20000
    and     t7, t6, $at                
    addiu   v0, v0, 0xFFFF             # v0 = FFFFFFFF
    sll     t8, v0,  2                 
    lui     $at, %hi(var_80A27E34)     # $at = 80A20000
    sw      t7, 0x0004(s0)             # 00000004
    addu    $at, $at, t8               
    sw      s0, %lo(var_80A27E34)($at) 
    sw      v0, 0x003C($sp)            
    addiu   a1, a1, %lo(var_80A27EFC)  # a1 = 80A27EFC
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t9, s0, 0x0180             # t9 = 00000180
    addiu   t0, s0, 0x0210             # t0 = 00000210
    addiu   t1, $zero, 0x0018          # t1 = 00000018
    sw      t1, 0x0018($sp)            
    sw      t0, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    addiu   a3, a3, 0x1534             # a3 = 06001534
    addiu   a2, a2, 0xB498             # a2 = 0600B498
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C788              
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0500                 # a2 = 05000000
    lui     a3, 0x0500                 # a3 = 05000000
    addiu   t2, s0, 0x02E4             # t2 = 000002E4
    addiu   t3, s0, 0x0314             # t3 = 00000314
    addiu   t4, $zero, 0x0008          # t4 = 00000008
    sw      t4, 0x0018($sp)            
    sw      t3, 0x0014($sp)            
    sw      t2, 0x0010($sp)            
    addiu   a3, a3, 0x2470             # a3 = 05002470
    addiu   a2, a2, 0x36F0             # a2 = 050036F0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C684              
    addiu   a1, s0, 0x02A0             # a1 = 000002A0
    addiu   a2, s0, 0x034C             # a2 = 0000034C
    sw      a2, 0x0030($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800665B0              
    addiu   a1, s1, 0x07A8             # a1 = 000007A8
    lwc1    $f4, 0x0008(s0)            # 00000008
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lwc1    $f16, 0x0010(s0)           # 00000010
    trunc.w.s $f6, $f4                   
    sw      v0, 0x0348(s0)             # 00000348
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    trunc.w.s $f10, $f8                  
    mfc1    a1, $f6                    
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    trunc.w.s $f18, $f16                 
    mfc1    a2, $f10                   
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    mfc1    a3, $f18                   
    sll     a1, a1, 16                 
    sll     a2, a2, 16                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sra     a2, a2, 16                 
    sra     a1, a1, 16                 
    sw      t1, 0x001C($sp)            
    sw      t0, 0x0018($sp)            
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    jal     func_80065BCC              
    lw      a0, 0x0030($sp)            
    lw      t2, 0x003C($sp)            
    lui     t3, %hi(var_80A27E58)      # t3 = 80A20000
    lui     t5, %hi(var_80A27E48)      # t5 = 80A20000
    addu    t3, t3, t2                 
    lbu     t3, %lo(var_80A27E58)(t3)  
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B42(t6)            # 8011B4BE
    sll     t4, t3,  1                 
    addu    t5, t5, t4                 
    lhu     t5, %lo(var_80A27E48)(t5)  
    lui     $at, 0x4316                # $at = 43160000
    and     t7, t5, t6                 
    beql    t7, $zero, lbl_80A25D24    
    mtc1    $at, $f6                   # $f6 = 150.00
    lui     $at, 0x4387                # $at = 43870000
    mtc1    $at, $f4                   # $f4 = 270.00
    beq     $zero, $zero, lbl_80A25D2C 
    swc1    $f4, 0x0390(s0)            # 00000390
    mtc1    $at, $f6                   # $f6 = 270.00
lbl_80A25D24:
    nop
    swc1    $f6, 0x0390(s0)            # 00000390
lbl_80A25D2C:
    lui     $at, %hi(var_80A27F54)     # $at = 80A20000
    lwc1    $f10, %lo(var_80A27F54)($at) 
    lwc1    $f8, 0x0390(s0)            # 00000390
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f16, $f8, $f10            
    mfc1    a1, $f16                   
    jal     func_80020F88              
    nop
    lui     $at, %hi(var_80A27F58)     # $at = 80A20000
    lwc1    $f18, %lo(var_80A27F58)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x4120                 # a1 = 41200000
    jal     func_80020F04              
    swc1    $f18, 0x0070(s0)           # 00000070
    lui     $at, 0x4270                # $at = 42700000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    mtc1    $at, $f12                  # $f12 = 60.00
    jal     func_80026D64              
    sb      t8, 0x0368(s0)             # 00000368
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    lw      t6, 0x0024(s0)             # 00000024
    lw      t5, 0x0028(s0)             # 00000028
    add.s   $f6, $f0, $f4              
    sw      t6, 0x037C(s0)             # 0000037C
    lw      t6, 0x002C(s0)             # 0000002C
    lui     t3, %hi(func_80A260E4)     # t3 = 80A20000
    trunc.w.s $f8, $f6                   
    lui     t7, %hi(func_80A26174)     # t7 = 80A20000
    addiu   t3, t3, %lo(func_80A260E4) # t3 = 80A260E4
    addiu   t7, t7, %lo(func_80A26174) # t7 = 80A26174
    mfc1    t0, $f8                    
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    sw      t3, 0x0364(s0)             # 00000364
    sll     t1, t0, 16                 
    sra     t2, t1, 16                 
    sw      t2, 0x0360(s0)             # 00000360
    sb      $zero, 0x036A(s0)          # 0000036A
    sb      $zero, 0x036B(s0)          # 0000036B
    sb      $zero, 0x0369(s0)          # 00000369
    sw      t7, 0x0344(s0)             # 00000344
    sb      $zero, 0x036C(s0)          # 0000036C
    sb      $zero, 0x036E(s0)          # 0000036E
    sb      $zero, 0x036D(s0)          # 0000036D
    sb      $zero, 0x0373(s0)          # 00000373
    sb      t8, 0x0372(s0)             # 00000372
    sw      $zero, 0x0394(s0)          # 00000394
    or      a0, s0, $zero              # a0 = 00000000
    sw      t5, 0x0380(s0)             # 00000380
    jal     func_80A25980              
    sw      t6, 0x0384(s0)             # 00000384
    jal     func_80A25B4C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     t9, %hi(func_80A26A84)     # t9 = 80A20000
    lui     $at, 0x437F                # $at = 437F0000
    addiu   t9, t9, %lo(func_80A26A84) # t9 = 80A26A84
    mtc1    $at, $f12                  # $f12 = 255.00
    sw      t9, 0x0130(s0)             # 00000130
    jal     func_80026D64              
    sb      $zero, 0x0398(s0)          # 00000398
    lwc1    $f2, 0x037C(s0)            # 0000037C
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f18                  # $f18 = 50.00
    lwc1    $f16, 0x0380(s0)           # 00000380
    swc1    $f2, 0x039C(s0)            # 0000039C
    swc1    $f2, 0x03A8(s0)            # 000003A8
    add.s   $f2, $f16, $f18            
    lw      t5, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    trunc.w.s $f10, $f0                  
    swc1    $f2, 0x03A0(s0)            # 000003A0
    swc1    $f2, 0x03AC(s0)            # 000003AC
    lwc1    $f2, 0x0384(s0)            # 00000384
    mfc1    t3, $f10                   
    and     t6, t5, $at                
    sw      t6, 0x0004(s0)             # 00000004
    sll     t4, t3, 12                 
    sh      t4, 0x039A(s0)             # 0000039A
    swc1    $f2, 0x03A4(s0)            # 000003A4
    swc1    $f2, 0x03B0(s0)            # 000003B0
lbl_80A25E6C:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80A25E80:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x07A8             # a1 = 000007A8
    jal     func_80066610              
    lw      a2, 0x0348(t6)             # 00000348
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A25EB4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lw      a0, 0x0034($sp)            
    lw      a2, 0x0024(s0)             # 00000024
    lw      a3, 0x002C(s0)             # 0000002C
    addiu   t7, $sp, 0x0028            # t7 = FFFFFFF8
    addiu   t8, $sp, 0x002C            # t8 = FFFFFFFC
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    jal     func_80034908              
    addiu   a1, a0, 0x07C0             # a1 = 000007C0
    beql    v0, $zero, lbl_80A25F28    
    lw      $ra, 0x0024($sp)           
    lbu     t9, 0x036A(s0)             # 0000036A
    lwc1    $f6, 0x0028(s0)            # 00000028
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      t9, 0x036B(s0)             # 0000036B
    lwc1    $f4, 0x0028($sp)           
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_80A25F24               
    sb      $zero, 0x036A(s0)          # 0000036A
    beq     $zero, $zero, lbl_80A25F24 
    sb      t0, 0x036A(s0)             # 0000036A
    sb      $zero, 0x036A(s0)          # 0000036A
lbl_80A25F24:
    lw      $ra, 0x0024($sp)           
lbl_80A25F28:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A25F38:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lbu     t6, 0x036B(s0)             # 0000036B
    lbu     t7, 0x036A(s0)             # 0000036A
    lui     $at, 0x4120                # $at = 41200000
    beql    t6, t7, lbl_80A25FD4       
    lw      $ra, 0x0024($sp)           
    lwc1    $f4, 0x0024(s0)            # 00000024
    mtc1    $at, $f8                   # $f8 = 10.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    swc1    $f4, 0x002C($sp)           
    lwc1    $f6, 0x0028(s0)            # 00000028
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lw      a0, 0x003C($sp)            
    sub.s   $f10, $f6, $f8             
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    swc1    $f10, 0x0030($sp)          
    lwc1    $f16, 0x002C(s0)           # 0000002C
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    jal     func_8001CF94              
    swc1    $f16, 0x0034($sp)          
    lbu     t0, 0x036A(s0)             # 0000036A
    addiu   a1, $zero, 0x28C5          # a1 = 000028C5
    or      a0, s0, $zero              # a0 = 00000000
    bne     t0, $zero, lbl_80A25FC8    
    nop
    jal     func_80022FD0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A25FD4 
    lw      $ra, 0x0024($sp)           
lbl_80A25FC8:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2817          # a1 = 00002817
    lw      $ra, 0x0024($sp)           
lbl_80A25FD4:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80A25FE4:
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f4, 0x0028(a0)            # 00000028
    lwc1    $f6, 0x0380(a0)            # 00000380
    sub.s   $f8, $f4, $f6              
    swc1    $f8, 0x0000(a1)            # 00000000
    lwc1    $f10, 0x0060(a0)           # 00000060
    c.lt.s  $f10, $f0                  
    nop
    bc1f    lbl_80A26038               
    nop
    lwc1    $f16, 0x0000(a1)           # 00000000
    c.le.s  $f16, $f0                  
    nop
    bc1f    lbl_80A26038               
    nop
    lwc1    $f18, 0x0380(a0)           # 00000380
    swc1    $f0, 0x0060(a0)            # 00000060
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra                        
    swc1    $f18, 0x0028(a0)           # 00000028
lbl_80A26038:
    jr      $ra                        
    nop


func_80A26040:
    lwc1    $f4, 0x0024(a0)            # 00000024
    lwc1    $f6, 0x0024(a1)            # 00000024
    lwc1    $f8, 0x002C(a0)            # 0000002C
    lwc1    $f10, 0x002C(a1)           # 0000002C
    sub.s   $f0, $f4, $f6              
    lui     $at, 0x4461                # $at = 44610000
    lwc1    $f16, 0x0028(a0)           # 00000028
    sub.s   $f2, $f8, $f10             
    mul.s   $f4, $f0, $f0              
    mtc1    $at, $f10                  # $f10 = 900.00
    lwc1    $f18, 0x0028(a1)           # 00000028
    mul.s   $f6, $f2, $f2              
    or      v0, $zero, $zero           # v0 = 00000000
    sub.s   $f12, $f16, $f18           
    add.s   $f8, $f4, $f6              
    c.le.s  $f8, $f10                  
    nop
    bc1f    lbl_80A26090               
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A26090:
    beq     v0, $zero, lbl_80A260B4    
    nop
    mtc1    $zero, $f16                # $f16 = 0.00
    or      v0, $zero, $zero           # v0 = 00000000
    c.le.s  $f16, $f12                 
    nop
    bc1f    lbl_80A260B4               
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A260B4:
    jr      $ra                        
    nop


func_80A260BC:
    lw      v0, 0x0360(a0)             # 00000360
    lui     t7, %hi(func_80A260E4)     # t7 = 80A20000
    addiu   t7, t7, %lo(func_80A260E4) # t7 = 80A260E4
    beq     v0, $zero, lbl_80A260D8    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    jr      $ra                        
    sw      t6, 0x0360(a0)             # 00000360
lbl_80A260D8:
    sw      t7, 0x0364(a0)             # 00000364
    jr      $ra                        
    nop


func_80A260E4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x0360(a0)             # 00000360
    beq     v0, $zero, lbl_80A26100    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80A26164 
    sw      t6, 0x0360(a0)             # 00000360
lbl_80A26100:
    lbu     t7, 0x0368(a0)             # 00000368
    lui     $at, 0x4270                # $at = 42700000
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    beq     t7, $zero, lbl_80A2615C    
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sb      $zero, 0x0368(a0)          # 00000368
    mtc1    $at, $f12                  # $f12 = 60.00
    jal     func_80026D64              
    sw      a0, 0x0018($sp)            
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    lw      a0, 0x0018($sp)            
    lui     t2, %hi(func_80A260BC)     # t2 = 80A20000
    add.s   $f6, $f0, $f4              
    addiu   t2, t2, %lo(func_80A260BC) # t2 = 80A260BC
    sw      t2, 0x0364(a0)             # 00000364
    trunc.w.s $f8, $f6                   
    mfc1    t9, $f8                    
    nop
    sll     t0, t9, 16                 
    sra     t1, t0, 16                 
    beq     $zero, $zero, lbl_80A26164 
    sw      t1, 0x0360(a0)             # 00000360
lbl_80A2615C:
    sb      t3, 0x0368(a0)             # 00000368
    sw      t4, 0x0360(a0)             # 00000360
lbl_80A26164:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A26174:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lw      t7, 0x0028($sp)            
    lui     t9, %hi(var_80A27F03)      # t9 = 80A20000
    lui     t6, %hi(var_80A27E30)      # t6 = 80A20000
    lh      t8, 0x001C(t7)             # 0000001C
    lbu     t6, %lo(var_80A27E30)(t6)  
    lui     a0, 0x0600                 # a0 = 06000000
    addu    t9, t9, t8                 
    lbu     t9, %lo(var_80A27F03)(t9)  
    bnel    t6, t9, lbl_80A26208       
    lw      $ra, 0x0024($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0x07BC             # a0 = 060007BC
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    mfc1    a3, $f0                    
    sw      t0, 0x0014($sp)            
    addiu   a1, a1, 0x07BC             # a1 = 060007BC
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    jal     func_80A25B74              
    lw      a0, 0x0028($sp)            
    lw      t2, 0x0028($sp)            
    lui     t1, %hi(func_80A26214)     # t1 = 80A20000
    addiu   t1, t1, %lo(func_80A26214) # t1 = 80A26214
    sw      t1, 0x0344(t2)             # 00000344
    lw      $ra, 0x0024($sp)           
lbl_80A26208:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A26214:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sdc1    $f20, 0x0018($sp)          
    sw      a1, 0x004C($sp)            
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    lwc1    $f0, 0x0154(s0)            # 00000154
    lui     v0, %hi(var_80A27E30)      # v0 = 80A20000
    addiu   v0, v0, %lo(var_80A27E30)  # v0 = 80A27E30
    c.eq.s  $f4, $f0                   
    nop
    bc1fl   lbl_80A2626C               
    lui     $at, 0x4040                # $at = 40400000
    lbu     t6, 0x0000(v0)             # 80A27E30
    mtc1    $zero, $f20                # $f20 = 0.00
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x0000(v0)             # 80A27E30
    beq     $zero, $zero, lbl_80A262A0 
    swc1    $f20, 0x0158(s0)           # 00000158
    lui     $at, 0x4040                # $at = 40400000
lbl_80A2626C:
    mtc1    $at, $f6                   # $f6 = 3.00
    nop
    c.eq.s  $f6, $f0                   
    nop
    bc1f    lbl_80A262A0               
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f8                   # $f8 = -10.00
    lui     $at, 0x423C                # $at = 423C0000
    mtc1    $zero, $f20                # $f20 = 0.00
    mtc1    $at, $f10                  # $f10 = 47.00
    swc1    $f8, 0x006C(s0)            # 0000006C
    swc1    $f20, 0x0068(s0)           # 00000068
    swc1    $f10, 0x0060(s0)           # 00000060
lbl_80A262A0:
    mtc1    $zero, $f20                # $f20 = 0.00
    ori     $at, $zero, 0x8000         # $at = 00008000
    or      a1, $zero, $zero           # a1 = 00000000
    swc1    $f20, 0x0040($sp)          
    swc1    $f20, 0x003C($sp)          
    lwc1    $f16, 0x0388(s0)           # 00000388
    swc1    $f16, 0x0044($sp)          
    lh      t8, 0x0032(s0)             # 00000032
    addu    t9, t8, $at                
    mtc1    t9, $f18                   # $f18 = 0.00
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f6                   # $f6 = 32768.00
    cvt.s.w $f4, $f18                  
    lui     $at, %hi(var_80A27F5C)     # $at = 80A20000
    lwc1    $f10, %lo(var_80A27F5C)($at) 
    div.s   $f8, $f4, $f6              
    mul.s   $f12, $f8, $f10            
    jal     func_800AAB94              
    nop
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFF4
    jal     func_800AB958              
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFE8
    lwc1    $f16, 0x037C(s0)           # 0000037C
    lwc1    $f18, 0x0030($sp)          
    lui     $at, 0x4040                # $at = 40400000
    lwc1    $f6, 0x0384(s0)            # 00000384
    add.s   $f4, $f16, $f18            
    mtc1    $at, $f18                  # $f18 = 3.00
    lwc1    $f16, 0x0154(s0)           # 00000154
    swc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0038($sp)           
    c.le.s  $f18, $f16                 
    add.s   $f10, $f6, $f8             
    bc1f    lbl_80A26340               
    swc1    $f10, 0x002C(s0)           # 0000002C
    mfc1    a1, $f20                   
    addiu   a0, s0, 0x0388             # a0 = 00000388
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x4120                 # a3 = 41200000
lbl_80A26340:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A25FE4              
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFEC
    beq     v0, $zero, lbl_80A26364    
    lui     t0, %hi(func_80A263B4)     # t0 = 80A20000
    addiu   t0, t0, %lo(func_80A263B4) # t0 = 80A263B4
    swc1    $f20, 0x006C(s0)           # 0000006C
    sw      t0, 0x0344(s0)             # 00000344
    swc1    $f20, 0x038C(s0)           # 0000038C
lbl_80A26364:
    lwc1    $f4, 0x0060(s0)            # 00000060
    c.le.s  $f4, $f20                  
    nop
    bc1f    lbl_80A263A0               
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f8                   # $f8 = 40.00
    lwc1    $f6, 0x0034($sp)           
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f6, $f8                   
    nop
    bc1fl   lbl_80A263A4               
    lw      $ra, 0x0024($sp)           
    mtc1    $at, $f10                  # $f10 = 1.00
    nop
    swc1    $f10, 0x0158(s0)           # 00000158
lbl_80A263A0:
    lw      $ra, 0x0024($sp)           
lbl_80A263A4:
    ldc1    $f20, 0x0018($sp)          
    lw      s0, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80A263B4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sw      t6, 0x0010($sp)            
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064508              
    addiu   a3, $zero, 0x2710          # a3 = 00002710
    lh      t7, 0x00B6(s0)             # 000000B6
    bne     v0, $zero, lbl_80A26460    
    sh      t7, 0x0032(s0)             # 00000032
    lwc1    $f4, 0x014C(s0)            # 0000014C
    lwc1    $f6, 0x0154(s0)            # 00000154
    lui     v0, %hi(var_80A27E30)      # v0 = 80A20000
    lui     t0, %hi(func_80A26474)     # t0 = 80A20000
    c.eq.s  $f4, $f6                   
    addiu   v0, v0, %lo(var_80A27E30)  # v0 = 80A27E30
    addiu   t0, t0, %lo(func_80A26474) # t0 = 80A26474
    bc1fl   lbl_80A26464               
    lw      $ra, 0x002C($sp)           
    lbu     t8, 0x0000(v0)             # 80A27E30
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x1534             # a0 = 06001534
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x0000(v0)             # 80A27E30
    jal     func_8008A194              
    sw      t0, 0x0344(s0)             # 00000344
    mtc1    v0, $f8                    # $f8 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f10, $f8                  
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x1534             # a1 = 06001534
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f10, 0x0010($sp)          
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
lbl_80A26460:
    lw      $ra, 0x002C($sp)           
lbl_80A26464:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A26474:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    addiu   v0, $zero, 0x000C          # v0 = 0000000C
    lui     t6, %hi(var_80A27E30)      # t6 = 80A20000
    lbu     t6, %lo(var_80A27E30)(t6)  
    bnel    v0, t6, lbl_80A26520       
    lbu     t3, 0x0369(s0)             # 00000369
    lh      t7, 0x001C(s0)             # 0000001C
    lui     $at, %hi(var_80A27EAC)     # $at = 80A20000
    lui     a0, 0x0600                 # a0 = 06000000
    multu   t7, v0                     
    addiu   a0, a0, 0x07BC             # a0 = 060007BC
    mflo    t8                         
    addu    $at, $at, t8               
    lwc1    $f4, %lo(var_80A27EAC)($at) 
    lui     $at, %hi(var_80A27F60)     # $at = 80A20000
    lwc1    $f6, %lo(var_80A27F60)($at) 
    mul.s   $f8, $f4, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    t0, $f10                   
    jal     func_8008A194              
    sh      t0, 0x0032(s0)             # 00000032
    mtc1    v0, $f16                   # $f16 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f18, $f16                 
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    mfc1    a3, $f0                    
    sw      t1, 0x0014($sp)            
    addiu   a1, a1, 0x07BC             # a1 = 060007BC
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f18, 0x0010($sp)          
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lui     t2, %hi(func_80A266C8)     # t2 = 80A20000
    addiu   t2, t2, %lo(func_80A266C8) # t2 = 80A266C8
    beq     $zero, $zero, lbl_80A26574 
    sw      t2, 0x0344(s0)             # 00000344
    lbu     t3, 0x0369(s0)             # 00000369
lbl_80A26520:
    lui     a0, 0x0600                 # a0 = 06000000
    beql    t3, $zero, lbl_80A26578    
    lw      $ra, 0x002C($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0x07BC             # a0 = 060007BC
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f6, $f4                   
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    mfc1    a3, $f0                    
    sw      t4, 0x0014($sp)            
    addiu   a1, a1, 0x07BC             # a1 = 060007BC
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lui     t5, %hi(func_80A26588)     # t5 = 80A20000
    addiu   t5, t5, %lo(func_80A26588) # t5 = 80A26588
    sw      t5, 0x0344(s0)             # 00000344
lbl_80A26574:
    lw      $ra, 0x002C($sp)           
lbl_80A26578:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A26588:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    lwc1    $f0, 0x0154(s0)            # 00000154
    lui     $at, 0x4040                # $at = 40400000
    c.eq.s  $f4, $f0                   
    nop
    bc1fl   lbl_80A265CC               
    mtc1    $at, $f8                   # $f8 = 3.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    beq     $zero, $zero, lbl_80A2660C 
    swc1    $f6, 0x0158(s0)            # 00000158
    mtc1    $at, $f8                   # $f8 = 3.00
lbl_80A265CC:
    lui     $at, 0xC120                # $at = C1200000
    c.eq.s  $f8, $f0                   
    nop
    bc1fl   lbl_80A26610               
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $at, $f10                  # $f10 = -10.00
    lbu     t6, 0x0373(s0)             # 00000373
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f16                  # $f16 = 25.00
    swc1    $f10, 0x006C(s0)           # 0000006C
    beq     t6, $zero, lbl_80A2660C    
    swc1    $f16, 0x0060(s0)           # 00000060
    sb      $zero, 0x0373(s0)          # 00000373
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3826          # a1 = 00003826
lbl_80A2660C:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A26610:
    jal     func_80A25FE4              
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFFC
    mtc1    $zero, $f0                 # $f0 = 0.00
    beq     v0, $zero, lbl_80A26674    
    lui     a0, 0x0600                 # a0 = 06000000
    sb      $zero, 0x0369(s0)          # 00000369
    swc1    $f0, 0x006C(s0)            # 0000006C
    jal     func_8008A194              
    addiu   a0, a0, 0x11C0             # a0 = 060011C0
    mtc1    v0, $f18                   # $f18 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f4, $f18                  
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x11C0             # a1 = 060011C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f4, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lui     t7, %hi(func_80A26474)     # t7 = 80A20000
    addiu   t7, t7, %lo(func_80A26474) # t7 = 80A26474
    beq     $zero, $zero, lbl_80A266B4 
    sw      t7, 0x0344(s0)             # 00000344
lbl_80A26674:
    lwc1    $f6, 0x0060(s0)            # 00000060
    lwc1    $f8, 0x003C($sp)           
    lui     $at, 0x4220                # $at = 42200000
    c.le.s  $f6, $f0                   
    nop
    bc1fl   lbl_80A266B8               
    lw      $ra, 0x002C($sp)           
    mtc1    $at, $f10                  # $f10 = 40.00
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_80A266B8               
    lw      $ra, 0x002C($sp)           
    mtc1    $at, $f16                  # $f16 = 1.00
    nop
    swc1    $f16, 0x0158(s0)           # 00000158
lbl_80A266B4:
    lw      $ra, 0x002C($sp)           
lbl_80A266B8:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80A266C8:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lh      t6, 0x001C(s0)             # 0000001C
    lui     $at, %hi(var_80A27EB0)     # $at = 80A20000
    lwc1    $f6, 0x0380(s0)            # 00000380
    sll     t7, t6,  2                 
    subu    t7, t7, t6                 
    sll     t7, t7,  2                 
    addu    $at, $at, t7               
    lwc1    $f4, %lo(var_80A27EB0)($at) 
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    add.s   $f8, $f4, $f6              
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x2710          # a3 = 00002710
    swc1    $f8, 0x0034($sp)           
    lh      a1, 0x0032(s0)             # 00000032
    jal     func_80064508              
    sw      t8, 0x0010($sp)            
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f2                   # $f2 = 6.00
    lwc1    $f0, 0x0154(s0)            # 00000154
    lui     $at, 0x4040                # $at = 40400000
    c.eq.s  $f2, $f0                   
    nop
    bc1fl   lbl_80A26750               
    mtc1    $at, $f10                  # $f10 = 3.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    beq     $zero, $zero, lbl_80A2677C 
    swc1    $f0, 0x0158(s0)            # 00000158
    mtc1    $at, $f10                  # $f10 = 3.00
lbl_80A26750:
    lui     $at, 0xC120                # $at = C1200000
    c.eq.s  $f10, $f0                  
    nop
    bc1fl   lbl_80A26780               
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    $at, $f16                  # $f16 = -10.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f18                  # $f18 = 25.00
    swc1    $f2, 0x0068(s0)            # 00000068
    swc1    $f16, 0x006C(s0)           # 0000006C
    swc1    $f18, 0x0060(s0)           # 00000060
lbl_80A2677C:
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80A26780:
    lwc1    $f4, 0x0060(s0)            # 00000060
    lwc1    $f8, 0x0034($sp)           
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80A26810               
    lw      $ra, 0x002C($sp)           
    lwc1    $f6, 0x0028(s0)            # 00000028
    lui     a0, 0x0600                 # a0 = 06000000
    c.lt.s  $f6, $f8                   
    nop
    bc1fl   lbl_80A26810               
    lw      $ra, 0x002C($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0x1534             # a0 = 06001534
    mtc1    v0, $f10                   # $f10 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f16, $f10                 
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x1534             # a1 = 06001534
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f16, 0x0010($sp)          
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lui     t9, %hi(func_80A26174)     # t9 = 80A20000
    addiu   t9, t9, %lo(func_80A26174) # t9 = 80A26174
    sw      t9, 0x0344(s0)             # 00000344
    jal     func_80A25B4C              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      t0, 0x036C(s0)             # 0000036C
    jal     func_80A25980              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
lbl_80A26810:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80A26820:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lbu     v0, 0x036F(s0)             # 0000036F
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a0, s0, 0x0390             # a0 = 00000390
    beq     v0, $zero, lbl_80A26858    
    lui     a1, %hi(var_80A27F0C)      # a1 = 80A20000
    beq     v0, $at, lbl_80A268C0      
    addiu   a0, s0, 0x0390             # a0 = 00000390
    beq     $zero, $zero, lbl_80A26918 
    lw      $ra, 0x001C($sp)           
lbl_80A26858:
    lbu     t6, 0x036E(s0)             # 0000036E
    lui     a2, 0x4000                 # a2 = 40000000
    lui     a3, 0x41C8                 # a3 = 41C80000
    sll     t7, t6,  2                 
    addu    a1, a1, t7                 
    jal     func_80064280              
    lw      a1, %lo(var_80A27F0C)(a1)  
    lbu     v0, 0x036E(s0)             # 0000036E
    lui     $at, %hi(var_80A27F0C)     # $at = 80A20000
    lwc1    $f4, 0x0390(s0)            # 00000390
    sll     t8, v0,  2                 
    addu    $at, $at, t8               
    lwc1    $f0, %lo(var_80A27F0C)($at) 
    slti    $at, v0, 0x0003            
    c.le.s  $f0, $f4                   
    nop
    bc1fl   lbl_80A26918               
    lw      $ra, 0x001C($sp)           
    beq     $at, $zero, lbl_80A268B4   
    swc1    $f0, 0x0390(s0)            # 00000390
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    beq     $zero, $zero, lbl_80A26914 
    sb      t9, 0x036F(s0)             # 0000036F
lbl_80A268B4:
    sb      $zero, 0x0369(s0)          # 00000369
    beq     $zero, $zero, lbl_80A26914 
    sb      $zero, 0x036D(s0)          # 0000036D
lbl_80A268C0:
    lui     a1, 0x4316                 # a1 = 43160000
    lui     a2, 0x4000                 # a2 = 40000000
    jal     func_80064280              
    lui     a3, 0x41C8                 # a3 = 41C80000
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f0                   # $f0 = 150.00
    lwc1    $f6, 0x0390(s0)            # 00000390
    c.le.s  $f6, $f0                   
    nop
    bc1fl   lbl_80A26918               
    lw      $ra, 0x001C($sp)           
    lbu     t0, 0x036E(s0)             # 0000036E
    swc1    $f0, 0x0390(s0)            # 00000390
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    addiu   t1, t0, 0x0001             # t1 = 00000001
    andi    t2, t1, 0x00FF             # t2 = 00000001
    slti    $at, t2, 0x0004            
    bne     $at, $zero, lbl_80A26910   
    sb      t1, 0x036E(s0)             # 0000036E
    sb      t3, 0x036E(s0)             # 0000036E
lbl_80A26910:
    sb      $zero, 0x036F(s0)          # 0000036F
lbl_80A26914:
    lw      $ra, 0x001C($sp)           
lbl_80A26918:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A26928:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0044($sp)            
    lh      t6, 0x00B6(s0)             # 000000B6
    or      a3, $zero, $zero           # a3 = 00000000
    sh      t6, 0x003E($sp)            
    lh      t7, 0x039A(s0)             # 0000039A
    lw      a2, 0x002C(s0)             # 0000002C
    lwc1    $f14, 0x0028(s0)           # 00000028
    addiu   t8, t7, 0x1000             # t8 = 00001000
    sh      t8, 0x039A(s0)             # 0000039A
    jal     func_800AA7F4              
    lwc1    $f12, 0x0024(s0)           # 00000024
    lh      a0, 0x0030(s0)             # 00000030
    lh      a1, 0x0032(s0)             # 00000032
    lh      a2, 0x0034(s0)             # 00000034
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f4                   # $f4 = 25.00
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFEC
    addiu   a1, $sp, 0x0020            # a1 = FFFFFFE0
    swc1    $f0, 0x0030($sp)           
    swc1    $f0, 0x002C($sp)           
    jal     func_800AB958              
    swc1    $f4, 0x0034($sp)           
    lh      a0, 0x039A(s0)             # 0000039A
    sll     a0, a0,  1                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lh      a0, 0x003E($sp)            
    mul.s   $f8, $f0, $f6              
    jal     func_800636C4              # sins?
    swc1    $f8, 0x0038($sp)           
    lwc1    $f10, 0x0038($sp)          
    lwc1    $f18, 0x0020($sp)          
    lh      a0, 0x039A(s0)             # 0000039A
    mul.s   $f16, $f0, $f10            
    add.s   $f4, $f16, $f18            
    jal     func_80063684              # coss?
    swc1    $f4, 0x039C(s0)            # 0000039C
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    lwc1    $f6, 0x0380(s0)            # 00000380
    add.s   $f16, $f0, $f0             
    add.s   $f10, $f6, $f8             
    add.s   $f18, $f16, $f10           
    swc1    $f18, 0x03A0(s0)           # 000003A0
    jal     func_80063684              # coss?
    lh      a0, 0x003E($sp)            
    lwc1    $f4, 0x0038($sp)           
    lwc1    $f8, 0x0028($sp)           
    lwc1    $f12, 0x039C(s0)           # 0000039C
    mul.s   $f6, $f0, $f4              
    lwc1    $f14, 0x03A0(s0)           # 000003A0
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f16, $f6, $f8             
    swc1    $f16, 0x03A4(s0)           # 000003A4
    jal     func_800AA7F4              
    lw      a2, 0x03A4(s0)             # 000003A4
    lh      a0, 0x0030(s0)             # 00000030
    lh      a1, 0x0032(s0)             # 00000032
    lh      a2, 0x0034(s0)             # 00000034
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, 0xC170                # $at = C1700000
    mtc1    $at, $f18                  # $f18 = -15.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $zero, $f10                # $f10 = 0.00
    mtc1    $at, $f4                   # $f4 = 20.00
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFEC
    addiu   a1, s0, 0x03A8             # a1 = 000003A8
    swc1    $f18, 0x0030($sp)          
    swc1    $f10, 0x002C($sp)          
    jal     func_800AB958              
    swc1    $f4, 0x0034($sp)           
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80A26A84:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lw      t6, 0x035C(s0)             # 0000035C
    lui     $at, %hi(var_80A27F64)     # $at = 80A20000
    lwc1    $f4, 0x0390(s0)            # 00000390
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sw      t7, 0x035C(s0)             # 0000035C
    lwc1    $f6, %lo(var_80A27F64)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f8, $f4, $f6              
    mfc1    a1, $f8                    
    jal     func_80020F88              
    nop
    lbu     t8, 0x036D(s0)             # 0000036D
    or      a0, s0, $zero              # a0 = 00000000
    beq     t8, $zero, lbl_80A26AEC    
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A26820              
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80A26B58 
    lw      $ra, 0x001C($sp)           
lbl_80A26AEC:
    jal     func_80020F04              
    lui     a1, 0x4120                 # a1 = 41200000
    lw      t9, 0x0364(s0)             # 00000364
    or      a0, s0, $zero              # a0 = 00000000
    jalr    $ra, t9                    
    nop
    lw      t9, 0x0344(s0)             # 00000344
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A25EB4              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A25F38              
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    addiu   a0, s0, 0x02A0             # a0 = 000002A0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A26928              
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80A26B58:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80A26B68:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sll     t6, a1,  2                 
    lui     v0, %hi(var_80A27E34)      # v0 = 80A20000
    addu    v0, v0, t6                 
    lw      v0, %lo(var_80A27E34)(v0)  
    beql    v0, $zero, lbl_80A26BF8    
    or      v0, $zero, $zero           # v0 = 00000000
    lbu     t7, 0x0369(v0)             # 00000369
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    bnel    t7, $zero, lbl_80A26BF8    
    or      v0, $zero, $zero           # v0 = 00000000
    lbu     t8, 0x036E(v0)             # 0000036E
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     v1, %hi(var_80A27F1C)      # v1 = 80A20000
    bne     t8, $at, lbl_80A26BBC      
    addu    v1, v1, a1                 
    lui     v1, %hi(var_80A27F24)      # v1 = 80A20000
    addu    v1, v1, a1                 
    beq     $zero, $zero, lbl_80A26BC0 
    lbu     v1, %lo(var_80A27F24)(v1)  
lbl_80A26BBC:
    lbu     v1, %lo(var_80A27F1C)(v1)  
lbl_80A26BC0:
    lbu     t9, 0x0372(a0)             # 00000372
    addiu   $at, $zero, 0x0006         # $at = 00000006
    addiu   a0, v0, 0x00E4             # a0 = 000000E4
    bne     t9, $at, lbl_80A26BDC      
    addiu   a1, $zero, 0x28B1          # a1 = 000028B1
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      t0, 0x0373(v0)             # 00000373
lbl_80A26BDC:
    sll     a2, v1, 24                 
    sb      t1, 0x0369(v0)             # 00000369
    jal     func_800C5934              
    sra     a2, a2, 24                 
    beq     $zero, $zero, lbl_80A26BF8 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A26BF8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A26C08:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0020($sp)            
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s0, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lw      s0, 0x1C44(s1)             # 00001C44
    lui     t8, 0x0001                 # t8 = 00010000
    addu    t8, t8, s1                 
    lw      t6, 0x0670(s0)             # 00000670
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    or      a1, a3, $zero              # a1 = 00000000
    sll     t7, t6,  6                 
    bgez    t7, lbl_80A26CC0           
    or      a0, s0, $zero              # a0 = 00000000
    lhu     t8, 0x04C6(t8)             # 000104C6
    addiu   $at, $zero, 0x0004         # $at = 00000004
    or      a0, s1, $zero              # a0 = 00000000
    bne     t8, $at, lbl_80A26C64      
    addiu   a1, $zero, 0x100E          # a1 = 0000100E
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1               
    sh      $zero, 0x04C6($at)         # 000104C6
lbl_80A26C64:
    sw      $zero, 0x0010($sp)         
    jal     func_8006B6FC              
    sw      a3, 0x0028($sp)            
    lw      a3, 0x0028($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1               
    addiu   t9, $zero, 0x0037          # t9 = 00000037
    sb      t9, 0x03DC($at)            # 000103DC
    lwc1    $f4, 0x0024(a3)            # 00000024
    lui     t0, %hi(func_80A26CE8)     # t0 = 80A20000
    addiu   t0, t0, %lo(func_80A26CE8) # t0 = 80A26CE8
    swc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x0028(a3)            # 00000028
    swc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f8, 0x002C(a3)            # 0000002C
    swc1    $f8, 0x002C(s0)            # 0000002C
    lh      v1, 0x0032(a3)             # 00000032
    sh      v1, 0x00B6(s0)             # 000000B6
    sh      v1, 0x0032(s0)             # 00000032
    sh      v1, 0x082C(s0)             # 0000082C
    sw      $zero, 0x0378(a3)          # 00000378
    beq     $zero, $zero, lbl_80A26CD4 
    sw      t0, 0x0344(a3)             # 00000344
lbl_80A26CC0:
    jal     func_80A26040              
    sw      a3, 0x0028($sp)            
    beq     v0, $zero, lbl_80A26CD4    
    lw      a3, 0x0028($sp)            
    sw      a3, 0x0698(s0)             # 00000698
lbl_80A26CD4:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80A26CE8:
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a1                 
    lbu     v0, 0x03DC(v0)             # 000103DC
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    addiu   t6, $zero, 0x0037          # t6 = 00000037
    bne     v0, $at, lbl_80A26D28      
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1               
    sb      t6, 0x03DC($at)            # 000103DC
    lui     $at, %hi(var_80A27E30)     # $at = 80A20000
    lui     t8, %hi(func_80A26D50)     # t8 = 80A20000
    sb      t7, %lo(var_80A27E30)($at) 
    addiu   t8, t8, %lo(func_80A26D50) # t8 = 80A26D50
    jr      $ra                        
    sw      t8, 0x0344(a0)             # 00000344
lbl_80A26D28:
    addiu   $at, $zero, 0x0037         # $at = 00000037
    bne     v0, $at, lbl_80A26D48      
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     $at, %hi(var_80A27E30)     # $at = 80A20000
    lui     t0, %hi(func_80A26D50)     # t0 = 80A20000
    sb      t9, %lo(var_80A27E30)($at) 
    addiu   t0, t0, %lo(func_80A26D50) # t0 = 80A26D50
    sw      t0, 0x0344(a0)             # 00000344
lbl_80A26D48:
    jr      $ra                        
    nop


func_80A26D50:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lui     t6, %hi(var_80A27E30)      # t6 = 80A20000
    lbu     t6, %lo(var_80A27E30)(t6)  
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    lui     v0, 0x8012                 # v0 = 80120000
    bnel    t6, $at, lbl_80A26DE8      
    lw      $ra, 0x0014($sp)           
    lhu     v0, -0x4B42(v0)            # 8011B4BE
    lui     t5, %hi(func_80A26DF4)     # t5 = 80A20000
    addiu   t5, t5, %lo(func_80A26DF4) # t5 = 80A26DF4
    andi    t7, v0, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_80A26DDC    
    andi    t8, v0, 0x0004             # t8 = 00000000
    beq     t8, $zero, lbl_80A26DDC    
    andi    t9, v0, 0x0010             # t9 = 00000000
    beq     t9, $zero, lbl_80A26DDC    
    andi    t0, v0, 0x0008             # t0 = 00000000
    beq     t0, $zero, lbl_80A26DDC    
    andi    t1, v0, 0x0020             # t1 = 00000000
    beq     t1, $zero, lbl_80A26DDC    
    andi    t2, v0, 0x0040             # t2 = 00000000
    beq     t2, $zero, lbl_80A26DDC    
    lui     t3, %hi(func_80A27148)     # t3 = 80A20000
    addiu   t3, t3, %lo(func_80A27148) # t3 = 80A27148
    addiu   t4, $zero, 0x0006          # t4 = 00000006
    sw      t3, 0x0344(a2)             # 00000344
    sb      t4, 0x0372(a2)             # 00000372
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_800DCE14              
    addiu   a1, $zero, 0x40AB          # a1 = 000040AB
    beq     $zero, $zero, lbl_80A26DE8 
    lw      $ra, 0x0014($sp)           
lbl_80A26DDC:
    sb      $zero, 0x0372(a2)          # 00000372
    sw      t5, 0x0344(a2)             # 00000344
    lw      $ra, 0x0014($sp)           
lbl_80A26DE8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A26DF4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lui     v0, %hi(var_80A27E30)      # v0 = 80A20000
    lui     a1, %hi(var_80A27E44)      # a1 = 80A20000
    lui     a0, %hi(func_80A26474)     # a0 = 80A20000
    addiu   a0, a0, %lo(func_80A26474) # a0 = 80A26474
    addiu   a1, a1, %lo(var_80A27E44)  # a1 = 80A27E44
    addiu   v0, v0, %lo(var_80A27E30)  # v0 = 80A27E30
    lw      v1, 0x0004(v0)             # 80A27E34
lbl_80A26E20:
    addiu   v0, v0, 0x0004             # v0 = 80A27E34
    beql    v1, $zero, lbl_80A26E60    
    lw      $ra, 0x0014($sp)           
    lw      t6, 0x0344(v1)             # 00000344
    bnel    a0, t6, lbl_80A26E60       
    lw      $ra, 0x0014($sp)           
    bnel    v0, a1, lbl_80A26E20       
    lw      v1, 0x0004(v0)             # 80A27E38
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800DD400              
    addiu   a1, $zero, 0x0030          # a1 = 00000030
    lw      t8, 0x0018($sp)            
    lui     t7, %hi(func_80A26E6C)     # t7 = 80A20000
    addiu   t7, t7, %lo(func_80A26E6C) # t7 = 80A26E6C
    sw      t7, 0x0344(t8)             # 00000344
    lw      $ra, 0x0014($sp)           
lbl_80A26E60:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A26E6C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    lui     $at, 0x0001                # $at = 00010000
    sb      t6, 0x0372(s0)             # 00000372
    addu    v0, a1, $at                
    lhu     t7, 0x04C6(v0)             # 000004C6
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sltiu   $at, t8, 0x000A            
    beq     $at, $zero, lbl_80A26F88   
    sll     t8, t8,  2                 
    lui     $at, %hi(var_80A27F68)     # $at = 80A20000
    addu    $at, $at, t8               
    lw      t8, %lo(var_80A27F68)($at) 
    jr      t8                         
    nop
var_80A26EB4:
    beq     $zero, $zero, lbl_80A26F88 
    sb      $zero, 0x0372(s0)          # 00000372
var_80A26EBC:
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    beq     $zero, $zero, lbl_80A26F88 
    sb      t9, 0x0372(s0)             # 00000372
var_80A26EC8:
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    beq     $zero, $zero, lbl_80A26F88 
    sb      t0, 0x0372(s0)             # 00000372
var_80A26ED4:
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    beq     $zero, $zero, lbl_80A26F88 
    sb      t1, 0x0372(s0)             # 00000372
var_80A26EE0:
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    beq     $zero, $zero, lbl_80A26F88 
    sb      t2, 0x0372(s0)             # 00000372
var_80A26EEC:
    addiu   t3, $zero, 0x0005          # t3 = 00000005
    beq     $zero, $zero, lbl_80A26F88 
    sb      t3, 0x0372(s0)             # 00000372
var_80A26EF8:
    jal     func_80A27494              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A26F8C 
    lbu     t5, 0x0372(s0)             # 00000372
var_80A26F08:
    lbu     t4, 0x04E8(v0)             # 000004E8
    sltiu   $at, t4, 0x0005            
    beq     $at, $zero, lbl_80A26F88   
    sll     t4, t4,  2                 
    lui     $at, %hi(var_80A27F90)     # $at = 80A20000
    addu    $at, $at, t4               
    lw      t4, %lo(var_80A27F90)($at) 
    jr      t4                         
    nop
var_80A26F2C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A26B68              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     $zero, $zero, lbl_80A26F8C 
    lbu     t5, 0x0372(s0)             # 00000372
var_80A26F40:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A26B68              
    or      a1, $zero, $zero           # a1 = 00000000
    beq     $zero, $zero, lbl_80A26F8C 
    lbu     t5, 0x0372(s0)             # 00000372
var_80A26F54:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A26B68              
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    beq     $zero, $zero, lbl_80A26F8C 
    lbu     t5, 0x0372(s0)             # 00000372
var_80A26F68:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A26B68              
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    beq     $zero, $zero, lbl_80A26F8C 
    lbu     t5, 0x0372(s0)             # 00000372
var_80A26F7C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A26B68              
    addiu   a1, $zero, 0x0004          # a1 = 00000004
lbl_80A26F88:
    lbu     t5, 0x0372(s0)             # 00000372
lbl_80A26F8C:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    lui     t6, %hi(func_80A26FB8)     # t6 = 80A20000
    beq     t5, $at, lbl_80A26FA4      
    addiu   t6, t6, %lo(func_80A26FB8) # t6 = 80A26FB8
    sw      $zero, 0x035C(s0)          # 0000035C
    sw      t6, 0x0344(s0)             # 00000344
lbl_80A26FA4:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A26FB8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lw      v0, 0x035C(a3)             # 0000035C
    slti    $at, v0, 0x0030            
    beq     $at, $zero, lbl_80A26FFC   
    andi    t6, v0, 0x0003             # t6 = 00000000
    bne     t6, $zero, lbl_80A270E0    
    or      a0, a3, $zero              # a0 = 00000000
    sra     t7, v0,  2                 
    andi    t8, t7, 0x0007             # t8 = 00000000
    lui     a1, %hi(var_80A27F2C)      # a1 = 80A20000
    addu    a1, a1, t8                 
    jal     func_80A26B68              
    lbu     a1, %lo(var_80A27F2C)(a1)  
    beq     $zero, $zero, lbl_80A270E4 
    lw      $ra, 0x0014($sp)           
lbl_80A26FFC:
    lbu     v0, 0x0372(a3)             # 00000372
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lui     t1, %hi(var_80A27E48)      # t1 = 80A20000
    bne     v0, $at, lbl_80A2702C      
    sll     t0, v0,  1                 
    addiu   t9, $zero, 0x40AA          # t9 = 000040AA
    sh      t9, 0x010E(a3)             # 0000010E
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80A27694              
    or      a2, $zero, $zero           # a2 = 00000000
    beq     $zero, $zero, lbl_80A270E4 
    lw      $ra, 0x0014($sp)           
lbl_80A2702C:
    addu    t1, t1, t0                 
    lui     t2, 0x8012                 # t2 = 80120000
    lhu     t2, -0x4B42(t2)            # 8011B4BE
    lhu     t1, %lo(var_80A27E48)(t1)  
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    and     t3, t1, t2                 
    bne     t3, $zero, lbl_80A270D8    
    addiu   t1, $zero, 0x40A9          # t1 = 000040A9
    sll     t4, v0,  2                 
    lui     t5, %hi(var_80A27E60)      # t5 = 80A20000
    addu    t5, t5, t4                 
    lw      t5, %lo(var_80A27E60)(t5)  
    lui     a2, %hi(var_80A27E34)      # a2 = 80A20000
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    sll     t6, t5,  2                 
    addu    a2, a2, t6                 
    lw      a2, %lo(var_80A27E34)(a2)  
    sw      a3, 0x0020($sp)            
    jal     func_800646F0              
    sw      a2, 0x001C($sp)            
    lw      a2, 0x001C($sp)            
    lui     t7, %hi(func_80A26474)     # t7 = 80A20000
    addiu   t7, t7, %lo(func_80A26474) # t7 = 80A26474
    lw      t8, 0x0344(a2)             # 00000344
    lw      a3, 0x0020($sp)            
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    bne     t7, t8, lbl_80A270CC       
    addiu   t0, $zero, 0x0030          # t0 = 00000030
    sb      v0, 0x0369(a2)             # 00000369
    sb      v0, 0x036D(a2)             # 0000036D
    sw      a3, 0x0020($sp)            
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x28CC          # a1 = 000028CC
    lw      a3, 0x0020($sp)            
    lui     t9, %hi(func_80A270F0)     # t9 = 80A20000
    addiu   t9, t9, %lo(func_80A270F0) # t9 = 80A270F0
    beq     $zero, $zero, lbl_80A270E0 
    sw      t9, 0x0344(a3)             # 00000344
lbl_80A270CC:
    sw      t0, 0x035C(a3)             # 0000035C
    beq     $zero, $zero, lbl_80A270E4 
    lw      $ra, 0x0014($sp)           
lbl_80A270D8:
    jal     func_80A27694              
    sh      t1, 0x010E(a3)             # 0000010E
lbl_80A270E0:
    lw      $ra, 0x0014($sp)           
lbl_80A270E4:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A270F0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lbu     t6, 0x0372(a0)             # 00000372
    lui     t8, %hi(var_80A27E60)      # t8 = 80A20000
    lui     v0, %hi(var_80A27E34)      # v0 = 80A20000
    sll     t7, t6,  2                 
    addu    t8, t8, t7                 
    lw      t8, %lo(var_80A27E60)(t8)  
    addiu   t1, $zero, 0x40A9          # t1 = 000040A9
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sll     t9, t8,  2                 
    addu    v0, v0, t9                 
    lw      v0, %lo(var_80A27E34)(v0)  
    lbu     t0, 0x036D(v0)             # 80A2036D
    bnel    t0, $zero, lbl_80A2713C    
    lw      $ra, 0x0014($sp)           
    jal     func_80A27694              
    sh      t1, 0x010E(a0)             # 0000010E
    lw      $ra, 0x0014($sp)           
lbl_80A2713C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A27148:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80A271A4      
    lw      $ra, 0x0014($sp)           
    jal     func_800D6110              
    lw      a0, 0x001C($sp)            
    beql    v0, $zero, lbl_80A271A4    
    lw      $ra, 0x0014($sp)           
    jal     func_800D6218              
    lw      a0, 0x001C($sp)            
    lw      v0, 0x0018($sp)            
    lui     t7, %hi(func_80A27370)     # t7 = 80A20000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, t7, %lo(func_80A27370) # t7 = 80A27370
    sh      t6, 0x0376(v0)             # 00000376
    sw      t7, 0x0344(v0)             # 00000344
    lw      $ra, 0x0014($sp)           
lbl_80A271A4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A271B0:
    addiu   $sp, $sp, 0xFFF8           # $sp = FFFFFFF8
    sw      a0, 0x0008($sp)            
    andi    a0, a0, 0x00FF             # a0 = 00000000
    sltiu   $at, a0, 0x0005            
    beq     $at, $zero, lbl_80A27210   
    sll     t6, a0,  2                 
    lui     $at, %hi(var_80A27FA4)     # $at = 80A20000
    addu    $at, $at, t6               
    lw      t6, %lo(var_80A27FA4)($at) 
    jr      t6                         
    nop
var_80A271DC:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_80A27210 
    sw      v0, 0x0000($sp)            
var_80A271E8:
    beq     $zero, $zero, lbl_80A27210 
    sw      $zero, 0x0000($sp)         
var_80A271F0:
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    beq     $zero, $zero, lbl_80A27210 
    sw      v0, 0x0000($sp)            
var_80A271FC:
    addiu   v0, $zero, 0x0003          # v0 = 00000003
    beq     $zero, $zero, lbl_80A27210 
    sw      v0, 0x0000($sp)            
var_80A27208:
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    sw      v0, 0x0000($sp)            
lbl_80A27210:
    lw      v0, 0x0000($sp)            
    lui     a0, %hi(var_80A27E34)      # a0 = 80A20000
    lw      a0, %lo(var_80A27E34)(a0)  
    bne     v0, $zero, lbl_80A27230    
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    beq     $zero, $zero, lbl_80A27238 
    sb      a2, 0x0398(a0)             # 80A20398
lbl_80A27230:
    sb      $zero, 0x0398(a0)          # 80A20398
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_80A27238:
    lui     t8, %hi(var_80A27E30)      # t8 = 80A20000
    addiu   t8, t8, %lo(var_80A27E30)  # t8 = 80A27E30
    sll     t7, v1,  2                 
    addu    a1, t7, t8                 
    bne     v1, v0, lbl_80A27258       
    lw      a0, 0x0004(a1)             # 00000004
    beq     $zero, $zero, lbl_80A2725C 
    sb      a2, 0x0398(a0)             # 80A20398
lbl_80A27258:
    sb      $zero, 0x0398(a0)          # 80A20398
lbl_80A2725C:
    addiu   t9, v1, 0x0001             # t9 = 00000002
    bne     t9, v0, lbl_80A27270       
    lw      a0, 0x0008(a1)             # 00000008
    beq     $zero, $zero, lbl_80A27274 
    sb      a2, 0x0398(a0)             # 80A20398
lbl_80A27270:
    sb      $zero, 0x0398(a0)          # 80A20398
lbl_80A27274:
    addiu   t0, v1, 0x0002             # t0 = 00000003
    bne     t0, v0, lbl_80A27288       
    lw      a0, 0x000C(a1)             # 0000000C
    beq     $zero, $zero, lbl_80A2728C 
    sb      a2, 0x0398(a0)             # 80A20398
lbl_80A27288:
    sb      $zero, 0x0398(a0)          # 80A20398
lbl_80A2728C:
    addiu   t1, v1, 0x0003             # t1 = 00000004
    bne     t1, v0, lbl_80A272A0       
    lw      a0, 0x0010(a1)             # 00000010
    beq     $zero, $zero, lbl_80A272A4 
    sb      a2, 0x0398(a0)             # 80A20398
lbl_80A272A0:
    sb      $zero, 0x0398(a0)          # 80A20398
lbl_80A272A4:
    jr      $ra                        
    addiu   $sp, $sp, 0x0008           # $sp = 00000000


func_80A272AC:
    lui     v1, %hi(var_80A27E34)      # v1 = 80A20000
    lw      v1, %lo(var_80A27E34)(v1)  
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sll     t6, v0,  2                 
    sb      $zero, 0x0398(v1)          # 80A20398
    lui     t7, %hi(var_80A27E30)      # t7 = 80A20000
    addiu   t7, t7, %lo(var_80A27E30)  # t7 = 80A27E30
    addu    a0, t6, t7                 
    lw      v1, 0x0004(a0)             # 00000004
    sb      $zero, 0x0398(v1)          # 80A20398
    lw      v1, 0x0008(a0)             # 00000008
    sb      $zero, 0x0398(v1)          # 80A20398
    lw      v1, 0x000C(a0)             # 0000000C
    sb      $zero, 0x0398(v1)          # 80A20398
    lw      v1, 0x0010(a0)             # 00000010
    sb      $zero, 0x0398(v1)          # 80A20398
    jr      $ra                        
    nop


func_80A272F4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a0, 0x0018($sp)            
    andi    a0, a0, 0x00FF             # a0 = 00000000
    sw      $ra, 0x0014($sp)           
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B42(t6)            # 8011B4BE
    lui     t8, 0x8010                 # t8 = 80100000
    lui     $at, 0x4270                # $at = 42700000
    andi    t7, t6, 0x0001             # t7 = 00000000
    bnel    t7, $zero, lbl_80A27334    
    mtc1    $at, $f12                  # $f12 = 60.00
    lw      t8, 0x2B50(t8)             # 80102B50
    addu    t9, a0, t8                 
    beq     $zero, $zero, lbl_80A27360 
    lbu     v0, 0x0000(t9)             # 00000000
    mtc1    $at, $f12                  # $f12 = 60.00
lbl_80A27334:
    jal     func_80026D64              
    nop
    trunc.w.s $f4, $f0                   
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lui     v0, %hi(var_80A27F34)      # v0 = 80A20000
    mfc1    t1, $f4                    
    nop
    div     $zero, t1, $at             
    mfhi    t2                         
    addu    v0, v0, t2                 
    lbu     v0, %lo(var_80A27F34)(v0)  
lbl_80A27360:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A27370:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    lh      v0, 0x0376(s0)             # 00000376
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    or      a0, a2, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80A273A4    
    addiu   a1, $zero, 0x002F          # a1 = 0000002F
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80A273D0 
    sh      t6, 0x0376(s0)             # 00000376
lbl_80A273A4:
    sh      t7, 0x0376(s0)             # 00000376
    jal     func_800DD400              
    sb      $zero, 0x0370(s0)          # 00000370
    jal     func_80A272F4              
    lbu     a0, 0x0370(s0)             # 00000370
    sb      v0, 0x0371(s0)             # 00000371
    jal     func_80A271B0              
    andi    a0, v0, 0x00FF             # a0 = 00000000
    lui     t8, %hi(func_80A274F0)     # t8 = 80A20000
    addiu   t8, t8, %lo(func_80A274F0) # t8 = 80A274F0
    sw      t8, 0x0344(s0)             # 00000344
lbl_80A273D0:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A273E4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lui     t7, 0x0001                 # t7 = 00010000
    addu    t7, t7, a1                 
    lbu     t7, 0x04E8(t7)             # 000104E8
    lbu     t6, 0x0371(a2)             # 00000371
    bnel    t6, t7, lbl_80A27484       
    or      v0, $zero, $zero           # v0 = 00000000
    lbu     t8, 0x0370(a2)             # 00000370
    addiu   t0, $zero, 0x000D          # t0 = 0000000D
    addiu   t9, t8, 0x0001             # t9 = 00000001
    andi    a0, t9, 0x00FF             # a0 = 00000001
    slti    $at, a0, 0x000E            
    sb      t9, 0x0370(a2)             # 00000370
    bne     $at, $zero, lbl_80A27434   
    or      v0, a0, $zero              # v0 = 00000001
    sb      t0, 0x0370(a2)             # 00000370
    beq     $zero, $zero, lbl_80A27484 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A27434:
    slti    $at, v0, 0x0004            
    beq     $at, $zero, lbl_80A27448   
    addiu   v1, $zero, 0x0004          # v1 = 00000004
    beq     $zero, $zero, lbl_80A27448 
    andi    v1, v0, 0x00FF             # v1 = 00000001
lbl_80A27448:
    sb      v1, 0x001F($sp)            
    jal     func_80A272F4              
    sw      a2, 0x0020($sp)            
    lw      a2, 0x0020($sp)            
    andi    a0, v0, 0x00FF             # a0 = 00000000
    jal     func_80A271B0              
    sb      v0, 0x0371(a2)             # 00000371
    lbu     v1, 0x001F($sp)            
    lui     t2, %hi(var_80A27EF0)      # t2 = 80A20000
    lw      a2, 0x0020($sp)            
    sll     t1, v1,  1                 
    addu    t2, t2, t1                 
    lh      t2, %lo(var_80A27EF0)(t2)  
    sh      t2, 0x0376(a2)             # 00000376
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A27484:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A27494:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_800D6218              
    or      a0, a1, $zero              # a0 = 00000000
    lw      t6, 0x0018($sp)            
    addiu   a0, $zero, 0x4827          # a0 = 00004827
    jal     func_800646F0              
    sw      $zero, 0x0378(t6)          # 00000378
    jal     func_800C2C90              
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   t7, $zero, 0x000C          # t7 = 0000000C
    lui     $at, %hi(var_80A27E30)     # $at = 80A20000
    jal     func_80A272AC              
    sb      t7, %lo(var_80A27E30)($at) 
    lw      t9, 0x0018($sp)            
    lui     t8, %hi(func_80A278CC)     # t8 = 80A20000
    addiu   t8, t8, %lo(func_80A278CC) # t8 = 80A278CC
    sw      t8, 0x0344(t9)             # 00000344
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A274F0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      v0, 0x0376(s0)             # 00000376
    bnel    v0, $zero, lbl_80A27528    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A27494              
    lw      a1, 0x0024($sp)            
    beq     $zero, $zero, lbl_80A27684 
    lw      $ra, 0x001C($sp)           
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
lbl_80A27528:
    sh      t6, 0x0376(s0)             # 00000376
    lw      a3, 0x0024($sp)            
    lui     $at, 0x0001                # $at = 00010000
    lui     v1, %hi(var_80A27E30)      # v1 = 80A20000
    addu    a3, a3, $at                
    lbu     t0, 0x03DC(a3)             # 000003DC
    addiu   $at, $zero, 0x0032         # $at = 00000032
    addiu   v1, v1, %lo(var_80A27E30)  # v1 = 80A27E30
    bne     t0, $at, lbl_80A275B8      
    lui     a2, %hi(var_80A27E44)      # a2 = 80A20000
    lui     a1, %hi(func_80A26474)     # a1 = 80A20000
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a1, a1, %lo(func_80A26474) # a1 = 80A26474
    addiu   a2, a2, %lo(var_80A27E44)  # a2 = 80A27E44
    lw      v0, 0x0004(v1)             # 80A27E34
lbl_80A27564:
    addiu   v1, v1, 0x0004             # v1 = 80A27E34
    beql    v0, $zero, lbl_80A27580    
    addiu   a0, a0, 0x0001             # a0 = 00000001
    lw      t7, 0x0344(v0)             # 00000344
    beq     a1, t7, lbl_80A27580       
    nop
    addiu   a0, a0, 0x0001             # a0 = 00000002
lbl_80A27580:
    bnel    v1, a2, lbl_80A27564       
    lw      v0, 0x0004(v1)             # 80A27E38
    bne     a0, $zero, lbl_80A275B8    
    lw      t8, 0x0024($sp)            
    lhu     t9, 0x0020(t8)             # 00000020
    addiu   $at, $zero, 0x4000         # $at = 00004000
    andi    t1, t9, 0x4000             # t1 = 00000000
    bnel    t1, $at, lbl_80A275BC      
    addiu   $at, $zero, 0x0033         # $at = 00000033
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A27494              
    or      a1, t8, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80A27684 
    lw      $ra, 0x001C($sp)           
lbl_80A275B8:
    addiu   $at, $zero, 0x0033         # $at = 00000033
lbl_80A275BC:
    bnel    t0, $at, lbl_80A27684      
    lw      $ra, 0x001C($sp)           
    lw      t3, 0x0024($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addiu   t2, $zero, 0x0031          # t2 = 00000031
    addu    $at, $at, t3               
    sb      t2, 0x03DC($at)            # 000103DC
    lbu     t4, 0x04E8(a3)             # 000004E8
    sltiu   $at, t4, 0x0005            
    beq     $at, $zero, lbl_80A27658   
    sll     t4, t4,  2                 
    lui     $at, %hi(var_80A27FB8)     # $at = 80A20000
    addu    $at, $at, t4               
    lw      t4, %lo(var_80A27FB8)($at) 
    jr      t4                         
    nop
var_80A275FC:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A26B68              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     $zero, $zero, lbl_80A2765C 
    or      a0, s0, $zero              # a0 = 00000000
var_80A27610:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A26B68              
    or      a1, $zero, $zero           # a1 = 00000000
    beq     $zero, $zero, lbl_80A2765C 
    or      a0, s0, $zero              # a0 = 00000000
var_80A27624:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A26B68              
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    beq     $zero, $zero, lbl_80A2765C 
    or      a0, s0, $zero              # a0 = 00000000
var_80A27638:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A26B68              
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    beq     $zero, $zero, lbl_80A2765C 
    or      a0, s0, $zero              # a0 = 00000000
var_80A2764C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A26B68              
    addiu   a1, $zero, 0x0004          # a1 = 00000004
lbl_80A27658:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A2765C:
    jal     func_80A273E4              
    lw      a1, 0x0024($sp)            
    beq     v0, $zero, lbl_80A27680    
    addiu   t5, $zero, 0x40AC          # t5 = 000040AC
    sh      t5, 0x010E(s0)             # 0000010E
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A27694              
    or      a2, $zero, $zero           # a2 = 00000000
lbl_80A27680:
    lw      $ra, 0x001C($sp)           
lbl_80A27684:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A27694:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    sw      a2, 0x0020($sp)            
    jal     func_80A272AC              
    nop
    lbu     t6, 0x0023($sp)            
    beq     t6, $zero, lbl_80A276CC    
    nop
    jal     func_800646F0              
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    beq     $zero, $zero, lbl_80A276D4 
    nop
lbl_80A276CC:
    jal     func_800646F0              
    addiu   a0, $zero, 0x4802          # a0 = 00004802
lbl_80A276D4:
    jal     func_800C2C90              
    or      a0, $zero, $zero           # a0 = 00000000
    lw      t8, 0x001C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addiu   t7, $zero, 0x0037          # t7 = 00000037
    addu    $at, $at, t8               
    sb      t7, 0x03DC($at)            # 000103DC
    lw      t0, 0x0018($sp)            
    lui     t9, %hi(func_80A27710)     # t9 = 80A20000
    addiu   t9, t9, %lo(func_80A27710) # t9 = 80A27710
    sw      t9, 0x0344(t0)             # 00000344
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A27710:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lhu     a1, 0x010E(a2)             # 0000010E
    sw      a2, 0x0018($sp)            
    jal     func_800DCE14              
    or      a0, a3, $zero              # a0 = 00000000
    lw      a2, 0x0018($sp)            
    lui     t6, %hi(func_80A27750)     # t6 = 80A20000
    addiu   t6, t6, %lo(func_80A27750) # t6 = 80A27750
    sw      t6, 0x0344(a2)             # 00000344
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A27750:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80A277AC      
    lw      $ra, 0x0014($sp)           
    jal     func_800D6110              
    lw      a0, 0x001C($sp)            
    beq     v0, $zero, lbl_80A277A8    
    lw      t7, 0x0018($sp)            
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sh      t6, 0x0376(t7)             # 00000376
    jal     func_800D6218              
    lw      a0, 0x001C($sp)            
    lw      t9, 0x0018($sp)            
    lui     t8, %hi(func_80A277B8)     # t8 = 80A20000
    addiu   t8, t8, %lo(func_80A277B8) # t8 = 80A277B8
    sw      t8, 0x0344(t9)             # 00000344
lbl_80A277A8:
    lw      $ra, 0x0014($sp)           
lbl_80A277AC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A277B8:
    sw      a1, 0x0004($sp)            
    addiu   t6, $zero, 0x000C          # t6 = 0000000C
    lui     $at, %hi(var_80A27E30)     # $at = 80A20000
    sb      t6, %lo(var_80A27E30)($at) 
    lbu     v0, 0x0372(a0)             # 00000372
    lui     t7, %hi(func_80A278CC)     # t7 = 80A20000
    addiu   t7, t7, %lo(func_80A278CC) # t7 = 80A278CC
    sw      t7, 0x0344(a0)             # 00000344
    sw      $zero, 0x0378(a0)          # 00000378
    bltz    v0, lbl_80A27830           
    or      v1, v0, $zero              # v1 = 00000000
    slti    $at, v1, 0x0005            
    beq     $at, $zero, lbl_80A27830   
    lui     a2, 0x8012                 # a2 = 80120000
    sll     t8, v0,  1                 
    lui     v1, %hi(var_80A27E48)      # v1 = 80A20000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    addu    v1, v1, t8                 
    lhu     v1, %lo(var_80A27E48)(v1)  
    lhu     a1, 0x0EEE(a2)             # 8011B4BE
    addiu   t1, $zero, 0x0055          # t1 = 00000055
    and     t9, v1, a1                 
    bne     t9, $zero, lbl_80A27824    
    or      t0, a1, v1                 # t0 = 80A20000
    sh      t0, 0x0EEE(a2)             # 8011B4BE
    jr      $ra                        
    sw      t1, 0x0378(a0)             # 00000378
lbl_80A27824:
    addiu   t2, $zero, 0x004D          # t2 = 0000004D
    jr      $ra                        
    sw      t2, 0x0378(a0)             # 00000378
lbl_80A27830:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v1, $at, lbl_80A2787C      
    lui     a2, 0x8012                 # a2 = 80120000
    sll     t3, v0,  1                 
    lui     v1, %hi(var_80A27E48)      # v1 = 80A20000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    addu    v1, v1, t3                 
    lhu     v1, %lo(var_80A27E48)(v1)  
    lhu     a1, 0x0EEE(a2)             # 8011B4BE
    addiu   t6, $zero, 0x003E          # t6 = 0000003E
    and     t4, v1, a1                 
    bne     t4, $zero, lbl_80A27870    
    or      t5, a1, v1                 # t5 = 80A20000
    sh      t5, 0x0EEE(a2)             # 8011B4BE
    jr      $ra                        
    sw      t6, 0x0378(a0)             # 00000378
lbl_80A27870:
    addiu   t7, $zero, 0x004D          # t7 = 0000004D
    jr      $ra                        
    sw      t7, 0x0378(a0)             # 00000378
lbl_80A2787C:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v1, $at, lbl_80A278C4      
    lui     a2, 0x8012                 # a2 = 80120000
    sll     t8, v0,  1                 
    lui     v1, %hi(var_80A27E48)      # v1 = 80A20000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    addu    v1, v1, t8                 
    lhu     v1, %lo(var_80A27E48)(v1)  
    lhu     a1, 0x0EEE(a2)             # 8011B4BE
    addiu   t1, $zero, 0x003E          # t1 = 0000003E
    and     t9, v1, a1                 
    bne     t9, $zero, lbl_80A278BC    
    or      t0, a1, v1                 # t0 = 80A20000
    sh      t0, 0x0EEE(a2)             # 8011B4BE
    jr      $ra                        
    sw      t1, 0x0378(a0)             # 00000378
lbl_80A278BC:
    addiu   t2, $zero, 0x0055          # t2 = 00000055
    sw      t2, 0x0378(a0)             # 00000378
lbl_80A278C4:
    jr      $ra                        
    nop


func_80A278CC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lw      v0, 0x0394(s0)             # 00000394
    lui     a1, %hi(var_80A27E44)      # a1 = 80A20000
    addiu   a1, a1, %lo(var_80A27E44)  # a1 = 80A27E44
    beq     v0, $zero, lbl_80A278FC    
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    sh      t6, 0x0110(v0)             # 00000110
lbl_80A278FC:
    lui     v0, %hi(var_80A27E30)      # v0 = 80A20000
    addiu   v0, v0, %lo(var_80A27E30)  # v0 = 80A27E30
    lw      v1, 0x0004(v0)             # 80A27E34
lbl_80A27908:
    addiu   v0, v0, 0x0004             # v0 = 80A27E34
    sltu    $at, v0, a1                
    beql    v1, $zero, lbl_80A279BC    
    lw      $ra, 0x0024($sp)           
    lbu     t7, 0x036C(v1)             # 0000036C
    bnel    a0, t7, lbl_80A279BC       
    lw      $ra, 0x0024($sp)           
    bnel    $at, $zero, lbl_80A27908   
    lw      v1, 0x0004(v0)             # 80A27E38
    lui     v0, %hi(var_80A27E30)      # v0 = 80A20000
    lui     a0, %hi(var_80A27E44)      # a0 = 80A20000
    addiu   a0, a0, %lo(var_80A27E44)  # a0 = 80A27E44
    addiu   v0, v0, %lo(var_80A27E30)  # v0 = 80A27E30
    lw      v1, 0x0004(v0)             # 80A27E34
lbl_80A27940:
    addiu   v0, v0, 0x0004             # v0 = 80A27E34
    beql    v1, $zero, lbl_80A279BC    
    lw      $ra, 0x0024($sp)           
    sb      $zero, 0x036C(v1)          # 0000036C
    bnel    v0, a0, lbl_80A27940       
    lw      v1, 0x0004(v0)             # 80A27E38
    lw      t9, 0x002C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    addu    $at, $at, t9               
    sh      t8, 0x04C6($at)            # 000104C6
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x28E3          # a1 = 000028E3
    lw      a2, 0x0378(s0)             # 00000378
    lui     t1, %hi(func_80A279CC)     # t1 = 80A20000
    addiu   t1, t1, %lo(func_80A279CC) # t1 = 80A279CC
    bne     a2, $zero, lbl_80A2799C    
    or      a0, s0, $zero              # a0 = 00000000
    lui     t0, %hi(func_80A26C08)     # t0 = 80A20000
    addiu   t0, t0, %lo(func_80A26C08) # t0 = 80A26C08
    beq     $zero, $zero, lbl_80A279B8 
    sw      t0, 0x0344(s0)             # 00000344
lbl_80A2799C:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    sw      t1, 0x0344(s0)             # 00000344
    lw      a1, 0x002C($sp)            
    lui     a3, 0x41F0                 # a3 = 41F00000
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
lbl_80A279B8:
    lw      $ra, 0x0024($sp)           
lbl_80A279BC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A279CC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_80022BB0              
    sw      a0, 0x0020($sp)            
    beq     v0, $zero, lbl_80A27A00    
    lw      a0, 0x0020($sp)            
    lui     t6, %hi(func_80A27A2C)     # t6 = 80A20000
    addiu   t6, t6, %lo(func_80A27A2C) # t6 = 80A27A2C
    sw      $zero, 0x0118(a0)          # 00000118
    beq     $zero, $zero, lbl_80A27A1C 
    sw      t6, 0x0344(a0)             # 00000344
lbl_80A27A00:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    lw      a2, 0x0378(a0)             # 00000378
    lw      a1, 0x0024($sp)            
    lui     a3, 0x41F0                 # a3 = 41F00000
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
lbl_80A27A1C:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A27A2C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80A27A74      
    lw      $ra, 0x0014($sp)           
    jal     func_800D6110              
    lw      a0, 0x001C($sp)            
    beq     v0, $zero, lbl_80A27A70    
    lw      t7, 0x0018($sp)            
    lui     t6, %hi(func_80A26C08)     # t6 = 80A20000
    addiu   t6, t6, %lo(func_80A26C08) # t6 = 80A26C08
    sw      t6, 0x0344(t7)             # 00000344
lbl_80A27A70:
    lw      $ra, 0x0014($sp)           
lbl_80A27A74:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A27A80:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t6, 0x035C(a0)             # 0000035C
    lw      t9, 0x0344(a0)             # 00000344
    addiu   t7, t6, 0x0001             # t7 = 00000001
    jalr    $ra, t9                    
    sw      t7, 0x035C(a0)             # 0000035C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A27AAC:
    sw      a0, 0x0000($sp)            
    sw      a3, 0x000C($sp)            
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     a1, $at, lbl_80A27ACC      
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     a1, $at, lbl_80A27AD0      
    nop
lbl_80A27ACC:
    sw      $zero, 0x0000(a2)          # 00000000
lbl_80A27AD0:
    jr      $ra                        
    nop


func_80A27AD8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0018($sp)            
    sw      a0, 0x0030($sp)            
    sw      a2, 0x0038($sp)            
    sw      a3, 0x003C($sp)            
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     a1, $at, lbl_80A27B08      
    lw      t6, 0x0030($sp)            
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bnel    a1, $at, lbl_80A27B80      
    lw      $ra, 0x001C($sp)           
lbl_80A27B08:
    jal     func_800AA6EC              
    lw      s0, 0x0000(t6)             # 00000000
    lw      a0, 0x0030($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    jal     func_800ABE54              
    addu    a0, a0, $at                
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0030($sp)            
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0020($sp)            
    lw      a1, 0x0020($sp)            
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t1, 0xDE00                 # t1 = DE000000
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s0)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t2, 0x0038($sp)            
    lw      t3, 0x0000(t2)             # 00000000
    sw      t3, 0x0004(v1)             # 00000004
    jal     func_800AA724              
    nop
    lw      $ra, 0x001C($sp)           
lbl_80A27B80:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A27B90:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lh      t6, 0x001C(s0)             # 0000001C
    lw      t8, 0x0044($sp)            
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0036($sp)            
    lw      a0, 0x0000(t8)             # 00000000
    jal     func_8007E298              
    sw      a0, 0x0030($sp)            
    lbu     t9, 0x0398(s0)             # 00000398
    lw      t0, 0x0030($sp)            
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    beq     t9, $zero, lbl_80A27BDC    
    addiu   a0, s0, 0x034C             # a0 = 0000034C
    beq     $zero, $zero, lbl_80A27BDC 
    addiu   t2, $zero, 0x005F          # t2 = 0000005F
lbl_80A27BDC:
    lw      v0, 0x02C0(t0)             # 000002C0
    lui     t6, 0xE700                 # t6 = E7000000
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(t0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(t0)             # 000002C0
    lui     t8, 0xFB00                 # t8 = FB000000
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t0)             # 000002C0
    sw      t9, 0x0004(v0)             # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lwc1    $f4, 0x03A8(s0)            # 000003A8
    lwc1    $f8, 0x03AC(s0)            # 000003AC
    lwc1    $f16, 0x03B0(s0)           # 000003B0
    trunc.w.s $f6, $f4                   
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    trunc.w.s $f10, $f8                  
    mfc1    a1, $f6                    
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    trunc.w.s $f18, $f16                 
    mfc1    a2, $f10                   
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    mfc1    a3, $f18                   
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sw      t5, 0x0018($sp)            
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    sw      t0, 0x0030($sp)            
    jal     func_80065BCC              
    sw      t2, 0x001C($sp)            
    lui     t1, %hi(var_80A27F3C)      # t1 = 80A20000
    lui     t2, 0x00FF                 # t2 = 00FF0000
    lui     t3, 0x8012                 # t3 = 80120000
    addiu   t3, t3, 0x0C38             # t3 = 80120C38
    ori     t2, t2, 0xFFFF             # t2 = 00FFFFFF
    addiu   t1, t1, %lo(var_80A27F3C)  # t1 = 80A27F3C
    lw      t0, 0x0030($sp)            
    lui     t4, 0x8000                 # t4 = 80000000
    lw      v0, 0x02C0(t0)             # 000002C0
    lui     t7, 0xFB00                 # t7 = FB000000
    lui     t5, %hi(var_80A27E94)      # t5 = 80A20000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(t0)             # 000002C0
    sw      t7, 0x0000(v0)             # 00000000
    lh      t8, 0x0036($sp)            
    addiu   t5, t5, %lo(var_80A27E94)  # t5 = 80A27E94
    sll     t9, t8,  2                 
    addu    a0, t9, t5                 
    lbu     t5, 0x0000(a0)             # 00000000
    lbu     t7, 0x0002(a0)             # 00000002
    sll     t6, t5, 24                 
    lbu     t5, 0x0001(a0)             # 00000001
    sll     t8, t7,  8                 
    or      t7, t8, t6                 # t7 = 00000008
    sll     t8, t5, 16                 
    or      t6, t7, t8                 # t6 = 00000008
    ori     t9, t6, 0x00FF             # t9 = 000000FF
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(t0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(t0)             # 000002C0
    sw      t7, 0x0000(v0)             # 00000000
    lbu     t8, 0x0368(s0)             # 00000368
    sll     t6, t8,  2                 
    addu    t9, t1, t6                 
    lw      v1, 0x0000(t9)             # 000000FF
    sll     t7, v1,  4                 
    srl     t8, t7, 28                 
    sll     t6, t8,  2                 
    addu    t9, t3, t6                 
    lw      t7, 0x0000(t9)             # 000000FF
    and     t5, v1, t2                 
    addu    t8, t5, t7                 
    addu    t6, t8, t4                 
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(t0)             # 000002C0
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0024             # t5 = DB060024
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t0)             # 000002C0
    sw      t5, 0x0000(v0)             # 00000000
    lbu     t7, 0x0368(s0)             # 00000368
    sll     t8, t7,  2                 
    addu    t6, t1, t8                 
    lw      v1, 0x0000(t6)             # 00000008
    sll     t5, v1,  4                 
    srl     t7, t5, 28                 
    sll     t8, t7,  2                 
    addu    t6, t3, t8                 
    lw      t5, 0x0000(t6)             # 00000008
    and     t9, v1, t2                 
    lui     t6, %hi(func_80A27AAC)     # t6 = 80A20000
    addu    t7, t9, t5                 
    addu    t8, t7, t4                 
    sw      t8, 0x0004(v0)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t9, %hi(func_80A27AD8)     # t9 = 80A20000
    addiu   t9, t9, %lo(func_80A27AD8) # t9 = 80A27AD8
    addiu   t6, t6, %lo(func_80A27AAC) # t6 = 80A27AAC
    sw      t6, 0x0010($sp)            
    sw      t9, 0x0014($sp)            
    sw      s0, 0x0018($sp)            
    jal     func_80089D8C              
    lw      a0, 0x0044($sp)            
    lbu     t5, 0x0398(s0)             # 00000398
    or      a3, $zero, $zero           # a3 = 00000000
    beql    t5, $zero, lbl_80A27E14    
    lw      $ra, 0x002C($sp)           
    lwc1    $f12, 0x039C(s0)           # 0000039C
    lwc1    $f14, 0x03A0(s0)           # 000003A0
    jal     func_800AA7F4              
    lw      a2, 0x03A4(s0)             # 000003A4
    lui     $at, %hi(var_80A27FCC)     # $at = 80A20000
    lwc1    $f12, %lo(var_80A27FCC)($at) 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lh      a0, 0x00B4(s0)             # 000000B4
    lh      a1, 0x00B6(s0)             # 000000B6
    lh      a2, 0x00B8(s0)             # 000000B8
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      a1, 0x02A4(s0)             # 000002A4
    lw      a2, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0010($sp)         
    lw      a0, 0x0044($sp)            
    jal     func_8008993C              
    or      a3, $zero, $zero           # a3 = 00000000
    lw      $ra, 0x002C($sp)           
lbl_80A27E14:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_80A27E30: .word 0x00000000
var_80A27E34: .word 0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A27E44: .word 0x00000000
var_80A27E48: .word 0x00020004, 0x00100008, 0x00200040, 0x00010000
var_80A27E58: .word 0x02030400, 0x01000000
var_80A27E60: .word \
0x00000003, 0x00000004, 0x00000000, 0x00000001, \
0x00000002
var_80A27E74: .word 0x00ED0400, 0x02000019, 0x00E60000, 0x000003B4
.word func_80A25A94
.word func_80A25E80
.word func_80A25B88
.word 0x00000000
var_80A27E94: .word \
0xC8AA00FF, 0x00AAC8FF, 0xD27864FF, 0x7882E6FF, \
0xBEBEBEFF
var_80A27EA8: .word 0x00000000
var_80A27EAC: .word 0x00000000
var_80A27EB0: .word \
0x00000000, 0x42A00000, 0xBF96CBE4, 0xC2A00000, \
0x42A00000, 0xBFC90FDB, 0xC2A00000, 0x42A00000, \
0xBF490FDB, 0xC2A00000, 0x42A00000, 0x402FEDE0, \
0xC2A00000, 0x42A00000, 0x3FC90FDB, 0xC2A00000
var_80A27EF0: .word 0x00280014, 0x000F000C, 0x000C0000
var_80A27EFC: .byte 0x80, 0x1F, 0x00, 0x02, 0x30, 0x4C, 0x00
var_80A27F03: .byte 0x1E, 0x05, 0x01, 0x07, 0x03, 0x09, 0x00, 0x00, 0x00
var_80A27F0C: .word 0x43340000, 0x43520000, 0x43700000, 0x43870000
var_80A27F1C: .word 0x0502090B, 0x0E000000
var_80A27F24: .word 0xF9F6FDFF, 0x02000000
var_80A27F2C: .word 0x01000203, 0x04010002
var_80A27F34: .word 0x00010203, 0x04000000
var_80A27F3C: .word \
0x060059A0, 0x06005BA0, 0x00000000, 0x00000000, \
0x00000000

.section .rodata

var_80A27F50: .word 0x4622F983
var_80A27F54: .word 0x38D1B717
var_80A27F58: .word 0xC61C3C00
var_80A27F5C: .word 0x40490FDB
var_80A27F60: .word 0x4622F983
var_80A27F64: .word 0x38D1B717
var_80A27F68: .word var_80A26F08
.word lbl_80A26F88
.word lbl_80A26F88
.word var_80A26EF8
.word var_80A26EC8
.word var_80A26EBC
.word var_80A26EB4
.word var_80A26ED4
.word var_80A26EE0
.word var_80A26EEC
var_80A27F90: .word var_80A26F2C
.word var_80A26F40
.word var_80A26F54
.word var_80A26F68
.word var_80A26F7C
var_80A27FA4: .word var_80A271DC
.word var_80A271E8
.word var_80A271F0
.word var_80A271FC
.word var_80A27208
var_80A27FB8: .word var_80A275FC
.word var_80A27610
.word var_80A27624
.word var_80A27638
.word var_80A2764C
var_80A27FCC: .word 0x3C75C28F

