#include <mips.h>
.set noreorder
.set noat

.section .text
func_808CBDD0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lh      v0, 0x001C(a1)             # 0000001C
    sb      $zero, 0x013C(a1)          # 0000013C
    andi    t8, v0, 0x00FF             # t8 = 00000000
    sh      t8, 0x001C(a1)             # 0000001C
    sra     t6, v0,  8                 
    lh      v0, 0x001C(a1)             # 0000001C
    andi    t7, t6, 0x00FF             # t7 = 00000000
    sh      t7, 0x013E(a1)             # 0000013E
    slti    $at, v0, 0x00F8            
    bne     $at, $zero, lbl_808CBE2C   
    addiu   a0, v0, 0xFF08             # a0 = FFFFFF08
    andi    a0, a0, 0x00FF             # a0 = 00000008
    jal     func_800C55B0              
    sw      a1, 0x0018($sp)            
    jal     func_80020EB4              
    lw      a0, 0x0018($sp)            
    beq     $zero, $zero, lbl_808CBE94 
    lw      $ra, 0x0014($sp)           
lbl_808CBE2C:
    addiu   $at, $zero, 0x00F7         # $at = 000000F7
    bne     v0, $at, lbl_808CBE50      
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    jal     func_800C7C90              
    sw      a1, 0x0018($sp)            
    jal     func_80020EB4              
    lw      a0, 0x0018($sp)            
    beq     $zero, $zero, lbl_808CBE94 
    lw      $ra, 0x0014($sp)           
lbl_808CBE50:
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bne     v0, $at, lbl_808CBE90      
    lui     v1, 0x8010                 # v1 = 80100000
    addiu   v1, v1, 0x8BF0             # v1 = 800F8BF0
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x598C(v0)            # 8011A674
    lw      t9, 0x0030(v1)             # 800F8C20
    and     t0, t9, v0                 
    beq     t0, $zero, lbl_808CBE88    
    nop
    lw      t1, 0x0038(v1)             # 800F8C28
    and     t2, t1, v0                 
    beql    t2, $zero, lbl_808CBE94    
    lw      $ra, 0x0014($sp)           
lbl_808CBE88:
    jal     func_80020EB4              
    or      a0, a1, $zero              # a0 = 00000000
lbl_808CBE90:
    lw      $ra, 0x0014($sp)           
lbl_808CBE94:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808CBEA0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lh      v0, 0x001C(a1)             # 0000001C
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bnel    v0, $at, lbl_808CBED8      
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    jal     func_800C5E2C              
    addiu   a0, a1, 0x00E4             # a0 = 000000E4
    beq     $zero, $zero, lbl_808CBEEC 
    lw      $ra, 0x0014($sp)           
    addiu   $at, $zero, 0x000D         # $at = 0000000D
lbl_808CBED8:
    bnel    v0, $at, lbl_808CBEEC      
    lw      $ra, 0x0014($sp)           
    jal     func_800C6258              
    nop
    lw      $ra, 0x0014($sp)           
