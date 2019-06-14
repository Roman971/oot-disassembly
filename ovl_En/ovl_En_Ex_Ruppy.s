#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A8AB70:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      t6, 0x001C(s0)             # 0000001C
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a3, 0x41C8                 # a3 = 41C80000
    jal     func_8001EC20              
    sh      t6, 0x0142(s0)             # 00000142
    lh      v0, 0x0142(s0)             # 00000142
    sltiu   $at, v0, 0x0005            
    beq     $at, $zero, lbl_80A8AF34   
    sll     t7, v0,  2                 
    lui     $at, %hi(var_80A8BAC0)     # $at = 80A90000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80A8BAC0)($at) 
    jr      t7                         
    nop
var_80A8ABC8:
    lui     $at, %hi(var_80A8BAD4)     # $at = 80A90000
    lwc1    $f0, %lo(var_80A8BAD4)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    a1, $f0                    
    jal     func_80020F88              
    swc1    $f0, 0x0150(s0)            # 00000150
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    sb      t8, 0x0003(s0)             # 00000003
    lui     t9, 0x8012                 # t9 = 80120000
    swc1    $f4, 0x006C(s0)            # 0000006C
    lhu     t9, -0x4B56(t9)            # 8011B4AA
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    lui     $at, %hi(var_80A8BAD8)     # $at = 80A90000
    andi    t0, t9, 0x0100             # t0 = 00000000
    bne     t0, $zero, lbl_80A8AC18    
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sh      t1, 0x0148(s0)             # 00000148
    beq     $zero, $zero, lbl_80A8AD38 
    sh      t2, 0x0140(s0)             # 00000140
lbl_80A8AC18:
    lw      v1, 0x0118(s0)             # 00000118
    lwc1    $f2, %lo(var_80A8BAD8)($at) 
    beq     v1, $zero, lbl_80A8AC54    
    mov.s   $f12, $f2                  
    lw      t3, 0x0130(v1)             # 00000130
    beq     t3, $zero, lbl_80A8AC54    
    nop
    lh      t4, 0x029A(v1)             # 0000029A
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    mtc1    t4, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    mul.s   $f0, $f8, $f10             
    add.s   $f12, $f2, $f0             
lbl_80A8AC54:
    jal     func_80026D64              
    nop
    trunc.w.s $f16, $f0                  
    mfc1    v0, $f16                   
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80A8AC8C           
    slti    $at, v0, 0x0028            
    beq     $at, $zero, lbl_80A8AC8C   
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sh      t6, 0x0148(s0)             # 00000148
    beq     $zero, $zero, lbl_80A8AD38 
    sh      $zero, 0x0140(s0)          # 00000140
lbl_80A8AC8C:
    slti    $at, v0, 0x0028            
    bne     $at, $zero, lbl_80A8ACB0   
    slti    $at, v0, 0x00AA            
    beq     $at, $zero, lbl_80A8ACB0   
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sh      t7, 0x0148(s0)             # 00000148
    beq     $zero, $zero, lbl_80A8AD38 
    sh      t8, 0x0140(s0)             # 00000140
lbl_80A8ACB0:
    slti    $at, v0, 0x00AA            
    bne     $at, $zero, lbl_80A8ACD4   
    slti    $at, v0, 0x00BE            
    beq     $at, $zero, lbl_80A8ACD4   
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    sh      t9, 0x0148(s0)             # 00000148
    beq     $zero, $zero, lbl_80A8AD38 
    sh      t0, 0x0140(s0)             # 00000140
lbl_80A8ACD4:
    slti    $at, v0, 0x00BE            
    bne     $at, $zero, lbl_80A8ACF8   
    slti    $at, v0, 0x00C8            
    beq     $at, $zero, lbl_80A8ACF8   
    addiu   t1, $zero, 0x0032          # t1 = 00000032
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    sh      t1, 0x0148(s0)             # 00000148
    beq     $zero, $zero, lbl_80A8AD38 
    sh      t2, 0x0140(s0)             # 00000140
lbl_80A8ACF8:
    lui     $at, %hi(var_80A8BADC)     # $at = 80A90000
    lwc1    $f0, %lo(var_80A8BADC)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    a1, $f0                    
    jal     func_80020F88              
    swc1    $f0, 0x0150(s0)            # 00000150
    lw      v1, 0x0118(s0)             # 00000118
    addiu   t3, $zero, 0x01F4          # t3 = 000001F4
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    sh      t3, 0x0148(s0)             # 00000148
    beq     v1, $zero, lbl_80A8AD38    
    sh      t4, 0x0140(s0)             # 00000140
    lw      t5, 0x0130(v1)             # 00000130
    beql    t5, $zero, lbl_80A8AD3C    
    lui     $at, 0x40E0                # $at = 40E00000
    sh      $zero, 0x029A(v1)          # 0000029A
lbl_80A8AD38:
    lui     $at, 0x40E0                # $at = 40E00000
