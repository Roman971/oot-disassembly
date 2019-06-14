#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B54A70:
    addiu   $sp, $sp, 0xFF20           # $sp = FFFFFF20
    sw      s8, 0x0098($sp)            
    sw      s2, 0x0080($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    or      s8, a1, $zero              # s8 = 00000000
    sw      $ra, 0x009C($sp)           
    sw      s7, 0x0094($sp)            
    sw      s6, 0x0090($sp)            
    sw      s5, 0x008C($sp)            
    sw      s4, 0x0088($sp)            
    sw      s3, 0x0084($sp)            
    sw      s1, 0x007C($sp)            
    sw      s0, 0x0078($sp)            
    sdc1    $f30, 0x0070($sp)          
    sdc1    $f28, 0x0068($sp)          
    sdc1    $f26, 0x0060($sp)          
    sdc1    $f24, 0x0058($sp)          
    sdc1    $f22, 0x0050($sp)          
    sdc1    $f20, 0x0048($sp)          
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s2)             # 000000B6
    mov.s   $f22, $f0                  
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s2)             # 000000B6
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f30                  # $f30 = 20.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f28                  # $f28 = 140.00
    lui     $at, 0x3F00                # $at = 3F000000
    lui     s6, 0x0501                 # s6 = 05010000
    mtc1    $at, $f26                  # $f26 = 0.50
    mov.s   $f24, $f0                  
    addiu   s6, s6, 0xA880             # s6 = 0500A880
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s7, $zero, 0x0014          # s7 = 00000014
    addiu   s5, $sp, 0x00BC            # s5 = FFFFFFDC
    addiu   s4, $sp, 0x00C8            # s4 = FFFFFFE8
    swc1    $f2, 0x00C4($sp)           
    swc1    $f2, 0x00BC($sp)           
lbl_80B54B10:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f4, $f0, $f26             
    mul.s   $f20, $f4, $f28            
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f6, $f0, $f26             
    lwc1    $f8, 0x0024(s2)            # 00000024
    lui     $at, 0x41F0                # $at = 41F00000
    mul.s   $f2, $f6, $f30             
    nop
    mul.s   $f10, $f2, $f22            
    add.s   $f16, $f8, $f10            
    mul.s   $f18, $f20, $f24           
    mtc1    $at, $f8                   # $f8 = 30.00
    lui     $at, 0x40D0                # $at = 40D00000
    add.s   $f4, $f16, $f18            
    mtc1    s1, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f4, 0x00C8($sp)           
    lwc1    $f6, 0x0028(s2)            # 00000028
    mtc1    $at, $f4                   # $f4 = 6.50
    add.s   $f10, $f6, $f8             
    mul.s   $f6, $f18, $f4             
    add.s   $f8, $f10, $f6             
    mul.s   $f18, $f2, $f24            
    swc1    $f8, 0x00CC($sp)           
    mul.s   $f10, $f20, $f22           
    lwc1    $f16, 0x002C(s2)           # 0000002C
    add.s   $f4, $f16, $f18            
    sub.s   $f6, $f4, $f10             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x00D0($sp)           
    lui     $at, %hi(var_80B550F0)     # $at = 80B50000
    lwc1    $f8, %lo(var_80B550F0)($at) 
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f18                  # $f18 = 12.00
    sub.s   $f16, $f0, $f8             
    mul.s   $f4, $f16, $f18            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x00C0($sp)           
    lui     $at, 0x425C                # $at = 425C0000
    mtc1    $at, $f10                  # $f10 = 55.00
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f8                   # $f8 = 8.00
    mul.s   $f6, $f0, $f10             
    add.s   $f16, $f6, $f8             
    trunc.w.s $f18, $f16                 
    mfc1    v0, $f18                   
    nop
    sll     v1, v0, 16                 
    sra     v1, v1, 16                 
    slti    $at, v1, 0x0014            
    sll     s3, v0, 16                 
    beq     $at, $zero, lbl_80B54BFC   
    sra     s3, s3, 16                 
    beq     $zero, $zero, lbl_80B54C10 
    addiu   s0, $zero, 0xFED4          # s0 = FFFFFED4
lbl_80B54BFC:
    slti    $at, v1, 0x0023            
    beq     $at, $zero, lbl_80B54C10   
    addiu   s0, $zero, 0xFE5C          # s0 = FFFFFE5C
    beq     $zero, $zero, lbl_80B54C10 
    addiu   s0, $zero, 0xFE98          # s0 = FFFFFE98
