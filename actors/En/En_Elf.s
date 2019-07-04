.section .text
func_80885B00:
    sw      a1, 0x02BC(a0)             # 000002BC
    jr      $ra                        
    nop


func_80885B0C:
    andi    t6, a1, 0xFFFF             # t6 = 00000000
    sltiu   $at, t6, 0x000D            
    beq     $at, $zero, lbl_80885E5C   
    sh      a1, 0x0298(a0)             # 00000298
    sll     t6, t6,  2                 
    lui     $at, %hi(var_80889F20)     # $at = 80890000
    addu    $at, $at, t6               
    lw      t6, %lo(var_80889F20)($at) 
    jr      t6                         
    nop
var_80885B34:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    lui     t9, %hi(func_808868E8)     # t9 = 80880000
    addiu   t7, $zero, 0x0400          # t7 = 00000400
    addiu   t8, $zero, 0x0200          # t8 = 00000200
    addiu   t9, t9, %lo(func_808868E8) # t9 = 808868E8
    addiu   t0, $zero, 0x0064          # t0 = 00000064
    sh      t7, 0x029E(a0)             # 0000029E
    sh      t8, 0x02A0(a0)             # 000002A0
    sw      t9, 0x02B8(a0)             # 000002B8
    sh      t0, 0x02B0(a0)             # 000002B0
    swc1    $f0, 0x0158(a0)            # 00000158
    swc1    $f4, 0x02A4(a0)            # 000002A4
    jr      $ra                        
    swc1    $f6, 0x02A8(a0)            # 000002A8


func_80885B80:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    lui     t3, %hi(func_808868E8)     # t3 = 80880000
    addiu   t1, $zero, 0x0400          # t1 = 00000400
    addiu   t2, $zero, 0x0200          # t2 = 00000200
    addiu   t3, t3, %lo(func_808868E8) # t3 = 808868E8
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    sh      t1, 0x029E(a0)             # 0000029E
    sh      t2, 0x02A0(a0)             # 000002A0
    sw      t3, 0x02B8(a0)             # 000002B8
    sh      t4, 0x02B0(a0)             # 000002B0
    swc1    $f0, 0x02A4(a0)            # 000002A4
    swc1    $f0, 0x0158(a0)            # 00000158
    jr      $ra                        
    swc1    $f8, 0x02A8(a0)            # 000002A8


func_80885BC4:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $at, $f10                  # $f10 = 5.00
    lui     t6, %hi(func_808868E8)     # t6 = 80880000
    addiu   t5, $zero, 0x0400          # t5 = 00000400
    addiu   t6, t6, %lo(func_808868E8) # t6 = 808868E8
    sh      t5, 0x029E(a0)             # 0000029E
    sh      $zero, 0x02A0(a0)          # 000002A0
    sw      t6, 0x02B8(a0)             # 000002B8
    swc1    $f0, 0x0158(a0)            # 00000158
    swc1    $f2, 0x02A8(a0)            # 000002A8
    jr      $ra                        
    swc1    $f10, 0x02A4(a0)           # 000002A4


func_80885C00:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f16                  # $f16 = 3.00
    lui     t9, %hi(func_808868E8)     # t9 = 80880000
    addiu   t7, $zero, 0x1000          # t7 = 00001000
    addiu   t8, $zero, 0x0200          # t8 = 00000200
    addiu   t9, t9, %lo(func_808868E8) # t9 = 808868E8
    sh      t7, 0x029E(a0)             # 0000029E
    sh      t8, 0x02A0(a0)             # 000002A0
    sw      t9, 0x02B8(a0)             # 000002B8
    swc1    $f0, 0x0158(a0)            # 00000158
    swc1    $f2, 0x02A8(a0)            # 000002A8
    jr      $ra                        
    swc1    $f16, 0x02A4(a0)           # 000002A4


func_80885C44:
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     t0, %hi(func_808868E8)     # t0 = 80880000
    addiu   t0, t0, %lo(func_808868E8) # t0 = 808868E8
    addiu   t1, $zero, 0x001E          # t1 = 0000001E
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t0, 0x02B8(a0)             # 000002B8
    sh      t1, 0x029E(a0)             # 0000029E
    sh      t2, 0x02B0(a0)             # 000002B0
    swc1    $f2, 0x02A4(a0)            # 000002A4
    swc1    $f2, 0x02A8(a0)            # 000002A8
    jr      $ra                        
    swc1    $f0, 0x0158(a0)            # 00000158


func_80885C7C:
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     t5, %hi(func_808868E8)     # t5 = 80880000
    addiu   t3, $zero, 0x1000          # t3 = 00001000
    addiu   t4, $zero, 0x0200          # t4 = 00000200
    addiu   t5, t5, %lo(func_808868E8) # t5 = 808868E8
    sh      t3, 0x029E(a0)             # 0000029E
    sh      t4, 0x02A0(a0)             # 000002A0
    sw      t5, 0x02B8(a0)             # 000002B8
    swc1    $f2, 0x02A4(a0)            # 000002A4
    swc1    $f2, 0x02A8(a0)            # 000002A8
    jr      $ra                        
    swc1    $f0, 0x0158(a0)            # 00000158


func_80885CB4:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f18                  # $f18 = 5.00
    lui     $at, 0x40F0                # $at = 40F00000
    mtc1    $at, $f4                   # $f4 = 7.50
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f6                   # $f6 = 2.00
    lui     t8, %hi(func_808868E8)     # t8 = 80880000
    addiu   t6, $zero, 0x1000          # t6 = 00001000
    addiu   t7, $zero, 0x0800          # t7 = 00000800
    addiu   t8, t8, %lo(func_808868E8) # t8 = 808868E8
    sh      t6, 0x029E(a0)             # 0000029E
    sh      t7, 0x02A0(a0)             # 000002A0
    sw      t8, 0x02B8(a0)             # 000002B8
    swc1    $f18, 0x02A4(a0)           # 000002A4
    swc1    $f4, 0x02A8(a0)            # 000002A8
    jr      $ra                        
    swc1    $f6, 0x0158(a0)            # 00000158


func_80885CF8:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lui     t1, %hi(func_8088696C)     # t1 = 80880000
    addiu   t9, $zero, 0x0400          # t9 = 00000400
    addiu   t0, $zero, 0x1000          # t0 = 00001000
    addiu   t1, t1, %lo(func_8088696C) # t1 = 8088696C
    sh      t9, 0x029E(a0)             # 0000029E
    sh      t0, 0x02A0(a0)             # 000002A0
    sw      t1, 0x02B8(a0)             # 000002B8
    swc1    $f0, 0x0158(a0)            # 00000158
    swc1    $f2, 0x02A4(a0)            # 000002A4
    jr      $ra                        
    swc1    $f8, 0x02A8(a0)            # 000002A8


func_80885D3C:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     t3, %hi(func_80886A00)     # t3 = 80880000
    addiu   t2, $zero, 0x0600          # t2 = 00000600
    addiu   t3, t3, %lo(func_80886A00) # t3 = 80886A00
    sh      t2, 0x02A0(a0)             # 000002A0
    sw      t3, 0x02B8(a0)             # 000002B8
    swc1    $f0, 0x02A8(a0)            # 000002A8
    swc1    $f0, 0x02A4(a0)            # 000002A4
    jr      $ra                        
    swc1    $f0, 0x0158(a0)            # 00000158


func_80885D68:
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f18                  # $f18 = 2.00
    lui     t5, %hi(func_80886A00)     # t5 = 80880000
    addiu   t4, $zero, 0x0800          # t4 = 00000800
    addiu   t5, t5, %lo(func_80886A00) # t5 = 80886A00
    sh      t4, 0x02A0(a0)             # 000002A0
    sw      t5, 0x02B8(a0)             # 000002B8
    swc1    $f10, 0x02A4(a0)           # 000002A4
    swc1    $f16, 0x02A8(a0)           # 000002A8
    jr      $ra                        
    swc1    $f18, 0x0158(a0)           # 00000158


func_80885DA4:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     t7, %hi(func_80886A00)     # t7 = 80880000
    addiu   t6, $zero, 0x0200          # t6 = 00000200
    addiu   t7, t7, %lo(func_80886A00) # t7 = 80886A00
    sh      t6, 0x02A0(a0)             # 000002A0
    sw      t7, 0x02B8(a0)             # 000002B8
    swc1    $f2, 0x02A4(a0)            # 000002A4
    swc1    $f2, 0x02A8(a0)            # 000002A8
    jr      $ra                        
    swc1    $f4, 0x0158(a0)            # 00000158


func_80885DD8:
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f10                  # $f10 = 2.00
    lui     t0, %hi(func_808868E8)     # t0 = 80880000
    addiu   t8, $zero, 0x1000          # t8 = 00001000
    addiu   t9, $zero, 0x0800          # t9 = 00000800
    addiu   t0, t0, %lo(func_808868E8) # t0 = 808868E8
    sh      t8, 0x029E(a0)             # 0000029E
    sh      t9, 0x02A0(a0)             # 000002A0
    sw      t0, 0x02B8(a0)             # 000002B8
    swc1    $f6, 0x02A4(a0)            # 000002A4
    swc1    $f8, 0x02A8(a0)            # 000002A8
    jr      $ra                        
    swc1    $f10, 0x0158(a0)           # 00000158


func_80885E1C:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    lui     t3, %hi(func_808868E8)     # t3 = 80880000
    addiu   t1, $zero, 0x0400          # t1 = 00000400
    addiu   t2, $zero, 0x2000          # t2 = 00002000
    addiu   t3, t3, %lo(func_808868E8) # t3 = 808868E8
    addiu   t4, $zero, 0x002A          # t4 = 0000002A
    sh      t1, 0x029E(a0)             # 0000029E
    sh      t2, 0x02A0(a0)             # 000002A0
    sw      t3, 0x02B8(a0)             # 000002B8
    sh      t4, 0x02B0(a0)             # 000002B0
    swc1    $f0, 0x02A8(a0)            # 000002A8
    swc1    $f0, 0x0158(a0)            # 00000158
    swc1    $f16, 0x02A4(a0)           # 000002A4
lbl_80885E5C:
    jr      $ra                        
    nop


func_80885E64:
    mtc1    a2, $f12                   # $f12 = 0.00
    nop
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x0000(a0)            # 00000000
    lwc1    $f8, 0x0008(a1)            # 00000008
    lwc1    $f10, 0x0008(a0)           # 00000008
    sub.s   $f0, $f4, $f6              
    or      v0, $zero, $zero           # v0 = 00000000
    sub.s   $f2, $f8, $f10             
    mul.s   $f16, $f0, $f0             
    nop
    mul.s   $f18, $f2, $f2             
    add.s   $f4, $f16, $f18            
    mul.s   $f6, $f12, $f12            
    c.lt.s  $f6, $f4                   
    nop
    bc1f    lbl_80885EB0               
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80885EB0:
    jr      $ra                        
    nop


func_80885EB8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a3, a1, $zero              # a3 = 00000000
    lw      v0, 0x1C44(a3)             # 00001C44
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lui     a2, 0x41F0                 # a2 = 41F00000
    jal     func_80885E64              
    addiu   a1, v0, 0x0024             # a1 = 00000024
    bne     v0, $zero, lbl_80885EF8    
    lui     $at, 0x4000                # $at = 40000000
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    beq     $zero, $zero, lbl_80885F04 
    swc1    $f4, 0x02A8(s0)            # 000002A8
lbl_80885EF8:
    mtc1    $at, $f6                   # $f6 = 0.50
    nop
    swc1    $f6, 0x02A8(s0)            # 000002A8
lbl_80885F04:
    lh      v0, 0x02B0(s0)             # 000002B0
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0080          # t8 = 00000080
    blez    v0, lbl_80885F24           
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80885F6C 
    sh      t6, 0x02B0(s0)             # 000002B0
lbl_80885F24:
    mtc1    $at, $f12                  # $f12 = 1.00
    sh      t7, 0x0298(s0)             # 00000298
    jal     func_80026D64              
    sh      t8, 0x029C(s0)             # 0000029C
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lui     $at, %hi(var_80889F54)     # $at = 80890000
    add.s   $f10, $f0, $f8             
    swc1    $f10, 0x02A8(s0)           # 000002A8
    jal     func_80026D90              
    lwc1    $f12, %lo(var_80889F54)($at) 
    trunc.w.s $f16, $f0                  
    lui     t1, %hi(func_8088602C)     # t1 = 80880000
    addiu   t1, t1, %lo(func_8088602C) # t1 = 8088602C
    sw      t1, 0x02B8(s0)             # 000002B8
    mfc1    t0, $f16                   
    nop
    sh      t0, 0x02A0(s0)             # 000002A0
lbl_80885F6C:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80885F80:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a3, a1, $zero              # a3 = 00000000
    lw      v0, 0x1C44(a3)             # 00001C44
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lui     a2, 0x4248                 # a2 = 42480000
    jal     func_80885E64              
    addiu   a1, v0, 0x0024             # a1 = 00000024
    beql    v0, $zero, lbl_8088601C    
    lw      $ra, 0x001C($sp)           
    lh      v0, 0x02B0(s0)             # 000002B0
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0080          # t8 = 00000080
    blez    v0, lbl_80885FD0           
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80886018 
    sh      t6, 0x02B0(s0)             # 000002B0
lbl_80885FD0:
    mtc1    $at, $f12                  # $f12 = 1.00
    sh      t7, 0x0298(s0)             # 00000298
    jal     func_80026D64              
    sh      t8, 0x029C(s0)             # 0000029C
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, %hi(var_80889F58)     # $at = 80890000
    add.s   $f6, $f0, $f4              
    swc1    $f6, 0x02A8(s0)            # 000002A8
    jal     func_80026D90              
    lwc1    $f12, %lo(var_80889F58)($at) 
    trunc.w.s $f8, $f0                   
    lui     t1, %hi(func_8088602C)     # t1 = 80880000
    addiu   t1, t1, %lo(func_8088602C) # t1 = 8088602C
    sw      t1, 0x02B8(s0)             # 000002B8
    mfc1    t0, $f8                    
    nop
    sh      t0, 0x02A0(s0)             # 000002A0
lbl_80886018:
    lw      $ra, 0x001C($sp)           
lbl_8088601C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8088602C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lh      v0, 0x02B0(s0)             # 000002B0
    lui     $at, 0x4248                # $at = 42480000
    blez    v0, lbl_80886058           
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80886194 
    sh      t6, 0x02B0(s0)             # 000002B0
lbl_80886058:
    mtc1    $at, $f0                   # $f0 = 50.00
    lwc1    $f2, 0x0090(s0)            # 00000090
    lui     $at, 0x4316                # $at = 43160000
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_808860F4               
    mtc1    $at, $f12                  # $f12 = 150.00
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80889F5C)     # $at = 80890000
    lwc1    $f4, %lo(var_80889F5C)($at) 
    lui     t9, %hi(func_80885F80)     # t9 = 80880000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    c.lt.s  $f0, $f4                   
    addiu   t8, $zero, 0x0400          # t8 = 00000400
    lui     $at, 0x4000                # $at = 40000000
    addiu   t9, t9, %lo(func_80885F80) # t9 = 80885F80
    bc1f    lbl_808860E8               
    addiu   t5, $zero, 0x000A          # t5 = 0000000A
    mtc1    $at, $f6                   # $f6 = 2.00
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f8                   # $f8 = 1.50
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f12                  # $f12 = 8.00
    sh      t7, 0x0298(s0)             # 00000298
    sh      t8, 0x029C(s0)             # 0000029C
    sw      t9, 0x02B8(s0)             # 000002B8
    swc1    $f6, 0x02A8(s0)            # 000002A8
    jal     func_80026D64              
    swc1    $f8, 0x0068(s0)            # 00000068
    trunc.w.s $f10, $f0                  
    mfc1    t3, $f10                   
    nop
    addiu   t4, t3, 0x0004             # t4 = 00000004
    beq     $zero, $zero, lbl_80886194 
    sh      t4, 0x02B0(s0)             # 000002B0
lbl_808860E8:
    beq     $zero, $zero, lbl_80886194 
    sh      t5, 0x02B0(s0)             # 000002B0
    mtc1    $at, $f12                  # $f12 = 0.00
lbl_808860F4:
    lui     $at, %hi(var_80889F60)     # $at = 80890000
    c.lt.s  $f12, $f2                  
    nop
    bc1fl   lbl_80886110               
    sub.s   $f16, $f2, $f0             
    mov.s   $f2, $f12                  
    sub.s   $f16, $f2, $f0             
lbl_80886110:
    lwc1    $f18, %lo(var_80889F60)($at) 
    lui     $at, %hi(var_80889F64)     # $at = 80890000
    lwc1    $f6, %lo(var_80889F64)($at) 
    mul.s   $f4, $f16, $f18            
    add.s   $f2, $f4, $f6              
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x0024($sp)           
    lwc1    $f2, 0x0024($sp)           
    lui     t8, %hi(func_80885EB8)     # t8 = 80880000
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    c.lt.s  $f0, $f2                   
    addiu   t7, $zero, 0x0200          # t7 = 00000200
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   t8, t8, %lo(func_80885EB8) # t8 = 80885EB8
    bc1f    lbl_80886190               
    addiu   t4, $zero, 0x000A          # t4 = 0000000A
    add.s   $f8, $f2, $f2              
    mtc1    $at, $f10                  # $f10 = 1.00
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f12                  # $f12 = 16.00
    add.s   $f16, $f8, $f10            
    sh      t6, 0x0298(s0)             # 00000298
    sh      t7, 0x029C(s0)             # 0000029C
    sw      t8, 0x02B8(s0)             # 000002B8
    jal     func_80026D64              
    swc1    $f16, 0x02A8(s0)           # 000002A8
    trunc.w.s $f18, $f0                  
    mfc1    t2, $f18                   
    nop
    addiu   t3, t2, 0x0010             # t3 = 00000010
    beq     $zero, $zero, lbl_80886194 
    sh      t3, 0x02B0(s0)             # 000002B0
lbl_80886190:
    sh      t4, 0x02B0(s0)             # 000002B0
lbl_80886194:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80889F68)     # $at = 80890000
    lwc1    $f4, %lo(var_80889F68)($at) 
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, $zero, 0x0080          # t6 = 00000080
    c.lt.s  $f0, $f4                   
    lui     $at, 0x3F00                # $at = 3F000000
    bc1fl   lbl_808861FC               
    lw      $ra, 0x001C($sp)           
    mtc1    $at, $f12                  # $f12 = 0.50
    sh      t5, 0x0298(s0)             # 00000298
    jal     func_80026D64              
    sh      t6, 0x029C(s0)             # 0000029C
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lui     $at, %hi(var_80889F6C)     # $at = 80890000
    add.s   $f8, $f0, $f6              
    swc1    $f8, 0x02A8(s0)            # 000002A8
    jal     func_80026D90              
    lwc1    $f12, %lo(var_80889F6C)($at) 
    trunc.w.s $f10, $f0                  
    mfc1    t8, $f10                   
    nop
    sh      t8, 0x02A0(s0)             # 000002A0
    lw      $ra, 0x001C($sp)           
lbl_808861FC:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8088620C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x027C             # a0 = 0000027C
    addiu   a1, a3, 0x0024             # a1 = 00000024
    lui     a2, 0x42C8                 # a2 = 42C80000
    jal     func_80885E64              
    sw      a3, 0x0018($sp)            
    beq     v0, $zero, lbl_80886260    
    lw      a3, 0x0018($sp)            
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    lui     t7, %hi(func_8088602C)     # t7 = 80880000
    addiu   t6, $zero, 0x0200          # t6 = 00000200
    addiu   t7, t7, %lo(func_8088602C) # t7 = 8088602C
    sh      $zero, 0x0298(a3)          # 00000298
    sh      t6, 0x029C(a3)             # 0000029C
    sw      t7, 0x02B8(a3)             # 000002B8
    beq     $zero, $zero, lbl_80886274 
    swc1    $f4, 0x02A8(a3)            # 000002A8
lbl_80886260:
    lw      t9, 0x02B8(a3)             # 000002B8
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x001C($sp)            
    jalr    $ra, t9                    
    nop
lbl_80886274:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80886284:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     a0, $at, lbl_808862AC      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    a0, $at, lbl_808862D0      
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $zero, $f0                 # $f0 = 0.00
    beq     $zero, $zero, lbl_808862E4 
    nop
lbl_808862AC:
    lui     $at, 0x425C                # $at = 425C0000
    mtc1    $at, $f12                  # $f12 = 55.00
    jal     func_80026D64              
    nop
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    beq     $zero, $zero, lbl_808862E4 
    add.s   $f0, $f0, $f4              
    lui     $at, 0x437F                # $at = 437F0000
lbl_808862D0:
    mtc1    $at, $f12                  # $f12 = 255.00
    jal     func_80026D64              
    nop
    beq     $zero, $zero, lbl_808862E8 
    lw      $ra, 0x0014($sp)           
