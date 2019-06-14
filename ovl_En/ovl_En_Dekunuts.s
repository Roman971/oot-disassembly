#include <mips.h>
.set noreorder
.set noat

.section .text
func_80909800:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s1, 0x0038($sp)            
    sw      s0, 0x0034($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)           
    lui     a1, %hi(var_8090AE64)      # a1 = 80910000
    addiu   a1, a1, %lo(var_8090AE64)  # a1 = 8090AE64
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    bne     t6, $at, lbl_80909850      
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lw      t7, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFA         # $at = FFFFFFFA
    and     t8, t7, $at                
    beq     $zero, $zero, lbl_80909958 
    sw      t8, 0x0004(s0)             # 00000004
lbl_80909850:
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    jal     func_8001EC20              
    lui     a3, 0x420C                 # a3 = 420C0000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t9, s0, 0x018C             # t9 = 0000018C
    addiu   t0, s0, 0x0222             # t0 = 00000222
    addiu   t1, $zero, 0x0019          # t1 = 00000019
    sw      t1, 0x0018($sp)            
    sw      t0, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    addiu   a3, a3, 0x0E6C             # a3 = 06000E6C
    addiu   a2, a2, 0x3268             # a2 = 06003268
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C684              
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    addiu   a1, s0, 0x02B8             # a1 = 000002B8
    sw      a1, 0x0044($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_8090AE10)      # a3 = 80910000
    lw      a1, 0x0044($sp)            
    addiu   a3, a3, %lo(var_8090AE10)  # a3 = 8090AE10
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lui     a1, %hi(var_8090AE44)      # a1 = 80910000
    lui     a2, %hi(var_8090AE3C)      # a2 = 80910000
    addiu   a2, a2, %lo(var_8090AE3C)  # a2 = 8090AE3C
    addiu   a1, a1, %lo(var_8090AE44)  # a1 = 8090AE44
    jal     func_80050344              
    addiu   a0, s0, 0x0098             # a0 = 00000098
    lh      t2, 0x001C(s0)             # 0000001C
    lh      t5, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    sra     t3, t2,  8                 
    andi    t4, t3, 0x00FF             # t4 = 00000000
    sh      t4, 0x018A(s0)             # 0000018A
    lh      v0, 0x018A(s0)             # 0000018A
    andi    t6, t5, 0x00FF             # t6 = 00000000
    sh      t6, 0x001C(s0)             # 0000001C
    beq     v0, $at, lbl_80909908      
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    bne     v0, $zero, lbl_8090990C    
    nop
lbl_80909908:
    sh      t7, 0x018A(s0)             # 0000018A
lbl_8090990C:
    jal     func_809099A8              
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f4, 0x0024(s0)            # 00000024
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    swc1    $f4, 0x0010($sp)           
    lwc1    $f6, 0x0028(s0)            # 00000028
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    swc1    $f6, 0x0014($sp)           
    lwc1    $f8, 0x002C(s0)            # 0000002C
    sw      $zero, 0x001C($sp)         
    addiu   a3, $zero, 0x0060          # a3 = 00000060
    swc1    $f8, 0x0018($sp)           
    lh      t8, 0x0032(s0)             # 00000032
    sw      t9, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    jal     func_800253F0              
    sw      t8, 0x0020($sp)            
lbl_80909958:
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_8090996C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      t6, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    or      a0, a3, $zero              # a0 = 00000000
    beql    t6, $at, lbl_8090999C      
    lw      $ra, 0x0014($sp)           
    jal     func_8004ABCC              
    addiu   a1, a2, 0x02B8             # a1 = 000002B8
    lw      $ra, 0x0014($sp)           
lbl_8090999C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809099A8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0D1C             # a1 = 06000D1C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D278              
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    addiu   a0, $zero, 0x0064          # a0 = 00000064
    jal     func_80063BF0              
    addiu   a1, $zero, 0x0032          # a1 = 00000032
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sh      v0, 0x0186(s0)             # 00000186
    sh      t6, 0x02FA(s0)             # 000002FA
    addiu   a0, s0, 0x0024             # a0 = 00000024
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, s0, 0x0008             # a1 = 00000008
    lbu     t7, 0x02C9(s0)             # 000002C9
    lui     t9, %hi(func_80909E40)     # t9 = 80910000
    addiu   t9, t9, %lo(func_80909E40) # t9 = 80909E40
    andi    t8, t7, 0xFFFE             # t8 = 00000000
    sb      t8, 0x02C9(s0)             # 000002C9
    sw      t9, 0x0180(s0)             # 00000180
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80909A1C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0AF0             # a1 = 06000AF0
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D2D4              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lui     t7, %hi(func_8090A0A4)     # t7 = 80910000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, t7, %lo(func_8090A0A4) # t7 = 8090A0A4
    sh      t6, 0x0186(a2)             # 00000186
    sw      t7, 0x0180(a2)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80909A64:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x01C4             # a1 = 060001C4
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D1C4              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lui     t7, %hi(func_8090A214)     # t7 = 80910000
    addiu   t7, t7, %lo(func_8090A214) # t7 = 8090A214
    lh      t6, 0x018A(a2)             # 0000018A
    sw      t7, 0x0180(a2)             # 00000180
    sh      t6, 0x0186(a2)             # 00000186
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80909AA8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0E6C             # a1 = 06000E6C
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC040                 # a2 = C0400000
    jal     func_8008D328              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lui     t6, %hi(func_8090A214)     # t6 = 80910000
    addiu   t6, t6, %lo(func_8090A214) # t6 = 8090A214
    lw      t7, 0x0180(a3)             # 00000180
    lui     t0, %hi(func_8090A128)     # t0 = 80910000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    bne     t6, t7, lbl_80909AF8       
    addiu   t0, t0, %lo(func_8090A128) # t0 = 8090A128
    addiu   t8, $zero, 0x1002          # t8 = 00001002
    beq     $zero, $zero, lbl_80909AFC 
    sh      t8, 0x0186(a3)             # 00000186
