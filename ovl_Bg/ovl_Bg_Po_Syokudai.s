#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A53480:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s1, 0x0030($sp)            
    sw      s0, 0x002C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)           
    lui     a1, %hi(var_80A53D3C)      # a1 = 80A50000
    addiu   a1, a1, %lo(var_80A53D3C)  # a1 = 80A53D3C
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    lh      t9, 0x001C(s0)             # 0000001C
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    sra     t8, t6,  8                 
    andi    t0, t9, 0x003F             # t0 = 00000000
    sb      t8, 0x013C(s0)             # 0000013C
    sh      t0, 0x001C(s0)             # 0000001C
    sb      t1, 0x00AE(s0)             # 000000AE
    addiu   a2, s0, 0x0144             # a2 = 00000144
    sw      a2, 0x003C($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800665B0              
    addiu   a1, s1, 0x07A8             # a1 = 000007A8
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f16, 0x002C(s0)           # 0000002C
    trunc.w.s $f10, $f8                  
    sw      v0, 0x0140(s0)             # 00000140
    sw      $zero, 0x001C($sp)         
    trunc.w.s $f6, $f4                   
    mfc1    a2, $f10                   
    sw      $zero, 0x0018($sp)         
    trunc.w.s $f18, $f16                 
    mfc1    a1, $f6                    
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    mfc1    a3, $f18                   
    addiu   a2, a2, 0x0041             # a2 = 00000041
    sll     a2, a2, 16                 
    sll     a1, a1, 16                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sra     a1, a1, 16                 
    sra     a2, a2, 16                 
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0010($sp)         
    jal     func_80065C30              
    lw      a0, 0x003C($sp)            
    addiu   a1, s0, 0x0154             # a1 = 00000154
    sw      a1, 0x003C($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80A53CD0)      # a3 = 80A50000
    lw      a1, 0x003C($sp)            
    addiu   a3, a3, %lo(var_80A53CD0)  # a3 = 80A53CD0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f16, 0x002C(s0)           # 0000002C
    trunc.w.s $f6, $f4                   
    lbu     t1, 0x013C(s0)             # 0000013C
    or      a0, s1, $zero              # a0 = 00000000
    trunc.w.s $f10, $f8                  
    mfc1    t6, $f6                    
    trunc.w.s $f18, $f16                 
    mfc1    t8, $f10                   
    sh      t6, 0x019A(s0)             # 0000019A
    mfc1    t0, $f18                   
    sh      t8, 0x019C(s0)             # 0000019C
    bne     t1, $zero, lbl_80A53634    
    sh      t0, 0x019E(s0)             # 0000019E
    jal     func_8002049C              
    addiu   a1, $zero, 0x001F          # a1 = 0000001F
    beq     v0, $zero, lbl_80A53634    
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002049C              
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    beq     v0, $zero, lbl_80A53634    
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002049C              
    addiu   a1, $zero, 0x001D          # a1 = 0000001D
    beq     v0, $zero, lbl_80A53634    
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002049C              
    lh      a1, 0x001C(s0)             # 0000001C
    bne     v0, $zero, lbl_80A53634    
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    lui     $at, 0x4361                # $at = 43610000
    mtc1    $at, $f4                   # $f4 = 225.00
    lui     $at, %hi(var_80A53D40)     # $at = 80A50000
    lwc1    $f6, %lo(var_80A53D40)($at) 
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    swc1    $f4, 0x0010($sp)           
    swc1    $f6, 0x0014($sp)           
    lh      t2, 0x001C(s0)             # 0000001C
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0091          # a2 = 00000091
    lui     a3, 0x42EE                 # a3 = 42EE0000
    jal     func_80025110              # ActorSpawn
    sw      t2, 0x0024($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1               
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    beq     $zero, $zero, lbl_80A536E4 
    sb      t3, 0x0AE3($at)            # 00010AE3
lbl_80A53634:
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002049C              
    addiu   a1, $zero, 0x001C          # a1 = 0000001C
    bne     v0, $zero, lbl_80A536B0    
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002049C              
    addiu   a1, $zero, 0x001B          # a1 = 0000001B
    bne     v0, $zero, lbl_80A536B0    
    lui     $at, 0x4250                # $at = 42500000
    lwc1    $f8, 0x0028(s0)            # 00000028
    mtc1    $at, $f10                  # $f10 = 52.00
    lw      a3, 0x0024(s0)             # 00000024
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    add.s   $f16, $f8, $f10            
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0091          # a2 = 00000091
    swc1    $f16, 0x0010($sp)          
    lwc1    $f18, 0x002C(s0)           # 0000002C
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    swc1    $f18, 0x0014($sp)          
    lbu     t4, 0x013C(s0)             # 0000013C
    lh      t6, 0x001C(s0)             # 0000001C
    sll     t5, t4,  8                 
    addu    t7, t5, t6                 
    addiu   t8, t7, 0x1000             # t8 = 00001000
    jal     func_80025110              # ActorSpawn
    sw      t8, 0x0024($sp)            
    beq     $zero, $zero, lbl_80A536E4 
    nop
lbl_80A536B0:
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002049C              
    lh      a1, 0x001C(s0)             # 0000001C
    bne     v0, $zero, lbl_80A536E4    
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t9, t9, s1                 
    lbu     t9, 0x0AE3(t9)             # 00010AE3
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    bne     t9, $at, lbl_80A536E4      
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1               
    sb      t0, 0x0AE3($at)            # 00010AE3
lbl_80A536E4:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    nop
    mul.s   $f6, $f0, $f4              
    trunc.w.s $f8, $f6                   
    mfc1    t2, $f8                    
    nop
    sh      t2, 0x013E(s0)             # 0000013E
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x002C($sp)            
    lw      s1, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80A53720:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x07A8             # a1 = 000007A8
    lw      a2, 0x0140(t6)             # 00000140
    jal     func_80066610              
    sw      a3, 0x001C($sp)            
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x0154             # a1 = 00000154
    lw      a3, 0x001C($sp)            
    lui     t7, 0x0001                 # t7 = 00010000
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    addu    t7, t7, a3                 
    lbu     t7, 0x0AE3(t7)             # 00010AE3
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    beq     t7, $at, lbl_80A53780      
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a3               
    sb      t8, 0x0AE3($at)            # 00010AE3
lbl_80A53780:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A53790:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a3, a1, $zero              # a3 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a3, $at                
    addiu   a2, s0, 0x0154             # a2 = 00000154
    sw      a2, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    sw      a3, 0x0034($sp)            
    lw      a1, 0x0024($sp)            
    lw      a2, 0x0020($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a0, 0x0034($sp)            
    lw      a0, 0x0034($sp)            
    jal     func_8002049C              
    lh      a1, 0x001C(s0)             # 0000001C
    beq     v0, $zero, lbl_80A537F4    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002313C              
    addiu   a1, $zero, 0x2031          # a1 = 00002031
lbl_80A537F4:
    lh      t6, 0x013E(s0)             # 0000013E
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x013E(s0)             # 0000013E
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80A53810:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s3, 0x0040($sp)            
    sw      s2, 0x003C($sp)            
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s1, 0x0038($sp)            
    sw      s0, 0x0034($sp)            
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_8007E298              
    or      s1, a0, $zero              # s1 = 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x0058($sp)            
    lw      a2, 0x0058($sp)            
    lui     t9, 0xDE00                 # t9 = DE000000
    or      a0, s2, $zero              # a0 = 00000000
    sw      v0, 0x0004(a2)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t2, 0x0600                 # t2 = 06000000
    addiu   t2, t2, 0x03A0             # t2 = 060003A0
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t2, 0x0004(s0)             # 00000004
    sw      t9, 0x0000(s0)             # 00000000
    jal     func_8002049C              
    lh      a1, 0x001C(s3)             # 0000001C
    beq     v0, $zero, lbl_80A53CA8    
    lui     t3, %hi(var_80A53CFC)      # t3 = 80A50000
    lbu     v0, 0x013C(s3)             # 0000013C
    lui     t4, %hi(var_80A53D0C)      # t4 = 80A50000
    addiu   t4, t4, %lo(var_80A53D0C)  # t4 = 80A53D0C
    sll     v0, v0,  2                 
    addiu   t3, t3, %lo(var_80A53CFC)  # t3 = 80A53CFC
    addu    t5, v0, t4                 
    addu    s0, v0, t3                 
    jal     func_800CDCCC              # Rand.Next() float
    sw      t5, 0x004C($sp)            
    lui     $at, %hi(var_80A53D44)     # $at = 80A50000
    lwc1    $f4, %lo(var_80A53D44)($at) 
    lbu     t6, 0x0000(s0)             # 00000000
    lui     $at, %hi(var_80A53D48)     # $at = 80A50000
    mul.s   $f6, $f0, $f4              
    lwc1    $f8, %lo(var_80A53D48)($at) 
    mtc1    t6, $f10                   # $f10 = 0.00
    addiu   a0, s3, 0x0144             # a0 = 00000144
    addiu   t4, $zero, 0x00C8          # t4 = 000000C8
    cvt.s.w $f16, $f10                 
    bgez    t6, lbl_80A53900           
    add.s   $f2, $f6, $f8              
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f16, $f16, $f18           
lbl_80A53900:
    mul.s   $f4, $f16, $f2             
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cfc1    t7, $f31                   
    ctc1    a1, $f31                   
    nop
    cvt.w.s $f6, $f4                   
    cfc1    a1, $f31                   
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    beq     a1, $zero, lbl_80A53970    
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sub.s   $f6, $f4, $f6              
    ctc1    a1, $f31                   
    nop
    cvt.w.s $f6, $f6                   
    cfc1    a1, $f31                   
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    bne     a1, $zero, lbl_80A53968    
    nop
    mfc1    a1, $f6                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A53980 
    or      a1, a1, $at                # a1 = 80000000
lbl_80A53968:
    beq     $zero, $zero, lbl_80A53980 
    addiu   a1, $zero, 0xFFFF          # a1 = FFFFFFFF
lbl_80A53970:
    mfc1    a1, $f6                    
    nop
    bltz    a1, lbl_80A53968           
    nop
lbl_80A53980:
    lbu     t8, 0x0001(s0)             # 00000001
    ctc1    t7, $f31                   
    andi    a1, a1, 0x00FF             # a1 = 000000FF
    mtc1    t8, $f8                    # $f8 = 0.00
    bgez    t8, lbl_80A539A8           
    cvt.s.w $f10, $f8                  
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f10, $f10, $f18           
lbl_80A539A8:
    mul.s   $f16, $f10, $f2            
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    cfc1    t9, $f31                   
    ctc1    a2, $f31                   
    nop
    cvt.w.s $f4, $f16                  
    cfc1    a2, $f31                   
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    beq     a2, $zero, lbl_80A53A18    
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sub.s   $f4, $f16, $f4             
    ctc1    a2, $f31                   
    nop
    cvt.w.s $f4, $f4                   
    cfc1    a2, $f31                   
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    bne     a2, $zero, lbl_80A53A10    
    nop
    mfc1    a2, $f4                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A53A28 
    or      a2, a2, $at                # a2 = 80000000
lbl_80A53A10:
    beq     $zero, $zero, lbl_80A53A28 
    addiu   a2, $zero, 0xFFFF          # a2 = FFFFFFFF
lbl_80A53A18:
    mfc1    a2, $f4                    
    nop
    bltz    a2, lbl_80A53A10           
    nop
lbl_80A53A28:
    lbu     t2, 0x0002(s0)             # 00000002
    ctc1    t9, $f31                   
    andi    a2, a2, 0x00FF             # a2 = 000000FF
    mtc1    t2, $f6                    # $f6 = 0.00
    bgez    t2, lbl_80A53A50           
    cvt.s.w $f8, $f6                   
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f8, $f8, $f18             
lbl_80A53A50:
    mul.s   $f10, $f8, $f2             
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    cfc1    t3, $f31                   
    ctc1    a3, $f31                   
    nop
    cvt.w.s $f16, $f10                 
    cfc1    a3, $f31                   
    nop
    andi    a3, a3, 0x0078             # a3 = 00000000
    beq     a3, $zero, lbl_80A53AC0    
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sub.s   $f16, $f10, $f16           
    ctc1    a3, $f31                   
    nop
    cvt.w.s $f16, $f16                 
    cfc1    a3, $f31                   
    nop
    andi    a3, a3, 0x0078             # a3 = 00000000
    bne     a3, $zero, lbl_80A53AB8    
    nop
    mfc1    a3, $f16                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A53AD0 
    or      a3, a3, $at                # a3 = 80000000
lbl_80A53AB8:
    beq     $zero, $zero, lbl_80A53AD0 
    addiu   a3, $zero, 0xFFFF          # a3 = FFFFFFFF
lbl_80A53AC0:
    mfc1    a3, $f16                   
    nop
    bltz    a3, lbl_80A53AB8           
    nop
lbl_80A53AD0:
    ctc1    t3, $f31                   
    andi    a3, a3, 0x00FF             # a3 = 000000FF
    jal     func_80065C98              
    sw      t4, 0x0010($sp)            
    jal     func_8007E2C0              
    lw      a0, 0x0000(s2)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    sw      $zero, 0x001C($sp)         
    lh      t2, 0x013E(s3)             # 0000013E
    addiu   t6, $zero, 0x0080          # t6 = 00000080
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    subu    $at, $zero, t2             
    sll     t3, $at,  2                
    addu    t3, t3, $at                
    sll     t3, t3,  2                 
    andi    t4, t3, 0x01FF             # t4 = 00000000
    sw      t4, 0x0020($sp)            
    sw      t5, 0x0024($sp)            
    sw      t6, 0x0028($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84              
    sw      v1, 0x0048($sp)            
    lw      t0, 0x0048($sp)            
    lw      t1, 0x004C($sp)            
    mtc1    $zero, $f12                # $f12 = 0.00
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    ori     t8, t8, 0x8080             # t8 = FA008080
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lbu     t2, 0x0000(s0)             # 00000000
    lbu     t5, 0x0001(s0)             # 00000001
    lbu     t9, 0x0002(s0)             # 00000002
    sll     t3, t2, 24                 
    sll     t6, t5, 16                 
    or      t7, t3, t6                 # t7 = 00000000
    sll     t2, t9,  8                 
    or      t4, t7, t2                 # t4 = 00000000
    ori     t5, t4, 0x00FF             # t5 = 000000FF
    sw      t5, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t6, 0xFB00                 # t6 = FB000000
    lui     $at, 0x4250                # $at = 42500000
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lbu     t9, 0x0000(t1)             # 00000000
    lbu     t4, 0x0001(t1)             # 00000001
    lbu     t8, 0x0002(t1)             # 00000002
    sll     t7, t9, 24                 
    sll     t5, t4, 16                 
    or      t3, t7, t5                 # t3 = 000000FF
    sll     t9, t8,  8                 
    or      t2, t3, t9                 # t2 = 000000FF
    ori     t4, t2, 0x00FF             # t4 = 000000FF
    sw      t4, 0x0004(v1)             # 00000004
    mtc1    $at, $f14                  # $f14 = 52.00
    mfc1    a2, $f12                   
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t7, 0x07A0(s2)             # 000007A0
    sll     t5, t7,  2                 
    addu    t6, s2, t5                 
    jal     func_8004977C              
    lw      a0, 0x0790(t6)             # 00000790
    lh      t8, 0x00B6(s3)             # 000000B6
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    subu    t3, v0, t8                 
    addu    t9, t3, $at                
    sll     t2, t9, 16                 
    sra     t4, t2, 16                 
    mtc1    t4, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80A53D4C)     # $at = 80A50000
    lwc1    $f18, %lo(var_80A53D4C)($at) 
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f18            
    jal     func_800AAB94              
    nop
    lui     $at, %hi(var_80A53D50)     # $at = 80A50000
    lwc1    $f12, %lo(var_80A53D50)($at) 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0000(s0)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s2)             # 00000000
    sw      v0, 0x0004(s0)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t3, 0x0405                 # t3 = 04050000
    addiu   t3, t3, 0x2A10             # t3 = 04052A10
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      t8, 0x0000(v1)             # 00000000
    sw      t3, 0x0004(v1)             # 00000004
lbl_80A53CA8:
    lw      $ra, 0x0044($sp)           
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    lw      s2, 0x003C($sp)            
    lw      s3, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0070           # $sp = 00000000
    nop
    nop
    nop

.section .data

var_80A53CD0: .word \
0x09000D39, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x000C003C, 0x00000000, 0x00000000
var_80A53CFC: .word 0xFFAAFFFF, 0xFFC800FF, 0x00AAFFFF, 0xAAFF00FF
var_80A53D0C: .word 0x6400FFFF, 0xFF0000FF, 0x0000FFFF, 0x009600FF
var_80A53D1C: .word 0x01050600, 0x00000000, 0x00A40000, 0x000001A0
.word func_80A53480
.word func_80A53720
.word func_80A53790
.word func_80A53810
var_80A53D3C: .word 0x485003E8

.section .rodata

var_80A53D40: .word 0xC4C3C000
var_80A53D44: .word 0x3E99999A
var_80A53D48: .word 0x3F333333
var_80A53D4C: .word 0x38C90FDB
var_80A53D50: .word 0x3B30F27C, 0x00000000, 0x00000000, 0x00000000