lbl_808CBEEC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808CBEF8:
    lwc1    $f10, 0x0000(a0)           # 00000000
    lwc1    $f8, 0x0000(a2)            # 00000000
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    or      v0, $zero, $zero           # v0 = 00000000
    sub.s   $f18, $f10, $f8            
    swc1    $f18, 0x0014($sp)          
    lwc1    $f6, 0x0004(a2)            # 00000004
    lwc1    $f16, 0x0004(a0)           # 00000004
    sub.s   $f4, $f16, $f6             
    swc1    $f4, 0x0018($sp)           
    lwc1    $f8, 0x0008(a2)            # 00000008
    lwc1    $f10, 0x0008(a0)           # 00000008
    sub.s   $f18, $f10, $f8            
    swc1    $f18, 0x001C($sp)          
    lwc1    $f6, 0x0000(a2)            # 00000000
    lwc1    $f16, 0x0000(a1)           # 00000000
    sub.s   $f4, $f16, $f6             
    swc1    $f4, 0x0020($sp)           
    lwc1    $f8, 0x0004(a2)            # 00000004
    lwc1    $f10, 0x0004(a1)           # 00000004
    sub.s   $f18, $f10, $f8            
    lwc1    $f8, 0x0014($sp)           
    lwc1    $f10, 0x0020($sp)          
    swc1    $f18, 0x0024($sp)          
    lwc1    $f6, 0x0008(a2)            # 00000008
    lwc1    $f16, 0x0008(a1)           # 00000008
    sub.s   $f18, $f10, $f8            
    swc1    $f10, 0x0000($sp)          
    swc1    $f8, 0x0004($sp)           
    sub.s   $f4, $f16, $f6             
    lwc1    $f16, 0x0024($sp)          
    lwc1    $f6, 0x0018($sp)           
    swc1    $f18, 0x0008($sp)          
    swc1    $f4, 0x0028($sp)           
    sub.s   $f4, $f16, $f6             
    swc1    $f16, 0x000C($sp)          
    lwc1    $f10, 0x0028($sp)          
    lwc1    $f16, 0x0008($sp)          
    lwc1    $f8, 0x001C($sp)           
    swc1    $f6, 0x0008($sp)           
    lwc1    $f6, 0x0004($sp)           
    swc1    $f18, 0x002C($sp)          
    sub.s   $f18, $f10, $f8            
    swc1    $f10, 0x0004($sp)          
    mul.s   $f6, $f16, $f6             
    lwc1    $f10, 0x0008($sp)          
    swc1    $f4, 0x0030($sp)           
    swc1    $f18, 0x0034($sp)          
    mul.s   $f10, $f4, $f10            
    add.s   $f6, $f6, $f10             
    mul.s   $f10, $f8, $f18            
    lwc1    $f8, 0x0000($sp)           
    add.s   $f0, $f10, $f6             
    mul.s   $f10, $f16, $f8            
    lwc1    $f6, 0x000C($sp)           
    mul.s   $f8, $f4, $f6              
    add.s   $f6, $f10, $f8             
    lwc1    $f10, 0x0004($sp)          
    mul.s   $f8, $f10, $f18            
    add.s   $f10, $f8, $f6             
    mtc1    $zero, $f6                 # $f6 = 0.00
    mul.s   $f8, $f10, $f0             
    c.lt.s  $f8, $f6                   
    nop
    bc1f    lbl_808CC05C               
    nop
    mul.s   $f10, $f16, $f16           
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    mul.s   $f8, $f4, $f4              
    add.s   $f6, $f10, $f8             
    mul.s   $f4, $f18, $f18            
    neg.s   $f8, $f0                   
    add.s   $f10, $f4, $f6             
    lwc1    $f4, 0x0000(a0)            # 00000000
    div.s   $f0, $f8, $f10             
    mul.s   $f18, $f16, $f0            
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x0000(a3)            # 00000000
    lwc1    $f8, 0x0030($sp)           
    lwc1    $f16, 0x0004(a0)           # 00000004
    mul.s   $f10, $f8, $f0             
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0004(a3)           # 00000004
    lwc1    $f4, 0x0034($sp)           
    lwc1    $f8, 0x0008(a0)            # 00000008
    mul.s   $f6, $f4, $f0              
    add.s   $f10, $f6, $f8             
    beq     $zero, $zero, lbl_808CC05C 
    swc1    $f10, 0x0008(a3)           # 00000008
lbl_808CC05C:
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_808CC064:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s5, 0x0030($sp)            
    sw      s4, 0x002C($sp)            
    sw      s2, 0x0024($sp)            
    or      s2, a1, $zero              # s2 = 00000000
    or      s4, a2, $zero              # s4 = 00000000
    or      s5, a3, $zero              # s5 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      s3, 0x0028($sp)            
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    sdc1    $f20, 0x0010($sp)          
    sw      a0, 0x0088($sp)            
    lui     t7, %hi(var_808CC6A0)      # t7 = 808D0000
    addiu   t7, t7, %lo(var_808CC6A0)  # t7 = 808CC6A0
    lw      t9, 0x0000(t7)             # 808CC6A0
    lw      t8, 0x0004(t7)             # 808CC6A4
    addiu   t6, $sp, 0x0078            # t6 = FFFFFFF0
    lui     $at, %hi(var_808CC6E0)     # $at = 808D0000
    sw      t9, 0x0000(t6)             # FFFFFFF0
    sw      t8, 0x0004(t6)             # FFFFFFF4
    lwc1    $f20, %lo(var_808CC6E0)($at) 
    blez    s2, lbl_808CC138           
    or      s1, $zero, $zero           # s1 = 00000000
    lw      s0, 0x0088($sp)            
    addiu   s3, $sp, 0x0048            # s3 = FFFFFFC0