lbl_80A8AD3C:
    mtc1    $at, $f18                  # $f18 = 7.00
    lw      t8, 0x0004(s0)             # 00000004
    lui     $at, 0x442F                # $at = 442F0000
    mtc1    $at, $f4                   # $f4 = 700.00
    lh      t6, 0x0034(s0)             # 00000034
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     t0, %hi(func_80A8B174)     # t0 = 80A90000
    addiu   t7, $zero, 0x001E          # t7 = 0000001E
    addiu   t0, t0, %lo(func_80A8B174) # t0 = 80A8B174
    and     t9, t8, $at                
    sh      $zero, 0x0034(s0)          # 00000034
    sh      t7, 0x0146(s0)             # 00000146
    sw      t9, 0x0004(s0)             # 00000004
    sw      t0, 0x013C(s0)             # 0000013C
    swc1    $f18, 0x00C4(s0)           # 000000C4
    swc1    $f4, 0x00BC(s0)            # 000000BC
    beq     $zero, $zero, lbl_80A8AF34 
    sh      t6, 0x014A(s0)             # 0000014A
var_80A8AD84:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80A8ADA8      
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    jal     func_80020F88              
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    beq     $zero, $zero, lbl_80A8ADE0 
    sh      t1, 0x0140(s0)             # 00000140
lbl_80A8ADA8:
    lui     $at, %hi(var_80A8BAE0)     # $at = 80A90000
    lwc1    $f0, %lo(var_80A8BAE0)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    a1, $f0                    
    jal     func_80020F88              
    nop
    lui     $at, %hi(var_80A8BAE4)     # $at = 80A90000
    jal     func_80026D64              
    lwc1    $f12, %lo(var_80A8BAE4)($at) 
    trunc.w.s $f6, $f0                   
    mfc1    t5, $f6                    
    nop
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sh      t6, 0x0140(s0)             # 00000140
lbl_80A8ADE0:
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f8                   # $f8 = -3.00
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f10                  # $f10 = 6.00
    lw      t7, 0x0004(s0)             # 00000004
    lui     $at, 0x442F                # $at = 442F0000
    mtc1    $at, $f16                  # $f16 = 700.00
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     t9, %hi(func_80A8B65C)     # t9 = 80A90000
    addiu   t9, t9, %lo(func_80A8B65C) # t9 = 80A8B65C
    and     t8, t7, $at                
    sw      t8, 0x0004(s0)             # 00000004
    sw      t9, 0x013C(s0)             # 0000013C
    swc1    $f8, 0x006C(s0)            # 0000006C
    swc1    $f10, 0x00C4(s0)           # 000000C4
    beq     $zero, $zero, lbl_80A8AF34 
    swc1    $f16, 0x00BC(s0)           # 000000BC
var_80A8AE24:
    lui     $at, %hi(var_80A8BAE8)     # $at = 80A90000
    lwc1    $f0, %lo(var_80A8BAE8)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    a1, $f0                    
    jal     func_80020F88              
    nop
    sh      $zero, 0x0140(s0)          # 00000140
    lui     $at, %hi(var_80A8BAEC)     # $at = 80A90000
    jal     func_80026D64              
    lwc1    $f12, %lo(var_80A8BAEC)($at) 
    trunc.w.s $f18, $f0                  
    lui     t5, %hi(func_80A8B788)     # t5 = 80A90000
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    mfc1    v0, $f18                   
    addiu   t5, t5, %lo(func_80A8B788) # t5 = 80A8B788
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    beq     v0, $zero, lbl_80A8AE98    
    nop
    beq     v0, $at, lbl_80A8AEA0      
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   $at, $zero, 0x0014         # $at = 00000014
    beq     v0, $at, lbl_80A8AEA0      
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    beql    v0, $at, lbl_80A8AEA4      
    sh      t2, 0x0140(s0)             # 00000140
    beq     $zero, $zero, lbl_80A8AEA8 
    lui     $at, 0xC040                # $at = C0400000
lbl_80A8AE98:
    beq     $zero, $zero, lbl_80A8AEA4 
    sh      t1, 0x0140(s0)             # 00000140
lbl_80A8AEA0:
    sh      t2, 0x0140(s0)             # 00000140
lbl_80A8AEA4:
    lui     $at, 0xC040                # $at = C0400000
lbl_80A8AEA8:
    mtc1    $at, $f4                   # $f4 = -3.00
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f6                   # $f6 = 6.00
    lw      t3, 0x0004(s0)             # 00000004
    lui     $at, 0x442F                # $at = 442F0000
    mtc1    $at, $f8                   # $f8 = 700.00
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t4, t3, $at                
    sw      t4, 0x0004(s0)             # 00000004
    sw      t5, 0x013C(s0)             # 0000013C
    swc1    $f4, 0x006C(s0)            # 0000006C
    swc1    $f6, 0x00C4(s0)            # 000000C4
    beq     $zero, $zero, lbl_80A8AF34 
    swc1    $f8, 0x00BC(s0)            # 000000BC
