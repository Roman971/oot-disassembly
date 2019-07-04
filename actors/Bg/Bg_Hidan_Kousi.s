.section .text
func_8091CF70:
    sw      a1, 0x0154(a0)             # 00000154
    jr      $ra                        
    nop


func_8091CF7C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    sw      $zero, 0x0024($sp)         
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    lui     a1, 0x4248                 # a1 = 42480000
    lui     a1, %hi(var_8091D3FC)      # a1 = 80920000
    addiu   a1, a1, %lo(var_8091D3FC)  # a1 = 8091D3FC
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    lui     a0, %hi(var_8091D400)      # a0 = 80920000
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    andi    t7, t6, 0x00FF             # t7 = 00000000
    sll     t8, t7,  2                 
    addu    a0, a0, t8                 
    jal     func_80033EF4              
    lw      a0, %lo(var_8091D400)(a0)  
    lw      a0, 0x0034($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lh      t9, 0x001C(s0)             # 0000001C
    lui     t2, %hi(var_8091D40C)      # t2 = 80920000
    sw      v0, 0x013C(s0)             # 0000013C
    andi    t0, t9, 0x00FF             # t0 = 00000000
    sll     t1, t0,  1                 
    addu    t2, t2, t1                 
    lh      t2, %lo(var_8091D40C)(t2)  
    lh      t3, 0x00B6(s0)             # 000000B6
    lh      a1, 0x001C(s0)             # 0000001C
    addu    t4, t2, t3                 
    sh      t4, 0x0032(s0)             # 00000032
    sra     a1, a1,  8                 
    andi    a1, a1, 0x00FF             # a1 = 00000000
    jal     func_8002049C              
    lw      a0, 0x0034($sp)            
    beq     v0, $zero, lbl_8091D054    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8091D0A8              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_8091D304)     # a1 = 80920000
    addiu   a1, a1, %lo(func_8091D304) # a1 = 8091D304
    jal     func_8091CF70              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8091D064 
    lw      $ra, 0x001C($sp)           
lbl_8091D054:
    lui     a1, %hi(func_8091D134)     # a1 = 80920000
    jal     func_8091CF70              
    addiu   a1, a1, %lo(func_8091D134) # a1 = 8091D134
    lw      $ra, 0x001C($sp)           