lbl_808CC0CC:
    lh      t0, 0x0000(s0)             # 00000000
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFC0
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0048($sp)           
    lh      t1, 0x0002(s0)             # 00000002
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x004C($sp)          
    lh      t2, 0x0004(s0)             # 00000004
    mtc1    t2, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    jal     func_80063E18              
    swc1    $f18, 0x0050($sp)          
    c.lt.s  $f0, $f20                  
    nop
    bc1fl   lbl_808CC130               
    addiu   s1, s1, 0x0001             # s1 = 00000001
    mov.s   $f20, $f0                  
    sw      s1, 0x0080($sp)            
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_808CC130:
    bne     s1, s2, lbl_808CC0CC       
    addiu   s0, s0, 0x0006             # s0 = 00000006
lbl_808CC138:
    lui     $at, %hi(var_808CC6E4)     # $at = 808D0000
    lwc1    $f4, %lo(var_808CC6E4)($at) 
    lw      t3, 0x0080($sp)            
    addiu   s3, $sp, 0x0048            # s3 = FFFFFFC0
    c.le.s  $f4, $f20                  
    lw      t5, 0x0088($sp)            
    sll     t4, t3,  2                 
    bc1fl   lbl_808CC168               
    subu    t4, t4, t3                 
    beq     $zero, $zero, lbl_808CC338 
    or      v0, $zero, $zero           # v0 = 00000000
    subu    t4, t4, t3                 
lbl_808CC168:
    sll     t4, t4,  1                 
    addu    s0, t4, t5                 
    lh      t6, 0x0000(s0)             # 00000006
    mtc1    t6, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    swc1    $f8, 0x006C($sp)           
    lh      t7, 0x0002(s0)             # 00000008
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    swc1    $f16, 0x0070($sp)          
    lh      t8, 0x0004(s0)             # 0000000A
    mtc1    t8, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    beq     t3, $zero, lbl_808CC200    
    swc1    $f4, 0x0074($sp)           
    lh      t9, -0x0006(s0)            # 00000000
    or      a0, s3, $zero              # a0 = FFFFFFC0
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFE4
    mtc1    t9, $f6                    # $f6 = 0.00
    or      a2, s4, $zero              # a2 = 00000000
    addiu   a3, $sp, 0x0054            # a3 = FFFFFFCC
    cvt.s.w $f8, $f6                   
    swc1    $f8, 0x0048($sp)           
    lh      t0, -0x0004(s0)            # 00000002
    mtc1    t0, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    swc1    $f16, 0x004C($sp)          
    lh      t1, -0x0002(s0)            # 00000004
    mtc1    t1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    jal     func_808CBEF8              
    swc1    $f4, 0x0050($sp)           
    sw      v0, 0x0078($sp)            
lbl_808CC200:
    lw      t2, 0x0080($sp)            
    addiu   t4, t2, 0x0001             # t4 = 00000001
    beql    t4, s2, lbl_808CC264       
    lw      t8, 0x0078($sp)            
    lh      t5, 0x0006(s0)             # 0000000C
    addiu   a0, $sp, 0x006C            # a0 = FFFFFFE4
    or      a1, s3, $zero              # a1 = FFFFFFC0
    mtc1    t5, $f6                    # $f6 = 0.00
    or      a2, s4, $zero              # a2 = 00000000
    addiu   a3, $sp, 0x0060            # a3 = FFFFFFD8
    cvt.s.w $f8, $f6                   
    swc1    $f8, 0x0048($sp)           
    lh      t6, 0x0008(s0)             # 0000000E
    mtc1    t6, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    swc1    $f16, 0x004C($sp)          
    lh      t7, 0x000A(s0)             # 00000010
    mtc1    t7, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    jal     func_808CBEF8              
    swc1    $f4, 0x0050($sp)           
    sw      v0, 0x007C($sp)            
    lw      t8, 0x0078($sp)            