var_80A8AEE0:
    lui     $at, %hi(var_80A8BAF0)     # $at = 80A90000
    lwc1    $f0, %lo(var_80A8BAF0)($at) 
    lw      t6, 0x0004(s0)             # 00000004
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f10                  # $f10 = -3.00
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    mfc1    a1, $f0                    
    and     t7, t6, $at                
    sw      t7, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88              
    swc1    $f10, 0x006C(s0)           # 0000006C
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f16                  # $f16 = 6.00
    lui     $at, 0xC42F                # $at = C42F0000
    mtc1    $at, $f18                  # $f18 = -700.00
    lui     t8, %hi(func_80A8B80C)     # t8 = 80A90000
    addiu   t8, t8, %lo(func_80A8B80C) # t8 = 80A8B80C
    sw      t8, 0x013C(s0)             # 0000013C
    swc1    $f16, 0x00C4(s0)           # 000000C4
    swc1    $f18, 0x00BC(s0)           # 000000BC
lbl_80A8AF34:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8AF48:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80A8AF58:
    addiu   $sp, $sp, 0xFF50           # $sp = FFFFFF50
    sw      s8, 0x0068($sp)            
    sll     s8, a2, 16                 
    sw      s0, 0x0048($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sra     s8, s8, 16                 
    sw      $ra, 0x006C($sp)           
    sw      s7, 0x0064($sp)            
    sw      s6, 0x0060($sp)            
    sw      s5, 0x005C($sp)            
    sw      s4, 0x0058($sp)            
    sw      s3, 0x0054($sp)            
    sw      s2, 0x0050($sp)            
    sw      s1, 0x004C($sp)            
    sdc1    $f26, 0x0040($sp)          
    sdc1    $f24, 0x0038($sp)          
    sdc1    $f22, 0x0030($sp)          
    sdc1    $f20, 0x0028($sp)          
    sw      a1, 0x00B4($sp)            
    sw      a2, 0x00B8($sp)            
    bgtz    s8, lbl_80A8AFB4           
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   s8, $zero, 0x0001          # s8 = 00000001
lbl_80A8AFB4:
    sll     v0, a3,  2                 
    subu    v0, v0, a3                 
    lui     t2, %hi(var_80A8BA48)      # t2 = 80A90000
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   t2, t2, %lo(var_80A8BA48)  # t2 = 80A8BA48
    sll     v0, v0,  2                 
    sb      t6, 0x0088($sp)            
    sb      t7, 0x0089($sp)            
    sb      $zero, 0x008A($sp)         
    sb      t8, 0x0084($sp)            
    sb      t9, 0x0085($sp)            
    sb      t0, 0x0086($sp)            
    addu    t3, v0, t2                 
    lw      t5, 0x0000(t3)             # 00000000
    addiu   t1, $sp, 0x0098            # t1 = FFFFFFE8
    lui     t6, %hi(var_80A8BA60)      # t6 = 80A90000
    sw      t5, 0x0000(t1)             # FFFFFFE8
    lw      t4, 0x0004(t3)             # 00000004
    addiu   t6, t6, %lo(var_80A8BA60)  # t6 = 80A8BA60
    addu    t7, v0, t6                 
    sw      t4, 0x0004(t1)             # FFFFFFEC
    lw      t5, 0x0008(t3)             # 00000008
    addiu   t8, $sp, 0x008C            # t8 = FFFFFFDC
    addiu   s2, $zero, 0x0BB8          # s2 = 00000BB8
    sw      t5, 0x0008(t1)             # FFFFFFF0
    sw      t7, 0x0078($sp)            
    lw      t2, 0x0000(t7)             # 000000FF
    addiu   s3, $zero, 0x0010          # s3 = 00000010
    or      s1, $zero, $zero           # s1 = 00000000
    sw      t2, 0x0000(t8)             # FFFFFFDC
    lw      t0, 0x0004(t7)             # 00000103
    lui     $at, 0x4416                # $at = 44160000
    addiu   s7, $sp, 0x0084            # s7 = FFFFFFD4
    sw      t0, 0x0004(t8)             # FFFFFFE0
    lw      t2, 0x0008(t7)             # 00000107
    addiu   s6, $sp, 0x0088            # s6 = FFFFFFD8
    blez    s8, lbl_80A8B134           
    sw      t2, 0x0008(t8)             # FFFFFFE4
    mtc1    $at, $f26                  # $f26 = 600.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f24                  # $f24 = 20.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f22                  # $f22 = 10.00
    lui     $at, 0x3F00                # $at = 3F000000
    lui     s4, %hi(var_80A8BA6C)      # s4 = 80A90000
    mtc1    $at, $f20                  # $f20 = 0.50
    addiu   s4, s4, %lo(var_80A8BA6C)  # s4 = 80A8BA6C
    addiu   s5, $sp, 0x00A4            # s5 = FFFFFFF4
    lw      t1, 0x0078($sp)            
lbl_80A8B084:
    bne     t1, s4, lbl_80A8B0AC       
    nop
    mov.s   $f12, $f24                 
    addiu   s2, $zero, 0x1388          # s2 = 00001388
    jal     func_80026D90              
    addiu   s3, $zero, 0x0014          # s3 = 00000014
    swc1    $f0, 0x008C($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f24                 
    swc1    $f0, 0x0094($sp)           
lbl_80A8B0AC:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f4, $f0, $f20             
    lwc1    $f8, 0x0024(s0)            # 00000024
    mul.s   $f6, $f4, $f22             
    add.s   $f10, $f6, $f8             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x00A4($sp)          
    lwc1    $f18, 0x0150(s0)           # 00000150
    sub.s   $f8, $f0, $f20             
    lwc1    $f16, 0x0028(s0)           # 00000028
    mul.s   $f4, $f18, $f26            
    add.s   $f6, $f16, $f4             
    mul.s   $f10, $f8, $f22            
    add.s   $f18, $f10, $f6            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x00A8($sp)          
    sub.s   $f16, $f0, $f20            
    lwc1    $f8, 0x002C(s0)            # 0000002C
    sw      s3, 0x001C($sp)            
    sw      s2, 0x0018($sp)            
    mul.s   $f4, $f16, $f22            
    sw      s7, 0x0014($sp)            
    sw      s6, 0x0010($sp)            
    lw      a0, 0x00B4($sp)            
    or      a1, s5, $zero              # a1 = FFFFFFF4
    addiu   a2, $sp, 0x0098            # a2 = FFFFFFE8
    addiu   a3, $sp, 0x008C            # a3 = FFFFFFDC
    add.s   $f10, $f4, $f8             
    jal     func_8001C6A8              
    swc1    $f10, 0x00AC($sp)          
    addiu   s1, s1, 0x0001             # s1 = 00000001
    bnel    s1, s8, lbl_80A8B084       
    lw      t1, 0x0078($sp)            
lbl_80A8B134:
    lw      $ra, 0x006C($sp)           
    ldc1    $f20, 0x0028($sp)          
    ldc1    $f22, 0x0030($sp)          
    ldc1    $f24, 0x0038($sp)          
    ldc1    $f26, 0x0040($sp)          
    lw      s0, 0x0048($sp)            
    lw      s1, 0x004C($sp)            
    lw      s2, 0x0050($sp)            
    lw      s3, 0x0054($sp)            
    lw      s4, 0x0058($sp)            
    lw      s5, 0x005C($sp)            
    lw      s6, 0x0060($sp)            
    lw      s7, 0x0064($sp)            
    lw      s8, 0x0068($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00B0           # $sp = 00000000


func_80A8B174:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      t6, 0x00B6(s0)             # 000000B6
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   t7, t6, 0x07A8             # t7 = 000007A8
    sh      t7, 0x00B6(s0)             # 000000B6
    addiu   a0, s0, 0x006C             # a0 = 0000006C
    lui     a1, 0xC000                 # a1 = C0000000
    jal     func_80064280              
    lui     a3, 0x3F80                 # a3 = 3F800000
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)            
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80A8AF58              
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800646F0              
    addiu   a0, $zero, 0x20BC          # a0 = 000020BC
    lw      v0, 0x0118(s0)             # 00000118
    beql    v0, $zero, lbl_80A8B244    
    lw      $ra, 0x001C($sp)           
    lw      t8, 0x0130(v0)             # 00000130
    beql    t8, $zero, lbl_80A8B244    
    lw      $ra, 0x001C($sp)           
    lh      t9, 0x0286(v0)             # 00000286
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    beql    t9, $zero, lbl_80A8B214    
    mtc1    $zero, $f0                 # $f0 = 0.00
    lhu     t0, 0x0088(s0)             # 00000088
    andi    t1, t0, 0x0020             # t1 = 00000000
    bnel    t1, $zero, lbl_80A8B214    
    mtc1    $zero, $f0                 # $f0 = 0.00
    lh      t2, 0x0146(s0)             # 00000146
    bnel    t2, $zero, lbl_80A8B244    
    lw      $ra, 0x001C($sp)           
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80A8B214:
    sh      t3, 0x0144(s0)             # 00000144
    addiu   a1, $zero, 0x2817          # a1 = 00002817
    swc1    $f0, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0064(s0)            # 00000064
    swc1    $f0, 0x0060(s0)            # 00000060
    swc1    $f0, 0x005C(s0)            # 0000005C
    jal     func_80064780              
    swc1    $f0, 0x006C(s0)            # 0000006C
    lui     t4, %hi(func_80A8B254)     # t4 = 80A90000
    addiu   t4, t4, %lo(func_80A8B254) # t4 = 80A8B254
    sw      t4, 0x013C(s0)             # 0000013C
    lw      $ra, 0x001C($sp)           
lbl_80A8B244:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8B254:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lw      v0, 0x0118(s0)             # 00000118
    beql    v0, $zero, lbl_80A8B3B0    
    lw      $ra, 0x001C($sp)           
    lw      t6, 0x0130(v0)             # 00000130
    beql    t6, $zero, lbl_80A8B3B0    
    lw      $ra, 0x001C($sp)           
    lh      t7, 0x0292(v0)             # 00000292
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t7, $at, lbl_80A8B3B0      
    lw      $ra, 0x001C($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    sh      $zero, 0x0144(s0)          # 00000144
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f8                   # $f8 = 300.00
    sub.s   $f6, $f0, $f4              
    lui     $at, 0xC382                # $at = C3820000
    mtc1    $at, $f16                  # $f16 = -260.00
    mul.s   $f10, $f6, $f8             
    add.s   $f18, $f10, $f16           
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0024(s0)           # 00000024
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    sub.s   $f6, $f0, $f4              
    lh      t8, 0x014A(s0)             # 0000014A
    lui     $at, 0x43B9                # $at = 43B90000
    mtc1    $at, $f16                  # $f16 = 370.00
    mul.s   $f10, $f6, $f8             
    mtc1    t8, $f4                    # $f4 = 0.00
    lui     $at, 0xC248                # $at = C2480000
    lui     t9, 0x8012                 # t9 = 80120000
    mtc1    $at, $f8                   # $f8 = -50.00
    lui     $at, 0xC396                # $at = C3960000
    cvt.s.w $f6, $f4                   
    add.s   $f18, $f10, $f16           
    mul.s   $f2, $f6, $f8              
    swc1    $f18, 0x0028(s0)           # 00000028
    lhu     t9, -0x4B56(t9)            # 8011B4AA
    andi    t0, t9, 0x0100             # t0 = 00000000
    bnel    t0, $zero, lbl_80A8B360    
    mtc1    $at, $f10                  # $f10 = -300.00
    lui     $at, 0xC3FA                # $at = C3FA0000
    mtc1    $at, $f10                  # $f10 = -500.00
    nop
    add.s   $f2, $f2, $f10             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x0020($sp)           
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f4                   # $f4 = 80.00
    sub.s   $f18, $f0, $f16            
    lwc1    $f2, 0x0020($sp)           
    mul.s   $f6, $f18, $f4             
    add.s   $f8, $f6, $f2              
    beq     $zero, $zero, lbl_80A8B394 
    swc1    $f8, 0x002C(s0)            # 0000002C
    mtc1    $at, $f10                  # $f10 = 80.00
lbl_80A8B360:
    nop
    add.s   $f2, $f2, $f10             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x0020($sp)           
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    sub.s   $f18, $f0, $f16            
    lwc1    $f2, 0x0020($sp)           
    mul.s   $f6, $f18, $f4             
    add.s   $f8, $f6, $f2              
    swc1    $f8, 0x002C(s0)            # 0000002C
lbl_80A8B394:
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f10                  # $f10 = -1.00
    lui     t1, %hi(func_80A8B3C0)     # t1 = 80A90000
    addiu   t1, t1, %lo(func_80A8B3C0) # t1 = 80A8B3C0
    sw      t1, 0x013C(s0)             # 0000013C
    swc1    $f10, 0x006C(s0)           # 0000006C
    lw      $ra, 0x001C($sp)           
lbl_80A8B3B0:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8B3C0:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0044($sp)            
    lhu     t6, 0x0088(s0)             # 00000088
    lui     $at, 0x4170                # $at = 41700000
    andi    t7, t6, 0x0020             # t7 = 00000000
    beql    t7, $zero, lbl_80A8B47C    
    lw      v0, 0x0118(s0)             # 00000118
    mtc1    $at, $f4                   # $f4 = 15.00
    lwc1    $f6, 0x0084(s0)            # 00000084
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A8B47C               
    lw      v0, 0x0118(s0)             # 00000118
    lw      t9, 0x0024(s0)             # 00000024
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFF0
    lui     $at, 0xBF80                # $at = BF800000
    sw      t9, 0x0000(a1)             # FFFFFFF0
    lw      t8, 0x0028(s0)             # 00000028
    mtc1    $at, $f18                  # $f18 = -1.00
    lui     $at, %hi(var_80A8BAF4)     # $at = 80A90000
    sw      t8, 0x0004(a1)             # FFFFFFF4
    lw      t9, 0x002C(s0)             # 0000002C
    addiu   t0, $zero, 0x0320          # t0 = 00000320
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t9, 0x0008(a1)             # FFFFFFF8
    lwc1    $f8, 0x0034($sp)           
    lwc1    $f10, 0x0084(s0)           # 00000084
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x0034($sp)          
    swc1    $f18, 0x0060(s0)           # 00000060
    lwc1    $f4, %lo(var_80A8BAF4)($at) 
    swc1    $f4, 0x006C(s0)            # 0000006C
    sw      t0, 0x0014($sp)            
    sw      $zero, 0x0010($sp)         
    jal     func_8001CF94              
    lw      a0, 0x0044($sp)            
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    jal     func_80064780              
    addiu   a1, $zero, 0x2817          # a1 = 00002817
    lui     t1, %hi(func_80A8B4C0)     # t1 = 80A90000
    addiu   t1, t1, %lo(func_80A8B4C0) # t1 = 80A8B4C0
    sw      t1, 0x013C(s0)             # 0000013C
    lw      v0, 0x0118(s0)             # 00000118
lbl_80A8B47C:
    beql    v0, $zero, lbl_80A8B4B0    
    lw      $ra, 0x0024($sp)           
    lw      t2, 0x0130(v0)             # 00000130
    beql    t2, $zero, lbl_80A8B4B0    
    lw      $ra, 0x0024($sp)           
    lh      t3, 0x028C(v0)             # 0000028C
    lui     t5, %hi(func_80A8B618)     # t5 = 80A90000
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    bne     t3, $zero, lbl_80A8B4AC    
    addiu   t5, t5, %lo(func_80A8B618) # t5 = 80A8B618
    sh      t4, 0x0146(s0)             # 00000146
    sw      t5, 0x013C(s0)             # 0000013C
lbl_80A8B4AC:
    lw      $ra, 0x0024($sp)           
lbl_80A8B4B0:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8B4C0:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0054($sp)            
    lui     t7, %hi(var_80A8BA78)      # t7 = 80A90000
    addiu   t7, t7, %lo(var_80A8BA78)  # t7 = 80A8BA78
    lw      t9, 0x0000(t7)             # 80A8BA78
    addiu   t6, $sp, 0x0040            # t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             # 80A8BA7C
    sw      t9, 0x0000(t6)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 80A8BA80
    lui     t1, %hi(var_80A8BA84)      # t1 = 80A90000
    addiu   t1, t1, %lo(var_80A8BA84)  # t1 = 80A8BA84
    sw      t8, 0x0004(t6)             # FFFFFFF4
    sw      t9, 0x0008(t6)             # FFFFFFF8
    lw      t3, 0x0000(t1)             # 80A8BA84
    addiu   t0, $sp, 0x0034            # t0 = FFFFFFE4
    lw      t2, 0x0004(t1)             # 80A8BA88
    sw      t3, 0x0000(t0)             # FFFFFFE4
    lw      t3, 0x0008(t1)             # 80A8BA8C
    sw      t2, 0x0004(t0)             # FFFFFFE8
    addiu   t5, $zero, 0x000A          # t5 = 0000000A
    sw      t3, 0x0008(t0)             # FFFFFFEC
    lh      t4, 0x0146(s0)             # 00000146
    lui     $at, %hi(var_80A8BAF8)     # $at = 80A90000
    bnel    t4, $zero, lbl_80A8B570    
    lw      v1, 0x0118(s0)             # 00000118
    sh      t5, 0x0146(s0)             # 00000146
    jal     func_80026D64              
    lwc1    $f12, %lo(var_80A8BAF8)($at) 
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f2                   # $f2 = 5.00
    lui     $at, %hi(var_80A8BAFC)     # $at = 80A90000
    lwc1    $f4, %lo(var_80A8BAFC)($at) 
    mfc1    a3, $f2                    
    lw      a0, 0x0054($sp)            
    add.s   $f6, $f0, $f4              
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    swc1    $f2, 0x0010($sp)           
    jal     func_8001CEDC              
    swc1    $f6, 0x0014($sp)           
    lw      v1, 0x0118(s0)             # 00000118
lbl_80A8B570:
    beql    v1, $zero, lbl_80A8B608    
    lw      $ra, 0x0024($sp)           
    lw      t6, 0x0130(v1)             # 00000130
    or      v0, v1, $zero              # v0 = 00000000
    beq     t6, $zero, lbl_80A8B5FC    
    nop
    lh      t7, 0x028C(v1)             # 0000028C
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    lui     t9, %hi(func_80A8B618)     # t9 = 80A90000
    bne     t7, $zero, lbl_80A8B5AC    
    lui     $at, 0x41F0                # $at = 41F00000
    addiu   t9, t9, %lo(func_80A8B618) # t9 = 80A8B618
    sh      t8, 0x0146(s0)             # 00000146
    beq     $zero, $zero, lbl_80A8B604 
    sw      t9, 0x013C(s0)             # 0000013C
lbl_80A8B5AC:
    mtc1    $at, $f0                   # $f0 = 30.00
    lwc1    $f8, 0x008C(s0)            # 0000008C
    mul.s   $f10, $f0, $f0             
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_80A8B608               
    lw      $ra, 0x0024($sp)           
    lh      a0, 0x0148(s0)             # 00000148
    jal     func_800721CC              
    sw      v0, 0x004C($sp)            
    jal     func_800646F0              
    addiu   a0, $zero, 0x4803          # a0 = 00004803
    lw      v0, 0x004C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    lh      t0, 0x0294(v0)             # 00000294
    addiu   t1, t0, 0x0001             # t1 = 00000001
    jal     func_80020EB4              
    sh      t1, 0x0294(v0)             # 00000294
    beq     $zero, $zero, lbl_80A8B608 
    lw      $ra, 0x0024($sp)           
lbl_80A8B5FC:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A8B604:
    lw      $ra, 0x0024($sp)           
lbl_80A8B608:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8B618:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      t6, 0x0144(a0)             # 00000144
    lh      t0, 0x0146(a0)             # 00000146
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0144(a0)             # 00000144
    lh      t8, 0x0144(a0)             # 00000144
    andi    t9, t8, 0x0001             # t9 = 00000000
    bne     t0, $zero, lbl_80A8B64C    
    sh      t9, 0x0144(a0)             # 00000144
    jal     func_80020EB4              
    nop
lbl_80A8B64C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8B65C:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x005C($sp)            
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    lui     t7, %hi(var_80A8BA90)      # t7 = 80A90000
    addiu   t7, t7, %lo(var_80A8BA90)  # t7 = 80A8BA90
    lw      t9, 0x0000(t7)             # 80A8BA90
    addiu   t6, $sp, 0x0048            # t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             # 80A8BA94
    sw      t9, 0x0000(t6)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 80A8BA98
    lui     t1, %hi(var_80A8BA9C)      # t1 = 80A90000
    addiu   t1, t1, %lo(var_80A8BA9C)  # t1 = 80A8BA9C
    sw      t8, 0x0004(t6)             # FFFFFFF4
    sw      t9, 0x0008(t6)             # FFFFFFF8
    lw      t3, 0x0000(t1)             # 80A8BA9C
    addiu   t0, $sp, 0x003C            # t0 = FFFFFFE4
    lw      t2, 0x0004(t1)             # 80A8BAA0
    sw      t3, 0x0000(t0)             # FFFFFFE4
    lw      t3, 0x0008(t1)             # 80A8BAA4
    sw      t2, 0x0004(t0)             # FFFFFFE8
    lui     $at, 0x4248                # $at = 42480000
    sw      t3, 0x0008(t0)             # FFFFFFEC
    lh      a2, 0x0142(s0)             # 00000142
    mtc1    $at, $f0                   # $f0 = 50.00
    lui     $at, 0x41F0                # $at = 41F00000
    bne     a3, a2, lbl_80A8B6DC       
    addiu   v1, $zero, 0x001E          # v1 = 0000001E
    mtc1    $at, $f0                   # $f0 = 30.00
    nop
lbl_80A8B6DC:
    mul.s   $f6, $f0, $f0              
    lwc1    $f4, 0x008C(s0)            # 0000008C
    addiu   a1, s0, 0x0024             # a1 = 00000024
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A8B778               
    lw      $ra, 0x0024($sp)           
    lw      v0, 0x0118(s0)             # 00000118
    beq     v0, $zero, lbl_80A8B71C    
    nop
    lw      t4, 0x0130(v0)             # 00000130
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    beq     t4, $zero, lbl_80A8B71C    
    nop
    sh      t5, 0x0256(v0)             # 00000256
    lh      a2, 0x0142(s0)             # 00000142
lbl_80A8B71C:
    bne     a3, a2, lbl_80A8B72C       
    addiu   v0, $zero, 0x0064          # v0 = 00000064
    addiu   v0, $zero, 0x0014          # v0 = 00000014
    addiu   v1, $zero, 0x0006          # v1 = 00000006
lbl_80A8B72C:
    lw      a0, 0x005C($sp)            
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFE4
    addiu   a3, $sp, 0x0048            # a3 = FFFFFFF0
    sw      v0, 0x0010($sp)            
    jal     func_8001C97C              
    sw      v1, 0x0014($sp)            
    mtc1    $zero, $f8                 # $f8 = 0.00
    lh      a3, 0x008A(s0)             # 0000008A
    lw      a0, 0x005C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x4000                 # a2 = 40000000
    jal     func_80022EC4              
    swc1    $f8, 0x0010($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x180E          # a1 = 0000180E
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80A8B778:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8B788:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f0                   # $f0 = 30.00
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    mul.s   $f6, $f0, $f0              
    lwc1    $f4, 0x008C(a3)            # 0000008C
    addiu   a0, $zero, 0x4803          # a0 = 00004803
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A8B800               
    lw      $ra, 0x0014($sp)           
    jal     func_800646F0              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lui     a2, %hi(var_80A8BA10)      # a2 = 80A90000
    lw      a0, 0x001C($sp)            
    lh      t6, 0x0140(a3)             # 00000140
    addiu   a1, a3, 0x0024             # a1 = 00000024
    sll     t7, t6,  1                 
    addu    a2, a2, t7                 
    lh      a2, %lo(var_80A8BA10)(a2)  
    ori     a2, a2, 0x8000             # a2 = 80A98000
    sll     a2, a2, 16                 
    jal     func_80013678              
    sra     a2, a2, 16                 
    jal     func_80020EB4              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80A8B800:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8B80C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      t6, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     a3, 0x4348                 # a3 = 43480000
    lh      t7, 0x014C(t6)             # 0000014C
    lui     a1, 0xC42F                 # a1 = C42F0000
    lui     a2, 0x3F00                 # a2 = 3F000000
    beq     t7, $zero, lbl_80A8B854    
    addiu   a0, a0, 0x00BC             # a0 = 000000BC
    addiu   a0, t6, 0x00BC             # a0 = 000000BC
    lui     a1, 0x442F                 # a1 = 442F0000
    jal     func_80064280              
    lui     a2, 0x3F00                 # a2 = 3F000000
    beq     $zero, $zero, lbl_80A8B860 
    lw      $ra, 0x0014($sp)           
lbl_80A8B854:
    jal     func_80064280              
    lui     a3, 0x4348                 # a3 = 43480000
    lw      $ra, 0x0014($sp)           
lbl_80A8B860:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8B86C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lh      t6, 0x00B6(s0)             # 000000B6
    lw      t9, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t7, t6, 0x07A8             # t7 = 000007A8
    sh      t7, 0x00B6(s0)             # 000000B6
    jalr    $ra, t9                    
    lw      a1, 0x002C($sp)            
    lh      v0, 0x0146(s0)             # 00000146
    beq     v0, $zero, lbl_80A8B8AC    
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0146(s0)             # 00000146
lbl_80A8B8AC:
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f0                   # $f0 = 20.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    addiu   t0, $zero, 0x001C          # t0 = 0000001C
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    sw      t0, 0x0014($sp)            
    lw      a0, 0x002C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8B8F8:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0018($sp)            
    sw      a0, 0x0038($sp)            
    sw      a1, 0x003C($sp)            
    lw      t6, 0x0038($sp)            
    lw      t8, 0x003C($sp)            
    lh      t7, 0x0144(t6)             # 00000144
    bnel    t7, $zero, lbl_80A8B9F4    
    lw      $ra, 0x001C($sp)           
    lw      a0, 0x0000(t8)             # 00000000
    jal     func_8007E298              
    or      s0, a0, $zero              # s0 = 00000000
    lw      a0, 0x0038($sp)            
    lw      a1, 0x003C($sp)            
    jal     func_80022438              
    or      a2, $zero, $zero           # a2 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t1, 0x003C($sp)            
    lw      a0, 0x0000(t1)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0024($sp)            
    lw      a3, 0x0024($sp)            
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0020             # t3 = DB060020
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t4, 0x0038($sp)            
    lui     a2, %hi(var_80A8BAA8)      # a2 = 80A90000
    lui     t1, 0x8012                 # t1 = 80120000
    lh      t5, 0x0140(t4)             # 00000140
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t6, t5,  2                 
    addu    a2, a2, t6                 
    lw      a2, %lo(var_80A8BAA8)(a2)  
    lui     t5, 0xDE00                 # t5 = DE000000
    sll     t8, a2,  4                 
    srl     t9, t8, 28                 
    sll     t0, t9,  2                 
    addu    t1, t1, t0                 
    lw      t1, 0x0C38(t1)             # 80120C38
    and     t7, a2, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t2, t7, t1                 
    addu    t3, t2, $at                
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0x0404                 # t6 = 04040000
    addiu   t6, t6, 0x5150             # t6 = 04045150
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      $ra, 0x001C($sp)           
lbl_80A8B9F4:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_80A8BA10: .word \
0x00000001, 0x00020013, 0x00140000, 0x00010005, \
0x001401F4, 0x00320000
var_80A8BA28: .word 0x01310600, 0x00000010, 0x00010000, 0x00000154
.word func_80A8AB70
.word func_80A8AF48
.word func_80A8B86C
.word func_80A8B8F8
var_80A8BA48: .word \
0x00000000, 0x3DCCCCCD, 0x00000000, 0x00000000, \
0x00000000, 0x00000000
var_80A8BA60: .word 0x00000000, 0x3C23D70A, 0x00000000
var_80A8BA6C: .word 0x00000000, 0x00000000, 0x00000000
var_80A8BA78: .word 0x00000000, 0x3DCCCCCD, 0x00000000
var_80A8BA84: .word 0x00000000, 0x00000000, 0x00000000
var_80A8BA90: .word 0x00000000, 0x3DCCCCCD, 0x00000000
var_80A8BA9C: .word 0x00000000, 0x00000000, 0x00000000
var_80A8BAA8: .word \
0x04044E50, 0x04044E70, 0x04044E90, 0x04044ED0, \
0x04044EB0, 0x00000000

.section .rodata

var_80A8BAC0: .word var_80A8ABC8
.word var_80A8AD84
.word var_80A8AD84
.word var_80A8AE24
.word var_80A8AEE0
var_80A8BAD4: .word 0x3C23D70A
var_80A8BAD8: .word 0x4348FD71
var_80A8BADC: .word 0x3CA3D70A
var_80A8BAE0: .word 0x3CA3D70A
var_80A8BAE4: .word 0x407F5C29
var_80A8BAE8: .word 0x3CA3D70A
var_80A8BAEC: .word 0x41F7EB85
var_80A8BAF0: .word 0x3C23D70A
var_80A8BAF4: .word 0xBE4CCCCD
var_80A8BAF8: .word 0x3CF5C28F
var_80A8BAFC: .word 0x3D8F5C29

