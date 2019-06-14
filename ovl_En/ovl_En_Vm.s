#include <mips.h>
.set noreorder
.set noat

.section .text
func_80929410:
    sw      a1, 0x0204(a0)             # 00000204
    jr      $ra                        
    nop


func_8092941C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x0180             # t6 = 00000180
    addiu   t7, s0, 0x01C2             # t7 = 000001C2
    addiu   t8, $zero, 0x000B          # t8 = 0000000B
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, 0x0068             # a3 = 06000068
    addiu   a2, a2, 0x3F60             # a2 = 06003F60
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C684              
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a2, $zero, $zero           # a2 = 00000000
    mfc1    a1, $f0                    
    mfc1    a3, $f0                    
    jal     func_8001EC20              
    nop
    addiu   a1, s0, 0x0258             # a1 = 00000258
    sw      a1, 0x0030($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_8092A970)      # a3 = 80930000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_8092A970)  # a3 = 8092A970
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x02A4             # a1 = 000002A4
    sw      a1, 0x0030($sp)            
    jal     func_8004B858              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_8092A99C)      # a3 = 80930000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_8092A99C)  # a3 = 8092A99C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004B960              
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x0324             # a1 = 00000324
    sw      a1, 0x0030($sp)            
    jal     func_8004B858              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_8092A9EC)      # a3 = 80930000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_8092A9EC)  # a3 = 8092A9EC
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004B960              
    or      a2, s0, $zero              # a2 = 00000000
    lh      t9, 0x001C(s0)             # 0000001C
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f8                   # $f8 = 40.00
    sra     t0, t9,  8                 
    mtc1    t0, $f4                    # $f4 = 0.00
    lh      t1, 0x001C(s0)             # 0000001C
    addiu   t3, $zero, 0x0039          # t3 = 00000039
    cvt.s.w $f6, $f4                   
    andi    t2, t1, 0x00FF             # t2 = 00000000
    sh      t2, 0x001C(s0)             # 0000001C
    lh      t4, 0x001C(s0)             # 0000001C
    lui     a1, 0x3C23                 # a1 = 3C230000
    sb      t3, 0x0117(s0)             # 00000117
    mul.s   $f10, $f6, $f8             
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    or      a0, s0, $zero              # a0 = 00000000
    bne     t4, $zero, lbl_80929568    
    swc1    $f10, 0x0208(s0)           # 00000208
    lui     a1, 0x3C65                 # a1 = 3C650000
    sb      t5, 0x00AF(s0)             # 000000AF
    ori     a1, a1, 0x6042             # a1 = 3C656042
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80929570 
    nop
lbl_80929568:
    jal     func_80020F88              
    sb      t6, 0x00AF(s0)             # 000000AF