lbl_808CC264:
    lw      t3, 0x007C($sp)            
    lw      t9, 0x0078($sp)            
    beq     t8, $zero, lbl_808CC2D8    
    nop
    beq     t3, $zero, lbl_808CC2D8    
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFCC
    addiu   a1, $sp, 0x0060            # a1 = FFFFFFD8
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_808CBEF8              
    or      a3, s5, $zero              # a3 = 00000000
    bne     v0, $zero, lbl_808CC334    
    lwc1    $f6, 0x0054($sp)           
    lwc1    $f8, 0x0060($sp)           
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f0                   # $f0 = 0.50
    add.s   $f10, $f6, $f8             
    mul.s   $f16, $f10, $f0            
    swc1    $f16, 0x0000(s5)           # 00000000
    lwc1    $f4, 0x0064($sp)           
    lwc1    $f18, 0x0058($sp)          
    add.s   $f6, $f18, $f4             
    mul.s   $f8, $f6, $f0              
    swc1    $f8, 0x0004(s5)            # 00000004
    lwc1    $f16, 0x0068($sp)          
    lwc1    $f10, 0x005C($sp)          
    add.s   $f18, $f10, $f16           
    mul.s   $f4, $f18, $f0             
    beq     $zero, $zero, lbl_808CC334 
    swc1    $f4, 0x0008(s5)            # 00000008
lbl_808CC2D8:
    beq     t9, $zero, lbl_808CC2FC    
    lw      t0, 0x007C($sp)            
    lwc1    $f6, 0x0054($sp)           
    swc1    $f6, 0x0000(s5)            # 00000000
    lwc1    $f8, 0x0058($sp)           
    swc1    $f8, 0x0004(s5)            # 00000004
    lwc1    $f10, 0x005C($sp)          
    beq     $zero, $zero, lbl_808CC334 
    swc1    $f10, 0x0008(s5)           # 00000008
lbl_808CC2FC:
    beq     t0, $zero, lbl_808CC320    
    lwc1    $f6, 0x006C($sp)           
    lwc1    $f16, 0x0060($sp)          
    swc1    $f16, 0x0000(s5)           # 00000000
    lwc1    $f18, 0x0064($sp)          
    swc1    $f18, 0x0004(s5)           # 00000004
    lwc1    $f4, 0x0068($sp)           
    beq     $zero, $zero, lbl_808CC334 
    swc1    $f4, 0x0008(s5)            # 00000008
lbl_808CC320:
    swc1    $f6, 0x0000(s5)            # 00000000
    lwc1    $f8, 0x0070($sp)           
    swc1    $f8, 0x0004(s5)            # 00000004
    lwc1    $f10, 0x0074($sp)          
    swc1    $f10, 0x0008(s5)           # 00000008
lbl_808CC334:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808CC338:
    lw      $ra, 0x0034($sp)           
    ldc1    $f20, 0x0010($sp)          
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    lw      s2, 0x0024($sp)            
    lw      s3, 0x0028($sp)            
    lw      s4, 0x002C($sp)            
    lw      s5, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0088           # $sp = 00000000


func_808CC360:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x004C($sp)            
    lw      t6, 0x004C($sp)            
    lw      t8, 0x004C($sp)            
    lui     t9, 0x0001                 # t9 = 00010000
    lw      t7, 0x1C44(t6)             # 00001C44
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lui     t5, 0x8012                 # t5 = 80120000
    sw      t7, 0x003C($sp)            
    lh      v0, 0x001C(s0)             # 0000001C
    lw      a2, 0x003C($sp)            
    addu    t9, t9, t8                 
    beq     v0, $zero, lbl_808CC3B4    
    addiu   a2, a2, 0x0024             # a2 = 00000024
    beq     v0, $at, lbl_808CC3B4      
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_808CC4C8      
    addiu   $at, $zero, 0x000D         # $at = 0000000D