lbl_80909AF8:
    sh      t9, 0x0186(a3)             # 00000186
lbl_80909AFC:
    sw      t0, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80909B10:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x04D8             # a1 = 060004D8
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D21C              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a0, 0x0018($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387D          # a1 = 0000387D
    lw      t7, 0x0018($sp)            
    lui     t6, %hi(func_8090A36C)     # t6 = 80910000
    addiu   t6, t6, %lo(func_8090A36C) # t6 = 8090A36C
    sw      t6, 0x0180(t7)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80909B60:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x08C4             # a1 = 060008C4
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC040                 # a2 = C0400000
    jal     func_8008D21C              
    sw      a3, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x0025          # t6 = 00000025
    addiu   t7, $zero, 0x0032          # t7 = 00000032
    addiu   a1, $zero, 0x3880          # a1 = 00003880
    sh      t6, 0x02FA(a0)             # 000002FA
    jal     func_80022FD0              
    sb      t7, 0x00AE(a0)             # 000000AE
    lw      a3, 0x0018($sp)            
    lui     t0, %hi(func_8090A480)     # t0 = 80910000
    addiu   t0, t0, %lo(func_8090A480) # t0 = 8090A480
    lbu     t8, 0x02C9(a3)             # 000002C9
    sw      t0, 0x0180(a3)             # 00000180
    andi    t9, t8, 0xFFFE             # t9 = 00000000
    sb      t9, 0x02C9(a3)             # 000002C9
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80909BC8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3650             # a1 = 06003650
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D2D4              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lui     t9, %hi(func_8090A4E8)     # t9 = 80910000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    lbu     t7, 0x02C9(a2)             # 000002C9
    addiu   t9, t9, %lo(func_8090A4E8) # t9 = 8090A4E8
    sh      t6, 0x0186(a2)             # 00000186
    ori     t8, t7, 0x0001             # t8 = 00000001
    sb      $zero, 0x0184(a2)          # 00000184
    sb      t8, 0x02C9(a2)             # 000002C9
    sw      t9, 0x0180(a2)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80909C20:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1024             # a1 = 06001024
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D2D4              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    lbu     v0, 0x0185(a2)             # 00000185
    lui     t8, %hi(func_8090A728)     # t8 = 80910000
    sh      t6, 0x0186(a2)             # 00000186
    beq     v0, $zero, lbl_80909C68    
    swc1    $f4, 0x0068(a2)            # 00000068
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sb      t7, 0x0185(a2)             # 00000185
lbl_80909C68:
    addiu   t8, t8, %lo(func_8090A728) # t8 = 8090A728
    sw      t8, 0x0180(a2)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80909C80:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0368             # a1 = 06000368
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0xC040                 # a2 = C0400000
    lw      t6, 0x02F4(s0)             # 000002F4
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xF824           # $at = 0001F824
    lw      t7, 0x0000(t6)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    and     t8, t7, $at                
    beq     t8, $zero, lbl_80909CD4    
    nop
    lw      t9, 0x02C0(s0)             # 000002C0
    lh      t0, 0x0032(t9)             # 00000032
    beq     $zero, $zero, lbl_80909CE8 
    sh      t0, 0x0032(s0)             # 00000032
lbl_80909CD4:
    jal     func_800213B4              
    lw      a1, 0x02C0(s0)             # 000002C0
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t1, v0, $at                
    sh      t1, 0x0032(s0)             # 00000032
lbl_80909CE8:
    lbu     t2, 0x02C9(s0)             # 000002C9
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     t4, %hi(func_8090A790)     # t4 = 80910000
    addiu   t4, t4, %lo(func_8090A790) # t4 = 8090A790
    andi    t3, t2, 0xFFFE             # t3 = 00000000
    sb      t3, 0x02C9(s0)             # 000002C9
    sw      t4, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x3880          # a1 = 00003880
    jal     func_80022FD0              
    swc1    $f4, 0x0068(s0)            # 00000068
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x393B          # a1 = 0000393B
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x0368             # a0 = 06000368
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80027090              
    sw      v0, 0x0010($sp)            
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80909D5C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0368             # a1 = 06000368
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D328              
    lui     a2, 0xC040                 # a2 = C0400000
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t7, %hi(func_8090A7E0)     # t7 = 80910000
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    addiu   t7, t7, %lo(func_8090A7E0) # t7 = 8090A7E0
    sh      t6, 0x0186(s0)             # 00000186
    sw      t7, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    jal     func_80022FD0              
    swc1    $f4, 0x0068(s0)            # 00000068
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x0368             # a0 = 06000368
    lh      t8, 0x0186(s0)             # 00000186
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    multu   v0, t8                     
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    or      a3, $zero, $zero           # a3 = 00000000
    mflo    t9                         
    sw      t9, 0x0010($sp)            
    jal     func_80027090              
    nop
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80909DF0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x06B0             # a1 = 060006B0
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D1C4              
    sw      a2, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t6, %hi(func_8090A85C)     # t6 = 80910000
    addiu   t6, t6, %lo(func_8090A85C) # t6 = 8090A85C
    addiu   a1, $zero, 0x3881          # a1 = 00003881
    sw      t6, 0x0180(a0)             # 00000180
    jal     func_80022FD0              
    swc1    $f4, 0x0068(a0)            # 00000068
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80909E40:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lwc1    $f4, 0x0158(s0)            # 00000158
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    c.lt.s  $f4, $f6                   
    lui     a1, 0x4110                 # a1 = 41100000
    bc1f    lbl_80909E7C               
    nop
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80909E7C:
    beql    v1, $zero, lbl_80909E98    
    sw      v1, 0x002C($sp)            
    lh      v0, 0x0186(s0)             # 00000186
    beq     v0, $zero, lbl_80909E94    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(s0)             # 00000186
lbl_80909E94:
    sw      v1, 0x002C($sp)            
lbl_80909E98:
    jal     func_8008D6A8              
    sw      a0, 0x0020($sp)            
    lui     $at, 0x4110                # $at = 41100000
    mtc1    $at, $f12                  # $f12 = 9.00
    beq     v0, $zero, lbl_80909EC0    
    lw      a0, 0x0020($sp)            
    lbu     t7, 0x02C9(s0)             # 000002C9
    ori     t8, t7, 0x0001             # t8 = 00000001
    beq     $zero, $zero, lbl_80909EEC 
    sb      t8, 0x02C9(s0)             # 000002C9
lbl_80909EC0:
    jal     func_8008D6A8              
    lui     a1, 0x4100                 # a1 = 41000000
    lui     $at, 0x4110                # $at = 41100000
    mtc1    $at, $f12                  # $f12 = 9.00
    beq     v0, $zero, lbl_80909EEC    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387C          # a1 = 0000387C
    lui     $at, 0x4110                # $at = 41100000
    mtc1    $at, $f12                  # $f12 = 9.00
    nop
lbl_80909EEC:
    lwc1    $f0, 0x0154(s0)            # 00000154
    lui     $at, 0x4140                # $at = 41400000
    c.lt.s  $f0, $f12                  
    nop
    bc1fl   lbl_80909F10               
    mtc1    $at, $f14                  # $f14 = 12.00
    beq     $zero, $zero, lbl_80909F34 
    mov.s   $f0, $f12                  
    mtc1    $at, $f14                  # $f14 = 12.00
lbl_80909F10:
    nop
    c.lt.s  $f14, $f0                  
    nop
    bc1fl   lbl_80909F30               
    mov.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80909F30 
    mov.s   $f2, $f14                  
    mov.s   $f2, $f0                   
lbl_80909F30:
    mov.s   $f0, $f2                   
lbl_80909F34:
    sub.s   $f8, $f0, $f12             
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    lui     $at, 0x42F0                # $at = 42F00000
    mul.s   $f10, $f8, $f12            
    add.s   $f18, $f10, $f16           
    trunc.w.s $f4, $f18                  
    mfc1    t0, $f4                    
    nop
    sh      t0, 0x02FA(s0)             # 000002FA
    lw      t1, 0x002C($sp)            
    bne     t1, $zero, lbl_80909F94    
    nop
    lwc1    $f6, 0x0090(s0)            # 00000090
    mtc1    $at, $f8                   # $f8 = 120.00
    nop
    c.lt.s  $f6, $f8                   
    nop
    bc1f    lbl_80909F94               
    nop
    jal     func_80909B10              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8090A014 
    lw      t3, 0x002C($sp)            
lbl_80909F94:
    jal     func_8008C9C0              
    lw      a0, 0x0020($sp)            
    beq     v0, $zero, lbl_8090A010    
    lui     $at, 0x42F0                # $at = 42F00000
    lwc1    $f2, 0x0090(s0)            # 00000090
    mtc1    $at, $f10                  # $f10 = 120.00
    nop
    c.lt.s  $f2, $f10                  
    nop
    bc1fl   lbl_80909FD4               
    lh      t2, 0x0186(s0)             # 00000186
    jal     func_80909B10              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8090A014 
    lw      t3, 0x002C($sp)            
    lh      t2, 0x0186(s0)             # 00000186
lbl_80909FD4:
    lui     $at, 0x43A0                # $at = 43A00000
    bne     t2, $zero, lbl_8090A008    
    nop
    mtc1    $at, $f16                  # $f16 = 320.00
    nop
    c.lt.s  $f16, $f2                  
    nop
    bc1f    lbl_8090A008               
    nop
    jal     func_80909A1C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8090A014 
    lw      t3, 0x002C($sp)            
lbl_8090A008:
    jal     func_80909AA8              
    or      a0, s0, $zero              # a0 = 00000000
lbl_8090A010:
    lw      t3, 0x002C($sp)            
lbl_8090A014:
    lui     $at, 0x4320                # $at = 43200000
    beql    t3, $zero, lbl_8090A094    
    lw      $ra, 0x001C($sp)           
    lwc1    $f2, 0x0090(s0)            # 00000090
    mtc1    $at, $f18                  # $f18 = 160.00
    nop
    c.lt.s  $f18, $f2                  
    nop
    bc1fl   lbl_8090A094               
    lw      $ra, 0x001C($sp)           
    lwc1    $f0, 0x0094(s0)            # 00000094
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f4                   # $f4 = 120.00
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_8090A094               
    lw      $ra, 0x001C($sp)           
    lh      t4, 0x0186(s0)             # 00000186
    lui     $at, 0x43F0                # $at = 43F00000
    beql    t4, $zero, lbl_8090A084    
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    nop
    c.lt.s  $f2, $f6                   
    nop
    bc1f    lbl_8090A090               
    lui     $at, 0x3F80                # $at = 3F800000
lbl_8090A084:
    mtc1    $at, $f8                   # $f8 = 1.00
    nop
    swc1    $f8, 0x0158(s0)            # 00000158
lbl_8090A090:
    lw      $ra, 0x001C($sp)           
lbl_8090A094:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8090A0A4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    sw      a0, 0x001C($sp)            
    jal     func_8008C9C0              
    sw      a2, 0x0020($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8008D6A8              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     v0, $zero, lbl_8090A0E8    
    lw      a2, 0x0020($sp)            
    lh      v0, 0x0186(a2)             # 00000186
    beq     v0, $zero, lbl_8090A0E8    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(a2)             # 00000186
lbl_8090A0E8:
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    lwc1    $f4, 0x0090(a2)            # 00000090
    c.lt.s  $f4, $f6                   
    nop
    bc1t    lbl_8090A110               
    nop
    lh      t7, 0x0186(a2)             # 00000186
    bnel    t7, $zero, lbl_8090A11C    
    lw      $ra, 0x0014($sp)           
lbl_8090A110:
    jal     func_80909B10              
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
lbl_8090A11C:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8090A128:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_8008D6A8              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     v0, $zero, lbl_8090A16C    
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      v0, 0x0186(s0)             # 00000186
    beq     v0, $zero, lbl_8090A16C    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(s0)             # 00000186
lbl_8090A16C:
    lh      v0, 0x0186(s0)             # 00000186
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0E38          # a3 = 00000E38
    andi    t7, v0, 0x1000             # t7 = 00000000
    bnel    t7, $zero, lbl_8090A194    
    addiu   $at, $zero, 0x1000         # $at = 00001000
    jal     func_80064624              
    lh      a1, 0x008A(s0)             # 0000008A
    lh      v0, 0x0186(s0)             # 00000186
    addiu   $at, $zero, 0x1000         # $at = 00001000
lbl_8090A194:
    bne     v0, $at, lbl_8090A1F0      
    lui     $at, 0x43F0                # $at = 43F00000
    mtc1    $at, $f4                   # $f4 = 480.00
    lwc1    $f0, 0x0090(s0)            # 00000090
    lui     $at, 0x42F0                # $at = 42F00000
    c.lt.s  $f4, $f0                   
    nop
    bc1t    lbl_8090A1D0               
    nop
    mtc1    $at, $f6                   # $f6 = 120.00
    nop
    c.lt.s  $f0, $f6                   
    nop
    bc1f    lbl_8090A1E0               
    nop
lbl_8090A1D0:
    jal     func_80909B10              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8090A204 
    lw      $ra, 0x001C($sp)           
lbl_8090A1E0:
    jal     func_80909A64              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8090A204 
    lw      $ra, 0x001C($sp)           
lbl_8090A1F0:
    bnel    v0, $zero, lbl_8090A204    
    lw      $ra, 0x001C($sp)           
    jal     func_80909A64              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_8090A204:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8090A214:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x004C($sp)            
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624              
    addiu   a3, $zero, 0x0E38          # a3 = 00000E38
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0038($sp)            
    beq     v0, $zero, lbl_8090A260    
    lw      a0, 0x0038($sp)            
    jal     func_80909AA8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8090A35C 
    lw      $ra, 0x0034($sp)           
lbl_8090A260:
    jal     func_8008D6A8              
    lui     a1, 0x40C0                 # a1 = 40C00000
    beql    v0, $zero, lbl_8090A318    
    lh      t9, 0x0186(s0)             # 00000186
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x41B8                # $at = 41B80000
    mtc1    $at, $f4                   # $f4 = 23.00
    lwc1    $f8, 0x0024(s0)            # 00000024
    lui     $at, 0x4140                # $at = 41400000
    mul.s   $f6, $f0, $f4              
    mtc1    $at, $f18                  # $f18 = 12.00
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x003C($sp)          
    lwc1    $f16, 0x0028(s0)           # 00000028
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0040($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x41B8                # $at = 41B80000
    mtc1    $at, $f6                   # $f6 = 23.00
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lwc1    $f16, 0x0040($sp)          
    mul.s   $f8, $f0, $f6              
    lw      a1, 0x004C($sp)            
    swc1    $f16, 0x0010($sp)          
    addiu   a2, $zero, 0x0193          # a2 = 00000193
    lw      a3, 0x003C($sp)            
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    add.s   $f2, $f8, $f10             
    swc1    $f2, 0x0014($sp)           
    lh      t6, 0x00B4(s0)             # 000000B4
    sw      t6, 0x0018($sp)            
    lh      t7, 0x00B6(s0)             # 000000B6
    sw      t7, 0x001C($sp)            
    lh      t8, 0x00B8(s0)             # 000000B8
    sw      $zero, 0x0024($sp)         
    jal     func_80025110              # ActorSpawn
    sw      t8, 0x0020($sp)            
    beq     v0, $zero, lbl_8090A358    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387E          # a1 = 0000387E
    beq     $zero, $zero, lbl_8090A35C 
    lw      $ra, 0x0034($sp)           
    lh      t9, 0x0186(s0)             # 00000186
lbl_8090A318:
    lw      a0, 0x0038($sp)            
    slti    $at, t9, 0x0002            
    bnel    $at, $zero, lbl_8090A35C   
    lw      $ra, 0x0034($sp)           
    jal     func_8008D6A8              
    lui     a1, 0x4140                 # a1 = 41400000
    beq     v0, $zero, lbl_8090A358    
    lw      a0, 0x0038($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x01C4             # a1 = 060001C4
    jal     func_8008D21C              
    lui     a2, 0xC040                 # a2 = C0400000
    lh      v0, 0x0186(s0)             # 00000186
    beq     v0, $zero, lbl_8090A358    
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x0186(s0)             # 00000186
lbl_8090A358:
    lw      $ra, 0x0034($sp)           
lbl_8090A35C:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_8090A36C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0024($sp)            
    beq     v0, $zero, lbl_8090A3A4    
    lui     $at, 0x3F80                # $at = 3F800000
    jal     func_809099A8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8090A42C 
    lw      a0, 0x0024($sp)            
lbl_8090A3A4:
    mtc1    $at, $f2                   # $f2 = 0.00
    lwc1    $f0, 0x0154(s0)            # 00000154
    lui     $at, 0x4040                # $at = 40400000
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_8090A3CC               
    mtc1    $at, $f4                   # $f4 = 3.00
    beq     $zero, $zero, lbl_8090A3F4 
    mov.s   $f0, $f2                   
    mtc1    $at, $f4                   # $f4 = 3.00
lbl_8090A3CC:
    lui     $at, 0x4040                # $at = 40400000
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_8090A3F0               
    mov.s   $f2, $f0                   
    mtc1    $at, $f2                   # $f2 = 3.00
    beq     $zero, $zero, lbl_8090A3F4 
    mov.s   $f0, $f2                   
    mov.s   $f2, $f0                   
lbl_8090A3F0:
    mov.s   $f0, $f2                   
lbl_8090A3F4:
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f10                  # $f10 = 12.00
    sub.s   $f8, $f6, $f0              
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f18                  # $f18 = 5.00
    mul.s   $f16, $f8, $f10            
    add.s   $f4, $f16, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t7, $f6                    
    nop
    sh      t7, 0x02FA(s0)             # 000002FA
    lw      a0, 0x0024($sp)            
lbl_8090A42C:
    jal     func_8008D6A8              
    lui     a1, 0x4080                 # a1 = 40800000
    beq     v0, $zero, lbl_8090A448    
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lbu     t8, 0x02C9(s0)             # 000002C9
    andi    t9, t8, 0xFFFE             # t9 = 00000000
    sb      t9, 0x02C9(s0)             # 000002C9
lbl_8090A448:
    lw      a1, 0x0008(s0)             # 00000008
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280              
    lui     a3, 0x4040                 # a3 = 40400000
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lw      a1, 0x0010(s0)             # 00000010
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280              
    lui     a3, 0x4040                 # a3 = 40400000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8090A480:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_8090A4C0    
    ori     $at, $zero, 0x8000         # $at = 00008000
    lh      t6, 0x008A(s0)             # 0000008A
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    sb      t8, 0x0185(s0)             # 00000185
    addu    t7, t6, $at                
    sh      t7, 0x0188(s0)             # 00000188
    jal     func_80909BC8              
    or      a0, s0, $zero              # a0 = 00000000
lbl_8090A4C0:
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624              
    addiu   a3, $zero, 0x0E38          # a3 = 00000E38
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8090A4E8:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0028($sp)            
    lw      a0, 0x0028($sp)            
    jal     func_8008D6A8              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     v0, $zero, lbl_8090A52C    
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lh      v0, 0x0186(s0)             # 00000186
    beq     v0, $zero, lbl_8090A52C    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(s0)             # 00000186
lbl_8090A52C:
    lbu     t7, 0x0184(s0)             # 00000184
    or      a0, s0, $zero              # a0 = 00000000
    beql    t7, $zero, lbl_8090A550    
    sb      t8, 0x0184(s0)             # 00000184
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387F          # a1 = 0000387F
    beq     $zero, $zero, lbl_8090A550 
    sb      $zero, 0x0184(s0)          # 00000184
    sb      t8, 0x0184(s0)             # 00000184
lbl_8090A550:
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x40F0                 # a1 = 40F00000
    jal     func_8006385C              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      a1, 0x0188(s0)             # 00000188
    addiu   t9, $zero, 0x00B6          # t9 = 000000B6
    sw      t9, 0x0010($sp)            
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x0E38          # a3 = 00000E38
    bnel    v0, $zero, lbl_8090A67C    
    lh      t8, 0x0032(s0)             # 00000032
    lhu     v0, 0x0088(s0)             # 00000088
    or      a0, s0, $zero              # a0 = 00000000
    andi    t0, v0, 0x0020             # t0 = 00000000
    beq     t0, $zero, lbl_8090A5A8    
    andi    t1, v0, 0x0008             # t1 = 00000000
    jal     func_8002140C              
    addiu   a1, s0, 0x0008             # a1 = 00000008
    beq     $zero, $zero, lbl_8090A678 
    sh      v0, 0x0188(s0)             # 00000188
lbl_8090A5A8:
    beql    t1, $zero, lbl_8090A5C0    
    lbu     t3, 0x0185(s0)             # 00000185
    lh      t2, 0x007E(s0)             # 0000007E
    beq     $zero, $zero, lbl_8090A678 
    sh      t2, 0x0188(s0)             # 00000188
    lbu     t3, 0x0185(s0)             # 00000185
lbl_8090A5C0:
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t3, $zero, lbl_8090A66C    
    lh      t6, 0x008A(s0)             # 0000008A
    jal     func_8002140C              
    addiu   a1, s0, 0x0008             # a1 = 00000008
    lh      a1, 0x008A(s0)             # 0000008A
    subu    v1, v0, a1                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    bltz    v1, lbl_8090A5F4           
    subu    a0, $zero, v1              
    beq     $zero, $zero, lbl_8090A5F4 
    or      a0, v1, $zero              # a0 = 00000000
lbl_8090A5F4:
    slti    $at, a0, 0x2001            
    bnel    $at, $zero, lbl_8090A60C   
    mtc1    v1, $f4                    # $f4 = 0.00
    beq     $zero, $zero, lbl_8090A678 
    sh      v0, 0x0188(s0)             # 00000188
    mtc1    v1, $f4                    # $f4 = 0.00
lbl_8090A60C:
    mtc1    $zero, $f8                 # $f8 = 0.00
    mtc1    a1, $f18                   # $f18 = 0.00
    cvt.s.w $f6, $f4                   
    lui     $at, 0xBF80                # $at = BF800000
    c.le.s  $f8, $f6                   
    nop
    bc1fl   lbl_8090A640               
    mtc1    $at, $f0                   # $f0 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    beq     $zero, $zero, lbl_8090A648 
    lui     $at, 0xC600                # $at = C6000000
    mtc1    $at, $f0                   # $f0 = -8192.00
lbl_8090A640:
    nop
    lui     $at, 0xC600                # $at = C6000000
lbl_8090A648:
    mtc1    $at, $f10                  # $f10 = -8192.00
    cvt.s.w $f4, $f18                  
    mul.s   $f16, $f0, $f10            
    add.s   $f6, $f16, $f4             
    trunc.w.s $f8, $f6                   
    mfc1    t5, $f8                    
    beq     $zero, $zero, lbl_8090A678 
    sh      t5, 0x0188(s0)             # 00000188
    lh      t6, 0x008A(s0)             # 0000008A
lbl_8090A66C:
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t7, t6, $at                
    sh      t7, 0x0188(s0)             # 00000188
lbl_8090A678:
    lh      t8, 0x0032(s0)             # 00000032
lbl_8090A67C:
    lbu     t0, 0x0185(s0)             # 00000185
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t9, t8, $at                
    bne     t0, $zero, lbl_8090A700    
    sh      t9, 0x00B6(s0)             # 000000B6
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80021528              
    addiu   a1, s0, 0x0008             # a1 = 00000008
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    nop
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_8090A704               
    lh      t2, 0x0186(s0)             # 00000186
    lwc1    $f18, 0x0028(s0)           # 00000028
    lwc1    $f16, 0x000C(s0)           # 0000000C
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f4                   # $f4 = 2.00
    sub.s   $f0, $f18, $f16            
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    or      a0, s0, $zero              # a0 = 00000000
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_8090A704               
    lh      t2, 0x0186(s0)             # 00000186
    mtc1    $zero, $f6                 # $f6 = 0.00
    sb      t1, 0x00AE(s0)             # 000000AE
    jal     func_80909B10              
    swc1    $f6, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_8090A718 
    lw      $ra, 0x0024($sp)           
lbl_8090A700:
    lh      t2, 0x0186(s0)             # 00000186
lbl_8090A704:
    bnel    t2, $zero, lbl_8090A718    
    lw      $ra, 0x0024($sp)           
    jal     func_80909C20              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_8090A718:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8090A728:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    sw      a0, 0x001C($sp)            
    jal     func_8008C9C0              
    sw      a2, 0x0020($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8008D6A8              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     v0, $zero, lbl_8090A76C    
    lw      a2, 0x0020($sp)            
    lh      v0, 0x0186(a2)             # 00000186
    beq     v0, $zero, lbl_8090A76C    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(a2)             # 00000186
lbl_8090A76C:
    lh      t7, 0x0186(a2)             # 00000186
    bnel    t7, $zero, lbl_8090A784    
    lw      $ra, 0x0014($sp)           
    jal     func_80909BC8              
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
lbl_8090A784:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8090A790:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_8006385C              
    addiu   a0, a0, 0x0068             # a0 = 00000068
    lw      a0, 0x0018($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_8090A7D4    
    lw      $ra, 0x0014($sp)           
    jal     func_80909DF0              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
lbl_8090A7D4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8090A7E0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    sw      a0, 0x001C($sp)            
    jal     func_8008C9C0              
    sw      a2, 0x0020($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8008D6A8              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     v0, $zero, lbl_8090A84C    
    lw      a2, 0x0020($sp)            
    lh      v0, 0x0186(a2)             # 00000186
    or      a0, a2, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_8090A82C    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(a2)             # 00000186
    lh      v0, 0x0186(a2)             # 00000186
lbl_8090A82C:
    bne     v0, $zero, lbl_8090A844    
    nop
    jal     func_80909BC8              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8090A850 
    lw      $ra, 0x0014($sp)           
lbl_8090A844:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3882          # a1 = 00003882
lbl_8090A84C:
    lw      $ra, 0x0014($sp)           
lbl_8090A850:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8090A85C:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s1, 0x0048($sp)            
    sw      s0, 0x0044($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x004C($sp)           
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_8090A9A4    
    lui     a2, %hi(var_8090AE70)      # a2 = 80910000
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x4190                # $at = 41900000
    mtc1    $at, $f8                   # $f8 = 18.00
    swc1    $f4, 0x0058($sp)           
    lwc1    $f6, 0x0028(s0)            # 00000028
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    addiu   a2, a2, %lo(var_8090AE70)  # a2 = 8090AE70
    add.s   $f10, $f6, $f8             
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    swc1    $f10, 0x005C($sp)          
    lwc1    $f16, 0x002C(s0)           # 0000002C
    sw      t6, 0x0010($sp)            
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   t1, $zero, 0x0096          # t1 = 00000096
    addiu   t2, $zero, 0x0096          # t2 = 00000096
    addiu   t3, $zero, 0x0096          # t3 = 00000096
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, $zero, 0x000D          # t5 = 0000000D
    sw      t5, 0x0038($sp)            
    sw      t4, 0x0034($sp)            
    sw      t3, 0x0030($sp)            
    sw      t2, 0x002C($sp)            
    sw      t1, 0x0028($sp)            
    sw      t0, 0x0024($sp)            
    sw      t6, 0x003C($sp)            
    sw      t9, 0x0020($sp)            
    sw      t8, 0x001C($sp)            
    sw      t7, 0x0018($sp)            
    sw      $zero, 0x0014($sp)         
    or      a3, a2, $zero              # a3 = 8090AE70
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFF0
    jal     func_8001E1D4              
    swc1    $f16, 0x0060($sp)          
    lwc1    $f18, 0x0028(s0)           # 00000028
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    addiu   t7, $zero, 0x000C          # t7 = 0000000C
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    add.s   $f6, $f18, $f4             
    addiu   t9, $zero, 0x000F          # t9 = 0000000F
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    swc1    $f6, 0x005C($sp)           
    sw      t1, 0x0020($sp)            
    sw      t0, 0x001C($sp)            
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    sw      $zero, 0x0024($sp)         
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFF0
    lui     a2, 0x4040                 # a2 = 40400000
    jal     func_8001D29C              
    or      a3, $zero, $zero           # a3 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    jal     func_80013A84              
    addiu   a3, $zero, 0x0030          # a3 = 00000030
    lw      a2, 0x011C(s0)             # 0000011C
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x1C24             # a1 = 00001C24
    beq     a2, $zero, lbl_8090A99C    
    nop
    jal     func_800265D4              
    addiu   a3, $zero, 0x0006          # a3 = 00000006
lbl_8090A99C:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_8090A9A4:
    lw      $ra, 0x004C($sp)           
    lw      s0, 0x0044($sp)            
    lw      s1, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_8090A9B8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lbu     v0, 0x02C9(s0)             # 000002C9
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x02D0             # a1 = 000002D0
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_8090AAA0    
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    sb      t7, 0x02C9(s0)             # 000002C9
    jal     func_800283BC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lbu     t8, 0x00AE(s0)             # 000000AE
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bne     t8, $at, lbl_8090AA90      
    nop
    lbu     v0, 0x00B1(s0)             # 000000B1
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $zero, lbl_8090AA1C    
    nop
    lbu     t9, 0x00B0(s0)             # 000000B0
    beql    t9, $zero, lbl_8090AACC    
    lw      $ra, 0x0024($sp)           
lbl_8090AA1C:
    beq     v0, $at, lbl_8090AA6C      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_8090AA44      
    lw      a0, 0x002C($sp)            
    addiu   t0, $zero, 0x0032          # t0 = 00000032
    sw      t0, 0x0010($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    jal     func_8001E178              
    addiu   a3, $zero, 0x0028          # a3 = 00000028
lbl_8090AA44:
    jal     func_80909C80              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80028390              
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_8090AAC8    
    lw      a0, 0x002C($sp)            
    jal     func_80025B4C              
    or      a1, s0, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_8090AACC 
    lw      $ra, 0x0024($sp)           
lbl_8090AA6C:
    lw      t2, 0x0180(s0)             # 00000180
    lui     t1, %hi(func_8090A7E0)     # t1 = 80910000
    addiu   t1, t1, %lo(func_8090A7E0) # t1 = 8090A7E0
    beql    t1, t2, lbl_8090AACC       
    lw      $ra, 0x0024($sp)           
    jal     func_80909D5C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8090AACC 
    lw      $ra, 0x0024($sp)           
lbl_8090AA90:
    jal     func_80909B60              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8090AACC 
    lw      $ra, 0x0024($sp)           
lbl_8090AAA0:
    lbu     t3, 0x00AE(s0)             # 000000AE
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lw      t4, 0x002C($sp)            
    bnel    t3, $at, lbl_8090AACC      
    lw      $ra, 0x0024($sp)           
    lbu     t5, 0x1C26(t4)             # 00001C26
    beql    t5, $zero, lbl_8090AACC    
    lw      $ra, 0x0024($sp)           
    jal     func_80909B60              
    or      a0, s0, $zero              # a0 = 00000000
lbl_8090AAC8:
    lw      $ra, 0x0024($sp)           
lbl_8090AACC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8090AADC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    or      a0, s0, $zero              # a0 = 00000000
    beql    t6, $at, lbl_8090AC34      
    lw      $ra, 0x0024($sp)           
    jal     func_8090A9B8              
    or      a1, s1, $zero              # a1 = 00000000
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t7, 0x02F8(s0)             # 000002F8
    lh      t8, 0x02FA(s0)             # 000002FA
    addiu   t0, $zero, 0x001D          # t0 = 0000001D
    mtc1    t7, $f4                    # $f4 = 0.00
    mtc1    t8, $f6                    # $f6 = 0.00
    sw      t0, 0x0014($sp)            
    cvt.s.w $f4, $f4                   
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x41A0                 # a2 = 41A00000
    cvt.s.w $f8, $f6                   
    mfc1    a3, $f4                    
    jal     func_80021E6C              
    swc1    $f8, 0x0010($sp)           
    addiu   a1, s0, 0x02B8             # a1 = 000002B8
    sw      a1, 0x0028($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t1, 0x02C9(s0)             # 000002C9
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t2, t1, 0x0001             # t2 = 00000000
    beq     t2, $zero, lbl_8090AB98    
    or      a0, s1, $zero              # a0 = 00000000
    addu    a1, s1, $at                
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0028($sp)            
lbl_8090AB98:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at                
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0028($sp)            
    lw      v1, 0x0180(s0)             # 00000180
    lui     t3, %hi(func_80909E40)     # t3 = 80910000
    addiu   t3, t3, %lo(func_80909E40) # t3 = 80909E40
    bne     t3, v1, lbl_8090ABD8       
    lui     t4, %hi(func_8090A36C)     # t4 = 80910000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    lw      a1, 0x0154(s0)             # 00000154
    beq     $zero, $zero, lbl_8090AC34 
    lw      $ra, 0x0024($sp)           
lbl_8090ABD8:
    addiu   t4, t4, %lo(func_8090A36C) # t4 = FFFFA36C
    bne     t4, v1, lbl_8090AC28       
    or      a0, s0, $zero              # a0 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x04D8             # a0 = 060004D8
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f0                   # $f0 = 20.00
    lwc1    $f10, 0x0154(s0)           # 00000154
    mtc1    v0, $f18                   # $f18 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f16, $f10, $f0            
    cvt.s.w $f4, $f18                  
    div.s   $f6, $f16, $f4             
    sub.s   $f8, $f0, $f6              
    mfc1    a1, $f8                    
    jal     func_80020F04              
    nop
    beq     $zero, $zero, lbl_8090AC34 
    lw      $ra, 0x0024($sp)           
lbl_8090AC28:
    jal     func_80020F04              
    lui     a1, 0x41A0                 # a1 = 41A00000
    lw      $ra, 0x0024($sp)           
lbl_8090AC34:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_8090AC44:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a2, 0x0020($sp)            
    sw      a3, 0x0024($sp)            
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     a1, $at, lbl_8090AD64      
    lw      v0, 0x002C($sp)            
    lw      t7, 0x0180(v0)             # 00000180
    lui     t6, %hi(func_8090A214)     # t6 = 80910000
    addiu   t6, t6, %lo(func_8090A214) # t6 = 8090A214
    bne     t6, t7, lbl_8090AD64       
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f18                  # $f18 = 6.00
    lwc1    $f0, 0x0154(v0)            # 00000154
    lui     $at, 0x40E0                # $at = 40E00000
    c.le.s  $f0, $f18                  
    nop
    bc1fl   lbl_8090ACCC               
    mtc1    $at, $f2                   # $f2 = 7.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    lui     $at, %hi(var_8090AE80)     # $at = 80910000
    lwc1    $f4, %lo(var_8090AE80)($at) 
    lui     $at, %hi(var_8090AE84)     # $at = 80910000
    lwc1    $f8, %lo(var_8090AE84)($at) 
    mul.s   $f6, $f0, $f4              
    nop
    mul.s   $f10, $f0, $f8             
    sub.s   $f12, $f18, $f6            
    add.s   $f14, $f10, $f18           
    beq     $zero, $zero, lbl_8090AD58 
    mov.s   $f16, $f14                 
    mtc1    $at, $f2                   # $f2 = 0.00
lbl_8090ACCC:
    lui     $at, 0x4120                # $at = 41200000
    c.le.s  $f0, $f2                   
    nop
    bc1fl   lbl_8090AD14               
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, %hi(var_8090AE88)     # $at = 80910000
    lwc1    $f6, %lo(var_8090AE88)($at) 
    sub.s   $f0, $f0, $f18             
    lui     $at, %hi(var_8090AE8C)     # $at = 80910000
    lwc1    $f8, %lo(var_8090AE8C)($at) 
    add.s   $f12, $f4, $f0             
    mul.s   $f10, $f0, $f8             
    sub.s   $f14, $f6, $f10            
    beq     $zero, $zero, lbl_8090AD58 
    mov.s   $f16, $f14                 
    mtc1    $at, $f4                   # $f4 = 0.00
lbl_8090AD14:
    lui     $at, 0x3F80                # $at = 3F800000
    c.le.s  $f0, $f4                   
    nop
    bc1f    lbl_8090AD50               
    nop
    mtc1    $at, $f14                  # $f14 = 1.00
    sub.s   $f8, $f0, $f2              
    lui     $at, %hi(var_8090AE90)     # $at = 80910000
    lwc1    $f6, %lo(var_8090AE90)($at) 
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    mul.s   $f10, $f8, $f6             
    mov.s   $f16, $f14                 
    beq     $zero, $zero, lbl_8090AD58 
    sub.s   $f12, $f4, $f10            
lbl_8090AD50:
    beq     $zero, $zero, lbl_8090AD68 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8090AD58:
    mfc1    a2, $f16                   
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_8090AD64:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8090AD68:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8090AD78:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      t6, 0x0020($sp)            
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    lui     a3, %hi(func_8090AC44)     # a3 = 80910000
    lh      t7, 0x001C(t6)             # 0000001C
    addiu   a3, a3, %lo(func_8090AC44) # a3 = 8090AC44
    lw      a0, 0x0024($sp)            
    bne     t7, $at, lbl_8090ADC0      
    lw      t8, 0x0020($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2298             # a1 = 06002298
    jal     func_80028048              
    lw      a0, 0x0024($sp)            
    beq     $zero, $zero, lbl_8090ADD8 
    lw      $ra, 0x001C($sp)           
lbl_8090ADC0:
    lw      a1, 0x0140(t8)             # 00000140
    lw      a2, 0x015C(t8)             # 0000015C
    sw      t8, 0x0014($sp)            
    jal     func_8008993C              
    sw      $zero, 0x0010($sp)         
    lw      $ra, 0x001C($sp)           
lbl_8090ADD8:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_8090ADF0: .word 0x00600500, 0x00000005, 0x004A0000, 0x00000304
.word func_80909800
.word func_8090996C
.word func_8090AADC
.word func_8090AD78
var_8090AE10: .word \
0x06000939, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x00120020, 0x00000000, 0x00000000
var_8090AE3C: .word 0x01000012, 0x0020FF00
var_8090AE44: .word \
0x10020102, 0x01020202, 0x01020424, 0x02020202, \
0x02240000, 0x00000104, 0x02020804, 0x00000400
var_8090AE64: .word 0x8917004D, 0xB06CFFFF, 0x304C0A28
var_8090AE70: .word 0x00000000, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_8090AE80: .word 0x3DAA9931
var_8090AE84: .word 0x3DEF0069
var_8090AE88: .word 0x3FD9999A
var_8090AE8C: .word 0x3F333333
var_8090AE90: .word 0x3E2AB368, 0x00000000, 0x00000000, 0x00000000