lbl_80B54C10:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80B550F4)     # $at = 80B50000
    lwc1    $f4, %lo(var_80B550F4)($at) 
    or      a0, s8, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFE8
    c.lt.s  $f0, $f4                   
    or      a2, s5, $zero              # a2 = FFFFFFDC
    or      a3, s4, $zero              # a3 = FFFFFFE8
    addiu   t7, $zero, 0x001E          # t7 = 0000001E
    bc1f    lbl_80B54C48               
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    beq     $zero, $zero, lbl_80B54C4C 
    addiu   v0, $zero, 0x0041          # v0 = 00000041
lbl_80B54C48:
    addiu   v0, $zero, 0x0021          # v0 = 00000021
lbl_80B54C4C:
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    addiu   t1, $zero, 0x0050          # t1 = 00000050
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    sw      t3, 0x0038($sp)            
    sw      t2, 0x0034($sp)            
    sw      t1, 0x0030($sp)            
    sw      t0, 0x002C($sp)            
    sw      t9, 0x0028($sp)            
    sw      s0, 0x0010($sp)            
    sw      v0, 0x0014($sp)            
    sw      t7, 0x0018($sp)            
    sw      t8, 0x001C($sp)            
    sw      $zero, 0x0020($sp)         
    sw      s3, 0x0024($sp)            
    jal     func_8001D998              
    sw      s6, 0x003C($sp)            
    addiu   s1, s1, 0x0001             # s1 = 00000001
    bne     s1, s7, lbl_80B54B10       
    nop
    or      a0, s4, $zero              # a0 = FFFFFFE8
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, s2, 0x0024             # a1 = 00000024
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f20                  # $f20 = 60.00
    addiu   t4, $zero, 0x006E          # t4 = 0000006E
    addiu   t5, $zero, 0x00A0          # t5 = 000000A0
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    mfc1    a2, $f20                   
    sw      t6, 0x0018($sp)            
    sw      t5, 0x0014($sp)            
    sw      t4, 0x0010($sp)            
    or      a0, s8, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFE8
    jal     func_80026308              
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f22                  # $f22 = 40.00
    lwc1    $f10, 0x00CC($sp)          
    mfc1    a2, $f20                   
    addiu   t7, $zero, 0x0078          # t7 = 00000078
    add.s   $f6, $f10, $f22            
    addiu   t8, $zero, 0x00A0          # t8 = 000000A0
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0018($sp)            
    swc1    $f6, 0x00CC($sp)           
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    or      a0, s8, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFE8
    jal     func_80026308              
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    lwc1    $f8, 0x00CC($sp)           
    mfc1    a2, $f20                   
    addiu   t0, $zero, 0x006E          # t0 = 0000006E
    add.s   $f16, $f8, $f22            
    addiu   t1, $zero, 0x00A0          # t1 = 000000A0
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x0018($sp)            
    swc1    $f16, 0x00CC($sp)          
    sw      t1, 0x0014($sp)            
    sw      t0, 0x0010($sp)            
    or      a0, s8, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFE8
    jal     func_80026308              
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    lw      $ra, 0x009C($sp)           
    ldc1    $f20, 0x0048($sp)          
    ldc1    $f22, 0x0050($sp)          
    ldc1    $f24, 0x0058($sp)          
    ldc1    $f26, 0x0060($sp)          
    ldc1    $f28, 0x0068($sp)          
    ldc1    $f30, 0x0070($sp)          
    lw      s0, 0x0078($sp)            
    lw      s1, 0x007C($sp)            
    lw      s2, 0x0080($sp)            
    lw      s3, 0x0084($sp)            
    lw      s4, 0x0088($sp)            
    lw      s5, 0x008C($sp)            
    lw      s6, 0x0090($sp)            
    lw      s7, 0x0094($sp)            
    lw      s8, 0x0098($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00E0           # $sp = 00000000


func_80B54DA0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    sw      $zero, 0x0024($sp)         
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           # a1 = 00000000
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0034($sp)            
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80B54DEC    
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B54E24 
    lw      $ra, 0x001C($sp)           
lbl_80B54DEC:
    addiu   a0, a0, 0x0A38             # a0 = 00000A38
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      a0, 0x0034($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lui     a1, %hi(var_80B550E0)      # a1 = 80B50000
    sw      v0, 0x013C(s0)             # 0000013C
    addiu   a1, a1, %lo(var_80B550E0)  # a1 = 80B550E0
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80B54E24:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80B54E34:
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


func_80B54E68:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     $at, %hi(var_80B550F8)     # $at = 80B50000
    lwc1    $f6, %lo(var_80B550F8)($at) 
    lwc1    $f4, 0x0090(s0)            # 00000090
    lw      a0, 0x0024($sp)            
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80B54EEC               
    lw      $ra, 0x001C($sp)           
    jal     func_8002650C              
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80B54EE8    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B54A70              
    lw      a1, 0x0024($sp)            
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)            
    jal     func_800204D0              
    andi    a1, a1, 0x003F             # a1 = 00000000
    lw      a0, 0x0024($sp)            
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8              
    addiu   a3, $zero, 0x2810          # a3 = 00002810
    jal     func_800646F0              
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B54EE8:
    lw      $ra, 0x001C($sp)           
lbl_80B54EEC:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B54EFC:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0018($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0050($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addu    v1, s0, $at                
    lw      a0, 0x1DE4(v1)             # 00001DE4
    sw      v1, 0x0020($sp)            
    addu    $at, a0, $zero             
    sll     a0, a0,  2                 
    subu    a0, a0, $at                
    sll     a0, a0,  4                 
    subu    a0, a0, $at                
    sll     a0, a0,  3                 
    subu    a0, a0, $at                
    sll     a0, a0,  2                 
    jal     func_800D2FA0              
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    lw      v1, 0x0020($sp)            
    sra     t6, v0,  8                 
    sb      t6, 0x004B($sp)            
    lw      a0, 0x1DE4(v1)             # 00001DE4
    addu    $at, a0, $zero             
    sll     a0, a0,  2                 
    subu    a0, a0, $at                
    sll     a0, a0,  4                 
    subu    a0, a0, $at                
    sll     a0, a0,  3                 
    subu    a0, a0, $at                
    sll     a0, a0,  2                 
    jal     func_800D2FA0              
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    sra     a3, v0,  8                 
    sll     a3, a3, 24                 
    sra     a3, a3, 24                 
    lw      a0, 0x0000(s0)             # 00000000
    sb      a3, 0x004A($sp)            
    jal     func_8007E298              
    sw      a0, 0x0044($sp)            
    lw      a1, 0x0044($sp)            
    lw      v1, 0x02C0(a1)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a1)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s0)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x003C($sp)            
    lw      t0, 0x003C($sp)            
    lw      a1, 0x0044($sp)            
    lb      a3, 0x004A($sp)            
    lb      t1, 0x004B($sp)            
    sw      v0, 0x0004(t0)             # 00000004
    sra     t1, t1,  1                 
    sra     a3, a3,  1                 
    addiu   t1, t1, 0x00C0             # t1 = 000000C0
    addiu   a3, a3, 0x00C0             # a3 = 000000C0
    sll     t1, t1, 24                 
    sll     a3, a3, 24                 
    sra     t1, t1, 24                 
    sra     a3, a3, 24                 
    lw      v1, 0x02C0(a1)             # 000002C0
    andi    t5, a3, 0x00FF             # t5 = 000000C0
    sll     t6, t5, 16                 
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a1)             # 000002C0
    sll     t4, t1, 24                 
    or      t8, t4, t6                 # t8 = 00000000
    ori     t9, t8, 0xFF80             # t9 = 0000FF80
    lui     t2, 0xFB00                 # t2 = FB000000
    sw      t2, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a1)             # 000002C0
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x08A0             # t5 = 060008A0
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(a1)             # 000002C0
    lui     t3, 0xDE00                 # t3 = DE000000
    sw      t3, 0x0000(v1)             # 00000000
    sw      t5, 0x0004(v1)             # 00000004
    lw      a0, 0x0000(s0)             # 00000000
    jal     func_8007E2C0              
    sw      a0, 0x0030($sp)            
    lw      a1, 0x0030($sp)            
    lw      v1, 0x02D0(a1)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(a1)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s0)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0028($sp)            
    lw      a2, 0x0028($sp)            
    lw      a1, 0x0030($sp)            
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02D0(a1)             # 000002D0
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x0960             # t9 = 06000960
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(a1)             # 000002D0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_80B550C0: .word 0x01A90100, 0x00000000, 0x00B10000, 0x00000154
.word func_80B54DA0
.word func_80B54E34
.word func_80B54E68
.word func_80B54EFC
var_80B550E0: .word 0xC8500064, 0xB0F40BB8, 0xB0F801F4, 0x30FC03E8

.section .rodata

var_80B550F0: .word 0x3E4CCCCD
var_80B550F4: .word 0x3ECCCCCD
var_80B550F8: .word 0x44228000, 0x00000000

