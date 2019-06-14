#include <mips.h>
.set noreorder
.set noat

.section .text
func_80977E80:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a2, 0x0020($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lhu     t6, 0x0088(a0)             # 00000088
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80977EC0    
    nop
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0060(a0)            # 00000060
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80977ECC               
    sw      a0, 0x0018($sp)            
lbl_80977EC0:
    beq     $zero, $zero, lbl_80977F38 
    or      v0, $zero, $zero           # v0 = 00000000
    sw      a0, 0x0018($sp)            
lbl_80977ECC:
    jal     func_80022FD0              
    sw      a2, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    lw      a2, 0x001C($sp)            
    lh      t8, 0x01F4(a0)             # 000001F4
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x01F4(a0)             # 000001F4
    lh      v1, 0x01F4(a0)             # 000001F4
    bgtzl   v1, lbl_80977F18           
    mtc1    v1, $f10                   # $f10 = 0.00
    bne     v1, $zero, lbl_80977F0C    
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    mtc1    $zero, $f8                 # $f8 = 0.00
    sh      $zero, 0x01F4(a0)          # 000001F4
    beq     $zero, $zero, lbl_80977F38 
    swc1    $f8, 0x0060(a0)            # 00000060
lbl_80977F0C:
    sh      a2, 0x01F4(a0)             # 000001F4
    lh      v1, 0x01F4(a0)             # 000001F4
    mtc1    v1, $f10                   # $f10 = 0.00
lbl_80977F18:
    mtc1    a2, $f18                   # $f18 = 0.00
    lwc1    $f8, 0x0020($sp)           
    cvt.s.w $f16, $f10                 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    cvt.s.w $f4, $f18                  
    div.s   $f6, $f16, $f4             
    mul.s   $f10, $f8, $f6             
    swc1    $f10, 0x0060(a0)           # 00000060
lbl_80977F38:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80977F48:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      $ra, 0x002C($sp)           
    sw      a0, 0x0050($sp)            
    sw      a1, 0x0054($sp)            
    lw      t7, 0x0050($sp)            
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f4                   # $f4 = 300.00
    lwc1    $f6, 0x0090(t7)            # 00000090
    lw      t6, 0x0054($sp)            
    lw      t8, 0x0050($sp)            
    c.lt.s  $f4, $f6                   
    lw      t0, 0x1C44(t6)             # 00001C44
    bc1fl   lbl_80977F8C               
    lh      t9, 0x008A(t8)             # 0000008A
    beq     $zero, $zero, lbl_80978034 
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t9, 0x008A(t8)             # 0000008A
lbl_80977F8C:
    lh      t1, 0x00B6(t8)             # 000000B6
    lw      a0, 0x0054($sp)            
    mtc1    t9, $f8                    # $f8 = 0.00
    mtc1    t1, $f16                   # $f16 = 0.00
    lw      a1, 0x0050($sp)            
    cvt.s.w $f10, $f8                  
    addiu   a2, t0, 0x0024             # a2 = 00000024
    addiu   a3, $sp, 0x0038            # a3 = FFFFFFE8
    addiu   t3, $sp, 0x0048            # t3 = FFFFFFF8
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    cvt.s.w $f18, $f16                 
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, $sp, 0x0044            # t6 = FFFFFFF4
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    addiu   a1, a1, 0x0024             # a1 = 00000024
    sub.s   $f4, $f10, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    v0, $f6                    
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80977FF0           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_80977FF0 
    or      v1, v0, $zero              # v1 = 00000000
lbl_80977FF0:
    slti    $at, v1, 0x1C71            
    bnel    $at, $zero, lbl_80978008   
    sw      t3, 0x0010($sp)            
    beq     $zero, $zero, lbl_80978034 
    or      v0, $zero, $zero           # v0 = 00000000
    sw      t3, 0x0010($sp)            
lbl_80978008:
    sw      t4, 0x0014($sp)            
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x001C($sp)         
    sw      t5, 0x0020($sp)            
    jal     func_800308B4              
    sw      t6, 0x0024($sp)            
    beql    v0, $zero, lbl_80978034    
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_80978034 
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80978034:
    lw      $ra, 0x002C($sp)           
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra                        
    nop


func_80978044:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0038($sp)            
    sw      a2, 0x0040($sp)            
    sw      a3, 0x0044($sp)            
    lw      a0, 0x0118(s0)             # 00000118
    addiu   a1, s0, 0x0024             # a1 = 00000024
    jal     func_80063F00              
    addiu   a0, a0, 0x0008             # a0 = 00000008
    lh      t6, 0x0046($sp)            
    addiu   $at, $zero, 0x1554         # $at = 00001554
    multu   t6, $at                    
    mflo    t7                         
    addu    v1, v0, t7                 
    sll     a0, v1, 16                 
    sh      v1, 0x0036($sp)            
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lwc1    $f4, 0x0040($sp)           
    lw      t8, 0x0118(s0)             # 00000118
    lh      a0, 0x0036($sp)            
    mul.s   $f6, $f0, $f4              
    lwc1    $f8, 0x0008(t8)            # 00000008
    add.s   $f10, $f6, $f8             
    jal     func_80063684              # coss?
    swc1    $f10, 0x0028($sp)          
    lwc1    $f16, 0x0040($sp)          
    lw      t9, 0x0118(s0)             # 00000118
    lwc1    $f8, 0x0028($sp)           
    mul.s   $f18, $f0, $f16            
    lwc1    $f4, 0x0010(t9)            # 00000010
    addiu   t0, $sp, 0x0028            # t0 = FFFFFFF0
    lw      v0, 0x0038($sp)            
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x0030($sp)           
    lwc1    $f10, 0x0024(s0)           # 00000024
    sub.s   $f16, $f8, $f10            
    swc1    $f16, 0x0028($sp)          
    lwc1    $f18, 0x002C(s0)           # 0000002C
    sub.s   $f4, $f6, $f18             
    swc1    $f4, 0x0030($sp)           
    lw      t2, 0x0000(t0)             # FFFFFFF0
    sw      t2, 0x0000(v0)             # 00000000
    lw      t1, 0x0004(t0)             # FFFFFFF4
    sw      t1, 0x0004(v0)             # 00000004
    lw      t2, 0x0008(t0)             # FFFFFFF8
    sw      t2, 0x0008(v0)             # 00000008
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80978118:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lbu     t6, 0x0195(a2)             # 00000195
    or      v0, $zero, $zero           # v0 = 00000000
    andi    t7, t6, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_809781C8    
    nop
    lw      v0, 0x01A0(a2)             # 000001A0
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lw      t8, 0x0024(v0)             # 00000024
    lw      t9, 0x0000(t8)             # 00000000
    andi    t0, t9, 0x0080             # t0 = 00000000
    beql    t0, $zero, lbl_80978164    
    sb      $zero, 0x01F0(a2)          # 000001F0
    beq     $zero, $zero, lbl_80978164 
    sb      t1, 0x01F0(a2)             # 000001F0
    sb      $zero, 0x01F0(a2)          # 000001F0
lbl_80978164:
    lbu     t2, 0x0195(a2)             # 00000195
    or      a0, a2, $zero              # a0 = 00000000
    andi    t3, t2, 0xFFFD             # t3 = 00000000
    sb      t3, 0x0195(a2)             # 00000195
    jal     func_80028390              
    sw      a2, 0x0018($sp)            
    bgtz    v0, lbl_809781C0           
    lw      a2, 0x0018($sp)            
    lw      v0, 0x0118(a2)             # 00000118
    lw      a0, 0x001C($sp)            
    or      a1, a2, $zero              # a1 = 00000000
    lbu     v1, 0x00AF(v0)             # 000000AF
    slti    $at, v1, 0x0009            
    beq     $at, $zero, lbl_809781B8   
    addiu   t5, v1, 0xFFF8             # t5 = FFFFFFF8
    jal     func_80025B4C              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lw      t4, 0x0118(a2)             # 00000118
    beq     $zero, $zero, lbl_809781BC 
    sb      $zero, 0x00AF(t4)          # 000000AF
lbl_809781B8:
    sb      t5, 0x00AF(v0)             # 000000AF
lbl_809781BC:
    sh      $zero, 0x0202(a2)          # 00000202
lbl_809781C0:
    beq     $zero, $zero, lbl_809781C8 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809781C8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809781D8:
    addiu   $sp, $sp, 0xFF58           # $sp = FFFFFF58
    sdc1    $f30, 0x0048($sp)          
    sdc1    $f28, 0x0040($sp)          
    sw      s7, 0x0070($sp)            
    sw      s6, 0x006C($sp)            
    sw      s5, 0x0068($sp)            
    sw      s4, 0x0064($sp)            
    sw      s1, 0x0058($sp)            
    mtc1    a2, $f28                   # $f28 = 0.00
    mtc1    a3, $f30                   # $f30 = 0.00
    or      s1, a0, $zero              # s1 = 00000000
    addiu   s4, $sp, 0x009C            # s4 = FFFFFFF4
    andi    s5, a1, 0x00FF             # s5 = 00000000
    addiu   s6, $sp, 0x0090            # s6 = FFFFFFE8
    addiu   s7, $sp, 0x0084            # s7 = FFFFFFDC
    sw      $ra, 0x0074($sp)           
    sw      s3, 0x0060($sp)            
    sw      s2, 0x005C($sp)            
    sw      s0, 0x0054($sp)            
    sdc1    $f26, 0x0038($sp)          
    sdc1    $f24, 0x0030($sp)          
    sdc1    $f22, 0x0028($sp)          
    sdc1    $f20, 0x0020($sp)          
    sw      a1, 0x00AC($sp)            
    lui     t6, %hi(var_809794A8)      # t6 = 80980000
    addiu   t6, t6, %lo(var_809794A8)  # t6 = 809794A8
    lw      t8, 0x0000(t6)             # 809794A8
    lui     t9, %hi(var_809794B4)      # t9 = 80980000
    addiu   t9, t9, %lo(var_809794B4)  # t9 = 809794B4
    sw      t8, 0x0000(s4)             # FFFFFFF4
    lw      t7, 0x0004(t6)             # 809794AC
    lui     t2, %hi(var_809794C0)      # t2 = 80980000
    addiu   t2, t2, %lo(var_809794C0)  # t2 = 809794C0
    sw      t7, 0x0004(s4)             # FFFFFFF8
    lw      t8, 0x0008(t6)             # 809794B0
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f6                   # $f6 = 2.00
    sw      t8, 0x0008(s4)             # FFFFFFFC
    lw      t1, 0x0000(t9)             # 809794B4
    sw      t1, 0x0000(s6)             # FFFFFFE8
    lw      t0, 0x0004(t9)             # 809794B8
    sw      t0, 0x0004(s6)             # FFFFFFEC
    lw      t1, 0x0008(t9)             # 809794BC
    sw      t1, 0x0008(s6)             # FFFFFFF0
    lw      t4, 0x0000(t2)             # 809794C0
    sw      t4, 0x0000(s7)             # FFFFFFDC
    lw      t3, 0x0004(t2)             # 809794C4
    sw      t3, 0x0004(s7)             # FFFFFFE0
    lw      t4, 0x0008(t2)             # 809794C8
    sw      t4, 0x0008(s7)             # FFFFFFE4
    lw      t6, 0x0024(s1)             # 00000024
    sw      t6, 0x0000(s4)             # FFFFFFF4
    lw      t5, 0x0028(s1)             # 00000028
    sw      t5, 0x0004(s4)             # FFFFFFF8
    lw      t6, 0x002C(s1)             # 0000002C
    sw      t6, 0x0008(s4)             # FFFFFFFC
    lwc1    $f4, 0x0080(s1)            # 00000080
    add.s   $f8, $f4, $f6              
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x00A0($sp)           
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f24                  # $f24 = 0.50
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f16                  # $f16 = 65536.00
    sub.s   $f10, $f0, $f24            
    lw      v0, 0x00B8($sp)            
    lui     t8, 0x0001                 # t8 = 00010000
    lwc1    $f26, 0x00C4($sp)          
    mul.s   $f18, $f10, $f16           
    lwc1    $f22, 0x00BC($sp)          
    lwc1    $f20, 0x00C0($sp)          
    or      s2, v0, $zero              # s2 = 00000000
    trunc.w.s $f4, $f18                  
    mfc1    s0, $f4                    
    nop
    sll     s0, s0, 16                 
    bltz    v0, lbl_809783D8           
    sra     s0, s0, 16                 
    div     $zero, t8, v0              
    mflo    s3                         
    sll     s3, s3, 16                 
    sra     s3, s3, 16                 
    bne     v0, $zero, lbl_8097832C    
    nop
    break   # 0x01C00
lbl_8097832C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v0, $at, lbl_80978344      
    lui     $at, 0x8000                # $at = 80000000
    bne     t8, $at, lbl_80978344      
    nop
    break   # 0x01800
lbl_80978344:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f6, $f0, $f24             
    swc1    $f26, 0x0088($sp)          
    mul.s   $f8, $f6, $f20             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0084($sp)           
    sub.s   $f10, $f0, $f24            
    sll     a0, s0, 16                 
    sra     a0, a0, 16                 
    mul.s   $f16, $f10, $f20           
    jal     func_800636C4              # sins?
    swc1    $f16, 0x008C($sp)          
    mul.s   $f18, $f0, $f22            
    lwc1    $f4, 0x0024(s1)            # 00000024
    sll     a0, s0, 16                 
    sra     a0, a0, 16                 
    add.s   $f6, $f18, $f4             
    jal     func_80063684              # coss?
    swc1    $f6, 0x009C($sp)           
    mul.s   $f8, $f0, $f22             
    lwc1    $f10, 0x002C(s1)           # 0000002C
    swc1    $f30, 0x0018($sp)          
    swc1    $f28, 0x0014($sp)          
    sw      s5, 0x0010($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFF4
    add.s   $f16, $f8, $f10            
    or      a2, s6, $zero              # a2 = FFFFFFE8
    or      a3, s7, $zero              # a3 = FFFFFFDC
    jal     func_80978F5C              
    swc1    $f16, 0x00A4($sp)          
    addu    s0, s0, s3                 
    sll     s0, s0, 16                 
    addiu   s2, s2, 0xFFFF             # s2 = FFFFFFFF
    bgez    s2, lbl_80978344           
    sra     s0, s0, 16                 
lbl_809783D8:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x0074($sp)           
    ldc1    $f20, 0x0020($sp)          
    ldc1    $f22, 0x0028($sp)          
    ldc1    $f24, 0x0030($sp)          
    ldc1    $f26, 0x0038($sp)          
    ldc1    $f28, 0x0040($sp)          
    ldc1    $f30, 0x0048($sp)          
    lw      s0, 0x0054($sp)            
    lw      s1, 0x0058($sp)            
    lw      s2, 0x005C($sp)            
    lw      s3, 0x0060($sp)            
    lw      s4, 0x0064($sp)            
    lw      s5, 0x0068($sp)            
    lw      s6, 0x006C($sp)            
    lw      s7, 0x0070($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00A8           # $sp = 00000000


func_80978420:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   t6, s0, 0x020C             # t6 = 0000020C
    addiu   t7, s0, 0x024E             # t7 = 0000024E
    addiu   t8, $zero, 0x000B          # t8 = 0000000B
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a2, a2, 0x7C30             # a2 = 06007C30
    sw      a1, 0x0034($sp)            
    lw      a0, 0x0044($sp)            
    jal     func_8008C788              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a1, %hi(var_80979460)      # a1 = 80980000
    addiu   a1, a1, %lo(var_80979460)  # a1 = 80979460
    lw      a0, 0x0034($sp)            
    jal     func_80027C98              
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41A0                 # a3 = 41A00000
    addiu   a1, s0, 0x0184             # a1 = 00000184
    sw      a1, 0x0034($sp)            
    jal     func_8004A484              
    lw      a0, 0x0044($sp)            
    lui     a3, %hi(var_80979444)      # a3 = 80980000
    addiu   t9, s0, 0x01A4             # t9 = 000001A4
    lw      a1, 0x0034($sp)            
    sw      t9, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80979444)  # a3 = 80979444
    lw      a0, 0x0044($sp)            
    jal     func_8004A874              
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_80049E10              
    addiu   a0, $zero, 0x0010          # a0 = 00000010
    lui     a2, %hi(var_80979454)      # a2 = 80980000
    addiu   a2, a2, %lo(var_80979454)  # a2 = 80979454
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050370              
    or      a1, v0, $zero              # a1 = 00000000
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t0, 0x001C(s0)             # 0000001C
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    lui     t2, %hi(func_80978554)     # t2 = 80980000
    addiu   t2, t2, %lo(func_80978554) # t2 = 80978554
    subu    t1, $zero, t0              
    sh      t1, 0x01F2(s0)             # 000001F2
    sw      t2, 0x0180(s0)             # 00000180
    swc1    $f4, 0x006C(s0)            # 0000006C
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80978528:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004A550              
    addiu   a1, a2, 0x0184             # a1 = 00000184
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80978554:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lui     a2, 0x4100                 # a2 = 41000000
    jal     func_80977E80              
    sw      a3, 0x0018($sp)            
    beq     v0, $zero, lbl_809785B0    
    lw      a3, 0x0018($sp)            
    lh      t6, 0x01F4(a3)             # 000001F4
    addiu   a0, $zero, 0x012C          # a0 = 0000012C
    addiu   a1, $zero, 0x0096          # a1 = 00000096
    bnel    t6, $zero, lbl_809785B4    
    lw      $ra, 0x0014($sp)           
    jal     func_80063BF0              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lui     t7, %hi(func_809785C0)     # t7 = 80980000
    addiu   t7, t7, %lo(func_809785C0) # t7 = 809785C0
    sh      v0, 0x0202(a3)             # 00000202
    sw      t7, 0x0180(a3)             # 00000180
lbl_809785B0:
    lw      $ra, 0x0014($sp)           
lbl_809785B4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809785C0:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    lui     $at, 0x3F80                # $at = 3F800000
    sw      s0, 0x0030($sp)            
    mtc1    $at, $f0                   # $f0 = 1.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x006C($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    mfc1    a1, $f0                    
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mfc1    a3, $f0                    
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0158             # a0 = 00000158
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    lw      t7, 0x0144(s0)             # 00000144
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x6CF8             # t6 = 06006CF8
    bne     t6, t7, lbl_80978654       
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      a1, 0x014C(s0)             # 0000014C
    jal     func_8008D6A8              
    sw      a0, 0x003C($sp)            
    bnel    v0, $zero, lbl_80978B84    
    lw      $ra, 0x0034($sp)           
    lw      a1, 0x0118(s0)             # 00000118
    addiu   a0, s0, 0x0024             # a0 = 00000024
    jal     func_80063E18              
    addiu   a1, a1, 0x0024             # a1 = 00000024
    swc1    $f0, 0x0208(s0)            # 00000208
    lui     a1, %hi(var_80979460)      # a1 = 80980000
    addiu   a1, a1, %lo(var_80979460)  # a1 = 80979460
    lw      a0, 0x003C($sp)            
    jal     func_80027C98              
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    beq     $zero, $zero, lbl_80978B84 
    lw      $ra, 0x0034($sp)           
lbl_80978654:
    lh      t8, 0x01F8(s0)             # 000001F8
    bnel    t8, $zero, lbl_809786E8    
    lh      t5, 0x01FA(s0)             # 000001FA
    lh      t9, 0x01FA(s0)             # 000001FA
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t9, $zero, lbl_809786E8    
    lh      t5, 0x01FA(s0)             # 000001FA
    jal     func_80978118              
    lw      a1, 0x006C($sp)            
    beql    v0, $zero, lbl_809786E8    
    lh      t5, 0x01FA(s0)             # 000001FA
    lw      t0, 0x0118(s0)             # 00000118
    addiu   a1, $zero, 0x3980          # a1 = 00003980
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t1, 0x00AF(t0)             # 000000AF
    blez    t1, lbl_809786C8           
    nop
    lbu     t2, 0x01F0(s0)             # 000001F0
    lui     $at, 0x40C0                # $at = 40C00000
    bne     t2, $zero, lbl_809786B4    
    nop
    mtc1    $at, $f6                   # $f6 = 6.00
    nop
    swc1    $f6, 0x0060(s0)            # 00000060
lbl_809786B4:
    jal     func_80022FD0              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    beq     $zero, $zero, lbl_809786D8 
    sh      t3, 0x01F8(s0)             # 000001F8
lbl_809786C8:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3980          # a1 = 00003980
    addiu   t4, $zero, 0x0006          # t4 = 00000006
    sh      t4, 0x01FA(s0)             # 000001FA
lbl_809786D8:
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    swc1    $f0, 0x0068(s0)            # 00000068
    lh      t5, 0x01FA(s0)             # 000001FA
lbl_809786E8:
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x0050             # a0 = 00000050
    beq     t5, $zero, lbl_809787D4    
    lui     a1, 0x3CCC                 # a1 = 3CCC0000
    swc1    $f0, 0x0158(s0)            # 00000158
    lui     a2, 0x3DA3                 # a2 = 3DA30000
    lui     a3, 0x3F19                 # a3 = 3F190000
    ori     a3, a3, 0x999A             # a3 = 3F19999A
    ori     a2, a2, 0xD70A             # a2 = 3DA3D70A
    swc1    $f0, 0x0010($sp)           
    jal     func_80064178              
    ori     a1, a1, 0xCCCC             # a1 = 3CCCCCCC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88              
    lw      a1, 0x0050(s0)             # 00000050
    lbu     t6, 0x0114(s0)             # 00000114
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    bne     t6, $zero, lbl_80978754    
    addiu   a2, $zero, 0x00C8          # a2 = 000000C8
    lh      t7, 0x01FA(s0)             # 000001FA
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80027090              
    sw      t7, 0x0010($sp)            
    lh      t8, 0x01FA(s0)             # 000001FA
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x01FA(s0)             # 000001FA
lbl_80978754:
    lh      t0, 0x01FA(s0)             # 000001FA
    lw      a1, 0x006C($sp)            
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    bne     t0, $zero, lbl_80978B80    
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    lwc1    $f8, 0x01E8(s0)            # 000001E8
    lw      a3, 0x01E4(s0)             # 000001E4
    addiu   t1, $zero, 0x0600          # t1 = 00000600
    swc1    $f8, 0x0010($sp)           
    lwc1    $f10, 0x01EC(s0)           # 000001EC
    sw      $zero, 0x0024($sp)         
    sw      t1, 0x0020($sp)            
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    jal     func_80025110              # ActorSpawn
    swc1    $f10, 0x0014($sp)          
    beql    v0, $zero, lbl_809787A4    
    lw      v0, 0x0118(s0)             # 00000118
    sh      $zero, 0x01E8(v0)          # 000001E8
    lw      v0, 0x0118(s0)             # 00000118
lbl_809787A4:
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    lh      t2, 0x001C(v0)             # 0000001C
    addiu   a3, $zero, 0x00A0          # a3 = 000000A0
    ori     t3, t2, 0x4000             # t3 = 00004000
    sh      t3, 0x001C(v0)             # 0000001C
    jal     func_80013A84              
    lw      a0, 0x006C($sp)            
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80978B84 
    lw      $ra, 0x0034($sp)           
lbl_809787D4:
    lhu     t4, 0x0088(s0)             # 00000088
    lh      v0, 0x01F8(s0)             # 000001F8
    or      a0, s0, $zero              # a0 = 00000000
    andi    t5, t4, 0x0001             # t5 = 00000000
    beq     t5, $zero, lbl_80978800    
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    lwc1    $f16, 0x0060(s0)           # 00000060
    lui     $at, 0x4348                # $at = 43480000
    c.lt.s  $f0, $f16                  
    nop
    bc1f    lbl_80978818               
lbl_80978800:
    addiu   a2, $zero, 0x00C8          # a2 = 000000C8
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80027090              
    sw      v0, 0x0010($sp)            
    beq     $zero, $zero, lbl_80978B84 
    lw      $ra, 0x0034($sp)           
lbl_80978818:
    beq     v0, $zero, lbl_80978824    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x01F8(s0)             # 000001F8
lbl_80978824:
    mtc1    $at, $f2                   # $f2 = 0.00
    lwc1    $f18, 0x0208(s0)           # 00000208
    lui     $at, %hi(var_80979500)     # $at = 80980000
    lwc1    $f6, %lo(var_80979500)($at) 
    sub.s   $f4, $f2, $f18             
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, s0, 0x0208             # a0 = 00000208
    c.lt.s  $f4, $f6                   
    lui     a3, 0x42C8                 # a3 = 42C80000
    bc1fl   lbl_80978890               
    mfc1    a1, $f2                    
    lh      v1, 0x0202(s0)             # 00000202
    lui     t8, %hi(func_80978B94)     # t8 = 80980000
    addiu   t8, t8, %lo(func_80978B94) # t8 = 80978B94
    bne     v1, $zero, lbl_80978870    
    addiu   t7, v1, 0xFFFF             # t7 = FFFFFFFF
    beq     $zero, $zero, lbl_80978878 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80978870:
    sh      t7, 0x0202(s0)             # 00000202
    lh      v0, 0x0202(s0)             # 00000202
lbl_80978878:
    bnel    v0, $zero, lbl_80978890    
    mfc1    a1, $f2                    
    swc1    $f0, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_80978B80 
    sw      t8, 0x0180(s0)             # 00000180
    mfc1    a1, $f2                    
lbl_80978890:
    jal     func_80064178              
    swc1    $f0, 0x0010($sp)           
    lh      t9, 0x0204(s0)             # 00000204
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFE0
    beq     t9, $zero, lbl_8097894C    
    or      a1, s0, $zero              # a1 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x0068             # a0 = 00000068
    sw      a0, 0x003C($sp)            
    mfc1    a1, $f0                    
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_80064178              
    swc1    $f0, 0x0010($sp)           
    lh      t0, 0x0032(s0)             # 00000032
    lh      t4, 0x00B6(s0)             # 000000B6
    mtc1    $zero, $f18                # $f18 = 0.00
    xori    t1, t0, 0x8000             # t1 = FFFF8000
    sll     t2, t1, 16                 
    sra     t3, t2, 16                 
    mtc1    t3, $f8                    # $f8 = 0.00
    mtc1    t4, $f10                   # $f10 = 0.00
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    cvt.s.w $f2, $f8                   
    lui     a3, 0x461C                 # a3 = 461C0000
    ori     a3, a3, 0x4000             # a3 = 461C4000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, $sp, 0x005C            # a0 = FFFFFFF4
    cvt.s.w $f16, $f10                 
    mfc1    a1, $f2                    
    swc1    $f18, 0x0010($sp)          
    jal     func_80064178              
    swc1    $f16, 0x005C($sp)          
    lwc1    $f4, 0x005C($sp)           
    lui     $at, %hi(var_80979504)     # $at = 80980000
    trunc.w.s $f6, $f4                   
    mfc1    t6, $f6                    
    nop
    sh      t6, 0x00B6(s0)             # 000000B6
    lwc1    $f8, %lo(var_80979504)($at) 
    c.lt.s  $f8, $f0                   
    nop
    bc1tl   lbl_80978B84               
    lw      $ra, 0x0034($sp)           
    beq     $zero, $zero, lbl_809789A4 
    sh      $zero, 0x0204(s0)          # 00000204
lbl_8097894C:
    lw      a2, 0x0208(s0)             # 00000208
    jal     func_80978044              
    lh      a3, 0x01F2(s0)             # 000001F2
    lwc1    $f12, 0x0048($sp)          
    jal     func_800CD76C              
    lwc1    $f14, 0x0050($sp)          
    lui     $at, %hi(var_80979508)     # $at = 80980000
    lwc1    $f10, %lo(var_80979508)($at) 
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0010($sp)            
    mul.s   $f16, $f0, $f10            
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    trunc.w.s $f18, $f16                 
    mfc1    a1, $f18                   
    nop
    sll     a1, a1, 16                 
    jal     func_80064508              
    sra     a1, a1, 16                 
    addiu   t9, s0, 0x0068             # t9 = 00000068
    sw      t9, 0x003C($sp)            
lbl_809789A4:
    lwl     t1, 0x00B4(s0)             # 000000B4
    lwr     t1, 0x00B7(s0)             # 000000B7
    lh      t2, 0x01FE(s0)             # 000001FE
    or      a0, s0, $zero              # a0 = 00000000
    swl     t1, 0x0030(s0)             # 00000030
    swr     t1, 0x0033(s0)             # 00000033
    lhu     t1, 0x00B8(s0)             # 000000B8
    bne     t2, $zero, lbl_809789EC    
    sh      t1, 0x0034(s0)             # 00000034
    jal     func_80977F48              
    lw      a1, 0x006C($sp)            
    beq     v0, $zero, lbl_809789EC    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x398B          # a1 = 0000398B
    addiu   v0, $zero, 0x0008          # v0 = 00000008
    sh      v0, 0x0200(s0)             # 00000200
    sh      v0, 0x01FE(s0)             # 000001FE
lbl_809789EC:
    lh      t3, 0x01FE(s0)             # 000001FE
    lw      a0, 0x003C($sp)            
    lui     a1, 0x40C0                 # a1 = 40C00000
    beq     t3, $zero, lbl_80978AF4    
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lh      v1, 0x0200(s0)             # 00000200
    or      a0, s0, $zero              # a0 = 00000000
    bne     v1, $zero, lbl_80978A18    
    addiu   t4, v1, 0xFFFF             # t4 = FFFFFFFF
    beq     $zero, $zero, lbl_80978A20 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80978A18:
    sh      t4, 0x0200(s0)             # 00000200
    lh      v0, 0x0200(s0)             # 00000200
lbl_80978A20:
    bnel    v0, $zero, lbl_80978A3C    
    mtc1    $zero, $f0                 # $f0 = 0.00
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3982          # a1 = 00003982
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    sh      t5, 0x0200(s0)             # 00000200
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80978A3C:
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mfc1    a1, $f0                    
    lw      a0, 0x003C($sp)            
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_80064178              
    swc1    $f0, 0x0010($sp)           
    mtc1    $zero, $f4                 # $f4 = 0.00
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0158(s0)            # 00000158
    lui     $at, %hi(var_8097950C)     # $at = 80980000
    lwc1    $f2, %lo(var_8097950C)($at) 
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f6                   # $f6 = 8.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    lui     $at, %hi(var_80979510)     # $at = 80980000
    lwc1    $f4, %lo(var_80979510)($at) 
    sub.s   $f16, $f0, $f10            
    swc1    $f6, 0x0014($sp)           
    lui     a2, 0x3E23                 # a2 = 3E230000
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    mul.s   $f18, $f16, $f2            
    mfc1    a3, $f2                    
    sw      t6, 0x0010($sp)            
    ori     a2, a2, 0xD70A             # a2 = 3E23D70A
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    swc1    $f8, 0x0018($sp)           
    add.s   $f6, $f18, $f4             
    jal     func_809781D8              
    swc1    $f6, 0x001C($sp)           
    lh      t7, 0x01FE(s0)             # 000001FE
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x01FE(s0)             # 000001FE
    lh      t9, 0x01FE(s0)             # 000001FE
    bnel    t9, $zero, lbl_80978B84    
    lw      $ra, 0x0034($sp)           
    lh      t1, 0x01F2(s0)             # 000001F2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sh      t0, 0x0204(s0)             # 00000204
    subu    t2, $zero, t1              
    beq     $zero, $zero, lbl_80978B80 
    sh      t2, 0x01F2(s0)             # 000001F2
lbl_80978AF4:
    mtc1    $zero, $f8                 # $f8 = 0.00
    ori     a2, a2, 0xCCCD             # a2 = 0000CCCD
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_80064178              
    swc1    $f8, 0x0010($sp)           
    lwc1    $f10, 0x0154(s0)           # 00000154
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    trunc.w.s $f16, $f10                 
    mfc1    v0, $f16                   
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    beq     v0, $at, lbl_80978B38      
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80978B84      
    lw      $ra, 0x0034($sp)           
lbl_80978B38:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x397F          # a1 = 0000397F
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    mtc1    $zero, $f18                # $f18 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a2, 0x3E23                 # a2 = 3E230000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t4, 0x0010($sp)            
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0xD70A             # a2 = 3E23D70A
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    swc1    $f4, 0x0018($sp)           
    swc1    $f18, 0x0014($sp)          
    jal     func_809781D8              
    swc1    $f6, 0x001C($sp)           
lbl_80978B80:
    lw      $ra, 0x0034($sp)           
lbl_80978B84:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0068           # $sp = 00000000
    jr      $ra                        
    nop


func_80978B94:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lw      a1, 0x0118(s0)             # 00000118
    addiu   a0, s0, 0x0024             # a0 = 00000024
    sw      a0, 0x002C($sp)            
    jal     func_80063F00              
    addiu   a1, a1, 0x0008             # a1 = 00000008
    sll     a1, v0, 16                 
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sh      v0, 0x0036($sp)            
    sw      t6, 0x0010($sp)            
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80064508              
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    lh      t7, 0x0036($sp)            
    lh      t8, 0x00B6(s0)             # 000000B6
    subu    v1, t7, t8                 
    bltz    v1, lbl_80978BFC           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_80978BFC 
    or      v0, v1, $zero              # v0 = 00000000
lbl_80978BFC:
    slti    $at, v0, 0x0065            
    beql    $at, $zero, lbl_80978C78   
    lw      $ra, 0x0024($sp)           
    lwl     t0, 0x00B4(s0)             # 000000B4
    lwr     t0, 0x00B7(s0)             # 000000B7
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f4                   # $f4 = 14.00
    swl     t0, 0x0030(s0)             # 00000030
    swr     t0, 0x0033(s0)             # 00000033
    lhu     t0, 0x00B8(s0)             # 000000B8
    swc1    $f4, 0x0060(s0)            # 00000060
    or      a0, s0, $zero              # a0 = 00000000
    sh      t0, 0x0034(s0)             # 00000034
    lw      t1, 0x002C($sp)            
    addiu   a1, $zero, 0x386C          # a1 = 0000386C
    lw      t3, 0x0000(t1)             # 00000000
    sw      t3, 0x0008(s0)             # 00000008
    lw      t2, 0x0004(t1)             # 00000004
    sw      t2, 0x000C(s0)             # 0000000C
    lw      t3, 0x0008(t1)             # 00000008
    jal     func_80022FD0              
    sw      t3, 0x0010(s0)             # 00000010
    lui     a1, %hi(var_80979460)      # a1 = 80980000
    addiu   a1, a1, %lo(var_80979460)  # a1 = 80979460
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     t4, %hi(func_80978C88)     # t4 = 80980000
    addiu   t4, t4, %lo(func_80978C88) # t4 = 80978C88
    sw      t4, 0x0180(s0)             # 00000180
    lw      $ra, 0x0024($sp)           
lbl_80978C78:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80978C88:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lhu     t6, 0x0088(s0)             # 00000088
    lui     a2, 0x3F19                 # a2 = 3F190000
    ori     a2, a2, 0x999A             # a2 = 3F19999A
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80978CEC    
    addiu   a0, s0, 0x0024             # a0 = 00000024
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0060(s0)            # 00000060
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_80978CF0               
    lw      t0, 0x0118(s0)             # 00000118
    lw      v0, 0x0118(s0)             # 00000118
    or      a0, s0, $zero              # a0 = 00000000
    lh      t8, 0x001C(v0)             # 0000001C
    ori     t9, t8, 0x8000             # t9 = 00008000
    jal     func_80020EB4              
    sh      t9, 0x001C(v0)             # 0000001C
    beq     $zero, $zero, lbl_80978D2C 
    lw      $ra, 0x0024($sp)           
lbl_80978CEC:
    lw      t0, 0x0118(s0)             # 00000118
lbl_80978CF0:
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     a3, 0x4100                 # a3 = 41000000
    lw      a1, 0x0008(t0)             # 00000008
    jal     func_80064178              
    swc1    $f8, 0x0010($sp)           
    lw      t1, 0x0118(s0)             # 00000118
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     a2, 0x3F19                 # a2 = 3F190000
    lw      a1, 0x0010(t1)             # 00000010
    ori     a2, a2, 0x999A             # a2 = 3F19999A
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lui     a3, 0x4100                 # a3 = 41000000
    jal     func_80064178              
    swc1    $f10, 0x0010($sp)          
    lw      $ra, 0x0024($sp)           
lbl_80978D2C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80978D3C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t6, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0x2000         # $at = 00002000
    andi    t7, t6, 0x2000             # t7 = 00000000
    beql    t7, $at, lbl_80978E0C      
    lw      $ra, 0x0024($sp)           
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    sw      t8, 0x0014($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x4120                 # a2 = 41200000
    lui     a3, 0x41A0                 # a3 = 41A00000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lh      t0, 0x01F8(s0)             # 000001F8
    bnel    t0, $zero, lbl_80978DF4    
    lui     $at, 0x0001                # $at = 00010000
    lh      t1, 0x01FA(s0)             # 000001FA
    bnel    t1, $zero, lbl_80978DF4    
    lui     $at, 0x0001                # $at = 00010000
    lw      t3, 0x0180(s0)             # 00000180
    lui     t2, %hi(func_809785C0)     # t2 = 80980000
    addiu   t2, t2, %lo(func_809785C0) # t2 = 809785C0
    bne     t2, t3, lbl_80978DF0       
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at                
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x0184             # a2 = 00000184
lbl_80978DF0:
    lui     $at, 0x0001                # $at = 00010000
lbl_80978DF4:
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at                
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    addiu   a2, s0, 0x0184             # a2 = 00000184
    lw      $ra, 0x0024($sp)           
lbl_80978E0C:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80978E1C:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    nop


func_80978E38:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      a0, 0x0028($sp)            
    sw      a2, 0x0030($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFF0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x002C($sp)            
    sw      a3, 0x0034($sp)            
    lui     t6, %hi(var_809794CC)      # t6 = 80980000
    addiu   t6, t6, %lo(var_809794CC)  # t6 = 809794CC
    lw      t8, 0x0000(t6)             # 809794CC
    addiu   $at, $zero, 0x0002         # $at = 00000002
    sw      t8, 0x0000(a0)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 809794D0
    sw      t7, 0x0004(a0)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 809794D4
    bne     a2, $at, lbl_80978E98      
    sw      t8, 0x0008(a0)             # FFFFFFF8
    lw      a1, 0x0038($sp)            
    sw      a2, 0x002C($sp)            
    jal     func_800AB958              
    addiu   a1, a1, 0x01E4             # a1 = 000001E4
    lw      a2, 0x002C($sp)            
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFF0
lbl_80978E98:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     a2, $at, lbl_80978EB4      
    lw      a1, 0x0038($sp)            
    addiu   a1, a1, 0x0038             # a1 = 00000038
    jal     func_800AB958              
    sw      a2, 0x002C($sp)            
    lw      a2, 0x002C($sp)            
lbl_80978EB4:
    lw      a1, 0x0038($sp)            
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80050CE4              
    addiu   a1, a1, 0x0184             # a1 = 00000184
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80978ED4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    jal     func_80979000              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800AA6EC              
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8097910C              
    lw      a1, 0x0034($sp)            
    jal     func_800AA724              
    nop
    lw      t6, 0x0034($sp)            
    jal     func_8007E298              
    lw      a0, 0x0000(t6)             # 00000000
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t7, %hi(func_80978E1C)     # t7 = 80980000
    lui     t8, %hi(func_80978E38)     # t8 = 80980000
    addiu   t8, t8, %lo(func_80978E38) # t8 = 80978E38
    addiu   t7, t7, %lo(func_80978E1C) # t7 = 80978E1C
    sw      t7, 0x0010($sp)            
    sw      t8, 0x0014($sp)            
    sw      s0, 0x0018($sp)            
    jal     func_80089D8C              
    lw      a0, 0x0034($sp)            
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80978F5C:
    addiu   v0, a0, 0x0290             # v0 = 00000290
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80978F68:
    lbu     t6, 0x0000(v0)             # 00000290
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16                 
    beq     a0, t6, lbl_80978FEC       
    sra     v1, v1, 16                 
    lwc1    $f4, 0x0014($sp)           
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    swc1    $f4, 0x0004(v0)            # 00000294
    lwc1    $f6, 0x0018($sp)           
    swc1    $f6, 0x0008(v0)            # 00000298
    lbu     t8, 0x0013($sp)            
    sb      t9, 0x0000(v0)             # 00000290
    sb      t8, 0x0001(v0)             # 00000291
    sb      t8, 0x0002(v0)             # 00000292
    lw      t1, 0x0000(a1)             # 00000000
    sw      t1, 0x0014(v0)             # 000002A4
    lw      t0, 0x0004(a1)             # 00000004
    sw      t0, 0x0018(v0)             # 000002A8
    lw      t1, 0x0008(a1)             # 00000008
    sw      t1, 0x001C(v0)             # 000002AC
    lw      t3, 0x0000(a3)             # 00000000
    sw      t3, 0x002C(v0)             # 000002BC
    lw      t2, 0x0004(a3)             # 00000004
    sw      t2, 0x0030(v0)             # 000002C0
    lw      t3, 0x0008(a3)             # 00000008
    sw      t3, 0x0034(v0)             # 000002C4
    lw      t5, 0x0000(a2)             # 00000000
    sw      t5, 0x0020(v0)             # 000002B0
    lw      t4, 0x0004(a2)             # 00000004
    sw      t4, 0x0024(v0)             # 000002B4
    lw      t5, 0x0008(a2)             # 00000008
    jr      $ra                        
    sw      t5, 0x0028(v0)             # 000002B8
lbl_80978FEC:
    slti    $at, v1, 0x0014            
    bne     $at, $zero, lbl_80978F68   
    addiu   v0, v0, 0x0038             # v0 = 000002C8
    jr      $ra                        
    nop


func_80979000:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x002C($sp)           
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    sdc1    $f22, 0x0018($sp)          
    sdc1    $f20, 0x0010($sp)          
    lui     $at, %hi(var_80979514)     # $at = 80980000
    lwc1    $f22, %lo(var_80979514)($at) 
    lui     $at, %hi(var_80979518)     # $at = 80980000
    addiu   s0, a0, 0x0290             # s0 = 00000290
    lwc1    $f20, %lo(var_80979518)($at) 
    or      s1, $zero, $zero           # s1 = 00000000
lbl_80979030:
    lbu     t6, 0x0000(s0)             # 00000290
    beql    t6, $zero, lbl_809790DC    
    addiu   s1, s1, 0x0001             # s1 = 00000001
    lbu     t7, 0x0001(s0)             # 00000291
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    andi    t9, t8, 0x00FF             # t9 = 000000FF
    bne     t9, $zero, lbl_80979054    
    sb      t8, 0x0001(s0)             # 00000291
    sb      $zero, 0x0000(s0)          # 00000290
lbl_80979054:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f4, $f0, $f20             
    sub.s   $f6, $f4, $f22             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x002C(s0)            # 000002BC
    lwc1    $f12, 0x0020(s0)           # 000002B0
    lwc1    $f10, 0x0014(s0)           # 000002A4
    mul.s   $f8, $f0, $f20             
    lwc1    $f14, 0x0024(s0)           # 000002B4
    add.s   $f18, $f10, $f12           
    lwc1    $f4, 0x0018(s0)            # 000002A8
    lwc1    $f16, 0x0028(s0)           # 000002B8
    swc1    $f18, 0x0014(s0)           # 000002A4
    lwc1    $f18, 0x002C(s0)           # 000002BC
    add.s   $f6, $f4, $f14             
    sub.s   $f2, $f8, $f22             
    lwc1    $f8, 0x001C(s0)            # 000002AC
    swc1    $f6, 0x0018(s0)            # 000002A8
    add.s   $f4, $f12, $f18            
    lwc1    $f6, 0x0030(s0)            # 000002C0
    lwc1    $f18, 0x0004(s0)           # 00000294
    add.s   $f10, $f8, $f16            
    swc1    $f4, 0x0020(s0)            # 000002B0
    lwc1    $f4, 0x0008(s0)            # 00000298
    add.s   $f8, $f14, $f6             
    swc1    $f10, 0x001C(s0)           # 000002AC
    swc1    $f2, 0x0034(s0)            # 000002C4
    add.s   $f10, $f16, $f2            
    swc1    $f8, 0x0024(s0)            # 000002B4
    add.s   $f6, $f18, $f4             
    swc1    $f10, 0x0028(s0)           # 000002B8
    swc1    $f6, 0x0004(s0)            # 00000294
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_809790DC:
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x0014            
    bne     $at, $zero, lbl_80979030   
    addiu   s0, s0, 0x0038             # s0 = 000002C8
    lw      $ra, 0x002C($sp)           
    ldc1    $f20, 0x0010($sp)          
    ldc1    $f22, 0x0018($sp)          
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_8097910C:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s7, 0x004C($sp)            
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x0054($sp)           
    sw      s8, 0x0050($sp)            
    sw      s6, 0x0048($sp)            
    sw      s5, 0x0044($sp)            
    sw      s4, 0x0040($sp)            
    sw      s3, 0x003C($sp)            
    sw      s2, 0x0038($sp)            
    sw      s1, 0x0034($sp)            
    sw      s0, 0x0030($sp)            
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    or      a2, a0, $zero              # a2 = 00000000
    addiu   s2, a2, 0x0290             # s2 = 00000290
    lw      a0, 0x0000(s7)             # 00000000
    or      s8, $zero, $zero           # s8 = 00000000
    jal     func_8007E2C0              
    or      s1, a0, $zero              # s1 = 00000000
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f24                  # $f24 = 8.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f22                  # $f22 = 1.00
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f20                  # $f20 = 255.00
    or      s5, $zero, $zero           # s5 = 00000000
lbl_8097917C:
    lbu     t6, 0x0000(s2)             # 00000290
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    beq     t6, $zero, lbl_809793A8    
    addu    s4, s7, $at                
    lui     s6, 0x0600                 # s6 = 06000000
    bne     s8, $zero, lbl_809791E8    
    addiu   s6, s6, 0x7938             # s6 = 06007938
    lui     s3, 0x0600                 # s3 = 06000000
    addiu   s3, s3, 0x7928             # s3 = 06007928
    lw      a0, 0x02D0(s1)             # 000002D0
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007DFBC              
    addiu   s8, $zero, 0x0001          # s8 = 00000001
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      t8, 0x0000(v0)             # 00000000
    sw      s3, 0x0004(v0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0x643C                 # t1 = 643C0000
    ori     t1, t1, 0x1400             # t1 = 643C1400
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    lui     t0, 0xFB00                 # t0 = FB000000
    sw      t0, 0x0000(s0)             # 00000000
    sw      t1, 0x0004(s0)             # 00000004
lbl_809791E8:
    lbu     t2, 0x0001(s2)             # 00000291
    lui     $at, 0x4F80                # $at = 4F800000
    lui     t6, 0xFA00                 # t6 = FA000000
    mtc1    t2, $f4                    # $f4 = 0.00
    or      a3, $zero, $zero           # a3 = 00000000
    bgez    t2, lbl_80979210           
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8              
lbl_80979210:
    lbu     t3, 0x0002(s2)             # 00000292
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t3, $f10                   # $f10 = 0.00
    bgez    t3, lbl_80979230           
    cvt.s.w $f16, $f10                 
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f16, $f16, $f18           
lbl_80979230:
    div.s   $f4, $f20, $f16            
    lui     $at, 0xAA82                # $at = AA820000
    ori     $at, $at, 0x5A00           # $at = AA825A00
    mul.s   $f8, $f6, $f4              
    trunc.w.s $f10, $f8                  
    mfc1    a0, $f10                   
    nop
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    lw      s0, 0x02D0(s1)             # 000002D0
    andi    t7, a0, 0x00FF             # t7 = 00000000
    or      t8, t7, $at                # t8 = AA825A00
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0004(s0)             # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t0, 0xE700                 # t0 = E7000000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t0, 0x0000(s0)             # 00000000
    lwc1    $f12, 0x0014(s2)           # 000002A4
    lwc1    $f14, 0x0018(s2)           # 000002A8
    jal     func_800AA7F4              
    lw      a2, 0x001C(s2)             # 000002AC
    jal     func_800ABE54              
    or      a0, s4, $zero              # a0 = 00000000
    lwc1    $f12, 0x0004(s2)           # 00000294
    mfc1    a2, $f22                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s3, 0x02D0(s1)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, s3, 0x0008             # t1 = 06007930
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0000(s3)             # 06007928
    jal     func_800AB900              
    lw      a0, 0x0000(s7)             # 00000000
    sw      v0, 0x0004(s3)             # 0600792C
    lbu     t3, 0x0001(s2)             # 00000291
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    mtc1    t3, $f18                   # $f18 = 0.00
    lui     a0, %hi(var_809794D8)      # a0 = 80980000
    bgez    t3, lbl_80979304           
    cvt.s.w $f16, $f18                 
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f16, $f16, $f6            
lbl_80979304:
    lbu     t4, 0x0002(s2)             # 00000292
    lui     $at, 0x4F80                # $at = 4F800000
    lui     t3, 0x8012                 # t3 = 80120000
    mtc1    t4, $f4                    # $f4 = 0.00
    bgez    t4, lbl_80979328           
    cvt.s.w $f8, $f4                   
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10             
lbl_80979328:
    div.s   $f18, $f24, $f8            
    mul.s   $f6, $f16, $f18            
    trunc.w.s $f4, $f6                   
    mfc1    a2, $f4                    
    nop
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    lw      s0, 0x02D0(s1)             # 000002D0
    sll     t8, a2,  2                 
    addu    a0, a0, t8                 
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lw      a0, %lo(var_809794D8)(a0)  
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t0, a0,  4                 
    srl     t1, t0, 28                 
    sll     t2, t1,  2                 
    addu    t3, t3, t2                 
    lw      t3, 0x0C38(t3)             # 80120C38
    and     t9, a0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t4, t9, t3                 
    addu    t5, t4, $at                
    sw      t5, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      s6, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
lbl_809793A8:
    addiu   s5, s5, 0x0001             # s5 = 00000001
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x0014            
    bne     $at, $zero, lbl_8097917C   
    addiu   s2, s2, 0x0038             # s2 = 000002C8
    lw      $ra, 0x0054($sp)           
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    ldc1    $f24, 0x0028($sp)          
    lw      s0, 0x0030($sp)            
    lw      s1, 0x0034($sp)            
    lw      s2, 0x0038($sp)            
    lw      s3, 0x003C($sp)            
    lw      s4, 0x0040($sp)            
    lw      s5, 0x0044($sp)            
    lw      s6, 0x0048($sp)            
    lw      s7, 0x004C($sp)            
    lw      s8, 0x0050($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    nop

.section .data

var_80979400: .word 0x00AB0500, 0x00000215, 0x009E0000, 0x000006F0
.word func_80978420
.word func_80978528
.word func_80978D3C
.word func_80978ED4
var_80979420: .word \
0x00000000, 0x00000000, 0x00040000, 0xFFCFFFFE, \
0x00000000, 0x00050100, 0x020004B0, 0x00000000, \
0x00100064
var_80979444: .word 0x06110939, 0x10000000, 0x00000001
.word var_80979420
var_80979454: .word 0x08000002, 0x00190019, 0xFF000000
var_80979460: .word \
0x06006CF8, 0x00000000, 0x00000000, 0xBF800000, \
0x03000000, 0x00000000, 0x06007CD0, 0x3F800000, \
0x00000000, 0xBF800000, 0x03000000, 0xC1000000, \
0x06007DC8, 0x3F800000, 0x00000000, 0xBF800000, \
0x01000000, 0xC1000000
var_809794A8: .word 0x00000000, 0x00000000, 0x00000000
var_809794B4: .word 0x00000000, 0x00000000, 0x00000000
var_809794C0: .word 0x00000000, 0x00000000, 0x00000000
var_809794CC: .word 0x00000000, 0x00000000, 0x00000000
var_809794D8: .word \
0x04058EE0, 0x04058AE0, 0x040586E0, 0x040582E0, \
0x04057EE0, 0x04057AE0, 0x040576E0, 0x040572E0, \
0x00000000, 0x00000000

.section .rodata

var_80979500: .word 0x3F666666
var_80979504: .word 0x45AAA000
var_80979508: .word 0x4622F983
var_8097950C: .word 0x3E4CCCCD
var_80979510: .word 0x3E99999A
var_80979514: .word 0x3E4CCCCD
var_80979518: .word 0x3ECCCCCD, 0x00000000