lbl_80929570:
    jal     func_809295B8              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_8092958C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x0258             # a1 = 00000258
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809295B8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x0068             # a0 = 06000068
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f0, $f4                   
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x0068             # a1 = 06000068
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    mfc1    a3, $f0                    
    swc1    $f0, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
    sh      $zero, 0x0250(s0)          # 00000250
    lh      t7, 0x0250(s0)             # 00000250
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    lui     a1, %hi(func_80929644)     # a1 = 80930000
    sw      $zero, 0x020C(s0)          # 0000020C
    sw      t8, 0x0210(s0)             # 00000210
    addiu   a1, a1, %lo(func_80929644) # a1 = 80929644
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80929410              
    sh      t7, 0x024E(s0)             # 0000024E
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80929644:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s0, 0x0048($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      a1, 0x0074($sp)            
    lw      t6, 0x0074($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a0, s0, 0x0244             # a0 = 00000244
    lw      t7, 0x1C44(t6)             # 00001C44
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    sw      t7, 0x006C($sp)            
    lh      v0, 0x024E(s0)             # 0000024E
    addiu   a3, $zero, 0x05DC          # a3 = 000005DC
    beql    v0, $zero, lbl_80929698    
    sw      $zero, 0x0010($sp)         
    beq     v0, $at, lbl_80929848      
    addiu   a0, s0, 0x024C             # a0 = 0000024C
    beq     $zero, $zero, lbl_80929988 
    lw      $ra, 0x004C($sp)           
    sw      $zero, 0x0010($sp)         
lbl_80929698:
    jal     func_80064508              
    sw      a0, 0x0054($sp)            
    lh      t8, 0x008A(s0)             # 0000008A
    lh      t9, 0x024C(s0)             # 0000024C
    lh      t1, 0x00B6(s0)             # 000000B6
    lw      a1, 0x006C($sp)            
    subu    t0, t8, t9                 
    subu    v1, t0, t1                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    sh      v1, 0x0066($sp)            
    addiu   a0, s0, 0x0214             # a0 = 00000214
    jal     func_80063F34              
    addiu   a1, a1, 0x0024             # a1 = 00000024
    sll     a1, v0, 16                 
    slti    $at, v0, 0x1B92            
    sra     a1, a1, 16                 
    bne     $at, $zero, lbl_809296E8   
    lh      v1, 0x0066($sp)            
    addiu   a1, $zero, 0x1B91          # a1 = 00001B91
lbl_809296E8:
    lwc1    $f0, 0x0208(s0)            # 00000208
    lwc1    $f2, 0x0090(s0)            # 00000090
    c.le.s  $f2, $f0                   
    sub.s   $f12, $f0, $f2             
    bc1fl   lbl_80929830               
    lh      t0, 0x024C(s0)             # 0000024C
    bltz    v1, lbl_80929710           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_80929710 
    or      v0, v1, $zero              # v0 = 00000000
lbl_80929710:
    slti    $at, v0, 0x2711            
    beq     $at, $zero, lbl_8092982C   
    slti    $at, a1, 0x0E38            
    bne     $at, $zero, lbl_8092982C   
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f4                   # $f4 = 80.00
    lwc1    $f0, 0x0094(s0)            # 00000094
    lui     $at, 0xC320                # $at = C3200000
    c.le.s  $f0, $f4                   
    nop
    bc1fl   lbl_80929830               
    lh      t0, 0x024C(s0)             # 0000024C
    mtc1    $at, $f6                   # $f6 = -160.00
    lw      a0, 0x0054($sp)            
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    c.le.s  $f6, $f0                   
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    bc1fl   lbl_80929830               
    lh      t0, 0x024C(s0)             # 0000024C
    sw      $zero, 0x0010($sp)         
    jal     func_80064508              
    swc1    $f12, 0x0068($sp)          
    lui     $at, 0x4334                # $at = 43340000
    lwc1    $f12, 0x0068($sp)          
    mtc1    $at, $f8                   # $f8 = 180.00
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   a0, s0, 0x024C             # a0 = 0000024C
    mul.s   $f10, $f12, $f8            
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    trunc.w.s $f16, $f10                 
    mfc1    v1, $f16                   
    nop
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    bltz    v1, lbl_809297A8           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_809297A8 
    or      v0, v1, $zero              # v0 = 00000000
lbl_809297A8:
    div     $zero, v0, $at             
    lh      t3, 0x008A(s0)             # 0000008A
    lh      t4, 0x00B6(s0)             # 000000B6
    mflo    a3                         
    addiu   a3, a3, 0x0FA0             # a3 = 00000FA0
    subu    a1, t3, t4                 
    sll     a1, a1, 16                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sra     a1, a1, 16                 
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    slti    $at, v0, 0x1555            
    beq     $at, $zero, lbl_80929838   
    nop
    lw      t5, 0x0210(s0)             # 00000210
    lui     $at, 0x4000                # $at = 40000000
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t6, t5, 0xFFFF             # t6 = FFFFFFFF
    bne     t6, $zero, lbl_80929838    
    sw      t6, 0x0210(s0)             # 00000210
    lh      t8, 0x024E(s0)             # 0000024E
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    $at, $f18                  # $f18 = 2.00
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x024E(s0)             # 0000024E
    addiu   a1, $zero, 0x3973          # a1 = 00003973
    swc1    $f0, 0x0154(s0)            # 00000154
    swc1    $f0, 0x0148(s0)            # 00000148
    jal     func_80022FD0              
    swc1    $f18, 0x0158(s0)           # 00000158
    beq     $zero, $zero, lbl_80929838 
    nop
lbl_8092982C:
    lh      t0, 0x024C(s0)             # 0000024C
lbl_80929830:
    addiu   t1, t0, 0xFE0C             # t1 = FFFFFE0C
    sh      t1, 0x024C(s0)             # 0000024C
lbl_80929838:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     $zero, $zero, lbl_80929988 
    lw      $ra, 0x004C($sp)           
lbl_80929848:
    lh      t2, 0x008A(s0)             # 0000008A
    lh      t3, 0x00B6(s0)             # 000000B6
    sw      $zero, 0x0010($sp)         
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    subu    a1, t2, t3                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    jal     func_80064508              
    addiu   a3, $zero, 0x1F40          # a3 = 00001F40
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_80929894    
    lh      t6, 0x0250(s0)             # 00000250
    lh      t4, 0x0250(s0)             # 00000250
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sh      t5, 0x0250(s0)             # 00000250
    swc1    $f0, 0x0154(s0)            # 00000154
    lh      t6, 0x0250(s0)             # 00000250
lbl_80929894:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t6, $at, lbl_80929988      
    lw      $ra, 0x004C($sp)           
    lh      t7, 0x008A(s0)             # 0000008A
    addiu   a0, s0, 0x0214             # a0 = 00000214
    sh      t7, 0x0246(s0)             # 00000246
    lw      a1, 0x006C($sp)            
    jal     func_80063F34              
    addiu   a1, a1, 0x0024             # a1 = 00000024
    sh      v0, 0x0244(s0)             # 00000244
    lh      v1, 0x0244(s0)             # 00000244
    lui     a2, %hi(var_8092AA3C)      # a2 = 80930000
    addiu   t8, $zero, 0x1B91          # t8 = 00001B91
    slti    $at, v1, 0x1B92            
    bne     $at, $zero, lbl_809298DC   
    addiu   a2, a2, %lo(var_8092AA3C)  # a2 = 8092AA3C
    sh      t8, 0x0244(s0)             # 00000244
    lh      v1, 0x0244(s0)             # 00000244
lbl_809298DC:
    slti    $at, v1, 0x0AAA            
    beq     $at, $zero, lbl_80929918   
    addiu   a1, s0, 0x0220             # a1 = 00000220
    lwc1    $f0, 0x014C(s0)            # 0000014C
    sh      $zero, 0x0250(s0)          # 00000250
    lui     $at, 0x3F80                # $at = 3F800000
    lh      t9, 0x0250(s0)             # 00000250
    mtc1    $at, $f4                   # $f4 = 1.00
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    sw      t0, 0x0210(s0)             # 00000210
    swc1    $f0, 0x0154(s0)            # 00000154
    swc1    $f0, 0x0148(s0)            # 00000148
    sh      t9, 0x024E(s0)             # 0000024E
    beq     $zero, $zero, lbl_80929984 
    swc1    $f4, 0x0158(s0)            # 00000158
lbl_80929918:
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f6                   # $f6 = 6.00
    addiu   t1, $zero, 0x0096          # t1 = 00000096
    addiu   t2, $zero, 0xFFE7          # t2 = FFFFFFE7
    swc1    $f6, 0x0154(s0)            # 00000154
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sw      t8, 0x0038($sp)            
    sw      t7, 0x0034($sp)            
    sw      t6, 0x0030($sp)            
    sw      t5, 0x002C($sp)            
    sw      t4, 0x0028($sp)            
    sw      t3, 0x0020($sp)            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    sw      t2, 0x0014($sp)            
    sw      t1, 0x0010($sp)            
    lw      a0, 0x0074($sp)            
    jal     func_8001E28C              
    or      a3, a2, $zero              # a3 = 8092AA3C
    jal     func_80929998              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80929984:
    lw      $ra, 0x004C($sp)           
lbl_80929988:
    lw      s0, 0x0048($sp)            
    addiu   $sp, $sp, 0x0070           # $sp = 00000000
    jr      $ra                        
    nop


func_80929998:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    lui     $at, 0x4040                # $at = 40400000
    sw      s0, 0x0028($sp)            
    mtc1    $at, $f0                   # $f0 = 3.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f4                   # $f4 = 7.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x0068             # a1 = 06000068
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f4, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
    addiu   t7, $zero, 0x0131          # t7 = 00000131
    sw      t7, 0x0210(s0)             # 00000210
    lui     $at, %hi(var_8092AB00)     # $at = 80930000
    lwc1    $f8, %lo(var_8092AB00)($at) 
    lbu     t9, 0x02B4(s0)             # 000002B4
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f10                  # $f10 = 40.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     a1, %hi(func_80929A3C)     # a1 = 80930000
    andi    t0, t9, 0xFFFD             # t0 = 00000000
    sw      t8, 0x020C(s0)             # 0000020C
    sb      t0, 0x02B4(s0)             # 000002B4
    addiu   a1, a1, %lo(func_80929A3C) # a1 = 80929A3C
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f8, 0x0238(s0)            # 00000238
    jal     func_80929410              
    swc1    $f10, 0x0254(s0)           # 00000254
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80929A3C:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0054($sp)            
    lw      t6, 0x0054($sp)            
    addiu   a0, s0, 0x0214             # a0 = 00000214
    lw      v0, 0x1C44(t6)             # 00001C44
    sw      a0, 0x0034($sp)            
    addiu   a1, v0, 0x0024             # a1 = 00000024
    sw      a1, 0x0030($sp)            
    jal     func_80063F34              
    sw      v0, 0x004C($sp)            
    sll     v1, v0, 16                 
    slti    $at, v0, 0x1B92            
    bne     $at, $zero, lbl_80929A84   
    sra     v1, v1, 16                 
    addiu   v1, $zero, 0x1B91          # v1 = 00001B91
lbl_80929A84:
    lbu     v0, 0x02B4(s0)             # 000002B4
    lui     $at, %hi(var_8092AB04)     # $at = 80930000
    addiu   a0, s0, 0x0238             # a0 = 00000238
    andi    t7, v0, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_80929AC8    
    andi    t8, v0, 0xFFFD             # t8 = 00000000
    sb      t8, 0x02B4(s0)             # 000002B4
    sw      $zero, 0x0210(s0)          # 00000210
    lwc1    $f4, %lo(var_8092AB04)($at) 
    lwc1    $f6, 0x0238(s0)            # 00000238
    lui     $at, %hi(var_8092AB08)     # $at = 80930000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80929ACC               
    lh      t9, 0x0244(s0)             # 00000244
    lwc1    $f8, %lo(var_8092AB08)($at) 
    swc1    $f8, 0x0238(s0)            # 00000238
lbl_80929AC8:
    lh      t9, 0x0244(s0)             # 00000244
lbl_80929ACC:
    lui     a2, 0x3F80                 # a2 = 3F800000
    slti    $at, t9, 0x0AAA            
    bnel    $at, $zero, lbl_80929AEC   
    mtc1    $zero, $f2                 # $f2 = 0.00
    lw      v0, 0x0210(s0)             # 00000210
    bne     v0, $zero, lbl_80929B34    
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    mtc1    $zero, $f2                 # $f2 = 0.00
lbl_80929AEC:
    lui     a3, 0x3CF5                 # a3 = 3CF50000
    ori     a3, a3, 0xC28F             # a3 = 3CF5C28F
    mfc1    a1, $f2                    
    jal     func_80064178              
    swc1    $f2, 0x0010($sp)           
    mtc1    $zero, $f2                 # $f2 = 0.00
    lwc1    $f10, 0x0238(s0)           # 00000238
    sh      $zero, 0x0250(s0)          # 00000250
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f2, $f10                  
    nop
    bc1f    lbl_80929C60               
    nop
    swc1    $f2, 0x0240(s0)            # 00000240
    jal     func_809295B8              
    swc1    $f2, 0x023C(s0)            # 0000023C
    beq     $zero, $zero, lbl_80929C60 
    nop
lbl_80929B34:
    slti    $at, t0, 0x012D            
    beq     $at, $zero, lbl_80929C78   
    sw      t0, 0x0210(s0)             # 00000210
    lh      t2, 0x008A(s0)             # 0000008A
    lh      t3, 0x00B6(s0)             # 000000B6
    sh      v1, 0x004A($sp)            
    sw      $zero, 0x0010($sp)         
    subu    a1, t2, t3                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x024C             # a0 = 0000024C
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80064508              
    addiu   a3, $zero, 0x0DAC          # a3 = 00000DAC
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x0246             # a0 = 00000246
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80064508              
    addiu   a3, $zero, 0x0DAC          # a3 = 00000DAC
    addiu   a0, s0, 0x0244             # a0 = 00000244
    lh      a1, 0x004A($sp)            
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    addiu   a3, $zero, 0x0DAC          # a3 = 00000DAC
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lw      t4, 0x0030($sp)            
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFE8
    lui     $at, 0xC6FA                # $at = C6FA0000
    lw      t6, 0x0000(t4)             # 00000000
    mtc1    $at, $f16                  # $f16 = -32000.00
    sw      t6, 0x0000(a1)             # FFFFFFE8
    lw      t5, 0x0004(t4)             # 00000004
    sw      t5, 0x0004(a1)             # FFFFFFEC
    lw      t6, 0x0008(t4)             # 00000008
    sw      t6, 0x0008(a1)             # FFFFFFF0
    lw      t7, 0x004C($sp)            
    lwc1    $f0, 0x0080(t7)            # 00000080
    c.lt.s  $f16, $f0                  
    nop
    bc1f    lbl_80929BE0               
    nop
    swc1    $f0, 0x003C($sp)           
lbl_80929BE0:
    jal     func_80063E18              
    lw      a0, 0x0034($sp)            
    mtc1    $zero, $f2                 # $f2 = 0.00
    mfc1    a1, $f0                    
    lw      a3, 0x0254(s0)             # 00000254
    addiu   a0, s0, 0x0240             # a0 = 00000240
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178              
    swc1    $f2, 0x0010($sp)           
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    lui     a3, 0x3DF5                 # a3 = 3DF50000
    ori     a3, a3, 0xC28F             # a3 = 3DF5C28F
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    addiu   a0, s0, 0x0238             # a0 = 00000238
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178              
    swc1    $f2, 0x0010($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3171          # a1 = 00003171
    lh      t8, 0x0250(s0)             # 00000250
    lw      a0, 0x0054($sp)            
    addiu   a2, s0, 0x02A4             # a2 = 000002A4
    slti    $at, t8, 0x0003            
    bne     $at, $zero, lbl_80929C58   
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    jal     func_8004BD50              # CollisionCheck_setAT
    addu    a1, a0, $at                
lbl_80929C58:
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    sh      t9, 0x0250(s0)             # 00000250
lbl_80929C60:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_80929C7C    
    lw      $ra, 0x0024($sp)           
    lwc1    $f18, 0x0148(s0)           # 00000148
    swc1    $f18, 0x0154(s0)           # 00000154
lbl_80929C78:
    lw      $ra, 0x0024($sp)           
lbl_80929C7C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra                        
    nop


func_80929C8C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x0068             # a0 = 06000068
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f4, $f4                   
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x0068             # a1 = 06000068
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0xBF80                 # a2 = BF800000
    mfc1    a3, $f4                    
    swc1    $f0, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    mtc1    $zero, $f0                 # $f0 = 0.00
    sh      $zero, 0x0250(s0)          # 00000250
    lh      t8, 0x0250(s0)             # 00000250
    addiu   t7, $zero, 0x00B4          # t7 = 000000B4
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sw      t7, 0x0210(s0)             # 00000210
    sw      t9, 0x020C(s0)             # 0000020C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    swc1    $f0, 0x0240(s0)            # 00000240
    swc1    $f0, 0x023C(s0)            # 0000023C
    jal     func_80022FD0              
    sh      t8, 0x024E(s0)             # 0000024E
    lui     a1, %hi(func_80929D34)     # a1 = 80930000
    addiu   a1, a1, %lo(func_80929D34) # a1 = 80929D34
    jal     func_80929410              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80929D34:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lw      t6, 0x0210(s0)             # 00000210
    addiu   a0, s0, 0x0244             # a0 = 00000244
    or      a1, $zero, $zero           # a1 = 00000000
    bne     t6, $zero, lbl_80929E0C    
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0030($sp)            
    beql    v0, $zero, lbl_80929E30    
    lw      $ra, 0x002C($sp)           
    lh      t7, 0x024E(s0)             # 0000024E
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x024E(s0)             # 0000024E
    lh      v0, 0x024E(s0)             # 0000024E
    bnel    v0, $at, lbl_80929DA0      
    addiu   $at, $zero, 0x0001         # $at = 00000001
    jal     func_809295B8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80929E30 
    lw      $ra, 0x002C($sp)           
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_80929DA0:
    bne     v0, $at, lbl_80929DF0      
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    lui     s0, 0x0600                 # s0 = 06000000
    addiu   s0, s0, 0x0068             # s0 = 06000068
    jal     func_8008A194              
    or      a0, s0, $zero              # a0 = 06000068
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    cvt.s.w $f6, $f4                   
    mfc1    a3, $f0                    
    sw      t9, 0x0014($sp)            
    lw      a0, 0x0030($sp)            
    or      a1, s0, $zero              # a1 = 06000068
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f6, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    beq     $zero, $zero, lbl_80929E30 
    lw      $ra, 0x002C($sp)           
lbl_80929DF0:
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    $at, $f8                   # $f8 = 2.00
    sw      t0, 0x0210(s0)             # 06000278
    swc1    $f0, 0x0154(s0)            # 060001BC
    beq     $zero, $zero, lbl_80929E2C 
    swc1    $f8, 0x0158(s0)            # 060001C0
lbl_80929E0C:
    addiu   a3, $zero, 0x05DC          # a3 = 000005DC
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lw      t1, 0x0210(s0)             # 06000278
    addiu   a0, s0, 0x013C             # a0 = 060001A4
    addiu   t2, t1, 0xFFFF             # t2 = FFFFFFFF
    jal     func_8008C9C0              
    sw      t2, 0x0210(s0)             # 06000278
lbl_80929E2C:
    lw      $ra, 0x002C($sp)           
lbl_80929E30:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80929E40:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x0068             # a0 = 06000068
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f4, $f4                   
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x0068             # a1 = 06000068
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0xBF80                 # a2 = BF800000
    mfc1    a3, $f4                    
    swc1    $f0, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    mtc1    $zero, $f0                 # $f0 = 0.00
    sh      $zero, 0x0250(s0)          # 00000250
    lh      t8, 0x0250(s0)             # 00000250
    addiu   t7, $zero, 0x0021          # t7 = 00000021
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    sw      t7, 0x0210(s0)             # 00000210
    sw      t9, 0x020C(s0)             # 0000020C
    lui     $at, %hi(var_8092AB0C)     # $at = 80930000
    swc1    $f0, 0x0240(s0)            # 00000240
    swc1    $f0, 0x023C(s0)            # 0000023C
    sh      t8, 0x024E(s0)             # 0000024E
    lwc1    $f6, %lo(var_8092AB0C)($at) 
    lui     $at, %hi(var_8092AB10)     # $at = 80930000
    lwc1    $f10, 0x0054(s0)           # 00000054
    swc1    $f6, 0x00BC(s0)            # 000000BC
    lwc1    $f8, %lo(var_8092AB10)($at) 
    lwc1    $f18, 0x0028(s0)           # 00000028
    lui     $at, 0x4100                # $at = 41000000
    mul.s   $f16, $f8, $f10            
    mtc1    $at, $f6                   # $f6 = 8.00
    lui     $at, 0xBF00                # $at = BF000000
    mtc1    $at, $f8                   # $f8 = -0.50
    swc1    $f6, 0x0060(s0)            # 00000060
    swc1    $f8, 0x006C(s0)            # 0000006C
    add.s   $f4, $f18, $f16            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0028(s0)            # 00000028
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    lui     $at, %hi(var_8092AB14)     # $at = 80930000
    add.s   $f18, $f0, $f10            
    swc1    $f18, 0x0068(s0)           # 00000068
    jal     func_80026D90              
    lwc1    $f12, %lo(var_8092AB14)($at) 
    trunc.w.s $f16, $f0                  
    lui     a1, %hi(func_80929F48)     # a1 = 80930000
    addiu   a1, a1, %lo(func_80929F48) # a1 = 80929F48
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    t1, $f16                   
    jal     func_80929410              
    sh      t1, 0x0032(s0)             # 00000032
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80929F48:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x003C($sp)            
    lh      t6, 0x0244(s0)             # 00000244
    lh      t8, 0x024C(s0)             # 0000024C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t7, t6, 0x05DC             # t7 = 000005DC
    addiu   t9, t8, 0x09C4             # t9 = 000009C4
    sh      t7, 0x0244(s0)             # 00000244
    jal     func_8002121C              
    sh      t9, 0x024C(s0)             # 0000024C
    lw      t0, 0x0210(s0)             # 00000210
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    addiu   t3, $zero, 0x06FF          # t3 = 000006FF
    addiu   t1, t0, 0xFFFF             # t1 = FFFFFFFF
    bne     t1, $zero, lbl_80929FE8    
    sw      t1, 0x0210(s0)             # 00000210
    lw      a1, 0x003C($sp)            
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    swc1    $f4, 0x0010($sp)           
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      $zero, 0x0024($sp)         
    sw      t3, 0x0020($sp)            
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)           
    beq     v0, $zero, lbl_80929FD0    
    or      a1, s0, $zero              # a1 = 00000000
    sh      $zero, 0x01E8(v0)          # 000001E8
lbl_80929FD0:
    lw      a0, 0x003C($sp)            
    addiu   a2, s0, 0x0024             # a2 = 00000024
    jal     func_80013A84              
    addiu   a3, $zero, 0x00A0          # a3 = 000000A0
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80929FE8:
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80929FFC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x003C($sp)            
    lw      a0, 0x003C($sp)            
    jal     func_800264C8              
    addiu   a1, s0, 0x0258             # a1 = 00000258
    beq     v0, $zero, lbl_8092A034    
    lw      a1, 0x003C($sp)            
    lbu     t6, 0x00AF(s0)             # 000000AF
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    beq     $zero, $zero, lbl_8092A05C 
    sb      t7, 0x00AF(s0)             # 000000AF
lbl_8092A034:
    lbu     v0, 0x0335(s0)             # 00000335
    andi    t8, v0, 0x0002             # t8 = 00000000
    beql    t8, $zero, lbl_8092A0E8    
    lw      $ra, 0x0034($sp)           
    lw      t9, 0x020C(s0)             # 0000020C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    andi    t0, v0, 0xFFFD             # t0 = 00000000
    beql    t9, $at, lbl_8092A0E8      
    lw      $ra, 0x0034($sp)           
    sb      t0, 0x0335(s0)             # 00000335
lbl_8092A05C:
    lbu     t1, 0x00AF(s0)             # 000000AF
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    beq     t1, $zero, lbl_8092A094    
    lui     $at, 0x41A0                # $at = 41A00000
    addiu   t2, $zero, 0x0008          # t2 = 00000008
    sw      t2, 0x0010($sp)            
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80929C8C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8092A0E8 
    lw      $ra, 0x0034($sp)           
lbl_8092A094:
    lwc1    $f4, 0x0028(s0)            # 00000028
    mtc1    $at, $f6                   # $f6 = 0.00
    lw      a3, 0x0024(s0)             # 00000024
    addiu   t3, $zero, 0x0601          # t3 = 00000601
    add.s   $f8, $f4, $f6              
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    swc1    $f8, 0x0010($sp)           
    lwc1    $f10, 0x002C(s0)           # 0000002C
    sw      $zero, 0x0024($sp)         
    sw      t3, 0x0020($sp)            
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    jal     func_80025110              # ActorSpawn
    swc1    $f10, 0x0014($sp)          
    beq     v0, $zero, lbl_8092A0DC    
    nop
    sh      $zero, 0x01E8(v0)          # 000001E8
lbl_8092A0DC:
    jal     func_80929E40              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0034($sp)           
lbl_8092A0E8:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8092A0F8:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lbu     t6, 0x00AF(s0)             # 000000AF
    or      a0, s0, $zero              # a0 = 00000000
    beql    t6, $zero, lbl_8092A12C    
    lh      t7, 0x0250(s0)             # 00000250
    jal     func_80929FFC              
    or      a1, s1, $zero              # a1 = 00000000
    lh      t7, 0x0250(s0)             # 00000250
lbl_8092A12C:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    or      a0, s1, $zero              # a0 = 00000000
    bne     t7, $at, lbl_8092A194      
    addiu   a1, s0, 0x022C             # a1 = 0000022C
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    addiu   a3, $zero, 0xFFFF          # a3 = FFFFFFFF
    jal     func_8001E428              
    sw      a1, 0x0034($sp)            
    addiu   t0, $zero, 0x0078          # t0 = 00000078
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lw      a1, 0x0034($sp)            
    sw      t2, 0x0018($sp)            
    sw      t1, 0x0014($sp)            
    sw      t0, 0x0010($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    lui     a2, 0x40C0                 # a2 = 40C00000
    jal     func_80026308              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3172          # a1 = 00003172
lbl_8092A194:
    lw      t9, 0x0204(s0)             # 00000204
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lh      t3, 0x024A(s0)             # 0000024A
    lbu     t5, 0x00AF(s0)             # 000000AF
    addiu   t4, t3, 0x000C             # t4 = 0000000C
    beq     t5, $zero, lbl_8092A1D8    
    sh      t4, 0x024A(s0)             # 0000024A
    lw      t6, 0x020C(s0)             # 0000020C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    beql    t6, $at, lbl_8092A1DC      
    addiu   a1, s0, 0x0258             # a1 = 00000258
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3170          # a1 = 00003170
lbl_8092A1D8:
    addiu   a1, s0, 0x0258             # a1 = 00000258
lbl_8092A1DC:
    sw      a1, 0x0030($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at                
    sw      a1, 0x0034($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0030($sp)            
    lbu     t7, 0x0114(s0)             # 00000114
    bnel    t7, $zero, lbl_8092A230    
    or      a0, s1, $zero              # a0 = 00000000
    lbu     t8, 0x00AF(s0)             # 000000AF
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)            
    beql    t8, $zero, lbl_8092A230    
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0030($sp)            
    or      a0, s1, $zero              # a0 = 00000000
lbl_8092A230:
    lw      a1, 0x0034($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x0324             # a2 = 00000324
    lw      t1, 0x0024(s0)             # 00000024
    lw      t0, 0x0028(s0)             # 00000028
    lui     $at, %hi(var_8092AB18)     # $at = 80930000
    sw      t1, 0x0038(s0)             # 00000038
    lw      t1, 0x002C(s0)             # 0000002C
    sw      t0, 0x003C(s0)             # 0000003C
    lwc1    $f6, 0x00BC(s0)            # 000000BC
    sw      t1, 0x0040(s0)             # 00000040
    lwc1    $f4, %lo(var_8092AB18)($at) 
    lwc1    $f10, 0x0054(s0)           # 00000054
    lwc1    $f18, 0x003C(s0)           # 0000003C
    add.s   $f8, $f4, $f6              
    mul.s   $f16, $f8, $f10            
    add.s   $f4, $f18, $f16            
    swc1    $f4, 0x003C(s0)            # 0000003C
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_8092A28C:
    sw      a0, 0x0000($sp)            
    sw      a3, 0x000C($sp)            
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     a1, $at, lbl_8092A2C8      
    lw      v0, 0x0014($sp)            
    lw      v1, 0x0010($sp)            
    lh      t7, 0x0244(v0)             # 00000244
    lh      t6, 0x0000(v1)             # 00000000
    lh      t9, 0x0002(v1)             # 00000002
    addu    t8, t6, t7                 
    sh      t8, 0x0000(v1)             # 00000000
    lh      t0, 0x024C(v0)             # 0000024C
    addu    t1, t9, t0                 
    beq     $zero, $zero, lbl_8092A2E8 
    sh      t1, 0x0002(v1)             # 00000002
lbl_8092A2C8:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     a1, $at, lbl_8092A2E8      
    lw      v0, 0x0014($sp)            
    lw      t2, 0x020C(v0)             # 0000020C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    t2, $at, lbl_8092A2EC      
    or      v0, $zero, $zero           # v0 = 00000000
    sw      $zero, 0x0000(a2)          # 00000000
lbl_8092A2E8:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8092A2EC:
    jr      $ra                        
    nop


func_8092A2F4:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sw      $ra, 0x0034($sp)           
    sw      s0, 0x0030($sp)            
    sw      a0, 0x0090($sp)            
    sw      a2, 0x0098($sp)            
    sw      a3, 0x009C($sp)            
    lui     t7, %hi(var_8092AA48)      # t7 = 80930000
    addiu   t7, t7, %lo(var_8092AA48)  # t7 = 8092AA48
    lw      t9, 0x0000(t7)             # 8092AA48
    addiu   t6, $sp, 0x0080            # t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             # 8092AA4C
    sw      t9, 0x0000(t6)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 8092AA50
    lui     t1, %hi(var_8092AA54)      # t1 = 80930000
    addiu   t1, t1, %lo(var_8092AA54)  # t1 = 8092AA54
    sw      t8, 0x0004(t6)             # FFFFFFF4
    sw      t9, 0x0008(t6)             # FFFFFFF8
    lw      t3, 0x0000(t1)             # 8092AA54
    addiu   t0, $sp, 0x0074            # t0 = FFFFFFE4
    lw      t2, 0x0004(t1)             # 8092AA58
    sw      t3, 0x0000(t0)             # FFFFFFE4
    lw      t3, 0x0008(t1)             # 8092AA5C
    lui     t5, %hi(var_8092AA60)      # t5 = 80930000
    addiu   t5, t5, %lo(var_8092AA60)  # t5 = 8092AA60
    sw      t2, 0x0004(t0)             # FFFFFFE8
    sw      t3, 0x0008(t0)             # FFFFFFEC
    lw      t7, 0x0000(t5)             # 8092AA60
    addiu   t4, $sp, 0x0068            # t4 = FFFFFFD8
    lw      t6, 0x0004(t5)             # 8092AA64
    sw      t7, 0x0000(t4)             # FFFFFFD8
    lw      t7, 0x0008(t5)             # 8092AA68
    addiu   $at, $zero, 0x0002         # $at = 00000002
    sw      t6, 0x0004(t4)             # FFFFFFDC
    bne     a1, $at, lbl_8092A5B8      
    sw      t7, 0x0008(t4)             # FFFFFFE0
    lw      s0, 0x00A0($sp)            
    lui     a0, %hi(var_8092AA6C)      # a0 = 80930000
    addiu   a0, a0, %lo(var_8092AA6C)  # a0 = 8092AA6C
    addiu   a1, s0, 0x0214             # a1 = 00000214
    jal     func_800AB958              
    sw      a1, 0x0048($sp)            
    lui     a0, %hi(var_8092AA78)      # a0 = 80930000
    addiu   a0, a0, %lo(var_8092AA78)  # a0 = 8092AA78
    jal     func_800AB958              
    addiu   a1, s0, 0x0220             # a1 = 00000220
    lh      t8, 0x0250(s0)             # 00000250
    slti    $at, t8, 0x0003            
    bne     $at, $zero, lbl_8092A548   
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f6                   # $f6 = 500.00
    sw      $zero, 0x0054($sp)         
    lui     $at, %hi(var_8092AB1C)     # $at = 80930000
    lwc1    $f16, %lo(var_8092AB1C)($at) 
    lwc1    $f10, 0x0054(s0)           # 00000054
    lwc1    $f4, 0x0240(s0)            # 00000240
    addiu   a1, s0, 0x022C             # a1 = 0000022C
    mul.s   $f18, $f10, $f16           
    add.s   $f8, $f4, $f6              
    sw      a1, 0x0044($sp)            
    addiu   a0, $sp, 0x0080            # a0 = FFFFFFF0
    mul.s   $f4, $f8, $f18             
    jal     func_800AB958              
    swc1    $f4, 0x0088($sp)           
    lw      a0, 0x0090($sp)            
    addiu   t9, $sp, 0x0054            # t9 = FFFFFFC4
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $sp, 0x0050            # t3 = FFFFFFC0
    sw      t3, 0x0024($sp)            
    sw      t2, 0x0020($sp)            
    sw      t1, 0x0018($sp)            
    sw      t0, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    lw      a1, 0x0048($sp)            
    lw      a2, 0x0044($sp)            
    addiu   a3, $sp, 0x0058            # a3 = FFFFFFC8
    sw      $zero, 0x001C($sp)         
    jal     func_800308B4              
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8092A480      
    lw      a0, 0x0048($sp)            
    jal     func_80063E18              
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFC8
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    sh      t4, 0x0250(s0)             # 00000250
    sub.s   $f10, $f0, $f6             
    addiu   t6, $sp, 0x0058            # t6 = FFFFFFC8
    swc1    $f10, 0x0240(s0)           # 00000240
    lw      t8, 0x0000(t6)             # FFFFFFC8
    lw      t5, 0x0044($sp)            
    sw      t8, 0x0000(t5)             # 00000000
    lw      t7, 0x0004(t6)             # FFFFFFCC
    sw      t7, 0x0004(t5)             # 00000004
    lw      t8, 0x0008(t6)             # FFFFFFD0
    sw      t8, 0x0008(t5)             # 00000008
lbl_8092A480:
    mtc1    $zero, $f16                # $f16 = 0.00
    lwc1    $f8, 0x0240(s0)            # 00000240
    lui     $at, 0x42C8                # $at = 42C80000
    lw      a0, 0x0048($sp)            
    c.eq.s  $f16, $f8                  
    lw      a1, 0x0044($sp)            
    bc1t    lbl_8092A548               
    nop
    mtc1    $at, $f2                   # $f2 = 100.00
    lui     $at, %hi(var_8092AB20)     # $at = 80930000
    lwc1    $f18, %lo(var_8092AB20)($at) 
    lwc1    $f4, 0x0054(s0)            # 00000054
    lui     $at, 0x428C                # $at = 428C0000
    c.lt.s  $f18, $f4                  
    nop
    bc1f    lbl_8092A4CC               
    nop
    mtc1    $at, $f2                   # $f2 = 70.00
    nop
lbl_8092A4CC:
    jal     func_80063E18              
    swc1    $f2, 0x004C($sp)           
    lwc1    $f2, 0x004C($sp)           
    lui     a0, %hi(var_8092AAB4)      # a0 = 80930000
    addiu   a1, s0, 0x0308             # a1 = 00000308
    mul.s   $f12, $f0, $f2             
    sw      a1, 0x003C($sp)            
    addiu   a0, a0, %lo(var_8092AAB4)  # a0 = 8092AAB4
    swc1    $f12, 0x007C($sp)          
    jal     func_800AB958              
    swc1    $f12, 0x0070($sp)          
    lui     a0, %hi(var_8092AAC0)      # a0 = 80930000
    addiu   a1, s0, 0x02FC             # a1 = 000002FC
    sw      a1, 0x0040($sp)            
    jal     func_800AB958              
    addiu   a0, a0, %lo(var_8092AAC0)  # a0 = 8092AAC0
    addiu   a1, s0, 0x02F0             # a1 = 000002F0
    sw      a1, 0x0044($sp)            
    jal     func_800AB958              
    addiu   a0, $sp, 0x0074            # a0 = FFFFFFE4
    addiu   a1, s0, 0x02E4             # a1 = 000002E4
    sw      a1, 0x0048($sp)            
    jal     func_800AB958              
    addiu   a0, $sp, 0x0068            # a0 = FFFFFFD8
    lw      t9, 0x003C($sp)            
    lw      a1, 0x0048($sp)            
    addiu   a0, s0, 0x02A4             # a0 = 000002A4
    lw      a2, 0x0044($sp)            
    lw      a3, 0x0040($sp)            
    jal     func_80050B64              
    sw      t9, 0x0010($sp)            
lbl_8092A548:
    lui     a0, %hi(var_8092AA84)      # a0 = 80930000
    addiu   a1, s0, 0x0370             # a1 = 00000370
    sw      a1, 0x0044($sp)            
    jal     func_800AB958              
    addiu   a0, a0, %lo(var_8092AA84)  # a0 = 8092AA84
    lui     a0, %hi(var_8092AA90)      # a0 = 80930000
    addiu   a1, s0, 0x0364             # a1 = 00000364
    sw      a1, 0x0048($sp)            
    jal     func_800AB958              
    addiu   a0, a0, %lo(var_8092AA90)  # a0 = 8092AA90
    lui     a0, %hi(var_8092AA9C)      # a0 = 80930000
    addiu   a1, s0, 0x0388             # a1 = 00000388
    sw      a1, 0x003C($sp)            
    jal     func_800AB958              
    addiu   a0, a0, %lo(var_8092AA9C)  # a0 = 8092AA9C
    lui     a0, %hi(var_8092AAA8)      # a0 = 80930000
    addiu   a3, s0, 0x037C             # a3 = 0000037C
    or      a1, a3, $zero              # a1 = 0000037C
    sw      a3, 0x0040($sp)            
    jal     func_800AB958              
    addiu   a0, a0, %lo(var_8092AAA8)  # a0 = 8092AAA8
    lw      t0, 0x003C($sp)            
    lw      a3, 0x0040($sp)            
    addiu   a0, s0, 0x0324             # a0 = 00000324
    lw      a1, 0x0048($sp)            
    lw      a2, 0x0044($sp)            
    jal     func_80050B64              
    sw      t0, 0x0010($sp)            
lbl_8092A5B8:
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0090           # $sp = 00000000
    jr      $ra                        
    nop


func_8092A5CC:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s3, 0x0028($sp)            
    sw      s2, 0x0024($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_8007E298              
    or      s1, a0, $zero              # s1 = 00000000
    jal     func_8007E2C0              
    lw      a0, 0x0000(s3)             # 00000000
    lui     t6, %hi(func_8092A2F4)     # t6 = 80930000
    addiu   t6, t6, %lo(func_8092A2F4) # t6 = 8092A2F4
    lw      a1, 0x0140(s2)             # 00000140
    lw      a2, 0x015C(s2)             # 0000015C
    lui     a3, %hi(func_8092A28C)     # a3 = 80930000
    addiu   a3, a3, %lo(func_8092A28C) # a3 = 8092A28C
    sw      s2, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    jal     func_8008993C              
    or      a0, s3, $zero              # a0 = 00000000
    lw      t8, 0x0024(s2)             # 00000024
    addiu   a0, $sp, 0x006C            # a0 = FFFFFFEC
    lui     a1, %hi(var_8092AACC)      # a1 = 80930000
    sw      t8, 0x0000(a0)             # FFFFFFEC
    lw      t7, 0x0028(s2)             # 00000028
    addiu   a1, a1, %lo(var_8092AACC)  # a1 = 8092AACC
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    sw      t7, 0x0004(a0)             # FFFFFFF0
    lw      t8, 0x002C(s2)             # 0000002C
    or      a3, s3, $zero              # a3 = 00000000
    jal     func_80026AD0              
    sw      t8, 0x0008(a0)             # FFFFFFF4
    lh      t9, 0x0250(s2)             # 00000250
    or      a3, $zero, $zero           # a3 = 00000000
    slti    $at, t9, 0x0003            
    bne     $at, $zero, lbl_8092A860   
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lwc1    $f4, 0x0230(s2)            # 00000230
    lwc1    $f12, 0x022C(s2)           # 0000022C
    lw      a2, 0x0234(s2)             # 00000234
    jal     func_800AA7F4              
    add.s   $f14, $f4, $f6             
    lui     $at, %hi(var_8092AB24)     # $at = 80930000
    lwc1    $f12, %lo(var_8092AB24)($at) 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x0060($sp)            
    lw      a1, 0x0060($sp)            
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xFA00                 # t4 = FA000000
    addiu   t5, $zero, 0xFFA8          # t5 = FFFFFFA8
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0004(s0)             # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    jal     func_8007E930              
    lw      a0, 0x0000(s3)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xFB00                 # t7 = FB000000
    ori     t8, $zero, 0xFF00          # t8 = 0000FF00
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0xDB06                 # t1 = DB060000
    ori     t1, t1, 0x0020             # t1 = DB060020
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    lui     $at, 0x0001                # $at = 00010000
    addu    t0, s3, $at                
    sw      t1, 0x0000(s0)             # 00000000
    lw      t2, 0x1DE4(t0)             # 00001DE4
    lui     a2, %hi(var_8092AAD8)      # a2 = 80930000
    lui     t9, 0x8012                 # t9 = 80120000
    andi    t3, t2, 0x0007             # t3 = 00000000
    sll     t4, t3,  2                 
    addu    a2, a2, t4                 
    lw      a2, %lo(var_8092AAD8)(a2)  
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t6, a2,  4                 
    srl     t7, t6, 28                 
    sll     t8, t7,  2                 
    addu    t9, t9, t8                 
    lw      t9, 0x0C38(t9)             # 80120C38
    and     t5, a2, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, t5, t9                 
    addu    t2, t1, $at                
    sw      t2, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     a3, 0x0403                 # a3 = 04030000
    addiu   a3, a3, 0x2480             # a3 = 04032480
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      t4, 0x0000(s0)             # 00000000
    sw      a3, 0x0004(s0)             # 00000004
    lui     $at, %hi(var_8092AB28)     # $at = 80930000
    lwc1    $f12, %lo(var_8092AB28)($at) 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sw      a3, 0x0034($sp)            
    jal     func_800AAB94              
    sw      t0, 0x0030($sp)            
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x004C($sp)            
    lw      a2, 0x004C($sp)            
    sw      v0, 0x0004(a2)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0020             # t5 = DB060020
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0000(s0)             # 00000000
    lw      t9, 0x0030($sp)            
    lui     a1, %hi(var_8092AAD8)      # a1 = 80930000
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t1, 0x1DE4(t9)             # 00001DE4
    lui     t9, 0x8012                 # t9 = 80120000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    addiu   t2, t1, 0x0004             # t2 = 00000004
    andi    t3, t2, 0x0007             # t3 = 00000004
    sll     t4, t3,  2                 
    addu    a1, a1, t4                 
    lw      a1, %lo(var_8092AAD8)(a1)  
    sll     t7, a1,  4                 
    srl     t8, t7, 28                 
    sll     t5, t8,  2                 
    addu    t9, t9, t5                 
    lw      t9, 0x0C38(t9)             # 80120C38
    and     t6, a1, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, t6, t9                 
    addu    t2, t1, $at                
    sw      t2, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xDE00                 # t4 = DE000000
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(s0)             # 00000000
    lw      t7, 0x0034($sp)            
    sw      t7, 0x0004(s0)             # 00000004
lbl_8092A860:
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0020             # t5 = DB060020
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t5, 0x0000(s0)             # 00000000
    lh      a2, 0x024A(s2)             # 0000024A
    lw      a0, 0x0000(s3)             # 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EADC              
    sw      s0, 0x0040($sp)            
    lw      v1, 0x0040($sp)            
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v0, 0x0004(v1)             # 00000004
    lwc1    $f12, 0x0214(s2)           # 00000214
    lwc1    $f14, 0x0218(s2)           # 00000218
    jal     func_800AA7F4              
    lw      a2, 0x021C(s2)             # 0000021C
    lh      a0, 0x0244(s2)             # 00000244
    lh      a1, 0x0246(s2)             # 00000246
    lh      a2, 0x0248(s2)             # 00000248
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, %hi(var_8092AB2C)     # $at = 80930000
    lwc1    $f10, %lo(var_8092AB2C)($at) 
    lwc1    $f8, 0x0238(s2)            # 00000238
    lui     $at, %hi(var_8092AB30)     # $at = 80930000
    lwc1    $f18, %lo(var_8092AB30)($at) 
    mul.s   $f12, $f8, $f10            
    lwc1    $f16, 0x0240(s2)           # 00000240
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f4, $f16, $f18            
    mov.s   $f14, $f12                 
    mfc1    a2, $f4                    
    jal     func_800AA8FC              
    nop
    lw      s2, 0x02C0(s1)             # 000002C0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t6, s2, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t9, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s3)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t3, 0x0600                 # t3 = 06000000
    addiu   t3, t3, 0x2728             # t3 = 06002728
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s1)             # 000002C0
    lui     t2, 0xDE00                 # t2 = DE000000
    sw      t2, 0x0000(s0)             # 00000000
    sw      t3, 0x0004(s0)             # 00000004
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    lw      s2, 0x0024($sp)            
    lw      s3, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0080           # $sp = 00000000

.section .data

var_8092A950: .word 0x008A0500, 0x00000011, 0x008B0000, 0x000003A4
.word func_8092941C
.word func_8092958C
.word func_8092A0F8
.word func_8092A5CC
var_8092A970: .word \
0x09000D39, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x00190046, 0x00000000, 0x00000000
var_8092A99C: .word \
0x09110000, 0x00030000, 0x00000000, 0xFFCFFFFF, \
0x00100000, 0x00000000, 0x00000000, 0x81000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_8092A9EC: .word \
0x09000900, 0x00030000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_8092AA3C: .word 0x00000000, 0x00000000, 0x00000000
var_8092AA48: .word 0x00000000, 0x00000000, 0x00000000
var_8092AA54: .word 0x43FA0000, 0x00000000, 0x00000000
var_8092AA60: .word 0xC3FA0000, 0x00000000, 0x00000000
var_8092AA6C: .word 0x00000000, 0x00000000, 0x00000000
var_8092AA78: .word 0x00000000, 0x00000000, 0x44C80000
var_8092AA84: .word 0x447A0000, 0x442F0000, 0x44FA0000
var_8092AA90: .word 0x447A0000, 0xC42F0000, 0x44FA0000
var_8092AA9C: .word 0xC47A0000, 0x442F0000, 0x44BB8000
var_8092AAA8: .word 0xC47A0000, 0xC42F0000, 0x44BB8000
var_8092AAB4: .word 0x43FA0000, 0x00000000, 0x00000000
var_8092AAC0: .word 0xC3FA0000, 0x00000000, 0x00000000
var_8092AACC: .word 0x3ECCCCCD, 0x3ECCCCCD, 0x3ECCCCCD
var_8092AAD8: .word \
0x0402D480, 0x0402DC80, 0x0402E480, 0x0402EC80, \
0x0402F480, 0x0402FC80, 0x04030480, 0x04030C80, \
0x04031480, 0x04031C80

.section .rodata

var_8092AB00: .word 0x3F19999A
var_8092AB04: .word 0x3DCCCCCD
var_8092AB08: .word 0x3DCCCCCD
var_8092AB0C: .word 0xC59C4000
var_8092AB10: .word 0x459C4000
var_8092AB14: .word 0x477FFF00
var_8092AB18: .word 0x45CB2000
var_8092AB1C: .word 0x461C4000
var_8092AB20: .word 0x3C23D70A
var_8092AB24: .word 0x3F4CCCCD
var_8092AB28: .word 0x46FFFE00
var_8092AB2C: .word 0x3DCCCCCD
var_8092AB30: .word 0x3AC49BA6, 0x00000000, 0x00000000, 0x00000000