lbl_8091D064:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8091D074:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8091D0A8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              # a1 = 00000000
    lh      a0, 0x0032(a1)             # 00000032
    jal     func_800636C4              # sins?
    sw      a1, 0x0028($sp)            
    lw      a1, 0x0028($sp)            
    lui     $at, %hi(var_8091D3D0)     # $at = 80920000
    lh      t6, 0x001C(a1)             # 0000001C
    andi    t7, t6, 0x00FF             # t7 = 00000000
    sll     t8, t7,  2                 
    addu    $at, $at, t8               
    lwc1    $f4, %lo(var_8091D3D0)($at) 
    mul.s   $f6, $f0, $f4              
    swc1    $f6, 0x0018($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x0032(a1)             # 00000032
    lw      a1, 0x0028($sp)            
    lui     $at, %hi(var_8091D3D0)     # $at = 80920000
    lwc1    $f16, 0x0018($sp)          
    lh      t9, 0x001C(a1)             # 0000001C
    lwc1    $f10, 0x0008(a1)           # 00000008
    lwc1    $f4, 0x0010(a1)            # 00000010
    andi    t0, t9, 0x00FF             # t0 = 00000000
    sll     t1, t0,  2                 
    addu    $at, $at, t1               
    lwc1    $f8, %lo(var_8091D3D0)($at) 
    add.s   $f18, $f10, $f16           
    mul.s   $f2, $f0, $f8              
    swc1    $f18, 0x0024(a1)           # 00000024
    add.s   $f6, $f4, $f2              
    swc1    $f6, 0x002C(a1)            # 0000002C
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_8091D134:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      t6, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    lh      a1, 0x001C(t6)             # 0000001C
    sra     a1, a1,  8                 
    jal     func_8002049C              
    andi    a1, a1, 0x00FF             # a1 = 00000000
    beq     v0, $zero, lbl_8091D188    
    lw      a0, 0x0018($sp)            
    lui     a1, %hi(func_8091D198)     # a1 = 80920000
    jal     func_8091CF70              
    addiu   a1, a1, %lo(func_8091D198) # a1 = 8091D198
    lw      a0, 0x001C($sp)            
    jal     func_8006BA10              
    lw      a1, 0x0018($sp)            
    lw      t8, 0x0018($sp)            
    addiu   t7, $zero, 0x00C8          # t7 = 000000C8
    sh      t7, 0x0158(t8)             # 00000158
lbl_8091D188:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8091D198:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      t6, 0x0158(a0)             # 00000158
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0158(a0)             # 00000158
    jal     func_80049DA4              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     a1, %hi(func_8091D1F0)     # a1 = 80920000
    lbu     t8, 0x0002(a0)             # 00000002
    beq     v0, t8, lbl_8091D1D8       
    nop
    lh      t9, 0x0158(a0)             # 00000158
    bgtzl   t9, lbl_8091D1E4           
    lw      $ra, 0x0014($sp)           
lbl_8091D1D8:
    jal     func_8091CF70              
    addiu   a1, a1, %lo(func_8091D1F0) # a1 = 8091D1F0
    lw      $ra, 0x0014($sp)           
lbl_8091D1E4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8091D1F0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f0                   # $f0 = 2.00
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     $at, %hi(var_8091D420)     # $at = 80920000
    lwc1    $f6, %lo(var_8091D420)($at) 
    lwc1    $f4, 0x0068(a0)            # 00000068
    lui     a1, %hi(func_8091D268)     # a1 = 80920000
    addiu   a1, a1, %lo(func_8091D268) # a1 = 8091D268
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0068(a0)            # 00000068
    lwc1    $f10, 0x0068(a0)           # 00000068
    c.lt.s  $f0, $f10                  
    nop
    bc1f    lbl_8091D244               
    nop
    swc1    $f0, 0x0068(a0)            # 00000068
    jal     func_8091CF70              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
lbl_8091D244:
    jal     func_8002121C              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8002313C              
    addiu   a1, $zero, 0x2036          # a1 = 00002036
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8091D268:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_80021124              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a0, s0, 0x0008             # a0 = 00000008
    jal     func_80063E18              
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lh      t6, 0x001C(s0)             # 0000001C
    lui     $at, %hi(var_8091D3D0)     # $at = 80920000
    or      a0, s0, $zero              # a0 = 00000000
    andi    t7, t6, 0x00FF             # t7 = 00000000
    sll     t8, t7,  2                 
    addu    $at, $at, t8               
    lwc1    $f4, %lo(var_8091D3D0)($at) 
    c.lt.s  $f4, $f0                   
    nop
    bc1f    lbl_8091D2E8               
    nop
    jal     func_8091D0A8              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_8091D304)     # a1 = 80920000
    addiu   a1, a1, %lo(func_8091D304) # a1 = 8091D304
    jal     func_8091CF70              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2837          # a1 = 00002837
    beq     $zero, $zero, lbl_8091D2F4 
    lw      $ra, 0x001C($sp)           
lbl_8091D2E8:
    jal     func_8002313C              
    addiu   a1, $zero, 0x2036          # a1 = 00002036
    lw      $ra, 0x001C($sp)           
lbl_8091D2F4:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8091D304:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_8091D314:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8091D338:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298              
    sw      a0, 0x0024($sp)            
    lw      a2, 0x0024($sp)            
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x002C($sp)            
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x001C($sp)            
    lw      a1, 0x001C($sp)            
    lw      a2, 0x0024($sp)            
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t1, 0xDE00                 # t1 = DE000000
    lui     t6, %hi(var_8091D414)      # t6 = 80920000
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(a2)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t2, 0x0028($sp)            
    lh      t3, 0x001C(t2)             # 0000001C
    andi    t4, t3, 0x00FF             # t4 = 00000000
    sll     t5, t4,  2                 
    addu    t6, t6, t5                 
    lw      t6, %lo(var_8091D414)(t6)  
    sw      t6, 0x0004(v1)             # 00000004
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000

.section .data

var_8091D3D0: .word 0x42F00000, 0x43160000, 0x43160000
var_8091D3DC: .word 0x006F0600, 0x00000010, 0x002C0000, 0x0000015C
.word func_8091CF7C
.word func_8091D074
.word func_8091D314
.word func_8091D338
var_8091D3FC: .word 0x48500064
var_8091D400: .word 0x0600E2CC, 0x0600E380, 0x0600E430
var_8091D40C: .word 0x4000C000, 0xC0000000
var_8091D414: .word 0x0600C798, 0x0600BFA8, 0x0600BB58

.section .rodata

var_8091D420: .word 0x3E4CCCCD, 0x00000000, 0x00000000, 0x00000000

