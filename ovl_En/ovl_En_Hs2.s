.section .text
func_80B52B10:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x4210                 # a3 = 42100000
    addiu   a1, s0, 0x0188             # a1 = 00000188
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x01CC             # t6 = 000001CC
    addiu   t7, s0, 0x022C             # t7 = 0000022C
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, 0x05C0             # a3 = 060005C0
    addiu   a2, a2, 0x6260             # a2 = 06006260
    sw      a1, 0x0034($sp)            
    jal     func_8008C788              
    lw      a0, 0x0044($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x05C0             # a1 = 060005C0
    jal     func_8008D2D4              
    lw      a0, 0x0034($sp)            
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    sw      a1, 0x0034($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x0044($sp)            
    lui     a3, %hi(var_80B53010)      # a3 = 80B50000
    lw      a1, 0x0034($sp)            
    addiu   a3, a3, %lo(var_80B53010)  # a3 = 80B53010
    lw      a0, 0x0044($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    lui     a1, 0x3C23                 # a1 = 3C230000
    sb      t9, 0x00AE(s0)             # 000000AE
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    lui     t0, %hi(func_80B52D0C)     # t0 = 80B50000
    addiu   t0, t0, %lo(func_80B52D0C) # t0 = 80B52D0C
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    sw      t0, 0x029C(s0)             # 0000029C
    sh      $zero, 0x0298(s0)          # 00000298
    sb      t1, 0x001F(s0)             # 0000001F
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80B52BF0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x013C             # a1 = 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B52C1C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    sw      a2, 0x0020($sp)            
    sw      a3, 0x0024($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_80022930              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80B52C54    
    lw      a0, 0x0018($sp)            
    lw      t6, 0x0024($sp)            
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_80B52CC0 
    sw      t6, 0x029C(a0)             # 0000029C
lbl_80B52C54:
    lh      t8, 0x008A(a0)             # 0000008A
    lh      t9, 0x00B6(a0)             # 000000B6
    lhu     t7, 0x0022($sp)            
    subu    v0, t8, t9                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80B52C7C           
    sh      t7, 0x010E(a0)             # 0000010E
    beq     $zero, $zero, lbl_80B52C80 
    or      v1, v0, $zero              # v1 = 00000001
lbl_80B52C7C:
    subu    v1, $zero, v0              
lbl_80B52C80:
    slti    $at, v1, 0x2151            
    beq     $at, $zero, lbl_80B52CBC   
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f0                   # $f0 = 100.00
    lwc1    $f4, 0x0090(a0)            # 00000090
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80B52CC0               
    or      v0, $zero, $zero           # v0 = 00000000
    lhu     t0, 0x0298(a0)             # 00000298
    mfc1    a2, $f0                    
    ori     t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x0298(a0)             # 00000298
    jal     func_80022A68              
    lw      a1, 0x001C($sp)            
lbl_80B52CBC:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B52CC0:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B52CD0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_80022AD0              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80B52CF4    
    lw      a0, 0x0018($sp)            
    lui     t6, %hi(func_80B52D0C)     # t6 = 80B50000
    addiu   t6, t6, %lo(func_80B52D0C) # t6 = 80B52D0C
    sw      t6, 0x029C(a0)             # 0000029C
lbl_80B52CF4:
    lhu     t7, 0x0298(a0)             # 00000298
    ori     t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x0298(a0)             # 00000298
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80B52D0C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800597C0              
    addiu   a1, $zero, 0x0009          # a1 = 00000009
    bne     v0, $zero, lbl_80B52D34    
    andi    a2, v0, 0xFFFF             # a2 = 00000000
    addiu   a2, $zero, 0x5069          # a2 = 00005069
lbl_80B52D34:
    lui     a3, %hi(func_80B52CD0)     # a3 = 80B50000
    addiu   a3, a3, %lo(func_80B52CD0) # a3 = 80B52CD0
    lw      a0, 0x0018($sp)            
    jal     func_80B52C1C              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B52D58:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    addiu   a2, s0, 0x013C             # a2 = 0000013C
    or      a1, a2, $zero              # a1 = 0000013C
    sw      a2, 0x0034($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0034($sp)            
    addu    a1, s1, $at                
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      t6, 0x0014($sp)            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0188             # a0 = 00000188
    beql    v0, $zero, lbl_80B52DE8    
    lw      t9, 0x029C(s0)             # 0000029C
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x01A0(s0)            # 000001A0
    lw      t9, 0x029C(s0)             # 0000029C
lbl_80B52DE8:
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lhu     t7, 0x0298(s0)             # 00000298
    addiu   a0, s0, 0x028C             # a0 = 0000028C
    addiu   a1, $zero, 0x3200          # a1 = 00003200
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80B52E4C    
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    lw      t1, 0x0038(s0)             # 00000038
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    sw      t1, 0x0010($sp)            
    lw      t0, 0x003C(s0)             # 0000003C
    addiu   a2, s0, 0x028C             # a2 = 0000028C
    addiu   a3, s0, 0x0292             # a3 = 00000292
    sw      t0, 0x0014($sp)            
    lw      t1, 0x0040(s0)             # 00000040
    jal     func_8002B024              
    sw      t1, 0x0018($sp)            
    lhu     t2, 0x0298(s0)             # 00000298
    andi    t3, t2, 0xFFFE             # t3 = 00000000
    beq     $zero, $zero, lbl_80B52EB0 
    sh      t3, 0x0298(s0)             # 00000298
lbl_80B52E4C:
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    sw      t4, 0x0010($sp)            
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t5, $zero, 0x0064          # t5 = 00000064
    sw      t5, 0x0010($sp)            
    addiu   a0, s0, 0x028E             # a0 = 0000028E
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sw      t6, 0x0010($sp)            
    addiu   a0, s0, 0x0292             # a0 = 00000292
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    sw      t9, 0x0010($sp)            
    addiu   a0, s0, 0x0294             # a0 = 00000294
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          # a3 = 00001838
lbl_80B52EB0:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80B52EC4:
    sw      a0, 0x0000($sp)            
    sw      a3, 0x000C($sp)            
    addiu   t6, a1, 0xFFF7             # t6 = FFFFFFF7
    sltiu   $at, t6, 0x0005            
    beq     $at, $zero, lbl_80B52F40   
    sll     t6, t6,  2                 
    lui     $at, %hi(var_80B53050)     # $at = 80B50000
    addu    $at, $at, t6               
    lw      t6, %lo(var_80B53050)($at) 
    jr      t6                         
    nop
var_80B52EF0:
    sw      $zero, 0x0000(a2)          # 00000000
    jr      $ra                        
    or      v0, $zero, $zero           # v0 = 00000000


func_80B52EFC:
    lw      v0, 0x0014($sp)            
    lw      v1, 0x0010($sp)            
    lh      t8, 0x028E(v0)             # 0000028E
    lh      t7, 0x0000(v1)             # 00000000
    lh      t0, 0x0004(v1)             # 00000004
    addu    t9, t7, t8                 
    sh      t9, 0x0000(v1)             # 00000000
    lh      t1, 0x028C(v0)             # 0000028C
    addu    t2, t0, t1                 
    beq     $zero, $zero, lbl_80B52F40 
    sh      t2, 0x0004(v1)             # 00000004
var_80B52F28:
    sw      $zero, 0x0000(a2)          # 00000000
    jr      $ra                        
    or      v0, $zero, $zero           # v0 = 00000000


func_80B52F34:
    sw      $zero, 0x0000(a2)          # 00000000
    jr      $ra                        
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B52F40:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    nop


func_80B52F4C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a2, 0x0020($sp)            
    sw      a3, 0x0024($sp)            
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     a1, $at, lbl_80B52F7C      
    lui     a0, %hi(var_80B5303C)      # a0 = 80B50000
    lw      a1, 0x0028($sp)            
    addiu   a0, a0, %lo(var_80B5303C)  # a0 = 80B5303C
    jal     func_800AB958              
    addiu   a1, a1, 0x0038             # a1 = 00000038
lbl_80B52F7C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B52F8C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    jal     func_8007E56C              
    lw      a0, 0x0000(t6)             # 00000000
    lw      v0, 0x0028($sp)            
    lui     t7, %hi(func_80B52EC4)     # t7 = 80B50000
    lui     t8, %hi(func_80B52F4C)     # t8 = 80B50000
    lw      a1, 0x018C(v0)             # 0000018C
    lw      a2, 0x01A8(v0)             # 000001A8
    lbu     a3, 0x018A(v0)             # 0000018A
    addiu   t8, t8, %lo(func_80B52F4C) # t8 = 80B52F4C
    addiu   t7, t7, %lo(func_80B52EC4) # t7 = 80B52EC4
    sw      t7, 0x0010($sp)            
    sw      t8, 0x0014($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_80089D8C              
    sw      v0, 0x0018($sp)            
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_80B52FF0: .word 0x01A60400, 0x00000009, 0x01280000, 0x000002A0
.word func_80B52B10
.word func_80B52BF0
.word func_80B52D58
.word func_80B52F8C
var_80B53010: .word \
0x0A001139, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x00280028, 0x00000000, 0x00000000
var_80B5303C: .word \
0x43960000, 0x447A0000, 0x00000000, 0x00000000, \
0x00000000

.section .rodata

var_80B53050: .word func_80B52EFC
.word var_80B52F28
.word func_80B52F34
.word var_80B52EF0
.word var_80B52EF0
.word 0x00000000, 0x00000000, 0x00000000