lbl_808862E4:
    lw      $ra, 0x0014($sp)           
lbl_808862E8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808862F4:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s1, 0x0030($sp)            
    sw      s0, 0x002C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)           
    lw      t6, 0x1C44(s1)             # 00001C44
    lui     a1, %hi(var_80889E90)      # a1 = 80890000
    addiu   a1, a1, %lo(var_80889E90)  # a1 = 80889E90
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80063F7C              
    sw      t6, 0x004C($sp)            
    lui     a2, 0x0401                 # a2 = 04010000
    lui     a3, 0x0401                 # a3 = 04010000
    addiu   t7, s0, 0x0180             # t7 = 00000180
    addiu   t8, s0, 0x01DA             # t8 = 000001DA
    addiu   t9, $zero, 0x000F          # t9 = 0000000F
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    addiu   a3, a3, 0x5044             # a3 = 04015044
    addiu   a2, a2, 0x6EE8             # a2 = 04016EE8
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C684              
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x4170                 # a3 = 41700000
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f16, 0x002C(s0)           # 0000002C
    trunc.w.s $f6, $f4                   
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    sb      t0, 0x00C8(s0)             # 000000C8
    trunc.w.s $f10, $f8                  
    mfc1    a1, $f6                    
    addiu   a0, s0, 0x0254             # a0 = 00000254
    trunc.w.s $f18, $f16                 
    mfc1    a2, $f10                   
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    mfc1    a3, $f18                   
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    sll     a1, a1, 16                 
    sll     a2, a2, 16                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sra     a2, a2, 16                 
    sra     a1, a1, 16                 
    sw      t6, 0x0018($sp)            
    sw      t5, 0x0014($sp)            
    sw      t4, 0x0010($sp)            
    sw      a0, 0x003C($sp)            
    jal     func_80065C30              
    sw      $zero, 0x001C($sp)         
    addiu   a1, s1, 0x07A8             # a1 = 000007A8
    sw      a1, 0x0040($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800665B0              
    lw      a2, 0x003C($sp)            
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f16, 0x002C(s0)           # 0000002C
    trunc.w.s $f6, $f4                   
    sw      v0, 0x0264(s0)             # 00000264
    addiu   a0, s0, 0x0268             # a0 = 00000268
    trunc.w.s $f10, $f8                  
    mfc1    a1, $f6                    
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    trunc.w.s $f18, $f16                 
    mfc1    a2, $f10                   
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    mfc1    a3, $f18                   
    sll     a1, a1, 16                 
    sll     a2, a2, 16                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sra     a2, a2, 16                 
    sra     a1, a1, 16                 
    sw      t2, 0x0018($sp)            
    sw      t1, 0x0014($sp)            
    sw      t0, 0x0010($sp)            
    sw      a0, 0x003C($sp)            
    jal     func_80065BCC              
    sw      $zero, 0x001C($sp)         
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0040($sp)            
    jal     func_800665B0              
    lw      a2, 0x003C($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t3, $zero, 0x0258          # t3 = 00000258
    sw      v0, 0x0278(s0)             # 00000278
    sh      $zero, 0x02B4(s0)          # 000002B4
    sh      t3, 0x02B2(s0)             # 000002B2
    swc1    $f4, 0x0294(s0)            # 00000294
    sw      $zero, 0x0048($sp)         
    lhu     t4, 0x001C(s0)             # 0000001C
    sltiu   $at, t4, 0x0008            
    beq     $at, $zero, lbl_8088676C   
    sll     t4, t4,  2                 
    lui     $at, %hi(var_80889F70)     # $at = 80890000
    addu    $at, $at, t4               
    lw      t4, %lo(var_80889F70)($at) 
    jr      t4                         
    nop
var_808864A4:
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    lui     a1, %hi(func_80887BC4)     # a1 = 80880000
    sb      t5, 0x0003(s0)             # 00000003
    addiu   a1, a1, %lo(func_80887BC4) # a1 = 80887BC4
    jal     func_80885B00              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80885B0C              
    or      a1, $zero, $zero           # a1 = 00000000
    lhu     t6, 0x02B4(s0)             # 000002B4
    lui     t8, %hi(func_80889300)     # t8 = 80890000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   t8, t8, %lo(func_80889300) # t8 = 80889300
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    ori     t7, t6, 0x0004             # t7 = 00000004
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sh      t7, 0x02B4(s0)             # 000002B4
    sw      t8, 0x0130(s0)             # 00000130
    sw      $zero, 0x0288(s0)          # 00000288
    sb      t9, 0x02B7(s0)             # 000002B7
    lhu     v0, 0x0038(v1)             # 8011A608
    slti    $at, v0, 0x64C8            
    beq     $at, $zero, lbl_8088650C   
    slti    $at, v0, 0x0BB8            
    beql    $at, $zero, lbl_80886770   
    lui     $at, 0x4040                # $at = 40400000
lbl_8088650C:
    beq     $zero, $zero, lbl_8088676C 
    sh      $zero, 0x0038(v1)          # 8011A608
var_80886514:
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    lui     a1, %hi(func_808874E0)     # a1 = 80880000
    sw      t0, 0x0048($sp)            
    addiu   a1, a1, %lo(func_808874E0) # a1 = 808874E0
    jal     func_80885B00              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x004C($sp)            
    addiu   a0, s0, 0x0024             # a0 = 00000024
    jal     func_80063EB8              
    addiu   a1, a1, 0x0024             # a1 = 00000024
    swc1    $f0, 0x02A8(s0)            # 000002A8
    lw      t1, 0x004C($sp)            
    addiu   t3, $zero, 0xF000          # t3 = FFFFF000
    lwc1    $f6, 0x0028(s0)            # 00000028
    lh      t2, 0x00B6(t1)             # 000000B6
    sh      t3, 0x02A0(s0)             # 000002A0
    mtc1    $zero, $f16                # $f16 = 0.00
    sh      t2, 0x029C(s0)             # 0000029C
    lw      t4, 0x004C($sp)            
    lwc1    $f8, 0x0028(t4)            # 00000028
    sh      $zero, 0x029A(s0)          # 0000029A
    swc1    $f16, 0x02A4(s0)           # 000002A4
    sub.s   $f10, $f6, $f8             
    beq     $zero, $zero, lbl_8088676C 
    swc1    $f10, 0x0280(s0)           # 00000280
var_80886578:
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    lui     a1, %hi(func_80887868)     # a1 = 80880000
    sw      t5, 0x0048($sp)            
    addiu   a1, a1, %lo(func_80887868) # a1 = 80887868
    jal     func_80885B00              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f18                # $f18 = 0.00
    lw      v0, 0x004C($sp)            
    lwc1    $f4, 0x0028(s0)            # 00000028
    swc1    $f18, 0x02A8(s0)           # 000002A8
    lh      t6, 0x00B6(v0)             # 000000B6
    sh      $zero, 0x02A0(s0)          # 000002A0
    lui     $at, 0x40E0                # $at = 40E00000
    sh      t6, 0x029C(s0)             # 0000029C
    lwc1    $f6, 0x0028(v0)            # 00000028
    mtc1    $at, $f10                  # $f10 = 7.00
    sh      $zero, 0x029A(s0)          # 0000029A
    sub.s   $f8, $f4, $f6              
    swc1    $f10, 0x02A4(s0)           # 000002A4
    beq     $zero, $zero, lbl_8088676C 
    swc1    $f8, 0x0280(s0)            # 00000280
var_808865CC:
    lhu     t7, 0x02B4(s0)             # 000002B4
    lui     t9, 0x8002                 # t9 = 80020000
    addiu   t9, t9, 0xF01C             # t9 = 8001F01C
    ori     t8, t7, 0x0200             # t8 = 00000200
    sh      t8, 0x02B4(s0)             # 000002B4
    sw      t9, 0x00C0(s0)             # 000000C0
var_808865E4:
    lhu     t0, 0x02B4(s0)             # 000002B4
    ori     t1, t0, 0x0100             # t1 = 00000100
    sh      t1, 0x02B4(s0)             # 000002B4
var_808865F0:
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    lui     a1, %hi(func_80887164)     # a1 = 80880000
    sw      t2, 0x0048($sp)            
    addiu   a1, a1, %lo(func_80887164) # a1 = 80887164
    jal     func_80885B00              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_80026D64              
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    lui     $at, 0x4483                # $at = 44830000
    mtc1    $at, $f12                  # $f12 = 1048.00
    add.s   $f18, $f0, $f16            
    sh      $zero, 0x029A(s0)          # 0000029A
    jal     func_80026D64              
    swc1    $f18, 0x02A4(s0)           # 000002A4
    trunc.w.s $f4, $f0                   
    lw      t9, 0x0024(s0)             # 00000024
    lw      t8, 0x0028(s0)             # 00000028
    lui     $at, %hi(var_80889F90)     # $at = 80890000
    mfc1    t6, $f4                    
    sw      t9, 0x027C(s0)             # 0000027C
    lw      t9, 0x002C(s0)             # 0000002C
    addiu   t7, t6, 0x0200             # t7 = 00000200
    sh      t7, 0x029E(s0)             # 0000029E
    sw      t8, 0x0280(s0)             # 00000280
    sw      t9, 0x0284(s0)             # 00000284
    jal     func_80026D90              
    lwc1    $f12, %lo(var_80889F90)($at) 
    trunc.w.s $f6, $f0                   
    lui     t2, %hi(func_8088602C)     # t2 = 80880000
    addiu   t2, t2, %lo(func_8088602C) # t2 = 8088602C
    sw      t2, 0x02B8(s0)             # 000002B8
    mfc1    t1, $f6                    
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_8088620C              
    sh      t1, 0x02AC(s0)             # 000002AC
    addiu   t3, $zero, 0x00F0          # t3 = 000000F0
    sh      $zero, 0x02B0(s0)          # 000002B0
    beq     $zero, $zero, lbl_8088676C 
    sh      t3, 0x02B2(s0)             # 000002B2
var_808866A0:
    lui     $at, %hi(var_80889F94)     # $at = 80890000
    jal     func_80026D64              
    lwc1    $f12, %lo(var_80889F94)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     a1, %hi(func_80887408)     # a1 = 80880000
    addiu   a1, a1, %lo(func_80887408) # a1 = 80887408
    add.s   $f10, $f0, $f8             
    or      a0, s0, $zero              # a0 = 00000000
    trunc.w.s $f16, $f10                 
    mfc1    t5, $f16                   
    jal     func_80885B00              
    sw      t5, 0x0048($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80885B0C              
    or      a1, $zero, $zero           # a1 = 00000000
    beq     $zero, $zero, lbl_80886770 
    lui     $at, 0x4040                # $at = 40400000
var_808866E8:
    lui     a1, %hi(func_808874D0)     # a1 = 80880000
    addiu   a1, a1, %lo(func_808874D0) # a1 = 808874D0
    jal     func_80885B00              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80885B0C              
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    sw      a0, 0x0040($sp)            
    or      v1, $zero, $zero           # v1 = 00000000
    lui     $at, 0x41F0                # $at = 41F00000
lbl_80886714:
    mtc1    $at, $f4                   # $f4 = 30.00
    lwc1    $f18, 0x0028(s0)           # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    sub.s   $f6, $f18, $f4             
    lw      a0, 0x0040($sp)            
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0018          # a2 = 00000018
    swc1    $f6, 0x0010($sp)           
    lwc1    $f8, 0x002C(s0)            # 0000002C
    sw      v1, 0x0044($sp)            
    sw      t6, 0x0024($sp)            
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    jal     func_80025110              # ActorSpawn
    swc1    $f8, 0x0014($sp)           
    lw      v1, 0x0044($sp)            
    addiu   $at, $zero, 0x0008         # $at = 00000008
    addiu   v1, v1, 0x0001             # v1 = 00000001
    bnel    v1, $at, lbl_80886714      
    lui     $at, 0x41F0                # $at = 41F00000
lbl_8088676C:
    lui     $at, 0x4040                # $at = 40400000
lbl_80886770:
    mtc1    $at, $f10                  # $f10 = 3.00
    lui     a0, %hi(var_80889E94)      # a0 = 80890000
    addiu   a0, a0, %lo(var_80889E94)  # a0 = 80889E94
    swc1    $f10, 0x0290(s0)           # 00000290
    lw      t8, 0x0000(a0)             # 80889E94
    addiu   v1, s0, 0x0234             # v1 = 00000234
    lui     t1, %hi(var_80889ED4)      # t1 = 80890000
    sw      t8, 0x0000(v1)             # 00000234
    lw      t7, 0x0004(a0)             # 80889E98
    addiu   t1, t1, %lo(var_80889ED4)  # t1 = 80889ED4
    sw      t7, 0x0004(v1)             # 00000238
    lw      t8, 0x0008(a0)             # 80889E9C
    sw      t8, 0x0008(v1)             # 0000023C
    lw      t7, 0x000C(a0)             # 80889EA0
    sw      t7, 0x000C(v1)             # 00000240
    lw      t9, 0x0048($sp)            
    lw      v0, 0x0048($sp)            
    blez    t9, lbl_808867F8           
    subu    v0, $zero, v0              
    sll     t0, t9,  2                 
    subu    t0, t0, t9                 
    addu    s1, t0, t1                 
    jal     func_80886284              
    lbu     a0, 0x0000(s1)             # 00000000
    swc1    $f0, 0x0244(s0)            # 00000244
    jal     func_80886284              
    lbu     a0, 0x0001(s1)             # 00000001
    swc1    $f0, 0x0248(s0)            # 00000248
    jal     func_80886284              
    lbu     a0, 0x0002(s1)             # 00000002
    mtc1    $zero, $f16                # $f16 = 0.00
    swc1    $f0, 0x024C(s0)            # 0000024C
    beq     $zero, $zero, lbl_8088684C 
    swc1    $f16, 0x0250(s0)           # 00000250
lbl_808867F8:
    sll     v0, v0,  4                 
    addu    t2, a0, v0                 
    lw      t4, 0x0000(t2)             # 00000000
    lui     t5, %hi(var_80889EB4)      # t5 = 80890000
    addiu   t5, t5, %lo(var_80889EB4)  # t5 = 80889EB4
    sw      t4, 0x0000(v1)             # 00000000
    lw      t3, 0x0004(t2)             # 00000004
    addu    t6, v0, t5                 
    sw      t3, 0x0004(v1)             # 00000004
    lw      t4, 0x0008(t2)             # 00000008
    sw      t4, 0x0008(v1)             # 00000008
    lw      t3, 0x000C(t2)             # 0000000C
    sw      t3, 0x000C(v1)             # 0000000C
    lw      t8, 0x0000(t6)             # 00000000
    sw      t8, 0x0244(s0)             # 00000244
    lw      t7, 0x0004(t6)             # 00000004
    sw      t7, 0x0248(s0)             # 00000248
    lw      t8, 0x0008(t6)             # 00000008
    sw      t8, 0x024C(s0)             # 0000024C
    lw      t7, 0x000C(t6)             # 0000000C
    sw      t7, 0x0250(s0)             # 00000250
lbl_8088684C:
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x002C($sp)            
    lw      s1, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80886860:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80886870:
    sw      a1, 0x0004($sp)            
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    lh      v0, 0x02B2(a0)             # 000002B2
    slti    $at, v0, 0x0258            
    beq     $at, $zero, lbl_80886890   
    addu    t6, v0, a1                 
    sh      t6, 0x02B2(a0)             # 000002B2
lbl_80886890:
    jr      $ra                        
    nop


func_80886898:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0028($sp)            
    addiu   a1, a3, 0x07A8             # a1 = 000007A8
    or      a0, a3, $zero              # a0 = 00000000
    lw      a2, 0x0264(t6)             # 00000264
    sw      a3, 0x002C($sp)            
    jal     func_80066610              
    sw      a1, 0x001C($sp)            
    lw      t7, 0x0028($sp)            
    lw      a1, 0x001C($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_80066610              
    lw      a2, 0x0278(t7)             # 00000278
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_808868E8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_800636C4              # sins?
    lh      a0, 0x029C(s0)             # 0000029C
    lwc1    $f4, 0x02A8(s0)            # 000002A8
    lh      a0, 0x029A(s0)             # 0000029A
    mul.s   $f6, $f0, $f4              
    jal     func_800636C4              # sins?
    swc1    $f6, 0x027C(s0)            # 0000027C
    lwc1    $f8, 0x02A4(s0)            # 000002A4
    lh      a0, 0x029C(s0)             # 0000029C
    mul.s   $f10, $f0, $f8             
    jal     func_80063684              # coss?
    swc1    $f10, 0x0280(s0)           # 00000280
    lwc1    $f16, 0x02A8(s0)           # 000002A8
    lh      t6, 0x029C(s0)             # 0000029C
    lh      t7, 0x02A0(s0)             # 000002A0
    mul.s   $f18, $f0, $f16            
    lh      t9, 0x029A(s0)             # 0000029A
    lh      t0, 0x029E(s0)             # 0000029E
    addu    t8, t6, t7                 
    sh      t8, 0x029C(s0)             # 0000029C
    addu    t1, t9, t0                 
    sh      t1, 0x029A(s0)             # 0000029A
    swc1    $f18, 0x0284(s0)           # 00000284
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8088696C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_80063684              # coss?
    lh      a0, 0x029A(s0)             # 0000029A
    lwc1    $f4, 0x02A4(s0)            # 000002A4
    lwc1    $f8, 0x02A8(s0)            # 000002A8
    mul.s   $f6, $f0, $f4              
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0024($sp)          
    jal     func_800636C4              # sins?
    lh      a0, 0x029C(s0)             # 0000029C
    lwc1    $f16, 0x0024($sp)          
    mtc1    $zero, $f4                 # $f4 = 0.00
    lh      a0, 0x029C(s0)             # 0000029C
    mul.s   $f18, $f0, $f16            
    swc1    $f4, 0x0280(s0)            # 00000280
    jal     func_80063684              # coss?
    swc1    $f18, 0x027C(s0)           # 0000027C
    lwc1    $f6, 0x0024($sp)           
    lh      t6, 0x029C(s0)             # 0000029C
    lh      t7, 0x02A0(s0)             # 000002A0
    mul.s   $f8, $f0, $f6              
    lh      t9, 0x029A(s0)             # 0000029A
    lh      t0, 0x029E(s0)             # 0000029E
    addu    t8, t6, t7                 
    sh      t8, 0x029C(s0)             # 0000029C
    addu    t1, t9, t0                 
    sh      t1, 0x029A(s0)             # 0000029A
    swc1    $f8, 0x0284(s0)            # 00000284
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80886A00:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lw      t6, 0x1C44(a1)             # 00001C44
    sw      t6, 0x0024($sp)            
    lh      a0, 0x029C(s0)             # 0000029C
    sll     t8, a0,  1                 
    jal     func_800636C4              # sins?
    sh      t8, 0x029A(s0)             # 0000029A
    lwc1    $f4, 0x02A8(s0)            # 000002A8
    lh      a0, 0x029A(s0)             # 0000029A
    mul.s   $f6, $f0, $f4              
    jal     func_800636C4              # sins?
    swc1    $f6, 0x027C(s0)            # 0000027C
    lwc1    $f8, 0x02A4(s0)            # 000002A4
    mul.s   $f10, $f0, $f8             
    swc1    $f10, 0x0280(s0)           # 00000280
    lw      t9, 0x0024($sp)            
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(t9)             # 000000B6
    lwc1    $f18, 0x027C(s0)           # 0000027C
    neg.s   $f16, $f0                  
    mul.s   $f4, $f16, $f18            
    swc1    $f4, 0x0284(s0)            # 00000284
    lw      t0, 0x0024($sp)            
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(t0)             # 000000B6
    lwc1    $f6, 0x027C(s0)            # 0000027C
    lh      t1, 0x029C(s0)             # 0000029C
    lh      t2, 0x02A0(s0)             # 000002A0
    mul.s   $f8, $f0, $f6              
    addu    t3, t1, t2                 
    sh      t3, 0x029C(s0)             # 0000029C
    swc1    $f8, 0x027C(s0)            # 0000027C
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80886A9C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    mtc1    a2, $f12                   # $f12 = 0.00
    mtc1    $zero, $f14                # $f14 = 0.00
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lwc1    $f4, 0x0004(a1)            # 00000004
    lwc1    $f6, 0x0280(a3)            # 00000280
    lwc1    $f10, 0x0028(a3)           # 00000028
    lui     $at, 0xBF80                # $at = BF800000
    add.s   $f8, $f4, $f6              
    sub.s   $f16, $f8, $f10            
    mul.s   $f2, $f16, $f12            
    c.le.s  $f14, $f2                  
    abs.s   $f0, $f2                   
    bc1fl   lbl_80886AF0               
    mtc1    $at, $f12                  # $f12 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    beq     $zero, $zero, lbl_80886AF8 
    c.lt.s  $f0, $f14                  
    mtc1    $at, $f12                  # $f12 = 1.00
lbl_80886AF0:
    nop
    c.lt.s  $f0, $f14                  
lbl_80886AF8:
    lui     $at, 0x41A0                # $at = 41A00000
    bc1fl   lbl_80886B10               
    mtc1    $at, $f14                  # $f14 = 20.00
    beq     $zero, $zero, lbl_80886B34 
    mov.s   $f0, $f14                  
    mtc1    $at, $f14                  # $f14 = 20.00
lbl_80886B10:
    nop
    c.lt.s  $f14, $f0                  
    nop
    bc1fl   lbl_80886B30               
    mov.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80886B30 
    mov.s   $f2, $f14                  
    mov.s   $f2, $f0                   
lbl_80886B30:
    mov.s   $f0, $f2                   
lbl_80886B34:
    mul.s   $f18, $f0, $f12            
    addiu   a0, a3, 0x0060             # a0 = 00000060
    lui     a2, 0x4200                 # a2 = 42000000
    mfc1    a1, $f18                   
    jal     func_8006385C              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80886B5C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    mtc1    $zero, $f16                # $f16 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a2, 0x0040($sp)            
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x027C(s0)            # 0000027C
    lwc1    $f10, 0x0024(s0)           # 00000024
    lui     $at, 0xBF80                # $at = BF800000
    add.s   $f8, $f4, $f6              
    lwc1    $f6, 0x0040($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    sub.s   $f4, $f8, $f10             
    lwc1    $f10, 0x0284(s0)           # 00000284
    lwc1    $f8, 0x0008(a1)            # 00000008
    mul.s   $f14, $f4, $f6             
    add.s   $f4, $f8, $f10             
    lwc1    $f8, 0x002C(s0)            # 0000002C
    sub.s   $f10, $f4, $f8             
    c.le.s  $f16, $f14                 
    mul.s   $f2, $f10, $f6             
    abs.s   $f0, $f14                  
    bc1f    lbl_80886BD0               
    mov.s   $f14, $f0                  
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    beq     $zero, $zero, lbl_80886BDC 
    c.le.s  $f16, $f2                  
lbl_80886BD0:
    mtc1    $at, $f18                  # $f18 = 1.00
    nop
    c.le.s  $f16, $f2                  
lbl_80886BDC:
    lui     $at, 0xBF80                # $at = BF800000
    bc1fl   lbl_80886BFC               
    mtc1    $at, $f8                   # $f8 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    beq     $zero, $zero, lbl_80886C04 
    swc1    $f4, 0x0028($sp)           
    mtc1    $at, $f8                   # $f8 = 1.00
lbl_80886BFC:
    nop
    swc1    $f8, 0x0028($sp)           
lbl_80886C04:
    c.lt.s  $f14, $f16                 
    lui     $at, 0x41A0                # $at = 41A00000
    abs.s   $f0, $f2                   
    lw      a2, 0x0040($sp)            
    bc1fl   lbl_80886C28               
    mtc1    $at, $f10                  # $f10 = 20.00
    beq     $zero, $zero, lbl_80886C50 
    mov.s   $f2, $f16                  
    mtc1    $at, $f10                  # $f10 = 20.00
lbl_80886C28:
    lui     $at, 0x41A0                # $at = 41A00000
    c.lt.s  $f10, $f14                 
    nop
    bc1fl   lbl_80886C4C               
    mov.s   $f12, $f14                 
    mtc1    $at, $f12                  # $f12 = 20.00
    beq     $zero, $zero, lbl_80886C50 
    mov.s   $f2, $f12                  
    mov.s   $f12, $f14                 
lbl_80886C4C:
    mov.s   $f2, $f12                  
lbl_80886C50:
    c.lt.s  $f0, $f16                  
    mul.s   $f14, $f2, $f18            
    lui     $at, 0x41A0                # $at = 41A00000
    bc1fl   lbl_80886C70               
    mtc1    $at, $f2                   # $f2 = 20.00
    beq     $zero, $zero, lbl_80886C94 
    mov.s   $f2, $f16                  
    mtc1    $at, $f2                   # $f2 = 20.00
lbl_80886C70:
    nop
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80886C90               
    mov.s   $f12, $f0                  
    beq     $zero, $zero, lbl_80886C90 
    mov.s   $f12, $f2                  
    mov.s   $f12, $f0                  
lbl_80886C90:
    mov.s   $f2, $f12                  
lbl_80886C94:
    swc1    $f2, 0x0024($sp)           
    jal     func_80886A9C              
    swc1    $f14, 0x0034($sp)          
    lwc1    $f14, 0x0034($sp)          
    addiu   a0, s0, 0x005C             # a0 = 0000005C
    lui     a2, 0x3FC0                 # a2 = 3FC00000
    mfc1    a1, $f14                   
    jal     func_8006385C              
    nop
    lwc1    $f2, 0x0024($sp)           
    lwc1    $f6, 0x0028($sp)           
    addiu   a0, s0, 0x0064             # a0 = 00000064
    lui     a2, 0x3FC0                 # a2 = 3FC00000
    mul.s   $f4, $f2, $f6              
    mfc1    a1, $f4                    
    jal     func_8006385C              
    nop
    jal     func_80021124              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80886CF4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    sw      a0, 0x0018($sp)            
    jal     func_80886A9C              
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    lwc1    $f6, 0x027C(a0)            # 0000027C
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f10, 0x0024(a0)           # 00000024
    add.s   $f8, $f4, $f6              
    lwc1    $f4, 0x0284(a0)            # 00000284
    sub.s   $f16, $f8, $f10            
    lwc1    $f8, 0x002C(a0)            # 0000002C
    swc1    $f16, 0x005C(a0)           # 0000005C
    lwc1    $f18, 0x0008(a1)           # 00000008
    add.s   $f6, $f18, $f4             
    sub.s   $f10, $f6, $f8             
    jal     func_80021124              
    swc1    $f10, 0x0064(a0)           # 00000064
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    lwc1    $f18, 0x027C(a0)           # 0000027C
    lwc1    $f16, 0x0000(a1)           # 00000000
    lwc1    $f8, 0x0284(a0)            # 00000284
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0024(a0)            # 00000024
    lwc1    $f6, 0x0008(a1)            # 00000008
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x002C(a0)           # 0000002C
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80886D80:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    lw      a1, 0x001C($sp)            
    jal     func_80886A9C              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    swc1    $f0, 0x0064(a0)            # 00000064
    jal     func_80021124              
    swc1    $f0, 0x005C(a0)            # 0000005C
    lw      v0, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    lwc1    $f4, 0x0000(v0)            # 00000000
    lwc1    $f6, 0x027C(a0)            # 0000027C
    lwc1    $f16, 0x0284(a0)           # 00000284
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0024(a0)            # 00000024
    lwc1    $f10, 0x0008(v0)           # 00000008
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x002C(a0)           # 0000002C
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80886DEC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lh      a0, 0x029A(a3)             # 0000029A
    jal     func_800636C4              # sins?
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lw      t6, 0x001C($sp)            
    lui     $at, %hi(var_80889F98)     # $at = 80890000
    lwc1    $f4, 0x02A4(a3)            # 000002A4
    lwc1    $f8, 0x0004(t6)            # 00000004
    lwc1    $f16, 0x0028(a3)           # 00000028
    mul.s   $f6, $f0, $f4              
    lwc1    $f4, %lo(var_80889F98)($at) 
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0xBF80                # $at = BF800000
    add.s   $f10, $f6, $f8             
    sub.s   $f18, $f10, $f16           
    mul.s   $f2, $f18, $f4             
    c.le.s  $f14, $f2                  
    abs.s   $f0, $f2                   
    bc1fl   lbl_80886E60               
    mtc1    $at, $f12                  # $f12 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    beq     $zero, $zero, lbl_80886E68 
    c.lt.s  $f0, $f14                  
    mtc1    $at, $f12                  # $f12 = 1.00
lbl_80886E60:
    nop
    c.lt.s  $f0, $f14                  
lbl_80886E68:
    lh      t7, 0x029A(a3)             # 0000029A
    lh      t8, 0x029E(a3)             # 0000029E
    lui     $at, 0x41A0                # $at = 41A00000
    addu    t9, t7, t8                 
    bc1f    lbl_80886E88               
    sh      t9, 0x029A(a3)             # 0000029A
    beq     $zero, $zero, lbl_80886EB0 
    mov.s   $f0, $f14                  
lbl_80886E88:
    mtc1    $at, $f14                  # $f14 = 20.00
    nop
    c.lt.s  $f14, $f0                  
    nop
    bc1fl   lbl_80886EAC               
    mov.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80886EAC 
    mov.s   $f2, $f14                  
    mov.s   $f2, $f0                   
lbl_80886EAC:
    mov.s   $f0, $f2                   
lbl_80886EB0:
    mul.s   $f6, $f0, $f12             
    addiu   a0, a3, 0x0060             # a0 = 00000060
    lui     a2, 0x3FC0                 # a2 = 3FC00000
    mfc1    a1, $f6                    
    jal     func_8006385C              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80886ED8:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lw      t6, 0x003C($sp)            
    lui     $at, %hi(var_80889F9C)     # $at = 80890000
    lwc1    $f4, %lo(var_80889F9C)($at) 
    lw      v1, 0x1C44(t6)             # 00001C44
    lw      a1, 0x02A8(s0)             # 000002A8
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a3, 0x3F00                 # a3 = 3F000000
    swc1    $f4, 0x0010($sp)           
    jal     func_80064178              
    sw      v1, 0x002C($sp)            
    lh      v0, 0x0298(s0)             # 00000298
    lw      v1, 0x002C($sp)            
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v0, $zero, lbl_80886F4C    
    addiu   v0, s0, 0x027C             # v0 = 0000027C
    beq     v0, $at, lbl_80886FAC      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    v0, $at, lbl_80886F80      
    lwc1    $f18, 0x002C(s0)           # 0000002C
    beq     $zero, $zero, lbl_80886FD0 
    lh      a1, 0x02A0(s0)             # 000002A0
    addiu   v0, s0, 0x027C             # v0 = 0000027C
lbl_80886F4C:
    lwc1    $f8, 0x0008(v0)            # 00000284
    lwc1    $f16, 0x0000(v0)           # 0000027C
    lwc1    $f6, 0x002C(s0)            # 0000002C
    lwc1    $f10, 0x0024(s0)           # 00000024
    sub.s   $f12, $f6, $f8             
    sub.s   $f14, $f10, $f16           
    neg.s   $f12, $f12                 
    jal     func_800AA4F8              
    neg.s   $f14, $f14                 
    sll     a1, v0, 16                 
    beq     $zero, $zero, lbl_80886FD0 
    sra     a1, a1, 16                 
    lwc1    $f18, 0x002C(s0)           # 0000002C
lbl_80886F80:
    lwc1    $f4, 0x002C(v1)            # 0000002C
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0024(v1)            # 00000024
    sub.s   $f12, $f18, $f4            
    sub.s   $f14, $f6, $f8             
    neg.s   $f12, $f12                 
    jal     func_800AA4F8              
    neg.s   $f14, $f14                 
    sll     a1, v0, 16                 
    beq     $zero, $zero, lbl_80886FD0 
    sra     a1, a1, 16                 
lbl_80886FAC:
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lwc1    $f16, 0x002C(v1)           # 0000002C
    lwc1    $f18, 0x0024(s0)           # 00000024
    lwc1    $f4, 0x0024(v1)            # 00000024
    sub.s   $f12, $f10, $f16           
    jal     func_800AA4F8              
    sub.s   $f14, $f18, $f4            
    sll     a1, v0, 16                 
    sra     a1, a1, 16                 
lbl_80886FD0:
    lh      a3, 0x029C(s0)             # 0000029C
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sw      t7, 0x0010($sp)            
    addiu   a0, s0, 0x02AC             # a0 = 000002AC
    jal     func_80064508              
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    lh      t8, 0x02AC(s0)             # 000002AC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002121C              
    sh      t8, 0x0032(s0)             # 00000032
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8088700C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    mtc1    a3, $f14                   # $f14 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a2, 0x0030($sp)            
    lwc1    $f12, 0x0038($sp)          
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x027C(s0)            # 0000027C
    lwc1    $f10, 0x0024(s0)           # 00000024
    lui     $at, %hi(var_80889FA0)     # $at = 80890000
    add.s   $f8, $f4, $f6              
    lwc1    $f6, 0x0008(a1)            # 00000008
    or      a0, s0, $zero              # a0 = 00000000
    sub.s   $f4, $f8, $f10             
    lwc1    $f8, 0x0284(s0)            # 00000284
    mul.s   $f16, $f4, $f12            
    add.s   $f10, $f6, $f8             
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lwc1    $f8, %lo(var_80889FA0)($at) 
    lui     $at, 0x41F0                # $at = 41F00000
    sub.s   $f6, $f10, $f4             
    mtc1    $at, $f10                  # $f10 = 30.00
    swc1    $f16, 0x0024($sp)          
    mul.s   $f18, $f6, $f12            
    add.s   $f12, $f12, $f8            
    add.s   $f14, $f14, $f10           
    mfc1    a2, $f12                   
    swc1    $f18, 0x0020($sp)          
    jal     func_80886A9C              
    swc1    $f14, 0x0034($sp)          
    lwc1    $f16, 0x0024($sp)          
    lwc1    $f18, 0x0020($sp)          
    lwc1    $f8, 0x0030($sp)           
    mul.s   $f4, $f16, $f16            
    lwc1    $f14, 0x0034($sp)          
    addiu   a0, s0, 0x005C             # a0 = 0000005C
    mul.s   $f6, $f18, $f18            
    lui     a2, 0x40A0                 # a2 = 40A00000
    add.s   $f0, $f4, $f6              
    sqrt.s  $f0, $f0                   
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_808870CC               
    c.lt.s  $f14, $f0                  
    beq     $zero, $zero, lbl_808870E8 
    mov.s   $f2, $f8                   
    c.lt.s  $f14, $f0                  
lbl_808870CC:
    nop
    bc1fl   lbl_808870E4               
    mov.s   $f12, $f0                  
    beq     $zero, $zero, lbl_808870E4 
    mov.s   $f12, $f14                 
    mov.s   $f12, $f0                  
lbl_808870E4:
    mov.s   $f2, $f12                  
lbl_808870E8:
    c.eq.s  $f0, $f2                   
    swc1    $f2, 0x0068(s0)            # 00000068
    bc1tl   lbl_80887128               
    mfc1    a1, $f16                   
    mtc1    $zero, $f10                # $f10 = 0.00
    nop
    c.eq.s  $f0, $f10                  
    nop
    bc1tl   lbl_80887128               
    mfc1    a1, $f16                   
    div.s   $f12, $f2, $f0             
    mul.s   $f16, $f16, $f12           
    nop
    mul.s   $f18, $f18, $f12           
    nop
    mfc1    a1, $f16                   
lbl_80887128:
    jal     func_8006385C              
    swc1    $f18, 0x0020($sp)          
    lwc1    $f18, 0x0020($sp)          
    addiu   a0, s0, 0x0064             # a0 = 00000064
    lui     a2, 0x40A0                 # a2 = 40A00000
    mfc1    a1, $f18                   
    jal     func_8006385C              
    nop
    jal     func_80021124              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80887164:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lw      t6, 0x003C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      v0, 0x1C44(t6)             # 00001C44
    sw      v0, 0x0034($sp)            
    jal     func_8008C9C0              
    sw      v0, 0x002C($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80889FA4)     # $at = 80890000
    lwc1    $f4, %lo(var_80889FA4)($at) 
    lui     $at, 0x4120                # $at = 41200000
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_808871F4               
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_80026D64              
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lui     $at, 0x4480                # $at = 44800000
    mtc1    $at, $f12                  # $f12 = 1024.00
    add.s   $f8, $f0, $f6              
    jal     func_80026D64              
    swc1    $f8, 0x02A4(s0)            # 000002A4
    trunc.w.s $f10, $f0                  
    mfc1    t0, $f10                   
    nop
    addiu   t1, t0, 0x0200             # t1 = 00000200
    sh      t1, 0x029E(s0)             # 0000029E
    or      a0, s0, $zero              # a0 = 00000000
lbl_808871F4:
    jal     func_8088620C              
    lw      a1, 0x003C($sp)            
    lw      t2, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x027C             # a1 = 0000027C
    lwc1    $f16, 0x08FC(t2)           # 000008FC
    jal     func_80886DEC              
    swc1    $f16, 0x0280(s0)           # 00000280
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80886ED8              
    lw      a1, 0x003C($sp)            
    lh      v0, 0x0298(s0)             # 00000298
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $at, lbl_80887240      
    lw      a1, 0x003C($sp)            
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    v0, $at, lbl_8088724C      
    or      a0, s0, $zero              # a0 = 00000000
lbl_80887240:
    jal     func_80888890              
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    or      a0, s0, $zero              # a0 = 00000000
lbl_8088724C:
    jal     func_80022BB0              
    lw      a1, 0x003C($sp)            
    beq     v0, $zero, lbl_8088726C    
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808873F8 
    lw      $ra, 0x0024($sp)           
lbl_8088726C:
    jal     func_8007943C              
    lw      a0, 0x003C($sp)            
    bnel    v0, $zero, lbl_808873F8    
    lw      $ra, 0x0024($sp)           
    lw      v0, 0x0034($sp)            
    lwc1    $f18, 0x0028(s0)           # 00000028
    mtc1    $zero, $f6                 # $f6 = 0.00
    lwc1    $f4, 0x0028(v0)            # 00000028
    lui     $at, 0x4270                # $at = 42700000
    sub.s   $f0, $f18, $f4             
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_80887344               
    lhu     v1, 0x02B4(s0)             # 000002B4
    mtc1    $at, $f8                   # $f8 = 60.00
    addiu   a0, s0, 0x0024             # a0 = 00000024
    addiu   a1, v0, 0x0024             # a1 = 00000024
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_80887344               
    lhu     v1, 0x02B4(s0)             # 000002B4
    jal     func_80885E64              
    lui     a2, 0x4120                 # a2 = 41200000
    bne     v0, $zero, lbl_80887340    
    lw      a0, 0x003C($sp)            
    jal     func_800720BC              
    addiu   a1, $zero, 0x0080          # a1 = 00000080
    lhu     t3, 0x02B4(s0)             # 000002B4
    andi    t4, t3, 0x0200             # t4 = 00000000
    beql    t4, $zero, lbl_808872F4    
    lui     $at, 0x4248                # $at = 42480000
    jal     func_80072500              
    lw      a0, 0x003C($sp)            
    lui     $at, 0x4248                # $at = 42480000
lbl_808872F4:
    mtc1    $at, $f10                  # $f10 = 50.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f16                  # $f16 = 30.00
    swc1    $f10, 0x02A8(s0)           # 000002A8
    lw      t5, 0x0034($sp)            
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   t7, $zero, 0xF000          # t7 = FFFFF000
    lh      t6, 0x00B6(t5)             # 000000B6
    lui     a1, %hi(func_808874E0)     # a1 = 80880000
    sh      t7, 0x02A0(s0)             # 000002A0
    sh      $zero, 0x029A(s0)          # 0000029A
    addiu   a1, a1, %lo(func_808874E0) # a1 = 808874E0
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f16, 0x0280(s0)           # 00000280
    swc1    $f18, 0x02A4(s0)           # 000002A4
    jal     func_80885B00              
    sh      t6, 0x029C(s0)             # 0000029C
    beq     $zero, $zero, lbl_808873F8 
    lw      $ra, 0x0024($sp)           
lbl_80887340:
    lhu     v1, 0x02B4(s0)             # 000002B4
lbl_80887344:
    andi    t8, v1, 0x0100             # t8 = 00000000
    beql    t8, $zero, lbl_808873D0    
    andi    t2, v1, 0x0200             # t2 = 00000000
    lh      v0, 0x02B2(s0)             # 000002B2
    blez    v0, lbl_8088736C           
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x02B2(s0)             # 000002B2
    beq     $zero, $zero, lbl_808873CC 
    lhu     v1, 0x02B4(s0)             # 000002B4
lbl_8088736C:
    sh      t0, 0x02B2(s0)             # 000002B2
    lh      v0, 0x02B2(s0)             # 000002B2
    slti    $at, v0, 0xFFF7            
    bne     $at, $zero, lbl_808873BC   
    addiu   t1, v0, 0x000A             # t1 = 0000000A
    mtc1    t1, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80889FA8)     # $at = 80890000
    lwc1    $f8, %lo(var_80889FA8)($at) 
    cvt.s.w $f6, $f4                   
    lui     $at, %hi(var_80889FAC)     # $at = 80890000
    lwc1    $f16, %lo(var_80889FAC)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f10, $f6, $f8             
    nop
    mul.s   $f18, $f10, $f16           
    mfc1    a1, $f18                   
    jal     func_80020F88              
    nop
    beq     $zero, $zero, lbl_808873CC 
    lhu     v1, 0x02B4(s0)             # 000002B4
lbl_808873BC:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808873F8 
    lw      $ra, 0x0024($sp)           
lbl_808873CC:
    andi    t2, v1, 0x0200             # t2 = 00000000
lbl_808873D0:
    bne     t2, $zero, lbl_808873F4    
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    lw      a1, 0x003C($sp)            
    addiu   a2, $zero, 0x007E          # a2 = 0000007E
    lui     a3, 0x42A0                 # a3 = 42A00000
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
lbl_808873F4:
    lw      $ra, 0x0024($sp)           
lbl_808873F8:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80887408:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x003C($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808868E8              
    lw      a1, 0x003C($sp)            
    lw      v1, 0x0118(s0)             # 00000118
    beq     v1, $zero, lbl_808874A4    
    nop
    lw      t6, 0x0130(v1)             # 00000130
    beq     t6, $zero, lbl_808874A4    
    nop
    lw      t8, 0x0024(v1)             # 00000024
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    lui     $at, %hi(var_80889FB0)     # $at = 80890000
    sw      t8, 0x0000(a1)             # FFFFFFF4
    lw      t7, 0x0028(v1)             # 00000028
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    sw      t7, 0x0004(a1)             # FFFFFFF8
    lw      t8, 0x002C(v1)             # 0000002C
    or      a0, s0, $zero              # a0 = 00000000
    sw      t8, 0x0008(a1)             # FFFFFFFC
    lwc1    $f6, 0x0054(s0)            # 00000054
    lwc1    $f4, %lo(var_80889FB0)($at) 
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f10                  # $f10 = 40.00
    mul.s   $f8, $f4, $f6              
    lwc1    $f18, 0x0030($sp)          
    add.s   $f16, $f8, $f10            
    add.s   $f4, $f18, $f16            
    jal     func_80886B5C              
    swc1    $f4, 0x0030($sp)           
    beq     $zero, $zero, lbl_808874B0 
    lwc1    $f12, 0x0064(s0)           # 00000064
lbl_808874A4:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f12, 0x0064(s0)           # 00000064
lbl_808874B0:
    jal     func_800AA4F8              
    lwc1    $f14, 0x005C(s0)           # 0000005C
    sh      v0, 0x02AC(s0)             # 000002AC
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_808874D0:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_808874E0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t7, 0x1C44(t6)             # 00001C44
    jal     func_8008C9C0              
    sw      t7, 0x002C($sp)            
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x02A8             # a0 = 000002A8
    lui     a1, 0x41F0                 # a1 = 41F00000
    lui     a3, 0x4080                 # a3 = 40800000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x029C(s0)             # 0000029C
    lwc1    $f6, 0x02A8(s0)            # 000002A8
    lwc1    $f2, 0x02A4(s0)            # 000002A4
    lwc1    $f10, 0x0280(s0)           # 00000280
    mul.s   $f8, $f0, $f6              
    lh      v1, 0x029A(s0)             # 0000029A
    add.s   $f16, $f10, $f2            
    lui     $at, 0x4000                # $at = 40000000
    or      v0, v1, $zero              # v0 = 00000000
    swc1    $f16, 0x0280(s0)           # 00000280
    beq     v1, $zero, lbl_80887574    
    swc1    $f8, 0x027C(s0)            # 0000027C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_808875AC      
    lui     $at, 0xBF80                # $at = BF800000
    beq     $zero, $zero, lbl_808875D0 
    nop
lbl_80887574:
    mtc1    $at, $f18                  # $f18 = -1.00
    lui     $at, %hi(var_80889FB4)     # $at = 80890000
    addiu   t8, v1, 0x0001             # t8 = 00000001
    c.lt.s  $f2, $f18                  
    nop
    bc1f    lbl_808875A0               
    nop
    lwc1    $f4, %lo(var_80889FB4)($at) 
    add.s   $f6, $f2, $f4              
    beq     $zero, $zero, lbl_808875D0 
    swc1    $f6, 0x02A4(s0)            # 000002A4
lbl_808875A0:
    beq     $zero, $zero, lbl_808875D0 
    sh      t8, 0x029A(s0)             # 0000029A
    lui     $at, 0xBF80                # $at = BF800000
lbl_808875AC:
    mtc1    $at, $f8                   # $f8 = -1.00
    lui     $at, %hi(var_80889FB8)     # $at = 80890000
    c.lt.s  $f8, $f2                   
    nop
    bc1f    lbl_808875D0               
    nop
    lwc1    $f10, %lo(var_80889FB8)($at) 
    sub.s   $f16, $f2, $f10            
    swc1    $f16, 0x02A4(s0)           # 000002A4
lbl_808875D0:
    jal     func_800636C4              # sins?
    lh      a0, 0x029C(s0)             # 0000029C
    lwc1    $f18, 0x02A8(s0)           # 000002A8
    lh      t9, 0x029C(s0)             # 0000029C
    lh      t0, 0x02A0(s0)             # 000002A0
    neg.s   $f4, $f18                  
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    mul.s   $f6, $f0, $f4              
    addu    t1, t9, t0                 
    sh      t1, 0x029C(s0)             # 0000029C
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f6, 0x0284(s0)            # 00000284
    lw      a1, 0x002C($sp)            
    jal     func_80886B5C              
    addiu   a1, a1, 0x0024             # a1 = 00000024
    mtc1    $zero, $f2                 # $f2 = 0.00
    lwc1    $f8, 0x02A4(s0)            # 000002A4
    lui     $at, 0x41A0                # $at = 41A00000
    c.lt.s  $f8, $f2                   
    nop
    bc1fl   lbl_80887680               
    lui     $at, 0xC120                # $at = C1200000
    lwc1    $f0, 0x0280(s0)            # 00000280
    mtc1    $at, $f10                  # $f10 = -10.00
    nop
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_80887680               
    lui     $at, 0xC120                # $at = C1200000
    c.lt.s  $f2, $f0                   
    lui     $at, %hi(var_80889FBC)     # $at = 80890000
    bc1fl   lbl_80887680               
    lui     $at, 0xC120                # $at = C1200000
    lwc1    $f16, %lo(var_80889FBC)($at) 
    lui     $at, %hi(var_80889FC0)     # $at = 80890000
    lwc1    $f4, %lo(var_80889FC0)($at) 
    mul.s   $f18, $f0, $f16            
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f6, $f18, $f4             
    mfc1    a1, $f6                    
    jal     func_80020F88              
    nop
    lui     $at, 0xC120                # $at = C1200000
lbl_80887680:
    mtc1    $at, $f10                  # $f10 = -10.00
    lwc1    $f8, 0x0280(s0)            # 00000280
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_808876AC               
    lwc1    $f12, 0x0064(s0)           # 00000064
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808876D8 
    lw      $ra, 0x0024($sp)           
    lwc1    $f12, 0x0064(s0)           # 00000064
lbl_808876AC:
    jal     func_800AA4F8              
    lwc1    $f14, 0x005C(s0)           # 0000005C
    sh      v0, 0x02AC(s0)             # 000002AC
    lw      a1, 0x0034($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80888890              
    addiu   a2, $zero, 0x0020          # a2 = 00000020
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x20A8          # a1 = 000020A8
    lw      $ra, 0x0024($sp)           
lbl_808876D8:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_808876E8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t7, 0x1C44(t6)             # 00001C44
    jal     func_8008C9C0              
    sw      t7, 0x0024($sp)            
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    lwc1    $f0, 0x0280(s0)            # 00000280
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80887740               
    lh      v0, 0x029E(s0)             # 0000029E
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80887858 
    lw      $ra, 0x001C($sp)           
    lh      v0, 0x029E(s0)             # 0000029E
lbl_80887740:
    slti    $at, v0, 0x007E            
    bne     $at, $zero, lbl_80887780   
    lui     $at, %hi(var_80889FC4)     # $at = 80890000
    lwc1    $f8, %lo(var_80889FC4)($at) 
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    lwc1    $f16, 0x02A4(s0)           # 000002A4
    lwc1    $f6, 0x02A8(s0)            # 000002A8
    add.s   $f4, $f16, $f18            
    add.s   $f10, $f6, $f8             
    swc1    $f4, 0x02A4(s0)            # 000002A4
    lwc1    $f6, 0x02A4(s0)            # 000002A4
    swc1    $f10, 0x02A8(s0)           # 000002A8
    add.s   $f8, $f0, $f6              
    beq     $zero, $zero, lbl_808877DC 
    swc1    $f8, 0x0280(s0)            # 00000280
lbl_80887780:
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    lwc1    $f0, 0x02A8(s0)            # 000002A8
    addiu   t8, v0, 0x0001             # t8 = 00000001
    mtc1    $zero, $f4                 # $f4 = 0.00
    c.lt.s  $f0, $f10                  
    sh      t8, 0x029E(s0)             # 0000029E
    lui     $at, 0x3F00                # $at = 3F000000
    bc1fl   lbl_808877BC               
    lwc1    $f0, 0x0280(s0)            # 00000280
    mtc1    $at, $f16                  # $f16 = 0.50
    nop
    add.s   $f18, $f0, $f16            
    swc1    $f18, 0x02A8(s0)           # 000002A8
    lwc1    $f0, 0x0280(s0)            # 00000280
lbl_808877BC:
    lui     $at, %hi(var_80889FC8)     # $at = 80890000
    c.lt.s  $f4, $f0                   
    nop
    bc1f    lbl_808877DC               
    nop
    lwc1    $f6, %lo(var_80889FC8)($at) 
    sub.s   $f8, $f0, $f6              
    swc1    $f8, 0x0280(s0)            # 00000280
lbl_808877DC:
    jal     func_80063684              # coss?
    lh      a0, 0x029C(s0)             # 0000029C
    lwc1    $f10, 0x02A8(s0)           # 000002A8
    lh      a0, 0x029C(s0)             # 0000029C
    mul.s   $f16, $f0, $f10            
    jal     func_800636C4              # sins?
    swc1    $f16, 0x027C(s0)           # 0000027C
    lwc1    $f18, 0x02A8(s0)           # 000002A8
    lh      t9, 0x029C(s0)             # 0000029C
    lh      t0, 0x02A0(s0)             # 000002A0
    neg.s   $f4, $f18                  
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f6, $f0, $f4              
    addu    t1, t9, t0                 
    sh      t1, 0x029C(s0)             # 0000029C
    swc1    $f6, 0x0284(s0)            # 00000284
    lw      a1, 0x0024($sp)            
    jal     func_80886CF4              
    addiu   a1, a1, 0x08F8             # a1 = 000008F8
    lwc1    $f12, 0x0064(s0)           # 00000064
    jal     func_800AA4F8              
    lwc1    $f14, 0x005C(s0)           # 0000005C
    sh      v0, 0x02AC(s0)             # 000002AC
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80888890              
    addiu   a2, $zero, 0x0020          # a2 = 00000020
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x20A8          # a1 = 000020A8
    lw      $ra, 0x001C($sp)           
lbl_80887858:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80887868:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t7, 0x1C44(t6)             # 00001C44
    jal     func_8008C9C0              
    sw      t7, 0x0024($sp)            
    lwc1    $f0, 0x02A4(s0)            # 000002A4
    lwc1    $f4, 0x0280(s0)            # 00000280
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     $at, %hi(var_80889FCC)     # $at = 80890000
    add.s   $f6, $f4, $f0              
    swc1    $f2, 0x0284(s0)            # 00000284
    swc1    $f2, 0x027C(s0)            # 0000027C
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f6, 0x0280(s0)            # 00000280
    lwc1    $f8, %lo(var_80889FCC)($at) 
    lui     a1, %hi(func_808876E8)     # a1 = 80880000
    sub.s   $f10, $f0, $f8             
    swc1    $f10, 0x02A4(s0)           # 000002A4
    lwc1    $f16, 0x02A4(s0)           # 000002A4
    c.le.s  $f16, $f2                  
    nop
    bc1fl   lbl_80887904               
    lw      a1, 0x0024($sp)            
    jal     func_80885B00              
    addiu   a1, a1, %lo(func_808876E8) # a1 = 808876E8
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $at, $f18                  # $f18 = 1.00
    addiu   t8, $zero, 0x0800          # t8 = 00000800
    sh      t8, 0x02A0(s0)             # 000002A0
    sh      $zero, 0x029E(s0)          # 0000029E
    swc1    $f2, 0x02A4(s0)            # 000002A4
    swc1    $f18, 0x02A8(s0)           # 000002A8
    lw      a1, 0x0024($sp)            
lbl_80887904:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80886CF4              
    addiu   a1, a1, 0x08F8             # a1 = 000008F8
    lwc1    $f0, 0x02A4(s0)            # 000002A4
    lui     $at, %hi(var_80889FD0)     # $at = 80890000
    lwc1    $f6, %lo(var_80889FD0)($at) 
    mul.s   $f4, $f0, $f0              
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    lui     $at, %hi(var_80889FD4)     # $at = 80890000
    lwc1    $f18, %lo(var_80889FD4)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f8, $f4, $f6              
    sub.s   $f16, $f10, $f8            
    mul.s   $f4, $f16, $f18            
    mfc1    a1, $f4                    
    jal     func_80020F88              
    nop
    lwc1    $f12, 0x0064(s0)           # 00000064
    jal     func_800AA4F8              
    lwc1    $f14, 0x005C(s0)           # 0000005C
    sh      v0, 0x02AC(s0)             # 000002AC
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80888890              
    addiu   a2, $zero, 0x0020          # a2 = 00000020
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x20A8          # a1 = 000020A8
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8088798C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lhu     t6, 0x02B4(a2)             # 000002B4
    or      a0, a2, $zero              # a0 = 00000000
    lw      a1, 0x001C($sp)            
    andi    t7, t6, 0x0004             # t7 = 00000000
    beql    t7, $zero, lbl_808879C4    
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_808882E8              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    addiu   a0, a2, 0x013C             # a0 = 0000013C
lbl_808879C4:
    jal     func_8008C9C0              
    sw      a2, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    lw      v0, 0x02B8(a0)             # 000002B8
    jalr    $ra, v0                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808879F0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lh      t6, 0x0298(s0)             # 00000298
    addiu   $at, $zero, 0x0008         # $at = 00000008
    addiu   v1, $zero, 0x0064          # v1 = 00000064
    bne     t6, $at, lbl_80887A1C      
    addiu   a0, s0, 0x0268             # a0 = 00000268
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80887A1C:
    lhu     t7, 0x02B4(s0)             # 000002B4
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    andi    t8, t7, 0x0020             # t8 = 00000000
    beq     t8, $zero, lbl_80887AD8    
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    lw      t9, 0x003C($sp)            
    lui     $at, 0x4270                # $at = 42700000
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    lw      v0, 0x1C44(t9)             # 00001C44
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    lwc1    $f8, 0x0028(v0)            # 00000028
    lwc1    $f4, 0x0024(v0)            # 00000024
    addiu   t0, $zero, 0x00C8          # t0 = 000000C8
    trunc.w.s $f10, $f8                  
    addiu   a0, s0, 0x0268             # a0 = 00000268
    trunc.w.s $f6, $f4                   
    mfc1    t2, $f10                   
    mtc1    $at, $f4                   # $f4 = 60.00
    lwc1    $f10, 0x002C(v0)           # 0000002C
    sll     t3, t2, 16                 
    sra     t4, t3, 16                 
    mtc1    t4, $f16                   # $f16 = 0.00
    mfc1    a1, $f6                    
    sh      v1, 0x0036($sp)            
    cvt.s.w $f18, $f16                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sw      t0, 0x001C($sp)            
    sw      t9, 0x0018($sp)            
    trunc.w.s $f16, $f10                 
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    add.s   $f6, $f18, $f4             
    mfc1    a3, $f16                   
    trunc.w.s $f8, $f6                   
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    mfc1    a2, $f8                    
    nop
    sll     a2, a2, 16                 
    jal     func_80065BCC              
    sra     a2, a2, 16                 
    lh      v1, 0x0036($sp)            
    beq     $zero, $zero, lbl_80887B38 
    lwc1    $f18, 0x0024(s0)           # 00000024
lbl_80887AD8:
    lwc1    $f18, 0x0024(s0)           # 00000024
    lwc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f10, 0x002C(s0)           # 0000002C
    trunc.w.s $f4, $f18                  
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    sw      t7, 0x001C($sp)            
    trunc.w.s $f8, $f6                   
    mfc1    a1, $f4                    
    sh      v1, 0x0036($sp)            
    trunc.w.s $f16, $f10                 
    mfc1    a2, $f8                    
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    mfc1    a3, $f16                   
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sw      t6, 0x0018($sp)            
    sw      t5, 0x0014($sp)            
    jal     func_80065BCC              
    sw      t4, 0x0010($sp)            
    lh      v1, 0x0036($sp)            
    lwc1    $f18, 0x0024(s0)           # 00000024
lbl_80887B38:
    lwc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f10, 0x002C(s0)           # 0000002C
    trunc.w.s $f4, $f18                  
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    trunc.w.s $f8, $f6                   
    mfc1    a1, $f4                    
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    trunc.w.s $f16, $f10                 
    mfc1    a2, $f8                    
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    mfc1    a3, $f16                   
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sw      t3, 0x0018($sp)            
    sw      t2, 0x0014($sp)            
    sw      t1, 0x0010($sp)            
    sw      v1, 0x001C($sp)            
    jal     func_80065C30              
    addiu   a0, s0, 0x0254             # a0 = 00000254
    lwc1    $f12, 0x0064(s0)           # 00000064
    jal     func_800AA4F8              
    lwc1    $f14, 0x005C(s0)           # 0000005C
    sh      v0, 0x02AC(s0)             # 000002AC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88              
    lw      a1, 0x0050(s0)             # 00000050
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80887BC4:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      t6, 0x1C44(a1)             # 00001C44
    sw      a1, 0x0064($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808884F4              
    sw      t6, 0x0044($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8088798C              
    lw      a1, 0x0064($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      t7, 0x0064($sp)            
    lw      a3, 0x0044($sp)            
    swc1    $f4, 0x003C($sp)           
    lbu     t8, 0x1D6C(t7)             # 00001D6C
    addiu   a3, a3, 0x0958             # a3 = 00000958
    or      a0, a3, $zero              # a0 = 00000958
    beq     t8, $zero, lbl_80887D6C    
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lw      t9, 0x1DAC(t7)             # 00001DAC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    beql    t9, $zero, lbl_80887D70    
    sw      a1, 0x0030($sp)            
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFF4
    jal     func_80889D80              
    or      a1, t7, $zero              # a1 = 00000000
    lw      t0, 0x0064($sp)            
    addiu   $at, $zero, 0x0005         # $at = 00000005
    or      a0, s0, $zero              # a0 = 00000000
    lw      t1, 0x1DAC(t0)             # 00001DAC
    lw      a1, 0x0064($sp)            
    lhu     t2, 0x0000(t1)             # 00000000
    bnel    t2, $at, lbl_80887C60      
    lw      t5, 0x0024(s0)             # 00000024
    jal     func_80888890              
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    lw      t5, 0x0024(s0)             # 00000024
lbl_80887C60:
    addiu   t3, $sp, 0x0048            # t3 = FFFFFFE8
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    sw      t5, 0x0000(t3)             # FFFFFFE8
    lw      t4, 0x0028(s0)             # 00000028
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFF4
    sw      t4, 0x0004(t3)             # FFFFFFEC
    lw      t5, 0x002C(s0)             # 0000002C
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    sw      t5, 0x0008(t3)             # FFFFFFF0
    lh      t6, 0x0298(s0)             # 00000298
    bne     t6, $at, lbl_80887CA8      
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80886D80              
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFF4
    beq     $zero, $zero, lbl_80887CB4 
    lw      t8, 0x0064($sp)            
lbl_80887CA8:
    jal     func_80886B5C              
    ori     a2, a2, 0xCCCD             # a2 = 0000CCCD
    lw      t8, 0x0064($sp)            
lbl_80887CB4:
    addiu   $at, $zero, 0x0034         # $at = 00000034
    lui     t7, 0x8012                 # t7 = 80120000
    lh      t9, 0x00A4(t8)             # 000000A4
    bne     t9, $at, lbl_80887D64      
    nop
    lw      t7, -0x46D0(t7)            # 8011B930
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lw      t0, 0x0064($sp)            
    bne     t7, $at, lbl_80887D64      
    nop
    lhu     t1, 0x1D74(t0)             # 00001D74
    addiu   $at, $zero, 0x0037         # $at = 00000037
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t1, $at, lbl_80887CFC      
    lh      t2, 0x0298(s0)             # 00000298
    jal     func_80022FD0              
    addiu   a1, $zero, 0x281B          # a1 = 0000281B
    lh      t2, 0x0298(s0)             # 00000298
lbl_80887CFC:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     t2, $at, lbl_80887D64      
    nop
    lhu     v0, 0x02B4(s0)             # 000002B4
    lwc1    $f6, 0x004C($sp)           
    lwc1    $f16, 0x004C($sp)          
    andi    t3, v0, 0x0040             # t3 = 00000000
    beql    t3, $zero, lbl_80887D44    
    lwc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f8, 0x0028(s0)            # 00000028
    andi    t4, v0, 0xFFBF             # t4 = 00000000
    c.lt.s  $f6, $f8                   
    nop
    bc1f    lbl_80887D64               
    nop
    beq     $zero, $zero, lbl_80887D64 
    sh      t4, 0x02B4(s0)             # 000002B4
    lwc1    $f10, 0x0028(s0)           # 00000028
lbl_80887D44:
    ori     t5, v0, 0x0040             # t5 = 00000040
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f10, $f16                 
    addiu   a1, $zero, 0x281B          # a1 = 0000281B
    bc1f    lbl_80887D64               
    nop
    jal     func_80022FD0              
    sh      t5, 0x02B4(s0)             # 000002B4
lbl_80887D64:
    beq     $zero, $zero, lbl_808881E8 
    lh      v0, 0x0298(s0)             # 00000298
lbl_80887D6C:
    sw      a1, 0x0030($sp)            
lbl_80887D70:
    jal     func_80063E18              
    sw      a3, 0x002C($sp)            
    lh      v0, 0x0298(s0)             # 00000298
    addiu   $at, $zero, 0x0007         # $at = 00000007
    lw      a3, 0x002C($sp)            
    beq     v0, $at, lbl_80887DB4      
    mov.s   $f2, $f0                   
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v0, $at, lbl_80887EA4      
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beq     v0, $at, lbl_80887EEC      
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beq     v0, $at, lbl_80887FD0      
    lw      t6, 0x0064($sp)            
    beq     $zero, $zero, lbl_80888040 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80887DB4:
    lh      t6, 0x029E(s0)             # 0000029E
    lui     $at, %hi(var_80889FD8)     # $at = 80890000
    lwc1    $f6, %lo(var_80889FD8)($at) 
    mtc1    t6, $f18                   # $f18 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    cvt.s.w $f4, $f18                  
    swc1    $f2, 0x0038($sp)           
    sw      a3, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, a3, $zero              # a1 = 00000000
    mul.s   $f8, $f4, $f6              
    sub.s   $f16, $f10, $f8            
    mfc1    a2, $f16                   
    jal     func_80886B5C              
    nop
    lw      a0, 0x002C($sp)            
    jal     func_80063E18              
    lw      a1, 0x0030($sp)            
    lui     $at, 0x40E0                # $at = 40E00000
    lwc1    $f2, 0x0038($sp)           
    mtc1    $at, $f18                  # $f18 = 7.00
    lui     $at, 0x41C8                # $at = 41C80000
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f2, $f18                  
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    bc1fl   lbl_80887E38               
    mtc1    $at, $f6                   # $f6 = 25.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    sh      $zero, 0x02B0(s0)          # 000002B0
    beq     $zero, $zero, lbl_80887E94 
    swc1    $f4, 0x003C($sp)           
    mtc1    $at, $f6                   # $f6 = 25.00
lbl_80887E38:
    lui     $at, %hi(var_80889FE4)     # $at = 80890000
    c.lt.s  $f2, $f6                   
    nop
    bc1f    lbl_80887E8C               
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    lui     $at, %hi(var_80889FDC)     # $at = 80890000
    lwc1    $f16, %lo(var_80889FDC)($at) 
    sub.s   $f8, $f0, $f10             
    lui     $at, %hi(var_80889FE0)     # $at = 80890000
    lwc1    $f6, %lo(var_80889FE0)($at) 
    mul.s   $f12, $f8, $f16            
    sub.s   $f12, $f2, $f12            
    mul.s   $f18, $f12, $f12           
    sub.s   $f4, $f2, $f18             
    mul.s   $f12, $f4, $f6             
    beq     $zero, $zero, lbl_80887E94 
    swc1    $f12, 0x003C($sp)          
lbl_80887E8C:
    lwc1    $f10, %lo(var_80889FE4)($at) 
    swc1    $f10, 0x003C($sp)          
lbl_80887E94:
    jal     func_80888890              
    lw      a1, 0x0064($sp)            
    beq     $zero, $zero, lbl_808881E8 
    lh      v0, 0x0298(s0)             # 00000298
lbl_80887EA4:
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    or      a1, a3, $zero              # a1 = 00000000
    jal     func_80886B5C              
    sw      a3, 0x002C($sp)            
    lw      a3, 0x002C($sp)            
    lw      t8, 0x0030($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    lw      t7, 0x0000(a3)             # 00000000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sw      t7, 0x0000(t8)             # 00000000
    lw      t9, 0x0004(a3)             # 00000004
    sw      t9, 0x0004(t8)             # 00000004
    lw      t7, 0x0008(a3)             # 00000008
    jal     func_80886870              
    sw      t7, 0x0008(t8)             # 00000008
    beq     $zero, $zero, lbl_808881E8 
    lh      v0, 0x0298(s0)             # 00000298
lbl_80887EEC:
    lw      t2, 0x0000(a3)             # 00000000
    addiu   t0, $sp, 0x0054            # t0 = FFFFFFF4
    lui     $at, %hi(var_80889FE8)     # $at = 80890000
    sw      t2, 0x0000(t0)             # FFFFFFF4
    lw      t1, 0x0004(a3)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFF4
    sw      t1, 0x0004(t0)             # FFFFFFF8
    lw      t2, 0x0008(a3)             # 00000008
    sw      t2, 0x0008(t0)             # FFFFFFFC
    lwc1    $f16, 0x0054(s0)           # 00000054
    lwc1    $f8, %lo(var_80889FE8)($at) 
    lwc1    $f4, 0x0058($sp)           
    mul.s   $f18, $f8, $f16            
    add.s   $f6, $f4, $f18             
    jal     func_80886CF4              
    swc1    $f6, 0x0058($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0064($sp)            
    jal     func_80888890              
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    lui     $at, 0x4198                # $at = 41980000
    mtc1    $at, $f10                  # $f10 = 19.00
    lwc1    $f0, 0x02A8(s0)            # 000002A8
    lui     $at, 0x3F80                # $at = 3F800000
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f0, $f10                  
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    bc1fl   lbl_80887F7C               
    lui     $at, 0x41A8                # $at = 41A80000
    mtc1    $at, $f8                   # $f8 = 21.00
    nop
    add.s   $f16, $f0, $f8             
    swc1    $f16, 0x02A8(s0)           # 000002A8
    lwc1    $f0, 0x02A8(s0)            # 000002A8
    lui     $at, 0x41A8                # $at = 41A80000
lbl_80887F7C:
    mtc1    $at, $f4                   # $f4 = 21.00
    lui     $at, 0x3F80                # $at = 3F800000
    c.le.s  $f4, $f0                   
    nop
    bc1fl   lbl_80887FA8               
    lh      v0, 0x02B0(s0)             # 000002B0
    mtc1    $at, $f18                  # $f18 = 1.00
    nop
    sub.s   $f6, $f0, $f18             
    swc1    $f6, 0x02A8(s0)            # 000002A8
    lh      v0, 0x02B0(s0)             # 000002B0
lbl_80887FA8:
    slti    $at, v0, 0x0020            
    beq     $at, $zero, lbl_80887FC8   
    sll     t3, v0,  4                 
    subu    t3, t3, v0                 
    sll     t3, t3,  4                 
    addiu   t4, t3, 0x0200             # t4 = 00000200
    jal     func_80886860              
    sh      t4, 0x02A0(s0)             # 000002A0
lbl_80887FC8:
    beq     $zero, $zero, lbl_808881E8 
    lh      v0, 0x0298(s0)             # 00000298
lbl_80887FD0:
    lh      t8, 0x07A0(t6)             # 000007A0
    addiu   t5, $sp, 0x0054            # t5 = FFFFFFF4
    lui     $at, 0xC4FA                # $at = C4FA0000
    sll     t9, t8,  2                 
    addu    t7, t6, t9                 
    lw      t0, 0x0790(t7)             # 00000790
    mtc1    $at, $f10                  # $f10 = -2000.00
    lui     $at, %hi(var_80889FEC)     # $at = 80890000
    lw      t2, 0x005C(t0)             # 0000005C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFF4
    sw      t2, 0x0000(t5)             # FFFFFFF4
    lw      t1, 0x0060(t0)             # 00000060
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a3, 0x41A0                 # a3 = 41A00000
    sw      t1, 0x0004(t5)             # FFFFFFF8
    lw      t2, 0x0064(t0)             # 00000064
    sw      t2, 0x0008(t5)             # FFFFFFFC
    lwc1    $f8, 0x0054(s0)            # 00000054
    lwc1    $f4, 0x0058($sp)           
    lwc1    $f6, %lo(var_80889FEC)($at) 
    mul.s   $f16, $f10, $f8            
    swc1    $f6, 0x0010($sp)           
    add.s   $f18, $f4, $f16            
    jal     func_8088700C              
    swc1    $f18, 0x0058($sp)          
    beq     $zero, $zero, lbl_808881E8 
    lh      v0, 0x0298(s0)             # 00000298
lbl_80888040:
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_80886870              
    swc1    $f2, 0x0038($sp)           
    lw      t4, 0x0064($sp)            
    lwc1    $f2, 0x0038($sp)           
    addiu   t3, $sp, 0x0054            # t3 = FFFFFFF4
    lw      t6, 0x1C90(t4)             # 00001C90
    lui     $at, %hi(var_80889FF0)     # $at = 80890000
    or      a0, s0, $zero              # a0 = 00000000
    sw      t6, 0x0000(t3)             # FFFFFFF4
    lw      t8, 0x1C94(t4)             # 00001C94
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFF4
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    sw      t8, 0x0004(t3)             # FFFFFFF8
    lw      t6, 0x1C98(t4)             # 00001C98
    sw      t6, 0x0008(t3)             # FFFFFFFC
    lwc1    $f8, 0x0054(s0)            # 00000054
    lwc1    $f10, %lo(var_80889FF0)($at) 
    lwc1    $f16, 0x0058($sp)          
    lw      t9, 0x0064($sp)            
    mul.s   $f4, $f10, $f8             
    lui     $at, %hi(var_80889FF4)     # $at = 80890000
    add.s   $f18, $f16, $f4            
    swc1    $f18, 0x0058($sp)          
    lw      v0, 0x1CC8(t9)             # 00001CC8
    beql    v0, $zero, lbl_808880F4    
    lhu     t7, 0x02AE(s0)             # 000002AE
    lwc1    $f6, %lo(var_80889FF4)($at) 
    lui     a3, 0x41A0                 # a3 = 41A00000
    jal     func_8088700C              
    swc1    $f6, 0x0010($sp)           
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    lwc1    $f10, 0x0068(s0)           # 00000068
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0064($sp)            
    c.le.s  $f8, $f10                  
    nop
    bc1fl   lbl_808881E8               
    lh      v0, 0x0298(s0)             # 00000298
    jal     func_80888890              
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    beq     $zero, $zero, lbl_808881E8 
    lh      v0, 0x0298(s0)             # 00000298
    lhu     t7, 0x02AE(s0)             # 000002AE
lbl_808880F4:
    lui     $at, 0x40E0                # $at = 40E00000
    andi    t5, t7, 0x001F             # t5 = 00000000
    bnel    t5, $zero, lbl_80888128    
    lhu     v0, 0x02B4(s0)             # 000002B4
    mtc1    $at, $f12                  # $f12 = 7.00
    jal     func_80026D64              
    swc1    $f2, 0x0038($sp)           
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f16                  # $f16 = 3.00
    lwc1    $f2, 0x0038($sp)           
    add.s   $f4, $f0, $f16             
    swc1    $f4, 0x0290(s0)            # 00000290
    lhu     v0, 0x02B4(s0)             # 000002B4
lbl_80888128:
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFF4
    andi    t0, v0, 0x0002             # t0 = 00000000
    beq     t0, $zero, lbl_80888188    
    lui     $at, 0x42C8                # $at = 42C80000
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f18                  # $f18 = 30.00
    xori    t1, v0, 0x0002             # t1 = 00000002
    lui     $at, %hi(var_80889FF8)     # $at = 80890000
    c.lt.s  $f2, $f18                  
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    bc1f    lbl_80888160               
    nop
    sh      t1, 0x02B4(s0)             # 000002B4
lbl_80888160:
    lwc1    $f6, %lo(var_80889FF8)($at) 
    lui     a3, 0x41A0                 # a3 = 41A00000
    jal     func_8088700C              
    swc1    $f6, 0x0010($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0064($sp)            
    jal     func_80888890              
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    beq     $zero, $zero, lbl_808881E8 
    lh      v0, 0x0298(s0)             # 00000298
lbl_80888188:
    mtc1    $at, $f10                  # $f10 = 0.00
    nop
    c.lt.s  $f10, $f2                  
    nop
    bc1f    lbl_808881C4               
    nop
    lbu     t3, 0x02B7(s0)             # 000002B7
    ori     t2, v0, 0x0002             # t2 = 00000002
    sh      t2, 0x02B4(s0)             # 000002B4
    bne     t3, $zero, lbl_808881BC    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x281B          # a1 = 0000281B
lbl_808881BC:
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    sh      t4, 0x02B0(s0)             # 000002B0
lbl_808881C4:
    lui     $at, %hi(var_80889FFC)     # $at = 80890000
    lwc1    $f8, %lo(var_80889FFC)($at) 
    lw      a3, 0x0290(s0)             # 00000290
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFF4
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8088700C              
    swc1    $f8, 0x0010($sp)           
    lh      v0, 0x0298(s0)             # 00000298
lbl_808881E8:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     v0, $at, lbl_808881FC      
    lwc1    $f16, 0x003C($sp)          
    beq     $zero, $zero, lbl_8088823C 
    swc1    $f16, 0x0050(s0)           # 00000050
lbl_808881FC:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     v0, $at, lbl_80888214      
    addiu   a0, s0, 0x0050             # a0 = 00000050
    mtc1    $zero, $f4                 # $f4 = 0.00
    beq     $zero, $zero, lbl_8088823C 
    swc1    $f4, 0x0050(s0)            # 00000050
lbl_80888214:
    lui     $at, %hi(var_8088A000)     # $at = 80890000
    lwc1    $f18, %lo(var_8088A000)($at) 
    lui     a1, 0x3C03                 # a1 = 3C030000
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, 0x3A51                 # a3 = 3A510000
    ori     a3, a3, 0xB718             # a3 = 3A51B718
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    ori     a1, a1, 0x126F             # a1 = 3C03126F
    jal     func_80064178              
    swc1    $f18, 0x0010($sp)          
lbl_8088823C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808879F0              
    lw      a1, 0x0064($sp)            
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra                        
    nop


func_8088825C:
    sw      a3, 0x000C($sp)            
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x0000(a2)            # 00000000
    lwc1    $f8, 0x0004(a1)            # 00000004
    lwc1    $f10, 0x0004(a2)           # 00000004
    sub.s   $f0, $f4, $f6              
    lwc1    $f16, 0x0008(a1)           # 00000008
    lwc1    $f18, 0x0008(a2)           # 00000008
    sub.s   $f2, $f8, $f10             
    lwc1    $f10, 0x000C($sp)          
    lwc1    $f8, 0x0000(a0)            # 00000000
    sub.s   $f12, $f16, $f18           
    mul.s   $f16, $f0, $f10            
    lwc1    $f6, 0x000C(a2)            # 0000000C
    lwc1    $f4, 0x000C(a1)            # 0000000C
    sub.s   $f14, $f4, $f6             
    lwc1    $f4, 0x0004(a0)            # 00000004
    add.s   $f18, $f8, $f16            
    lwc1    $f16, 0x0008(a0)           # 00000008
    swc1    $f18, 0x0000(a0)           # 00000000
    lwc1    $f6, 0x000C($sp)           
    mul.s   $f10, $f2, $f6             
    add.s   $f8, $f4, $f10             
    lwc1    $f10, 0x000C(a0)           # 0000000C
    swc1    $f8, 0x0004(a0)            # 00000004
    lwc1    $f18, 0x000C($sp)          
    mul.s   $f6, $f12, $f18            
    add.s   $f4, $f16, $f6             
    swc1    $f4, 0x0008(a0)            # 00000008
    lwc1    $f8, 0x000C($sp)           
    mul.s   $f18, $f14, $f8            
    add.s   $f16, $f10, $f18           
    swc1    $f16, 0x000C(a0)           # 0000000C
    jr      $ra                        
    nop


func_808882E8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x1CC8(a3)             # 00001CC8
    lui     $at, 0x3F80                # $at = 3F800000
    sw      t6, 0x002C($sp)            
    lw      t7, 0x1C44(a3)             # 00001C44
    sw      t7, 0x0028($sp)            
    lwc1    $f4, 0x1CD0(a3)            # 00001CD0
    c.eq.s  $f0, $f4                   
    nop
    bc1tl   lbl_80888354               
    lbu     t9, 0x02B6(s0)             # 000002B6
    lbu     t8, 0x02B7(s0)             # 000002B7
    mtc1    $at, $f6                   # $f6 = 1.00
    sb      $zero, 0x02B6(s0)          # 000002B6
    bne     t8, $zero, lbl_8088844C    
    swc1    $f6, 0x028C(s0)            # 0000028C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x281B          # a1 = 0000281B
    beq     $zero, $zero, lbl_80888450 
    lhu     v1, 0x02B4(s0)             # 000002B4
    lbu     t9, 0x02B6(s0)             # 000002B6
lbl_80888354:
    lw      t0, 0x002C($sp)            
    bnel    t9, $zero, lbl_80888398    
    lwc1    $f10, 0x028C(s0)           # 0000028C
    beq     t0, $zero, lbl_80888388    
    addiu   a0, s0, 0x0024             # a0 = 00000024
    jal     func_80063E18              
    addiu   a1, a3, 0x1C90             # a1 = 00001C90
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    nop
    c.lt.s  $f0, $f8                   
    nop
    bc1f    lbl_8088844C               
lbl_80888388:
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    beq     $zero, $zero, lbl_8088844C 
    sb      t1, 0x02B6(s0)             # 000002B6
    lwc1    $f10, 0x028C(s0)           # 0000028C
lbl_80888398:
    addiu   a0, s0, 0x028C             # a0 = 0000028C
    lui     a2, 0x3E80                 # a2 = 3E800000
    c.eq.s  $f0, $f10                  
    nop
    bc1tl   lbl_80888450               
    lhu     v1, 0x02B4(s0)             # 000002B4
    mfc1    a1, $f0                    
    jal     func_8006385C              
    sw      a3, 0x0034($sp)            
    beq     v0, $zero, lbl_80888408    
    lw      v1, 0x0034($sp)            
    lw      t3, 0x1CA8(v1)             # 00001CA8
    sw      t3, 0x0234(s0)             # 00000234
    lw      t2, 0x1CAC(v1)             # 00001CAC
    sw      t2, 0x0238(s0)             # 00000238
    lw      t3, 0x1CB0(v1)             # 00001CB0
    sw      t3, 0x023C(s0)             # 0000023C
    lw      t2, 0x1CB4(v1)             # 00001CB4
    sw      t2, 0x0240(s0)             # 00000240
    lw      t5, 0x1CB8(v1)             # 00001CB8
    sw      t5, 0x0244(s0)             # 00000244
    lw      t4, 0x1CBC(v1)             # 00001CBC
    sw      t4, 0x0248(s0)             # 00000248
    lw      t5, 0x1CC0(v1)             # 00001CC0
    sw      t5, 0x024C(s0)             # 0000024C
    lw      t4, 0x1CC4(v1)             # 00001CC4
    beq     $zero, $zero, lbl_8088844C 
    sw      t4, 0x0250(s0)             # 00000250
lbl_80888408:
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f16                  # $f16 = 0.25
    lwc1    $f18, 0x028C(s0)           # 0000028C
    addiu   a0, s0, 0x0234             # a0 = 00000234
    or      a2, a0, $zero              # a2 = 00000234
    div.s   $f0, $f16, $f18            
    addiu   a1, v1, 0x1CA8             # a1 = 00001CA8
    mfc1    a3, $f0                    
    jal     func_8088825C              
    swc1    $f0, 0x0024($sp)           
    lwc1    $f0, 0x0024($sp)           
    lw      v1, 0x0034($sp)            
    addiu   a0, s0, 0x0244             # a0 = 00000244
    mfc1    a3, $f0                    
    or      a2, a0, $zero              # a2 = 00000244
    jal     func_8088825C              
    addiu   a1, v1, 0x1CB8             # a1 = 00001CB8
lbl_8088844C:
    lhu     v1, 0x02B4(s0)             # 000002B4
lbl_80888450:
    lw      t7, 0x002C($sp)            
    lw      t1, 0x002C($sp)            
    andi    t6, v1, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_80888480    
    nop
    beq     t7, $zero, lbl_80888474    
    lw      t8, 0x0028($sp)            
    lw      t9, 0x0654(t8)             # 00000654
    bne     t9, $zero, lbl_808884E0    
lbl_80888474:
    xori    t0, v1, 0x0001             # t0 = 00000001
    beq     $zero, $zero, lbl_808884E0 
    sh      t0, 0x02B4(s0)             # 000002B4
lbl_80888480:
    beq     t1, $zero, lbl_808884E0    
    lw      t2, 0x0028($sp)            
    lw      t3, 0x0654(t2)             # 00000654
    beql    t3, $zero, lbl_808884E4    
    lw      $ra, 0x001C($sp)           
    lbu     v0, 0x0002(t1)             # 00000002
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lbu     a0, 0x02B7(s0)             # 000002B7
    bnel    v0, $at, lbl_808884B4      
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     $zero, $zero, lbl_808884C4 
    addiu   a1, $zero, 0x6841          # a1 = 00006841
    addiu   $at, $zero, 0x0005         # $at = 00000005
lbl_808884B4:
    bne     v0, $at, lbl_808884C4      
    addiu   a1, $zero, 0x6842          # a1 = 00006842
    beq     $zero, $zero, lbl_808884C4 
    addiu   a1, $zero, 0x6840          # a1 = 00006840
lbl_808884C4:
    bnel    a0, $zero, lbl_808884DC    
    ori     t4, v1, 0x0001             # t4 = 00000001
    jal     func_80022FD0              
    or      a0, s0, $zero              # a0 = 00000000
    lhu     v1, 0x02B4(s0)             # 000002B4
    ori     t4, v1, 0x0001             # t4 = 00000001
lbl_808884DC:
    sh      t4, 0x02B4(s0)             # 000002B4
lbl_808884E0:
    lw      $ra, 0x001C($sp)           
lbl_808884E4:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_808884F4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    or      a2, a1, $zero              # a2 = 00000000
    lbu     t6, 0x1D6C(a2)             # 00001D6C
    lw      t0, 0x1C44(a2)             # 00001C44
    beql    t6, $zero, lbl_80888578    
    lw      t8, 0x066C(t0)             # 0000066C
    lw      v1, 0x1DAC(a2)             # 00001DAC
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    beql    v1, $zero, lbl_8088856C    
    sh      t7, 0x02B0(a3)             # 000002B0
    lhu     v0, 0x0000(v1)             # 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80888560      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80888558      
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80888550      
    nop
    beq     $zero, $zero, lbl_8088856C 
    or      a2, $zero, $zero           # a2 = 00000000
lbl_80888550:
    beq     $zero, $zero, lbl_8088856C 
    addiu   a2, $zero, 0x0009          # a2 = 00000009
lbl_80888558:
    beq     $zero, $zero, lbl_8088856C 
    addiu   a2, $zero, 0x0006          # a2 = 00000006
lbl_80888560:
    beq     $zero, $zero, lbl_8088856C 
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    sh      t7, 0x02B0(a3)             # 000002B0
lbl_8088856C:
    beq     $zero, $zero, lbl_80888818 
    lh      v1, 0x0298(a3)             # 00000298
    lw      t8, 0x066C(t0)             # 0000066C
lbl_80888578:
    lw      v1, 0x1CC8(a2)             # 00001CD2
    lui     t1, 0x8012                 # t1 = 80120000
    andi    t9, t8, 0x0400             # t9 = 00000000
    bnel    t9, $zero, lbl_808885CC    
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    lw      t1, -0x4600(t1)            # 8011BA00
    or      a0, a2, $zero              # a0 = 0000000A
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lh      t2, 0x04B2(t1)             # 801204B2
    andi    t3, t2, 0x0010             # t3 = 00000000
    beq     t3, $zero, lbl_808885D8    
    nop
    sw      v1, 0x0028($sp)            
    sw      a3, 0x0030($sp)            
    jal     func_8009A25C              
    sw      t0, 0x0024($sp)            
    lw      v1, 0x0028($sp)            
    lw      a3, 0x0030($sp)            
    beq     v0, $zero, lbl_808885D8    
    lw      t0, 0x0024($sp)            
    addiu   t4, $zero, 0x0064          # t4 = 00000064
lbl_808885CC:
    addiu   a2, $zero, 0x000C          # a2 = 0000000C
    beq     $zero, $zero, lbl_8088871C 
    sh      t4, 0x02B0(a3)             # 000002B0
lbl_808885D8:
    beq     v1, $zero, lbl_808885F4    
    nop
    lbu     t5, 0x0002(v1)             # 00000002
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    bne     t5, $at, lbl_8088871C      
    nop
lbl_808885F4:
    beq     v1, $zero, lbl_80888618    
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sh      t6, 0x02B0(a3)             # 000002B0
    lw      t7, 0x0670(t0)             # 00000670
    lui     $at, 0x0010                # $at = 00100000
    or      a2, $zero, $zero           # a2 = 00000000
    or      t8, t7, $at                # t8 = 00100000
    beq     $zero, $zero, lbl_8088871C 
    sw      t8, 0x0670(t0)             # 00000670
lbl_80888618:
    lh      v1, 0x0298(a3)             # 00000298
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beql    v1, $zero, lbl_8088864C    
    lh      v0, 0x02B0(a3)             # 000002B0
    beq     v1, $at, lbl_80888690      
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v1, $at, lbl_808886F4      
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beql    v1, $at, lbl_80888700      
    lh      v0, 0x02B0(a3)             # 000002B0
    beq     $zero, $zero, lbl_8088871C 
    or      a2, $zero, $zero           # a2 = 00000000
    lh      v0, 0x02B0(a3)             # 000002B0
lbl_8088864C:
    or      a2, $zero, $zero           # a2 = 00000000
    beq     v0, $zero, lbl_80888660    
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    beq     $zero, $zero, lbl_8088871C 
    sh      t9, 0x02B0(a3)             # 000002B0
lbl_80888660:
    lbu     t1, 0x02B7(a3)             # 000002B7
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x285F          # a1 = 0000285F
    bne     t1, $zero, lbl_80888688    
    nop
    sw      a3, 0x0030($sp)            
    jal     func_80022FD0              
    sw      t0, 0x0024($sp)            
    lw      a3, 0x0030($sp)            
    lw      t0, 0x0024($sp)            
lbl_80888688:
    beq     $zero, $zero, lbl_8088871C 
    addiu   a2, $zero, 0x0007          # a2 = 00000007
lbl_80888690:
    lh      t2, 0x02B0(a3)             # 000002B0
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    or      a0, a3, $zero              # a0 = 00000000
    beq     t2, $zero, lbl_808886D4    
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    lh      v0, 0x029E(a3)             # 0000029E
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    blez    v0, lbl_808886BC           
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    beq     $zero, $zero, lbl_8088871C 
    sh      t3, 0x029E(a3)             # 0000029E
lbl_808886BC:
    lw      t4, 0x0670(t0)             # 00000670
    lui     $at, 0x0010                # $at = 00100000
    or      a2, $zero, $zero           # a2 = 00000000
    or      t5, t4, $at                # t5 = 00100000
    beq     $zero, $zero, lbl_8088871C 
    sw      t5, 0x0670(t0)             # 00000670
lbl_808886D4:
    sw      a2, 0x002C($sp)            
    sw      a3, 0x0030($sp)            
    jal     func_80886870              
    sw      t0, 0x0024($sp)            
    lw      a2, 0x002C($sp)            
    lw      a3, 0x0030($sp)            
    beq     $zero, $zero, lbl_8088871C 
    lw      t0, 0x0024($sp)            
lbl_808886F4:
    beq     $zero, $zero, lbl_8088871C 
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lh      v0, 0x02B0(a3)             # 000002B0
lbl_80888700:
    or      a2, v1, $zero              # a2 = 00000000
    blez    v0, lbl_80888714           
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_8088871C 
    sh      t6, 0x02B0(a3)             # 000002B0
lbl_80888714:
    beq     $zero, $zero, lbl_8088871C 
    or      a2, $zero, $zero           # a2 = 00000000
lbl_8088871C:
    beq     a2, $zero, lbl_8088874C    
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     a2, $at, lbl_80888800      
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beql    a2, $at, lbl_80888798      
    lw      t3, 0x0670(t0)             # 00000670
    lw      t7, 0x0670(t0)             # 00000670
    lui     $at, 0x0010                # $at = 00100000
    or      t8, t7, $at                # t8 = 00100000
    sw      t8, 0x0670(t0)             # 00000670
    beq     $zero, $zero, lbl_80888818 
    lh      v1, 0x0298(a3)             # 00000298
lbl_8088874C:
    lw      t9, 0x0670(t0)             # 00000670
    sll     t1, t9, 11                 
    bltz    t1, lbl_8088878C           
    nop
    lbu     t2, 0x02B7(a3)             # 000002B7
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    or      a0, a3, $zero              # a0 = 00000000
    bne     t2, $zero, lbl_8088878C    
    addiu   a1, $zero, 0x285F          # a1 = 0000285F
    sw      a2, 0x002C($sp)            
    sw      a3, 0x0030($sp)            
    jal     func_80022FD0              
    sw      t0, 0x0024($sp)            
    lw      a2, 0x002C($sp)            
    lw      a3, 0x0030($sp)            
    lw      t0, 0x0024($sp)            
lbl_8088878C:
    beq     $zero, $zero, lbl_80888818 
    lh      v1, 0x0298(a3)             # 00000298
    lw      t3, 0x0670(t0)             # 00000670
lbl_80888798:
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0032          # a1 = 00000032
    sll     t4, t3, 11                 
    bgez    t4, lbl_808887F8           
    nop
    sw      a3, 0x0030($sp)            
    jal     func_80886860              
    sw      t0, 0x0024($sp)            
    lw      a3, 0x0030($sp)            
    lw      t0, 0x0024($sp)            
    addiu   t5, $zero, 0x002A          # t5 = 0000002A
    lbu     t6, 0x02B7(a3)             # 000002B7
    addiu   a2, $zero, 0x000B          # a2 = 0000000B
    sh      t5, 0x02B0(a3)             # 000002B0
    bne     t6, $zero, lbl_808887F8    
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x281B          # a1 = 0000281B
    sw      a2, 0x002C($sp)            
    sw      a3, 0x0030($sp)            
    jal     func_80022FD0              
    sw      t0, 0x0024($sp)            
    lw      a2, 0x002C($sp)            
    lw      a3, 0x0030($sp)            
    lw      t0, 0x0024($sp)            
lbl_808887F8:
    beq     $zero, $zero, lbl_80888818 
    lh      v1, 0x0298(a3)             # 00000298
lbl_80888800:
    lw      t7, 0x0670(t0)             # 00000670
    lui     $at, 0xFFEF                # $at = FFEF0000
    ori     $at, $at, 0xFFFF           # $at = FFEFFFFF
    and     t8, t7, $at                
    sw      t8, 0x0670(t0)             # 00000670
    lh      v1, 0x0298(a3)             # 00000298
lbl_80888818:
    beq     a2, v1, lbl_80888880       
    or      a0, a3, $zero              # a0 = 00000000
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x002C($sp)            
    sw      a3, 0x0030($sp)            
    jal     func_80885B0C              
    sw      t0, 0x0024($sp)            
    lw      a2, 0x002C($sp)            
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    lw      a3, 0x0030($sp)            
    bne     a2, $at, lbl_80888880      
    lw      t0, 0x0024($sp)            
    addiu   a2, t0, 0x0958             # a2 = 00000958
    addiu   a1, a3, 0x0024             # a1 = 00000024
    sw      a1, 0x0018($sp)            
    or      a0, a2, $zero              # a0 = 00000958
    sw      a2, 0x001C($sp)            
    jal     func_80063EB8              
    sw      a3, 0x0030($sp)            
    lw      a3, 0x0030($sp)            
    lw      a1, 0x001C($sp)            
    swc1    $f0, 0x02A8(a3)            # 000002A8
    jal     func_80063F00              
    lw      a0, 0x0018($sp)            
    lw      a3, 0x0030($sp)            
    sh      v0, 0x029C(a3)             # 0000029C
lbl_80888880:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80888890:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x004C($sp)            
    sw      a2, 0x0050($sp)            
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f12                  # $f12 = 6.00
    jal     func_80026D90              
    nop
    lwc1    $f4, 0x0024(s0)            # 00000024
    add.s   $f6, $f0, $f4              
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0038($sp)           
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f12                  # $f12 = 6.00
    lwc1    $f10, 0x0028(s0)           # 00000028
    mul.s   $f8, $f0, $f12             
    add.s   $f16, $f8, $f10            
    jal     func_80026D90              
    swc1    $f16, 0x003C($sp)          
    lwc1    $f18, 0x002C(s0)           # 0000002C
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     a2, %hi(var_80889EFC)      # a2 = 80890000
    add.s   $f4, $f0, $f18             
    lui     a3, %hi(var_80889F08)      # a3 = 80890000
    lui     $at, 0x4F00                # $at = 4F000000
    addiu   a3, a3, %lo(var_80889F08)  # a3 = 80889F08
    swc1    $f4, 0x0040($sp)           
    cfc1    t6, $f31                   
    ctc1    t7, $f31                   
    lwc1    $f6, 0x0234(s0)            # 00000234
    addiu   a2, a2, %lo(var_80889EFC)  # a2 = 80889EFC
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFF0
    cvt.w.s $f8, $f6                   
    cfc1    t7, $f31                   
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beql    t7, $zero, lbl_80888978    
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
    bne     t7, $zero, lbl_8088896C    
    nop
    mfc1    t7, $f8                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80888984 
    or      t7, t7, $at                # t7 = 80000000
lbl_8088896C:
    beq     $zero, $zero, lbl_80888984 
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    mfc1    t7, $f8                    
lbl_80888978:
    nop
    bltz    t7, lbl_8088896C           
    nop
lbl_80888984:
    ctc1    t6, $f31                   
    sb      t7, 0x0034($sp)            
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lwc1    $f10, 0x0238(s0)           # 00000238
    cfc1    t8, $f31                   
    ctc1    t9, $f31                   
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f16, $f10                 
    cfc1    t9, $f31                   
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_80888A00    
    mfc1    t9, $f16                   
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f16, $f10, $f16           
    ctc1    t9, $f31                   
    nop
    cvt.w.s $f16, $f16                 
    cfc1    t9, $f31                   
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_808889F4    
    nop
    mfc1    t9, $f16                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80888A0C 
    or      t9, t9, $at                # t9 = 80000000
lbl_808889F4:
    beq     $zero, $zero, lbl_80888A0C 
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f16                   
lbl_80888A00:
    nop
    bltz    t9, lbl_808889F4           
    nop
lbl_80888A0C:
    ctc1    t8, $f31                   
    sb      t9, 0x0035($sp)            
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lwc1    $f18, 0x023C(s0)           # 0000023C
    cfc1    t0, $f31                   
    ctc1    t1, $f31                   
    lui     $at, 0x4F00                # $at = 4F000000
    addiu   t9, $sp, 0x0030            # t9 = FFFFFFE8
    cvt.w.s $f4, $f18                  
    addiu   t8, $sp, 0x0034            # t8 = FFFFFFEC
    cfc1    t1, $f31                   
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    beql    t1, $zero, lbl_80888A90    
    mfc1    t1, $f4                    
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sub.s   $f4, $f18, $f4             
    ctc1    t1, $f31                   
    nop
    cvt.w.s $f4, $f4                   
    cfc1    t1, $f31                   
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    bne     t1, $zero, lbl_80888A84    
    nop
    mfc1    t1, $f4                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80888A9C 
    or      t1, t1, $at                # t1 = 80000000
lbl_80888A84:
    beq     $zero, $zero, lbl_80888A9C 
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    mfc1    t1, $f4                    
lbl_80888A90:
    nop
    bltz    t1, lbl_80888A84           
    nop
lbl_80888A9C:
    ctc1    t0, $f31                   
    sb      t1, 0x0036($sp)            
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lwc1    $f6, 0x0244(s0)            # 00000244
    cfc1    t2, $f31                   
    ctc1    t3, $f31                   
    lui     $at, 0x4F00                # $at = 4F000000
    addiu   t0, $zero, 0x03E8          # t0 = 000003E8
    cvt.w.s $f8, $f6                   
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beql    t3, $zero, lbl_80888B1C    
    mfc1    t3, $f8                    
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f8, $f6, $f8              
    ctc1    t3, $f31                   
    nop
    cvt.w.s $f8, $f8                   
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_80888B10    
    nop
    mfc1    t3, $f8                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80888B28 
    or      t3, t3, $at                # t3 = 80000000
lbl_80888B10:
    beq     $zero, $zero, lbl_80888B28 
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    mfc1    t3, $f8                    
lbl_80888B1C:
    nop
    bltz    t3, lbl_80888B10           
    nop
lbl_80888B28:
    ctc1    t2, $f31                   
    sb      t3, 0x0030($sp)            
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    lwc1    $f10, 0x0248(s0)           # 00000248
    cfc1    t4, $f31                   
    ctc1    t5, $f31                   
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f16, $f10                 
    cfc1    t5, $f31                   
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    beql    t5, $zero, lbl_80888BA4    
    mfc1    t5, $f16                   
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sub.s   $f16, $f10, $f16           
    ctc1    t5, $f31                   
    nop
    cvt.w.s $f16, $f16                 
    cfc1    t5, $f31                   
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    bne     t5, $zero, lbl_80888B98    
    nop
    mfc1    t5, $f16                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80888BB0 
    or      t5, t5, $at                # t5 = 80000000
lbl_80888B98:
    beq     $zero, $zero, lbl_80888BB0 
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    mfc1    t5, $f16                   
lbl_80888BA4:
    nop
    bltz    t5, lbl_80888B98           
    nop
lbl_80888BB0:
    ctc1    t4, $f31                   
    sb      t5, 0x0031($sp)            
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lwc1    $f18, 0x024C(s0)           # 0000024C
    cfc1    t6, $f31                   
    ctc1    t7, $f31                   
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f4, $f18                  
    cfc1    t7, $f31                   
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beql    t7, $zero, lbl_80888C2C    
    mfc1    t7, $f4                    
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f4, $f18, $f4             
    ctc1    t7, $f31                   
    nop
    cvt.w.s $f4, $f4                   
    cfc1    t7, $f31                   
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_80888C20    
    nop
    mfc1    t7, $f4                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80888C38 
    or      t7, t7, $at                # t7 = 80000000
lbl_80888C20:
    beq     $zero, $zero, lbl_80888C38 
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    mfc1    t7, $f4                    
lbl_80888C2C:
    nop
    bltz    t7, lbl_80888C20           
    nop
lbl_80888C38:
    lw      t1, 0x0050($sp)            
    ctc1    t6, $f31                   
    sb      t7, 0x0032($sp)            
    lw      a0, 0x004C($sp)            
    sw      t8, 0x0010($sp)            
    sw      t9, 0x0014($sp)            
    sw      t0, 0x0018($sp)            
    jal     func_8001C6A8              
    sw      t1, 0x001C($sp)            
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_80888C70:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lw      a0, 0x0034($sp)            
    addiu   t7, s0, 0x0024             # t7 = 00000024
    sw      t7, 0x0014($sp)            
    addiu   a2, s0, 0x0078             # a2 = 00000078
    addiu   a3, $sp, 0x0028            # a3 = FFFFFFF8
    sw      s0, 0x0010($sp)            
    jal     func_8002F520              
    addiu   a1, a0, 0x07C0             # a1 = 000007C0
    addiu   t8, $zero, 0x0032          # t8 = 00000032
    swc1    $f0, 0x0080(s0)            # 00000080
    sb      t8, 0x00C8(s0)             # 000000C8
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80888CC4:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lhu     t6, 0x02B4(s0)             # 000002B4
    lw      v0, 0x1C44(s1)             # 00001C44
    andi    t7, t6, 0x0010             # t7 = 00000000
    beql    t7, $zero, lbl_80888DB4    
    addiu   t6, s0, 0x0038             # t6 = 00000038
    lw      t0, 0x1C90(s1)             # 00001C90
    addiu   t8, $sp, 0x002C            # t8 = FFFFFFE4
    sw      t0, 0x0000(t8)             # FFFFFFE4
    lw      t9, 0x1C94(s1)             # 00001C94
    sw      t9, 0x0004(t8)             # FFFFFFE8
    lw      t0, 0x1C98(s1)             # 00001C98
    sw      t0, 0x0008(t8)             # FFFFFFEC
    lw      v1, 0x0654(v0)             # 00000654
    beql    v1, $zero, lbl_80888D2C    
    lh      a0, 0x00B6(v0)             # 000000B6
    beql    v0, v1, lbl_80888D2C       
    lh      a0, 0x00B6(v0)             # 000000B6
    bnel    s0, v1, lbl_80888D8C       
    addiu   t1, $sp, 0x002C            # t1 = FFFFFFE4
    lh      a0, 0x00B6(v0)             # 000000B6
lbl_80888D2C:
    jal     func_800636C4              # sins?
    sw      v0, 0x0038($sp)            
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    lw      v0, 0x0038($sp)            
    lui     $at, 0x40A0                # $at = 40A00000
    mul.s   $f6, $f0, $f4              
    lwc1    $f8, 0x094C(v0)            # 0000094C
    mtc1    $at, $f18                  # $f18 = 5.00
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x002C($sp)          
    lwc1    $f16, 0x0950(v0)           # 00000950
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0030($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(v0)             # 000000B6
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    lw      v0, 0x0038($sp)            
    mul.s   $f8, $f0, $f6              
    lwc1    $f10, 0x0954(v0)           # 00000954
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x0034($sp)          
    addiu   t1, $sp, 0x002C            # t1 = FFFFFFE4
lbl_80888D8C:
    lw      t3, 0x0000(t1)             # FFFFFFE4
    lhu     t4, 0x02B4(s0)             # 000002B4
    sw      t3, 0x0038(s0)             # 00000038
    lw      t2, 0x0004(t1)             # FFFFFFE8
    andi    t5, t4, 0xFFEF             # t5 = 00000000
    sw      t2, 0x003C(s0)             # 0000003C
    lw      t3, 0x0008(t1)             # FFFFFFEC
    sh      t5, 0x02B4(s0)             # 000002B4
    sw      t3, 0x0040(s0)             # 00000040
    addiu   t6, s0, 0x0038             # t6 = 00000038
lbl_80888DB4:
    sw      t6, 0x0028($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8088798C              
    or      a1, s1, $zero              # a1 = 00000000
    lw      t7, 0x0028($sp)            
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFF4
    lui     $at, %hi(var_8088A004)     # $at = 80890000
    lw      t9, 0x0000(t7)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    sw      t9, 0x0000(a1)             # FFFFFFF4
    lw      t8, 0x0004(t7)             # 00000004
    lui     a3, 0x41A0                 # a3 = 41A00000
    sw      t8, 0x0004(a1)             # FFFFFFF8
    lw      t9, 0x0008(t7)             # 00000008
    sw      t9, 0x0008(a1)             # FFFFFFFC
    lwc1    $f18, %lo(var_8088A004)($at) 
    jal     func_8088700C              
    swc1    $f18, 0x0010($sp)          
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lwc1    $f4, 0x0068(s0)            # 00000068
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    c.le.s  $f6, $f4                   
    nop
    bc1f    lbl_80888E2C               
    nop
    jal     func_80888890              
    addiu   a2, $zero, 0x0010          # a2 = 00000010
lbl_80888E2C:
    lui     $at, %hi(var_8088A008)     # $at = 80890000
    lwc1    $f8, %lo(var_8088A008)($at) 
    lui     a1, 0x3C03                 # a1 = 3C030000
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, 0x3A51                 # a3 = 3A510000
    ori     a3, a3, 0xB718             # a3 = 3A51B718
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    ori     a1, a1, 0x126F             # a1 = 3C03126F
    addiu   a0, s0, 0x0050             # a0 = 00000050
    jal     func_80064178              
    swc1    $f8, 0x0010($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808879F0              
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80888E78:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    addiu   t8, $zero, 0x0400          # t8 = 00000400
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lw      t7, 0x1C44(t6)             # 00001C44
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    addiu   a3, $zero, 0x1000          # a3 = 00001000
    sw      t7, 0x002C($sp)            
    lh      a1, 0x02AC(s0)             # 000002AC
    jal     func_80064508              
    sw      t8, 0x0010($sp)            
    lhu     t9, 0x02AE(s0)             # 000002AE
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sh      t0, 0x02AE(s0)             # 000002AE
    addiu   a0, s0, 0x0294             # a0 = 00000294
    jal     func_8006385C              
    lui     a1, 0x3F80                 # a1 = 3F800000
    lwc1    $f0, 0x0294(s0)            # 00000294
    lw      t1, 0x002C($sp)            
    lui     $at, 0x4443                # $at = 44430000
    mul.s   $f4, $f0, $f0              
    mtc1    $at, $f8                   # $f8 = 780.00
    lwc1    $f6, 0x00EC(t1)            # 000000EC
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    add.s   $f10, $f6, $f8             
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    mfc1    a1, $f4                    
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    mfc1    a2, $f10                   
    lw      a0, 0x0034($sp)            
    jal     func_800631D8              
    swc1    $f16, 0x0010($sp)          
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80888F28:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80888CC4              
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800DD464              
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80888FE8      
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800D6110              
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80888FE4    
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s0                 
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_80888F94    
    nop
    beq     v0, $at, lbl_80888FB8      
    nop
    beq     $zero, $zero, lbl_80888FE8 
    or      a0, s1, $zero              # a0 = 00000000
lbl_80888F94:
    jal     func_80059714              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800DCE80              
    andi    a1, v0, 0xFFFF             # a1 = 00000000
    lui     t6, %hi(func_80889004)     # t6 = 80890000
    addiu   t6, t6, %lo(func_80889004) # t6 = 80889004
    beq     $zero, $zero, lbl_80888FE4 
    sw      t6, 0x0130(s1)             # 00000130
lbl_80888FB8:
    jal     func_800D6218              
    or      a0, s0, $zero              # a0 = 00000000
    lui     t7, %hi(func_80889300)     # t7 = 80890000
    addiu   t7, t7, %lo(func_80889300) # t7 = 80889300
    sw      t7, 0x0130(s1)             # 00000130
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80885B0C              
    or      a1, $zero, $zero           # a1 = 00000000
    lhu     t8, 0x02B4(s1)             # 000002B4
    andi    t9, t8, 0xFFDF             # t9 = 00000000
    sh      t9, 0x02B4(s1)             # 000002B4
lbl_80888FE4:
    or      a0, s1, $zero              # a0 = 00000000
lbl_80888FE8:
    jal     func_80888E78              
    or      a1, s0, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80889004:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80888CC4              
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800DD464              
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80889064      
    lw      a0, 0x0020($sp)            
    jal     func_800D6110              
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80889060    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800DCE80              
    addiu   a1, $zero, 0x00E3          # a1 = 000000E3
    lw      t7, 0x0020($sp)            
    lui     t6, %hi(func_80888F28)     # t6 = 80890000
    addiu   t6, t6, %lo(func_80888F28) # t6 = 80888F28
    sw      t6, 0x0130(t7)             # 00000130
lbl_80889060:
    lw      a0, 0x0020($sp)            
lbl_80889064:
    jal     func_80888E78              
    or      a1, s0, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80889080:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80888CC4              
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800DD464              
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_808890EC      
    lw      a0, 0x0020($sp)            
    jal     func_800D6110              
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_808890EC    
    lw      a0, 0x0020($sp)            
    jal     func_80059714              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800DCE80              
    andi    a1, v0, 0xFFFF             # a1 = 00000000
    lw      t7, 0x0020($sp)            
    lui     t6, %hi(func_80889004)     # t6 = 80890000
    addiu   t6, t6, %lo(func_80889004) # t6 = 80889004
    sw      t6, 0x0130(t7)             # 00000130
    lw      a0, 0x0020($sp)            
lbl_808890EC:
    jal     func_80888E78              
    or      a1, s0, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80889108:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80888CC4              
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800DD464              
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_808891E0      
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800D6110              
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808891DC    
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s0                 
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_80889174    
    nop
    beq     v0, $at, lbl_808891B0      
    nop
    beq     $zero, $zero, lbl_808891E0 
    or      a0, s1, $zero              # a0 = 00000000
lbl_80889174:
    jal     func_8005977C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80889198    
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800DCE80              
    andi    a1, v0, 0xFFFF             # a1 = 00000000
    beq     $zero, $zero, lbl_808891A0 
    nop
lbl_80889198:
    jal     func_800DCE80              
    addiu   a1, $zero, 0x015F          # a1 = 0000015F
lbl_808891A0:
    lui     t6, %hi(func_808891FC)     # t6 = 80890000
    addiu   t6, t6, %lo(func_808891FC) # t6 = 808891FC
    beq     $zero, $zero, lbl_808891DC 
    sw      t6, 0x0130(s1)             # 00000130
lbl_808891B0:
    jal     func_800D6218              
    or      a0, s0, $zero              # a0 = 00000000
    lui     t7, %hi(func_80889300)     # t7 = 80890000
    addiu   t7, t7, %lo(func_80889300) # t7 = 80889300
    sw      t7, 0x0130(s1)             # 00000130
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80885B0C              
    or      a1, $zero, $zero           # a1 = 00000000
    lhu     t8, 0x02B4(s1)             # 000002B4
    andi    t9, t8, 0xFFDF             # t9 = 00000000
    sh      t9, 0x02B4(s1)             # 000002B4
lbl_808891DC:
    or      a0, s1, $zero              # a0 = 00000000
lbl_808891E0:
    jal     func_80888E78              
    or      a1, s0, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_808891FC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80888CC4              
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800DD464              
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_808892B0      
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800D6110              
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808892E0    
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1               
    lui     v0, 0x0001                 # v0 = 00010000
    sh      t6, 0x04CA($at)            # 000104CA
    addu    v0, v0, s1                 
    lbu     v0, 0x04BD(v0)             # 000104BD
    lui     t7, %hi(func_80889080)     # t7 = 80890000
    addiu   t7, t7, %lo(func_80889080) # t7 = 80889080
    beq     v0, $zero, lbl_80889280    
    or      a0, s1, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80889294      
    lui     t8, %hi(func_80889108)     # t8 = 80890000
    beq     $zero, $zero, lbl_808892E4 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80889280:
    sw      t7, 0x0130(s0)             # 00000130
    jal     func_800DCE80              
    addiu   a1, $zero, 0x00E2          # a1 = 000000E2
    beq     $zero, $zero, lbl_808892E4 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80889294:
    addiu   t8, t8, %lo(func_80889108) # t8 = FFFF9108
    sw      t8, 0x0130(s0)             # 00000130
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800DCE80              
    addiu   a1, $zero, 0x00E1          # a1 = 000000E1
    beq     $zero, $zero, lbl_808892E4 
    or      a0, s0, $zero              # a0 = 00000000
lbl_808892B0:
    jal     func_80022AD0              
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_808892E0    
    lui     t9, %hi(func_80889300)     # t9 = 80890000
    addiu   t9, t9, %lo(func_80889300) # t9 = 80889300
    sw      t9, 0x0130(s0)             # 00000130
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80885B0C              
    or      a1, $zero, $zero           # a1 = 00000000
    lhu     t0, 0x02B4(s0)             # 000002B4
    andi    t1, t0, 0xFFDF             # t1 = 00000000
    sh      t1, 0x02B4(s0)             # 000002B4
lbl_808892E0:
    or      a0, s0, $zero              # a0 = 00000000
lbl_808892E4:
    jal     func_80888E78              
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80889300:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lw      t6, 0x003C($sp)            
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x002C($sp)            
    lh      v0, 0x0680(t7)             # 00000680
    bne     v0, $zero, lbl_8088937C    
    nop
    lw      t8, 0x0654(t7)             # 00000654
    lui     v0, 0x8012                 # v0 = 80120000
    bnel    t8, $zero, lbl_80889398    
    or      a0, s0, $zero              # a0 = 00000000
    lhu     v0, -0x59F8(v0)            # 8011A608
    slti    $at, v0, 0x0258            
    bne     $at, $zero, lbl_80889394   
    slti    $at, v0, 0x0BB9            
    beql    $at, $zero, lbl_80889398   
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8005977C              
    or      a0, t6, $zero              # a0 = 00000000
    lw      v1, 0x002C($sp)            
    addiu   $at, $zero, 0x015F         # $at = 0000015F
    sh      v0, 0x0680(v1)             # 00000680
    lh      t9, 0x0680(v1)             # 00000680
    bnel    t9, $at, lbl_80889398      
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80889394 
    sh      $zero, 0x0680(v1)          # 00000680
lbl_8088937C:
    bgezl   v0, lbl_80889398           
    or      a0, s0, $zero              # a0 = 00000000
    lw      t0, 0x0004(s0)             # 00000004
    lui     $at, 0x0001                # $at = 00010000
    or      t1, t0, $at                # t1 = 00010000
    sw      t1, 0x0004(s0)             # 00000004
lbl_80889394:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80889398:
    jal     func_80022930              
    lw      a1, 0x003C($sp)            
    beq     v0, $zero, lbl_80889454    
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0x4394             # a0 = 80104394
    addiu   a1, $zero, 0x6873          # a1 = 00006873
    jal     func_800C5264              
    addiu   a2, $zero, 0x0020          # a2 = 00000020
    lw      t3, 0x0024(s0)             # 00000024
    lw      t2, 0x0028(s0)             # 00000028
    sw      t3, 0x0038(s0)             # 00000038
    lw      t3, 0x002C(s0)             # 0000002C
    sw      t2, 0x003C(s0)             # 0000003C
    sw      t3, 0x0040(s0)             # 00000040
    jal     func_8005977C              
    lw      a0, 0x003C($sp)            
    lhu     t4, 0x010E(s0)             # 0000010E
    lui     t2, %hi(func_808891FC)     # t2 = 80890000
    addiu   t2, t2, %lo(func_808891FC) # t2 = 808891FC
    bne     t4, v0, lbl_80889404       
    or      a0, s0, $zero              # a0 = 00000000
    lhu     t5, 0x02B4(s0)             # 000002B4
    addiu   t8, $zero, 0x0BB9          # t8 = 00000BB9
    lui     $at, 0x8012                # $at = 80120000
    ori     t7, t5, 0x0080             # t7 = 00000080
    sh      t7, 0x02B4(s0)             # 000002B4
    sh      t8, -0x59F8($at)           # 8011A608
lbl_80889404:
    lhu     t6, 0x02B4(s0)             # 000002B4
    sw      t2, 0x0130(s0)             # 00000130
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    ori     t0, t6, 0x0010             # t0 = 00000010
    sh      t0, 0x02B4(s0)             # 000002B4
    ori     t1, t0, 0x0020             # t1 = 00000030
    jal     func_80885B0C              
    sh      t1, 0x02B4(s0)             # 000002B4
    lw      v0, 0x0288(s0)             # 00000288
    beql    v0, $zero, lbl_80889440    
    lw      t5, 0x0004(s0)             # 00000004
    lw      t3, 0x0004(v0)             # 00000004
    ori     t4, t3, 0x0100             # t4 = 00000100
    sw      t4, 0x0004(v0)             # 00000004
    lw      t5, 0x0004(s0)             # 00000004
lbl_80889440:
    lui     $at, 0xFFFE                # $at = FFFE0000
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    and     t7, t5, $at                
    beq     $zero, $zero, lbl_808894B0 
    sw      t7, 0x0004(s0)             # 00000004
lbl_80889454:
    lw      t9, 0x02BC(s0)             # 000002BC
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)            
    jalr    $ra, t9                    
    nop
    lh      t8, 0x02AC(s0)             # 000002AC
    sh      t8, 0x00B6(s0)             # 000000B6
    jal     func_8009CB08              
    lw      a0, 0x003C($sp)            
    bne     v0, $zero, lbl_808894B0    
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     v0, 0x0038(v1)             # 8011A608
    slti    $at, v0, 0x64C8            
    beq     $at, $zero, lbl_8088949C   
    addiu   t6, v0, 0x0001             # t6 = 00000001
    beq     $zero, $zero, lbl_808894B0 
    sh      t6, 0x0038(v1)             # 8011A608
lbl_8088949C:
    lhu     t0, 0x02B4(s0)             # 000002B4
    andi    t1, t0, 0x0080             # t1 = 00000000
    bnel    t1, $zero, lbl_808894B4    
    mtc1    $zero, $f0                 # $f0 = 0.00
    sh      $zero, 0x0038(v1)          # 8011A608
lbl_808894B0:
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_808894B4:
    lwc1    $f4, 0x0294(s0)            # 00000294
    lhu     t2, 0x02AE(s0)             # 000002AE
    sw      $zero, 0x0288(s0)          # 00000288
    c.lt.s  $f0, $f4                   
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sh      t3, 0x02AE(s0)             # 000002AE
    addiu   a0, s0, 0x0294             # a0 = 00000294
    bc1f    lbl_8088952C               
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    mfc1    a1, $f0                    
    jal     func_8006385C              
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    lwc1    $f0, 0x0294(s0)            # 00000294
    lw      t4, 0x002C($sp)            
    lui     $at, 0x4443                # $at = 44430000
    mul.s   $f6, $f0, $f0              
    mtc1    $at, $f16                  # $f16 = 780.00
    lwc1    $f10, 0x00EC(t4)           # 000000EC
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    add.s   $f18, $f10, $f16           
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    mul.s   $f8, $f6, $f0              
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    mfc1    a2, $f18                   
    lw      a0, 0x003C($sp)            
    swc1    $f4, 0x0010($sp)           
    mfc1    a1, $f8                    
    jal     func_800631D8              
    nop
lbl_8088952C:
    lbu     v0, 0x02B7(s0)             # 000002B7
    or      a0, s0, $zero              # a0 = 00000000
    blez    v0, lbl_80889544           
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    sb      t5, 0x02B7(s0)             # 000002B7
    andi    v0, t5, 0x00FF             # v0 = 000000FF
lbl_80889544:
    bne     v0, $zero, lbl_80889560    
    lw      t7, 0x003C($sp)            
    lbu     t9, 0x1D6C(t7)             # 00001D6C
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    beq     t9, $zero, lbl_80889560    
    nop
    sb      t8, 0x02B7(s0)             # 000002B7
lbl_80889560:
    jal     func_80888C70              
    lw      a1, 0x003C($sp)            
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8088957C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    sw      a0, 0x0018($sp)            
    lw      t9, 0x02BC(a0)             # 000002BC
    lw      a1, 0x001C($sp)            
    jalr    $ra, t9                    
    nop
    lw      a0, 0x0018($sp)            
    lhu     t7, 0x02AE(a0)             # 000002AE
    lhu     t0, 0x02B4(a0)             # 000002B4
    lh      t6, 0x02AC(a0)             # 000002AC
    addiu   t8, t7, 0x0001             # t8 = 00000001
    andi    t1, t0, 0x0200             # t1 = 00000000
    sh      t8, 0x02AE(a0)             # 000002AE
    beq     t1, $zero, lbl_808895C8    
    sh      t6, 0x00B6(a0)             # 000000B6
    jal     func_80888C70              
    lw      a1, 0x001C($sp)            
lbl_808895C8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808895D8:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0020($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sdc1    $f20, 0x0018($sp)          
    sw      a0, 0x0048($sp)            
    sw      a2, 0x0050($sp)            
    sw      a3, 0x0054($sp)            
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     s0, $at, lbl_808896A4      
    lw      t6, 0x005C($sp)            
    lhu     a0, 0x02AE(t6)             # 000002AE
    sll     a0, a0, 12                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_8088A00C)     # $at = 80890000
    lwc1    $f4, %lo(var_8088A00C)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    mul.s   $f6, $f0, $f4              
    lui     $at, %hi(var_8088A010)     # $at = 80890000
    lwc1    $f16, %lo(var_8088A010)($at) 
    lw      v0, 0x005C($sp)            
    lui     $at, %hi(var_8088A014)     # $at = 80890000
    lhu     t7, 0x02B4(v0)             # 000002B4
    add.s   $f10, $f6, $f8             
    andi    t8, t7, 0x0200             # t8 = 00000000
    mul.s   $f2, $f10, $f16            
    beq     t8, $zero, lbl_80889658    
    mov.s   $f20, $f2                  
    add.s   $f20, $f2, $f2             
lbl_80889658:
    lwc1    $f18, 0x0050(v0)           # 00000050
    lwc1    $f4, %lo(var_8088A014)($at) 
    lui     a0, %hi(var_80889F14)      # a0 = 80890000
    addiu   a0, a0, %lo(var_80889F14)  # a0 = 80889F14
    mul.s   $f6, $f18, $f4             
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFEC
    mul.s   $f20, $f20, $f6            
    jal     func_800AB958              
    nop
    lwc1    $f12, 0x0034($sp)          
    lwc1    $f14, 0x0038($sp)          
    lw      a2, 0x003C($sp)            
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    mfc1    a2, $f20                   
    mov.s   $f12, $f20                 
    mov.s   $f14, $f20                 
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_808896A4:
    lw      t9, 0x005C($sp)            
    addiu   $at, $zero, 0x0004         # $at = 00000004
    or      v0, $zero, $zero           # v0 = 00000000
    lhu     t0, 0x02B4(t9)             # 000002B4
    andi    t1, t0, 0x0200             # t1 = 00000000
    beq     t1, $zero, lbl_808896E8    
    nop
    beq     s0, $at, lbl_808896E4      
    lw      t2, 0x0050($sp)            
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     s0, $at, lbl_808896E4      
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beq     s0, $at, lbl_808896E4      
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bne     s0, $at, lbl_808896E8      
    nop
lbl_808896E4:
    sw      $zero, 0x0000(t2)          # 00000000
lbl_808896E8:
    lw      $ra, 0x0024($sp)           
    ldc1    $f20, 0x0018($sp)          
    lw      s0, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_808896FC:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lh      t6, 0x0298(s0)             # 00000298
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lw      v0, 0x1C44(a1)             # 00001C44
    beql    t6, $at, lbl_80889D70      
    lw      $ra, 0x002C($sp)           
    lhu     t7, 0x02B4(s0)             # 000002B4
    andi    t8, t7, 0x0008             # t8 = 00000000
    bnel    t8, $zero, lbl_80889D70    
    lw      $ra, 0x002C($sp)           
    lw      t9, 0x066C(v0)             # 0000066C
    lui     t4, 0x8012                 # t4 = 80120000
    sll     t3, t9, 11                 
    bgezl   t3, lbl_80889770           
    lw      a0, 0x0000(a1)             # 00000000
    lw      t4, -0x4600(t4)            # 8011BA00
    lwc1    $f8, 0x00EC(s0)            # 000000EC
    lh      t5, 0x1508(t4)             # 80121508
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    c.lt.s  $f6, $f8                   
    nop
    bc1fl   lbl_80889D70               
    lw      $ra, 0x002C($sp)           
    lw      a0, 0x0000(a1)             # 00000000
lbl_80889770:
    lw      a2, 0x02C4(a0)             # 000002C4
    addiu   a2, a2, 0xFFE0             # a2 = FFFFFFE0
    sw      a2, 0x02C4(a0)             # 000002C4
    lw      a0, 0x0000(a1)             # 00000000
    sw      a2, 0x0034($sp)            
    sw      a1, 0x007C($sp)            
    jal     func_8007E908              
    sw      a0, 0x0058($sp)            
    lhu     t2, 0x02AE(s0)             # 000002AE
    lw      a2, 0x0034($sp)            
    lw      t1, 0x0058($sp)            
    addu    $at, t2, $zero             
    sll     t2, t2,  2                 
    subu    t2, t2, $at                
    sll     t2, t2,  3                 
    addu    t2, t2, $at                
    sll     t2, t2,  1                 
    andi    t2, t2, 0x01FF             # t2 = 00000000
    slti    $at, t2, 0x0100            
    bne     $at, $zero, lbl_808897CC   
    lui     t9, 0xE700                 # t9 = E7000000
    addiu   t6, $zero, 0x01FF          # t6 = 000001FF
    subu    t2, t6, t2                 
lbl_808897CC:
    lh      v0, 0x02B2(s0)             # 000002B2
    lui     t3, 0xFA00                 # t3 = FA000000
    ori     t3, t3, 0x0001             # t3 = FA000001
    bgez    v0, lbl_80889804           
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_8088A018)     # $at = 80890000
    lwc1    $f18, %lo(var_8088A018)($at) 
    cvt.s.w $f16, $f10                 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    mul.s   $f4, $f16, $f18            
    beq     $zero, $zero, lbl_80889810 
    add.s   $f0, $f4, $f6              
lbl_80889804:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    nop
lbl_80889810:
    lw      t0, 0x02D0(t1)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(t1)             # 000002D0
    sw      a2, 0x0004(t0)             # 00000004
    sw      t8, 0x0000(t0)             # 00000000
    addiu   v0, a2, 0x0008             # v0 = 00000008
    sw      t9, 0x0000(a2)             # 00000000
    sw      $zero, 0x0004(a2)          # 00000004
    or      a1, v0, $zero              # a1 = 00000008
    sw      t3, 0x0000(a1)             # 00000008
    cfc1    t4, $f31                   
    ctc1    t5, $f31                   
    lwc1    $f8, 0x0234(s0)            # 00000234
    addiu   v0, v0, 0x0008             # v0 = 00000010
    cvt.w.s $f10, $f8                  
    cfc1    t5, $f31                   
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    beq     t5, $zero, lbl_808898AC    
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sub.s   $f10, $f8, $f10            
    ctc1    t5, $f31                   
    nop
    cvt.w.s $f10, $f10                 
    cfc1    t5, $f31                   
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    bne     t5, $zero, lbl_808898A4    
    nop
    mfc1    t5, $f10                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_808898BC 
    or      t5, t5, $at                # t5 = 80000000
lbl_808898A4:
    beq     $zero, $zero, lbl_808898BC 
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
lbl_808898AC:
    mfc1    t5, $f10                   
    nop
    bltz    t5, lbl_808898A4           
    nop
lbl_808898BC:
    ctc1    t4, $f31                   
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lwc1    $f16, 0x0238(s0)           # 00000238
    lui     a3, %hi(func_808895D8)     # a3 = 80890000
    cfc1    t9, $f31                   
    ctc1    t3, $f31                   
    sll     t8, t5, 24                 
    addiu   a3, a3, %lo(func_808895D8) # a3 = 808895D8
    cvt.w.s $f18, $f16                 
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beq     t3, $zero, lbl_80889938    
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f18, $f16, $f18           
    ctc1    t3, $f31                   
    nop
    cvt.w.s $f18, $f18                 
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_80889930    
    nop
    mfc1    t3, $f18                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80889948 
    or      t3, t3, $at                # t3 = 80000000
lbl_80889930:
    beq     $zero, $zero, lbl_80889948 
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
lbl_80889938:
    mfc1    t3, $f18                   
    nop
    bltz    t3, lbl_80889930           
    nop
lbl_80889948:
    ctc1    t9, $f31                   
    or      t4, t3, $zero              # t4 = FFFFFFFF
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lwc1    $f4, 0x023C(s0)            # 0000023C
    cfc1    t9, $f31                   
    ctc1    t3, $f31                   
    andi    t5, t4, 0x00FF             # t5 = 000000FF
    sll     t6, t5, 16                 
    cvt.w.s $f6, $f4                   
    or      t7, t8, t6                 # t7 = DB0601FF
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beq     t3, $zero, lbl_808899C8    
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f6, $f4, $f6              
    ctc1    t3, $f31                   
    nop
    cvt.w.s $f6, $f6                   
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_808899C0    
    nop
    mfc1    t3, $f6                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_808899D8 
    or      t3, t3, $at                # t3 = 80000000
lbl_808899C0:
    beq     $zero, $zero, lbl_808899D8 
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
lbl_808899C8:
    mfc1    t3, $f6                    
    nop
    bltz    t3, lbl_808899C0           
    nop
lbl_808899D8:
    ctc1    t9, $f31                   
    lwc1    $f8, 0x0240(s0)            # 00000240
    or      t4, t3, $zero              # t4 = FFFFFFFF
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    mul.s   $f10, $f8, $f0             
    andi    t5, t4, 0x00FF             # t5 = 000000FF
    sll     t8, t5,  8                 
    or      t6, t7, t8                 # t6 = DB0601FF
    cfc1    t9, $f31                   
    ctc1    t3, $f31                   
    nop
    cvt.w.s $f16, $f10                 
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beq     t3, $zero, lbl_80889A60    
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f16, $f10, $f16           
    ctc1    t3, $f31                   
    nop
    cvt.w.s $f16, $f16                 
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_80889A58    
    nop
    mfc1    t3, $f16                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80889A70 
    or      t3, t3, $at                # t3 = 80000000
lbl_80889A58:
    beq     $zero, $zero, lbl_80889A70 
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
lbl_80889A60:
    mfc1    t3, $f16                   
    nop
    bltz    t3, lbl_80889A58           
    nop
lbl_80889A70:
    andi    t5, t3, 0x00FF             # t5 = 000000FF
    ctc1    t9, $f31                   
    or      t7, t6, t5                 # t7 = DB0601FF
    sw      t7, 0x0004(a1)             # 0000000C
    lhu     t8, 0x02B4(s0)             # 000002B4
    or      v1, v0, $zero              # v1 = 00000010
    lui     t6, 0xE200                 # t6 = E2000000
    andi    t9, t8, 0x0004             # t9 = 00000000
    beq     t9, $zero, lbl_80889AC0    
    lui     t7, 0xDF00                 # t7 = DF000000
    or      v1, v0, $zero              # v1 = 00000010
    lui     t3, 0xE200                 # t3 = E2000000
    lui     t4, 0x0C18                 # t4 = 0C180000
    ori     t4, t4, 0x4340             # t4 = 0C184340
    ori     t3, t3, 0x001C             # t3 = E200001C
    sw      t3, 0x0000(v1)             # 00000010
    sw      t4, 0x0004(v1)             # 00000014
    addiu   v0, v0, 0x0008             # v0 = 00000018
    beq     $zero, $zero, lbl_80889ADC 
    sw      t7, 0x0000(v0)             # 00000018
lbl_80889AC0:
    lui     t5, 0x0C18                 # t5 = 0C180000
    ori     t5, t5, 0x4B50             # t5 = 0C184B50
    ori     t6, t6, 0x001C             # t6 = E200001C
    sw      t6, 0x0000(v1)             # 00000010
    sw      t5, 0x0004(v1)             # 00000014
    addiu   v0, v0, 0x0008             # v0 = 00000020
    sw      t7, 0x0000(v0)             # 00000020
lbl_80889ADC:
    sw      $zero, 0x0004(v0)          # 00000024
    lw      v1, 0x02D0(t1)             # 000002D0
    lui     t9, 0xFB00                 # t9 = FB000000
    cfc1    t3, $f31                   
    addiu   t8, v1, 0x0008             # t8 = 00000018
    sw      t8, 0x02D0(t1)             # 000002D0
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t9, 0x0000(v1)             # 00000010
    ctc1    t4, $f31                   
    lwc1    $f18, 0x0244(s0)           # 00000244
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f4, $f18                  
    cfc1    t4, $f31                   
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beql    t4, $zero, lbl_80889B68    
    mfc1    t4, $f4                    
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f4, $f18, $f4             
    ctc1    t4, $f31                   
    nop
    cvt.w.s $f4, $f4                   
    cfc1    t4, $f31                   
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_80889B5C    
    nop
    mfc1    t4, $f4                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80889B74 
    or      t4, t4, $at                # t4 = 80000000
lbl_80889B5C:
    beq     $zero, $zero, lbl_80889B74 
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    mfc1    t4, $f4                    
lbl_80889B68:
    nop
    bltz    t4, lbl_80889B5C           
    nop
lbl_80889B74:
    ctc1    t3, $f31                   
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lwc1    $f6, 0x0248(s0)            # 00000248
    sll     t7, t4, 24                 
    cfc1    t8, $f31                   
    ctc1    t9, $f31                   
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f8, $f6                   
    cfc1    t9, $f31                   
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_80889BF0    
    mfc1    t9, $f8                    
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f8, $f6, $f8              
    ctc1    t9, $f31                   
    nop
    cvt.w.s $f8, $f8                   
    cfc1    t9, $f31                   
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_80889BE4    
    nop
    mfc1    t9, $f8                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80889BFC 
    or      t9, t9, $at                # t9 = 80000000
lbl_80889BE4:
    beq     $zero, $zero, lbl_80889BFC 
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f8                    
lbl_80889BF0:
    nop
    bltz    t9, lbl_80889BE4           
    nop
lbl_80889BFC:
    ctc1    t8, $f31                   
    or      t3, t9, $zero              # t3 = FFFFFFFF
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lwc1    $f10, 0x024C(s0)           # 0000024C
    cfc1    t8, $f31                   
    ctc1    t9, $f31                   
    andi    t4, t3, 0x00FF             # t4 = 000000FF
    sll     t6, t4, 16                 
    cvt.w.s $f16, $f10                 
    or      t5, t7, t6                 # t5 = FF00001C
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t9, $f31                   
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_80889C84    
    mfc1    t9, $f16                   
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f16, $f10, $f16           
    ctc1    t9, $f31                   
    nop
    cvt.w.s $f16, $f16                 
    cfc1    t9, $f31                   
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_80889C78    
    nop
    mfc1    t9, $f16                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80889C90 
    or      t9, t9, $at                # t9 = 80000000
lbl_80889C78:
    beq     $zero, $zero, lbl_80889C90 
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f16                   
lbl_80889C84:
    nop
    bltz    t9, lbl_80889C78           
    nop
lbl_80889C90:
    ctc1    t8, $f31                   
    mtc1    t2, $f18                   # $f18 = 0.00
    or      t3, t9, $zero              # t3 = FFFFFFFF
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    cvt.s.w $f4, $f18                  
    andi    t4, t3, 0x00FF             # t4 = 000000FF
    sll     t7, t4,  8                 
    or      t6, t5, t7                 # t6 = FF00001C
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f6, $f4, $f0              
    cfc1    t8, $f31                   
    ctc1    t9, $f31                   
    nop
    cvt.w.s $f8, $f6                   
    cfc1    t9, $f31                   
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_80889D24    
    mfc1    t9, $f8                    
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f8, $f6, $f8              
    ctc1    t9, $f31                   
    nop
    cvt.w.s $f8, $f8                   
    cfc1    t9, $f31                   
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_80889D18    
    nop
    mfc1    t9, $f8                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80889D30 
    or      t9, t9, $at                # t9 = 80000000
lbl_80889D18:
    beq     $zero, $zero, lbl_80889D30 
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f8                    
lbl_80889D24:
    nop
    bltz    t9, lbl_80889D18           
    nop
lbl_80889D30:
    andi    t4, t9, 0x00FF             # t4 = 000000FF
    ctc1    t8, $f31                   
    or      t5, t6, t4                 # t5 = FF0000FF
    sw      t5, 0x0004(v1)             # 00000014
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    sw      s0, 0x0014($sp)            
    sw      $zero, 0x0010($sp)         
    lw      t7, 0x02D0(t1)             # 000002D0
    sw      t1, 0x0058($sp)            
    lw      a0, 0x007C($sp)            
    jal     func_8008A414              
    sw      t7, 0x0018($sp)            
    lw      t1, 0x0058($sp)            
    sw      v0, 0x02D0(t1)             # 000002D0
    lw      $ra, 0x002C($sp)           
lbl_80889D70:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0078           # $sp = 00000000
    jr      $ra                        
    nop


func_80889D80:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0030($sp)            
    sw      a2, 0x0038($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0038($sp)            
    sll     t7, t6,  2                 
    addu    t8, a3, t7                 
    lw      v0, 0x1D8C(t8)             # 00001D8C
    lw      t2, 0x0018(v0)             # 00000018
    lw      t9, 0x000C(v0)             # 0000000C
    lw      t0, 0x0010(v0)             # 00000010
    mtc1    t2, $f10                   # $f10 = 0.00
    lw      t1, 0x0014(v0)             # 00000014
    mtc1    t9, $f4                    # $f4 = 0.00
    cvt.s.w $f16, $f10                 
    mtc1    t0, $f6                    # $f6 = 0.00
    mtc1    t1, $f8                    # $f8 = 0.00
    cvt.s.w $f2, $f4                   
    swc1    $f16, 0x0018($sp)          
    lw      t3, 0x001C(v0)             # 0000001C
    mtc1    t3, $f18                   # $f18 = 0.00
    cvt.s.w $f12, $f6                  
    cvt.s.w $f4, $f18                  
    cvt.s.w $f14, $f8                  
    swc1    $f4, 0x001C($sp)           
    lw      t4, 0x0020(v0)             # 00000020
    mtc1    t4, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    swc1    $f8, 0x0020($sp)           
    lhu     a2, 0x1D74(a3)             # 00001D74
    lhu     a1, 0x0002(v0)             # 00000002
    lhu     a0, 0x0004(v0)             # 00000004
    swc1    $f14, 0x002C($sp)          
    swc1    $f12, 0x0028($sp)          
    jal     func_8005C690              
    swc1    $f2, 0x0024($sp)           
    lwc1    $f2, 0x0024($sp)           
    lwc1    $f10, 0x0018($sp)          
    lw      v0, 0x0030($sp)            
    lwc1    $f12, 0x0028($sp)          
    sub.s   $f16, $f10, $f2            
    lwc1    $f14, 0x002C($sp)          
    mul.s   $f18, $f16, $f0            
    add.s   $f4, $f18, $f2             
    swc1    $f4, 0x0000(v0)            # 00000000
    lwc1    $f6, 0x001C($sp)           
    sub.s   $f8, $f6, $f12             
    mul.s   $f10, $f8, $f0             
    add.s   $f16, $f10, $f12           
    swc1    $f16, 0x0004(v0)           # 00000004
    lwc1    $f18, 0x0020($sp)          
    sub.s   $f4, $f18, $f14            
    mul.s   $f6, $f4, $f0              
    add.s   $f8, $f6, $f14             
    swc1    $f8, 0x0008(v0)            # 00000008
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000

.section .data

var_80889E70: .word 0x00180700, 0x02000030, 0x00010000, 0x000002C0
.word func_808862F4
.word func_80886898
.word func_8088957C
.word func_808896FC
var_80889E90: .word 0x48500008
var_80889E94: .word \
0x437F0000, 0x437F0000, 0x437F0000, 0x437F0000, \
0x437F0000, 0x435C0000, 0x435C0000, 0x437F0000
var_80889EB4: .word \
0x437F0000, 0x437F0000, 0x437F0000, 0x437F0000, \
0x437F0000, 0x42480000, 0x42C80000, 0x437F0000
var_80889ED4: .word \
0x00000001, 0x00000102, 0x00010002, 0x00010002, \
0x01000001, 0x02000001, 0x02000100, 0x02010101, \
0x00010001, 0x00010100
var_80889EFC: .word 0x00000000, 0xBD4CCCCD, 0x00000000
var_80889F08: .word 0x00000000, 0xBCCCCCCD, 0x00000000
var_80889F14: .word 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80889F20: .word var_80885B34
.word func_80885CB4
.word func_80885CF8
.word func_80885D3C
.word func_80885D68
.word func_80885DA4
.word func_80885DD8
.word func_80885C44
.word func_80885C7C
.word func_80885C00
.word func_80885BC4
.word func_80885E1C
.word func_80885B80
var_80889F54: .word 0x46FFFE00
var_80889F58: .word 0x46FFFE00
var_80889F5C: .word 0x3E4CCCCD
var_80889F60: .word 0x3F733333
var_80889F64: .word 0x3D4CCCCD
var_80889F68: .word 0x3DCCCCCD
var_80889F6C: .word 0x46FFFE00
var_80889F70: .word var_808864A4
.word var_80886514
.word var_808865E4
.word var_808866A0
.word var_808866E8
.word var_80886578
.word var_808865F0
.word var_808865CC
var_80889F90: .word 0x46FFFE00
var_80889F94: .word 0x413FD70A
var_80889F98: .word 0x3E4CCCCD
var_80889F9C: .word 0x3C23D70A
var_80889FA0: .word 0x3E99999A
var_80889FA4: .word 0x3D4CCCCD
var_80889FA8: .word 0x3C03126F
var_80889FAC: .word 0x3DCCCCCD
var_80889FB0: .word 0x44BB8000
var_80889FB4: .word 0x3DCCCCCD
var_80889FB8: .word 0x3E4CCCCD
var_80889FBC: .word 0x3C03126F
var_80889FC0: .word 0x3D4CCCCD
var_80889FC4: .word 0x3DCCCCCD
var_80889FC8: .word 0x3F333333
var_80889FCC: .word 0x3EB33333
var_80889FD0: .word 0x3C4A4588
var_80889FD4: .word 0x3C03126F
var_80889FD8: .word 0x3D088889
var_80889FDC: .word 0x3D4CCCCD
var_80889FE0: .word 0x3C03126F
var_80889FE4: .word 0x3C03126F
var_80889FE8: .word 0x44BB8000
var_80889FEC: .word 0x3E4CCCCD
var_80889FF0: .word 0x44BB8000
var_80889FF4: .word 0x3E4CCCCD
var_80889FF8: .word 0x3E4CCCCD
var_80889FFC: .word 0x3E4CCCCD
var_8088A000: .word 0x38A7C5AD
var_8088A004: .word 0x3E4CCCCD
var_8088A008: .word 0x38A7C5AD
var_8088A00C: .word 0x3DCCCCCD
var_8088A010: .word 0x3C449BA6
var_8088A014: .word 0x42F9FFFF
var_8088A018: .word 0x3A98EAD6, 0x00000000