lbl_808CC3B4:
    lh      t0, 0x013E(s0)             # 0000013E
    lw      t9, 0x1E08(t9)             # 00011E08
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t1, t0,  3                 
    addu    v0, t9, t1                 
    lw      v1, 0x0004(v0)             # 00000004
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    lbu     a1, 0x0000(v0)             # 00000000
    sll     t2, v1,  4                 
    srl     t3, t2, 28                 
    sll     t4, t3,  2                 
    addu    t5, t5, t4                 
    lw      t5, 0x0C38(t5)             # 80120C38
    and     t6, v1, $at                
    lui     $at, 0x8000                # $at = 80000000
    addiu   a3, s0, 0x0024             # a3 = 00000024
    addu    a0, t5, t6                 
    addu    a0, a0, $at                
    jal     func_808CC064              
    sw      a3, 0x0030($sp)            
    beq     v0, $zero, lbl_808CC51C    
    lw      a0, 0x004C($sp)            
    lw      t7, 0x0030($sp)            
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    sw      a0, 0x002C($sp)            
    addiu   a1, s0, 0x0078             # a1 = 00000078
    addiu   a2, $sp, 0x0034            # a2 = FFFFFFEC
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8002F4B8              # Raycast
    sw      t7, 0x0010($sp)            
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f4                   # $f4 = -32000.00
    lw      a0, 0x002C($sp)            
    lw      a2, 0x0034($sp)            
    c.eq.s  $f0, $f4                   
    nop
    bc1tl   lbl_808CC460               
    sb      $zero, 0x013D(s0)          # 0000013D
    jal     func_80034778              
    lw      a1, 0x0078(s0)             # 00000078
    beq     $zero, $zero, lbl_808CC460 
    sb      v0, 0x013D(s0)             # 0000013D
    sb      $zero, 0x013D(s0)          # 0000013D
lbl_808CC460:
    lbu     v0, 0x013D(s0)             # 0000013D
    bne     v0, $zero, lbl_808CC4A0    
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_808CC484      
    nop
    beq     $zero, $zero, lbl_808CC51C 
    sb      $zero, 0x013D(s0)          # 0000013D
lbl_808CC484:
    bne     v0, $zero, lbl_808CC498    
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    beq     $zero, $zero, lbl_808CC51C 
    sb      t8, 0x013D(s0)             # 0000013D
lbl_808CC498:
    beq     $zero, $zero, lbl_808CC51C 
    sb      t0, 0x013D(s0)             # 0000013D
lbl_808CC4A0:
    andi    v1, t9, 0x00FF             # v1 = 000000FF
    slti    $at, v1, 0x0003            
    bne     $at, $zero, lbl_808CC4BC   
    sb      t9, 0x013D(s0)             # 0000013D
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    beq     $zero, $zero, lbl_808CC51C 
    sb      t1, 0x013D(s0)             # 0000013D
lbl_808CC4BC:
    beq     $zero, $zero, lbl_808CC51C 
    sb      v1, 0x013D(s0)             # 0000013D
    addiu   $at, $zero, 0x000D         # $at = 0000000D
lbl_808CC4C8:
    beq     v0, $at, lbl_808CC4DC      
    lw      a0, 0x003C($sp)            
    addiu   $at, $zero, 0x0013         # $at = 00000013
    bne     v0, $at, lbl_808CC4F0      
    lw      t2, 0x004C($sp)            
lbl_808CC4DC:
    addiu   a1, s0, 0x0008             # a1 = 00000008
    jal     func_8002154C              
    addiu   a2, s0, 0x0024             # a2 = 00000024
    beq     $zero, $zero, lbl_808CC520 
    lw      $ra, 0x0024($sp)           
lbl_808CC4F0:
    lh      t3, 0x00A4(t2)             # 000000A4
    addiu   $at, $zero, 0x0012         # $at = 00000012
    or      a0, t2, $zero              # a0 = 00000000
    bnel    t3, $at, lbl_808CC520      
    lw      $ra, 0x0024($sp)           
    jal     func_80020640              
    lb      a1, 0x0003(s0)             # 00000003
    beql    v0, $zero, lbl_808CC520    
    lw      $ra, 0x0024($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_808CC51C:
    lw      $ra, 0x0024($sp)           
lbl_808CC520:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_808CC530:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lbu     t6, 0x013C(a3)             # 0000013C
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    bnel    t6, $zero, lbl_808CC55C    
    lh      v0, 0x001C(a3)             # 0000001C
    beq     $zero, $zero, lbl_808CC668 
    sb      t7, 0x013C(a3)             # 0000013C
    lh      v0, 0x001C(a3)             # 0000001C
lbl_808CC55C:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beql    v0, $zero, lbl_808CC57C    
    lbu     t8, 0x013D(a3)             # 0000013D
    beq     v0, $at, lbl_808CC578      
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_808CC5A0      
    addiu   $at, $zero, 0x000B         # $at = 0000000B
lbl_808CC578:
    lbu     t8, 0x013D(a3)             # 0000013D
lbl_808CC57C:
    lui     a1, %hi(var_808CC6D4)      # a1 = 808D0000
    addiu   a0, a3, 0x00E4             # a0 = 000000E4
    sll     t9, t8,  2                 
    addu    a1, a1, t9                 
    jal     func_800C5374              
    lw      a1, %lo(var_808CC6D4)(a1)  
    beq     $zero, $zero, lbl_808CC66C 
    lw      $ra, 0x0014($sp)           
    addiu   $at, $zero, 0x000B         # $at = 0000000B
lbl_808CC5A0:
    bnel    v0, $at, lbl_808CC5BC      
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    jal     func_800C5794              
    addiu   a0, $zero, 0x005A          # a0 = 0000005A
    beq     $zero, $zero, lbl_808CC66C 
    lw      $ra, 0x0014($sp)           
    addiu   $at, $zero, 0x000C         # $at = 0000000C
lbl_808CC5BC:
    bne     v0, $at, lbl_808CC5D4      
    addiu   a0, a3, 0x00E4             # a0 = 000000E4
    jal     func_800C5B70              
    lw      a1, 0x0090(a3)             # 00000090
    beq     $zero, $zero, lbl_808CC66C 
    lw      $ra, 0x0014($sp)           
lbl_808CC5D4:
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bne     v0, $at, lbl_808CC5F4      
    addiu   a0, a3, 0x0008             # a0 = 00000008
    addiu   a1, $zero, 0x003E          # a1 = 0000003E
    jal     func_800C5FE0              
    addiu   a2, $zero, 0x03E8          # a2 = 000003E8
    beq     $zero, $zero, lbl_808CC66C 
    lw      $ra, 0x0014($sp)           
lbl_808CC5F4:
    addiu   $at, $zero, 0x0013         # $at = 00000013
    bne     v0, $at, lbl_808CC614      
    addiu   a0, a3, 0x0008             # a0 = 00000008
    addiu   a1, $zero, 0x0028          # a1 = 00000028
    jal     func_800C5FE0              
    addiu   a2, $zero, 0x0320          # a2 = 00000320
    beq     $zero, $zero, lbl_808CC66C 
    lw      $ra, 0x0014($sp)           
lbl_808CC614:
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beq     v0, $at, lbl_808CC63C      
    sll     t0, v0,  1                 
    addiu   $at, $zero, 0x0010         # $at = 00000010
    beq     v0, $at, lbl_808CC63C      
    addiu   $at, $zero, 0x0011         # $at = 00000011
    beq     v0, $at, lbl_808CC63C      
    addiu   $at, $zero, 0x0012         # $at = 00000012
    bne     v0, $at, lbl_808CC654      
    or      a0, a3, $zero              # a0 = 00000000
lbl_808CC63C:
    lui     a0, %hi(var_808CC6A8)      # a0 = 808D0000
    addu    a0, a0, t0                 
    jal     func_80064738              
    lhu     a0, %lo(var_808CC6A8)(a0)  
    beq     $zero, $zero, lbl_808CC66C 
    lw      $ra, 0x0014($sp)           
lbl_808CC654:
    sll     t1, v0,  1                 
    lui     a1, %hi(var_808CC6A8)      # a1 = 808D0000
    addu    a1, a1, t1                 
    jal     func_80022FD0              
    lhu     a1, %lo(var_808CC6A8)(a1)  
lbl_808CC668:
    lw      $ra, 0x0014($sp)           
lbl_808CC66C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_808CC680: .word 0x003B0100, 0x00000030, 0x00010000, 0x00000140
.word func_808CBDD0
.word func_808CBEA0
.word func_808CC360
.word func_808CC530
var_808CC6A0: .word 0x00000000, 0x00000000
var_808CC6A8: .word \
0x00002028, 0x200B2007, 0x00000000, 0x2032203B, \
0x20302041, 0x205D0000, 0x20A60000, 0x20C020CA, \
0x20D620D7, 0x20980000, 0x203120E5
var_808CC6D4: .word 0x3F333333, 0x3F800000, 0x3FB33333

.section .rodata

var_808CC6E0: .word 0x461C4000
var_808CC6E4: .word 0x461C4000, 0x00000000, 0x00000000

