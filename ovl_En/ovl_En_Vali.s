#include <mips.h>
.set noreorder
.set noat

.section .text
func_8090B630:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a1, %hi(var_8090D834)      # a1 = 80910000
    addiu   a1, a1, %lo(var_8090D834)  # a1 = 8090D834
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41D8                 # a3 = 41D80000
    addiu   t6, $zero, 0x009B          # t6 = 0000009B
    sb      t6, 0x00C8(s0)             # 000000C8
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t7, s0, 0x0188             # t7 = 00000188
    addiu   t8, s0, 0x0236             # t8 = 00000236
    addiu   t9, $zero, 0x001D          # t9 = 0000001D
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    addiu   a3, a3, 0x14AC             # a3 = 060014AC
    addiu   a2, a2, 0x4848             # a2 = 06004848
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C684              
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    addiu   a1, s0, 0x02EC             # a1 = 000002EC
    sw      a1, 0x0030($sp)            
    jal     func_8004B858              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_8090D790)      # a3 = 80910000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_8090D790)  # a3 = 8090D790
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004B960              
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x036C             # a1 = 0000036C
    sw      a1, 0x0030($sp)            
    jal     func_8004B858              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_8090D790)      # a3 = 80910000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_8090D790)  # a3 = 8090D790
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004B960              
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x03EC             # a1 = 000003EC
    sw      a1, 0x0030($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_8090D7E0)      # a3 = 80910000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_8090D7E0)  # a3 = 8090D7E0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lui     a1, %hi(var_8090D814)      # a1 = 80910000
    lui     a2, %hi(var_8090D80C)      # a2 = 80910000
    addiu   a2, a2, %lo(var_8090D80C)  # a2 = 8090D80C
    addiu   a1, a1, %lo(var_8090D814)  # a1 = 8090D814
    jal     func_80050344              
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_8090B7FC              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t0, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t2, s0, 0x0024             # t2 = 00000024
    and     t1, t0, $at                
    sw      t1, 0x0004(s0)             # 00000004
    sw      t2, 0x0010($sp)            
    addiu   a0, s1, 0x07C0             # a0 = 000007C0
    addiu   a1, s0, 0x0078             # a1 = 00000078
    addiu   a2, $sp, 0x0034            # a2 = FFFFFFF4
    jal     func_8002F4B8              # Raycast
    or      a3, s0, $zero              # a3 = 00000000
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f4                   # $f4 = -32000.00
    swc1    $f0, 0x0080(s0)            # 00000080
    sh      $zero, 0x001C(s0)          # 0000001C
    c.eq.s  $f0, $f4                   
    nop
    bc1fl   lbl_8090B79C               
    lw      $ra, 0x002C($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
lbl_8090B79C:
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_8090B7AC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004B8A8              
    addiu   a1, a1, 0x02EC             # a1 = 000002EC
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004B8A8              
    addiu   a1, a1, 0x036C             # a1 = 0000036C
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x03EC             # a1 = 000003EC
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8090B7FC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x14AC             # a1 = 060014AC
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D2D4              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lui     t8, %hi(func_8090C024)     # t8 = 80910000
    addiu   t8, t8, %lo(func_8090C024) # t8 = 8090C024
    lbu     t6, 0x03FD(a2)             # 000003FD
    sw      $zero, 0x0134(a2)          # 00000134
    sw      t8, 0x0180(a2)             # 00000180
    andi    t7, t6, 0xFFFE             # t7 = 00000000
    sb      t7, 0x03FD(a2)             # 000003FD
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8090B84C:
    lw      t7, 0x0004(a0)             # 00000004
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     t6, %hi(func_8090D628)     # t6 = 80910000
    lui     t9, %hi(func_8090C064)     # t9 = 80910000
    addiu   t6, t6, %lo(func_8090D628) # t6 = 8090D628
    addiu   t9, t9, %lo(func_8090C064) # t9 = 8090C064
    ori     t8, t7, 0x0001             # t8 = 00000001
    sw      t6, 0x0134(a0)             # 00000134
    sw      t8, 0x0004(a0)             # 00000004
    sw      t9, 0x0180(a0)             # 00000180
    swc1    $f4, 0x0060(a0)            # 00000060
    jr      $ra                        
    nop


func_8090B884:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0710             # a1 = 06000710
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC040                 # a2 = C0400000
    jal     func_8008D328              
    sw      a3, 0x0090($sp)            
    lw      a3, 0x0090($sp)            
    addiu   v0, $sp, 0x003C            # v0 = FFFFFFAC
    addiu   v1, $sp, 0x0048            # v1 = FFFFFFB8
    lw      t7, 0x0024(a3)             # 00000024
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFC4
    addiu   a1, $sp, 0x0060            # a1 = FFFFFFD0
    sw      t7, 0x0000(v0)             # FFFFFFAC
    lw      t6, 0x0028(a3)             # 00000028
    lw      t9, 0x0000(v0)             # FFFFFFAC
    addiu   a2, $sp, 0x006C            # a2 = FFFFFFDC
    sw      t6, 0x0004(v0)             # FFFFFFB0
    lw      t7, 0x002C(a3)             # 0000002C
    addiu   t0, $sp, 0x0078            # t0 = FFFFFFE8
    addiu   t1, $sp, 0x0084            # t1 = FFFFFFF4
    sw      t7, 0x0008(v0)             # FFFFFFB4
    sw      t9, 0x03B8(a3)             # 000003B8
    lw      t8, 0x0004(v0)             # FFFFFFB0
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    sw      t8, 0x03BC(a3)             # 000003BC
    lw      t9, 0x0008(v0)             # FFFFFFB4
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    sw      t9, 0x03C0(a3)             # 000003C0
    lw      t3, 0x0000(v0)             # FFFFFFAC
    lw      t2, 0x0004(v0)             # FFFFFFB0
    sw      t3, 0x0000(v1)             # FFFFFFB8
    lw      t3, 0x0008(v0)             # FFFFFFB4
    lw      t5, 0x0000(v1)             # FFFFFFB8
    sw      t2, 0x0004(v1)             # FFFFFFBC
    sw      t3, 0x0008(v1)             # FFFFFFC0
    sw      t5, 0x03AC(a3)             # 000003AC
    lw      t4, 0x0004(v1)             # FFFFFFBC
    sw      t4, 0x03B0(a3)             # 000003B0
    lw      t5, 0x0008(v1)             # FFFFFFC0
    sw      t5, 0x03B4(a3)             # 000003B4
    lw      t7, 0x0000(v1)             # FFFFFFB8
    lw      t6, 0x0004(v1)             # FFFFFFBC
    sw      t7, 0x0000(a0)             # FFFFFFC4
    lw      t7, 0x0008(v1)             # FFFFFFC0
    lw      t9, 0x0000(a0)             # FFFFFFC4
    sw      t6, 0x0004(a0)             # FFFFFFC8
    sw      t7, 0x0008(a0)             # FFFFFFCC
    sw      t9, 0x0338(a3)             # 00000338
    lw      t8, 0x0004(a0)             # FFFFFFC8
    sw      t8, 0x033C(a3)             # 0000033C
    lw      t9, 0x0008(a0)             # FFFFFFCC
    sw      t9, 0x0340(a3)             # 00000340
    lw      t3, 0x0000(a0)             # FFFFFFC4
    lw      t2, 0x0004(a0)             # FFFFFFC8
    sw      t3, 0x0000(a1)             # FFFFFFD0
    lw      t3, 0x0008(a0)             # FFFFFFCC
    lw      t5, 0x0000(a1)             # FFFFFFD0
    sw      t2, 0x0004(a1)             # FFFFFFD4
    sw      t3, 0x0008(a1)             # FFFFFFD8
    sw      t5, 0x032C(a3)             # 0000032C
    lw      t4, 0x0004(a1)             # FFFFFFD4
    sw      t4, 0x0330(a3)             # 00000330
    lw      t5, 0x0008(a1)             # FFFFFFD8
    sw      t5, 0x0334(a3)             # 00000334
    lw      t7, 0x0000(a1)             # FFFFFFD0
    lw      t6, 0x0004(a1)             # FFFFFFD4
    sw      t7, 0x0000(a2)             # FFFFFFDC
    lw      t7, 0x0008(a1)             # FFFFFFD8
    lw      t9, 0x0000(a2)             # FFFFFFDC
    sw      t6, 0x0004(a2)             # FFFFFFE0
    sw      t7, 0x0008(a2)             # FFFFFFE4
    sw      t9, 0x03D0(a3)             # 000003D0
    lw      t8, 0x0004(a2)             # FFFFFFE0
    sw      t8, 0x03D4(a3)             # 000003D4
    lw      t9, 0x0008(a2)             # FFFFFFE4
    sw      t9, 0x03D8(a3)             # 000003D8
    lw      t3, 0x0000(a2)             # FFFFFFDC
    lw      t2, 0x0004(a2)             # FFFFFFE0
    sw      t3, 0x0000(t0)             # FFFFFFE8
    lw      t3, 0x0008(a2)             # FFFFFFE4
    lw      t5, 0x0000(t0)             # FFFFFFE8
    sw      t2, 0x0004(t0)             # FFFFFFEC
    sw      t3, 0x0008(t0)             # FFFFFFF0
    sw      t5, 0x03C4(a3)             # 000003C4
    lw      t4, 0x0004(t0)             # FFFFFFEC
    sw      t4, 0x03C8(a3)             # 000003C8
    lw      t5, 0x0008(t0)             # FFFFFFF0
    sw      t5, 0x03CC(a3)             # 000003CC
    lw      t7, 0x0000(t0)             # FFFFFFE8
    lw      t6, 0x0004(t0)             # FFFFFFEC
    sw      t7, 0x0000(t1)             # FFFFFFF4
    lw      t7, 0x0008(t0)             # FFFFFFF0
    lw      t9, 0x0000(t1)             # FFFFFFF4
    sw      t6, 0x0004(t1)             # FFFFFFF8
    sw      t7, 0x0008(t1)             # FFFFFFFC
    sw      t9, 0x0350(a3)             # 00000350
    lw      t8, 0x0004(t1)             # FFFFFFF8
    lwc1    $f2, 0x0028(a3)            # 00000028
    lw      t4, 0x0004(a3)             # 00000004
    sw      t8, 0x0354(a3)             # 00000354
    lw      t9, 0x0008(t1)             # FFFFFFFC
    sub.s   $f0, $f2, $f4              
    lbu     t6, 0x03FD(a3)             # 000003FD
    sw      t9, 0x0358(a3)             # 00000358
    lw      t3, 0x0000(t1)             # FFFFFFF4
    lui     t8, %hi(func_8090C0F8)     # t8 = 80910000
    addiu   t8, t8, %lo(func_8090C0F8) # t8 = 8090C0F8
    sw      t3, 0x0344(a3)             # 00000344
    lw      t2, 0x0004(t1)             # FFFFFFF8
    and     t5, t4, $at                
    ori     t7, t6, 0x0001             # t7 = 00000001
    sw      t2, 0x0348(a3)             # 00000348
    lw      t3, 0x0008(t1)             # FFFFFFFC
    swc1    $f0, 0x0348(a3)            # 00000348
    swc1    $f0, 0x0354(a3)            # 00000354
    swc1    $f0, 0x03C8(a3)            # 000003C8
    swc1    $f0, 0x03D4(a3)            # 000003D4
    swc1    $f0, 0x0330(a3)            # 00000330
    swc1    $f0, 0x033C(a3)            # 0000033C
    swc1    $f0, 0x03B0(a3)            # 000003B0
    swc1    $f0, 0x03BC(a3)            # 000003BC
    sw      t5, 0x0004(a3)             # 00000004
    sb      t7, 0x03FD(a3)             # 000003FD
    sb      $zero, 0x0185(a3)          # 00000185
    sw      t8, 0x0180(a3)             # 00000180
    swc1    $f2, 0x02E8(a3)            # 000002E8
    sw      t3, 0x034C(a3)             # 0000034C
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0090           # $sp = 00000000


func_8090BA9C:
    lw      t7, 0x0004(a0)             # 00000004
    lbu     t9, 0x03FD(a0)             # 000003FD
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     t1, %hi(func_8090C2A4)     # t1 = 80910000
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    addiu   t1, t1, %lo(func_8090C2A4) # t1 = 8090C2A4
    and     t8, t7, $at                
    and     t0, t9, $at                
    sb      t6, 0x0184(a0)             # 00000184
    sw      t8, 0x0004(a0)             # 00000004
    sb      t0, 0x03FD(a0)             # 000003FD
    sw      t1, 0x0180(a0)             # 00000180
    jr      $ra                        
    nop


func_8090BAD4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0854             # a1 = 06000854
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0xC0A0                 # a2 = C0A00000
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    sw      t6, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x0096          # a2 = 00000096
    jal     func_80027090              
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    lbu     t7, 0x03FD(s0)             # 000003FD
    lui     t9, %hi(func_8090C35C)     # t9 = 80910000
    addiu   t9, t9, %lo(func_8090C35C) # t9 = 8090C35C
    andi    t8, t7, 0xFFFE             # t8 = 00000000
    sh      $zero, 0x001C(s0)          # 0000001C
    sb      t8, 0x03FD(s0)             # 000003FD
    sw      t9, 0x0180(s0)             # 00000180
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8090BB44:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0B34             # a1 = 06000B34
    jal     func_8008D1C4              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t7, 0x0018($sp)            
    lui     t6, %hi(func_8090C3B8)     # t6 = 80910000
    addiu   t6, t6, %lo(func_8090C3B8) # t6 = 8090C3B8
    sw      t6, 0x0180(t7)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8090BB84:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lbu     t7, 0x03FD(a0)             # 000003FD
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sh      t6, 0x0186(a0)             # 00000186
    andi    t8, t7, 0xFFFE             # t8 = 00000000
    sb      t8, 0x03FD(a0)             # 000003FD
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    sw      t9, 0x0010($sp)            
    sw      a0, 0x0020($sp)            
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x0096          # a2 = 00000096
    jal     func_80027090              
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    lw      a0, 0x0020($sp)            
    lui     t0, %hi(func_8090C3F4)     # t0 = 80910000
    addiu   t0, t0, %lo(func_8090C3F4) # t0 = 8090C3F4
    sw      t0, 0x0180(a0)             # 00000180
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8090BBDC:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s4, 0x0040($sp)            
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s3, 0x003C($sp)            
    sw      s2, 0x0038($sp)            
    sw      s1, 0x0034($sp)            
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s2, s4, 0x1C24             # s2 = 00001C24
    addiu   s3, $zero, 0x0003          # s3 = 00000003
lbl_8090BC0C:
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    or      a0, s2, $zero              # a0 = 00001C24
    swc1    $f4, 0x0010($sp)           
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      $zero, 0x0018($sp)         
    or      a1, s4, $zero              # a1 = 00000000
    swc1    $f6, 0x0014($sp)           
    lh      t6, 0x0032(s0)             # 00000032
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    addiu   a2, $zero, 0x0034          # a2 = 00000034
    jal     func_80025110              # ActorSpawn
    sw      t6, 0x001C($sp)            
    lh      t7, 0x0032(s0)             # 00000032
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   t8, t7, 0x5555             # t8 = 00005555
    bne     s1, s3, lbl_8090BC0C       
    sh      t8, 0x0032(s0)             # 00000032
    addiu   s1, s0, 0x0024             # s1 = 00000024
    or      a2, s1, $zero              # a2 = 00000024
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80013A84              
    addiu   a3, $zero, 0x0050          # a3 = 00000050
    addiu   a0, $zero, 0x000A          # a0 = 0000000A
    jal     func_80063BF0              
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    lbu     t9, 0x03FD(s0)             # 000003FD
    sh      v0, 0x0186(s0)             # 00000186
    or      a0, s4, $zero              # a0 = 00000000
    andi    t0, t9, 0xFFFE             # t0 = 00000000
    sb      t0, 0x03FD(s0)             # 000003FD
    or      a1, s1, $zero              # a1 = 00000024
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8              
    addiu   a3, $zero, 0x3887          # a3 = 00003887
    lw      t1, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     t3, %hi(func_8090C430)     # t3 = 80910000
    addiu   t3, t3, %lo(func_8090C430) # t3 = 8090C430
    and     t2, t1, $at                
    sw      t2, 0x0004(s0)             # 00000004
    sw      $zero, 0x0134(s0)          # 00000134
    sw      t3, 0x0180(s0)             # 00000180
    lw      $ra, 0x0044($sp)           
    lw      s0, 0x0030($sp)            
    lw      s1, 0x0034($sp)            
    lw      s2, 0x0038($sp)            
    lw      s3, 0x003C($sp)            
    lw      s4, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_8090BCE0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0710             # a1 = 06000710
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0x4120                 # a2 = 41200000
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0050          # t6 = 00000050
    sh      t6, 0x0186(s0)             # 00000186
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    swc1    $f4, 0x0060(s0)            # 00000060
    sw      t7, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    sb      $zero, 0x0410(s0)          # 00000410
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lui     t8, %hi(func_8090C5E4)     # t8 = 80910000
    addiu   t8, t8, %lo(func_8090C5E4) # t8 = 8090C5E4
    sw      t8, 0x0180(s0)             # 00000180
    swc1    $f6, 0x0060(s0)            # 00000060
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8090BD6C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0024          # t6 = 00000024
    or      a1, $zero, $zero           # a1 = 00000000
    swc1    $f4, 0x0060(a0)            # 00000060
    sw      a0, 0x0020($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    lw      a0, 0x0020($sp)            
    lui     t0, %hi(func_8090C6A0)     # t0 = 80910000
    addiu   t9, $zero, 0x0024          # t9 = 00000024
    lbu     t7, 0x03FD(a0)             # 000003FD
    addiu   t0, t0, %lo(func_8090C6A0) # t0 = 8090C6A0
    sh      t9, 0x0186(a0)             # 00000186
    andi    t8, t7, 0xFFFE             # t8 = 00000000
    sb      t8, 0x03FD(a0)             # 000003FD
    sw      t0, 0x0180(a0)             # 00000180
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8090BDCC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x14AC             # a1 = 060014AC
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0x4120                 # a2 = 41200000
    jal     func_8008D21C              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     t0, %hi(func_8090C830)     # t0 = 80910000
    lw      t6, 0x0004(a3)             # 00000004
    addiu   t0, t0, %lo(func_8090C830) # t0 = 8090C830
    sw      t0, 0x0180(a3)             # 00000180
    ori     t7, t6, 0x0010             # t7 = 00000010
    and     t9, t7, $at                
    sw      t7, 0x0004(a3)             # 00000004
    sw      t9, 0x0004(a3)             # 00000004
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8090BE28:
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sw      s4, 0x0060($sp)            
    sw      s2, 0x0058($sp)            
    or      s2, a1, $zero              # s2 = 00000000
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x0074($sp)           
    sw      s8, 0x0070($sp)            
    sw      s7, 0x006C($sp)            
    sw      s6, 0x0068($sp)            
    sw      s5, 0x0064($sp)            
    sw      s3, 0x005C($sp)            
    sw      s1, 0x0054($sp)            
    sw      s0, 0x0050($sp)            
    sdc1    $f28, 0x0048($sp)          
    sdc1    $f26, 0x0040($sp)          
    sdc1    $f24, 0x0038($sp)          
    sdc1    $f22, 0x0030($sp)          
    sdc1    $f20, 0x0028($sp)          
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f28                  # $f28 = 10.00
    lui     $at, 0x4640                # $at = 46400000
    mtc1    $at, $f26                  # $f26 = 12288.00
    lui     $at, 0x4140                # $at = 41400000
    lui     s7, %hi(var_8090D844)      # s7 = 80910000
    lui     s6, %hi(var_8090D840)      # s6 = 80910000
    mtc1    $at, $f20                  # $f20 = 12.00
    addiu   s6, s6, %lo(var_8090D840)  # s6 = 8090D840
    addiu   s7, s7, %lo(var_8090D844)  # s7 = 8090D844
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s8, $zero, 0x0004          # s8 = 00000004
    addiu   s5, $sp, 0x008C            # s5 = FFFFFFF4
    lh      t6, 0x07A0(s2)             # 000007A0
lbl_8090BEA8:
    sll     t7, t6,  2                 
    addu    t8, s2, t7                 
    jal     func_8004977C              
    lw      a0, 0x0790(t8)             # 00000790
    sll     a0, v0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lh      t9, 0x07A0(s2)             # 000007A0
    neg.s   $f22, $f0                  
    sll     t0, t9,  2                 
    addu    t1, s2, t0                 
    jal     func_8004977C              
    lw      a0, 0x0790(t1)             # 00000790
    sll     a0, v0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lbu     t2, 0x0184(s4)             # 00000184
    sll     t3, s1,  1                 
    mov.s   $f24, $f0                  
    addu    t4, t2, t3                 
    bgez    t4, lbl_8090BF0C           
    andi    t5, t4, 0x0003             # t5 = 00000000
    beq     t5, $zero, lbl_8090BF0C    
    nop
    addiu   t5, t5, 0xFFFC             # t5 = FFFFFFFC
lbl_8090BF0C:
    bne     t5, $zero, lbl_8090BFC8    
    sll     s3, s1, 14                 
    jal     func_80026D90              
    mov.s   $f12, $f26                 
    trunc.w.s $f4, $f0                   
    mfc1    t9, $f4                    
    nop
    addu    v0, t9, s3                 
    addiu   v0, v0, 0x2000             # v0 = 00002000
    sll     s0, v0, 16                 
    sll     a0, v0, 16                 
    sra     s0, s0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mul.s   $f6, $f0, $f20             
    lwc1    $f10, 0x0024(s4)           # 00000024
    sll     a0, s0, 16                 
    sra     a0, a0, 16                 
    mul.s   $f8, $f6, $f22             
    add.s   $f16, $f8, $f10            
    jal     func_80063684              # coss?
    swc1    $f16, 0x008C($sp)          
    mul.s   $f4, $f0, $f20             
    lwc1    $f18, 0x0028(s4)           # 00000028
    sll     a0, s0, 16                 
    sra     a0, a0, 16                 
    sub.s   $f6, $f18, $f4             
    add.s   $f8, $f6, $f28             
    jal     func_800636C4              # sins?
    swc1    $f8, 0x0090($sp)           
    mul.s   $f10, $f0, $f20            
    lwc1    $f18, 0x002C(s4)           # 0000002C
    addiu   t0, $zero, 0x0011          # t0 = 00000011
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sw      t2, 0x001C($sp)            
    sw      t1, 0x0018($sp)            
    mul.s   $f16, $f10, $f24           
    sw      t0, 0x0010($sp)            
    sw      s0, 0x0014($sp)            
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = FFFFFFF4
    or      a2, s6, $zero              # a2 = 8090D840
    or      a3, s7, $zero              # a3 = 8090D844
    add.s   $f4, $f16, $f18            
    jal     func_8001D098              
    swc1    $f4, 0x0094($sp)           
lbl_8090BFC8:
    addiu   s1, s1, 0x0001             # s1 = 00000001
    bnel    s1, s8, lbl_8090BEA8       
    lh      t6, 0x07A0(s2)             # 000007A0
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_8002313C              
    addiu   a1, $zero, 0x309A          # a1 = 0000309A
    lw      $ra, 0x0074($sp)           
    ldc1    $f20, 0x0028($sp)          
    ldc1    $f22, 0x0030($sp)          
    ldc1    $f24, 0x0038($sp)          
    ldc1    $f26, 0x0040($sp)          
    ldc1    $f28, 0x0048($sp)          
    lw      s0, 0x0050($sp)            
    lw      s1, 0x0054($sp)            
    lw      s2, 0x0058($sp)            
    lw      s3, 0x005C($sp)            
    lw      s4, 0x0060($sp)            
    lw      s5, 0x0064($sp)            
    lw      s6, 0x0068($sp)            
    lw      s7, 0x006C($sp)            
    lw      s8, 0x0070($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0098           # $sp = 00000000


func_8090C024:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f6                   # $f6 = 150.00
    lwc1    $f4, 0x0090(a0)            # 00000090
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_8090C058               
    lw      $ra, 0x0014($sp)           
    jal     func_8090B84C              
    nop
    lw      $ra, 0x0014($sp)           
lbl_8090C058:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8090C064:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f2                   # $f2 = 40.00
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f6                   # $f6 = 1.50
    lwc1    $f4, 0x0060(s0)            # 00000060
    addiu   a0, s0, 0x0028             # a0 = 00000028
    mul.s   $f8, $f4, $f6              
    swc1    $f8, 0x0060(s0)            # 00000060
    lwc1    $f0, 0x0060(s0)            # 00000060
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_8090C0C0               
    swc1    $f0, 0x0060(s0)            # 00000060
    beq     $zero, $zero, lbl_8090C0C0 
    swc1    $f2, 0x0060(s0)            # 00000060
    swc1    $f0, 0x0060(s0)            # 00000060
lbl_8090C0C0:
    lw      a1, 0x0080(s0)             # 00000080
    jal     func_8006385C              
    lw      a2, 0x0060(s0)             # 00000060
    beq     v0, $zero, lbl_8090C0E4    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    jal     func_8090B884              
    or      a0, s0, $zero              # a0 = 00000000
lbl_8090C0E4:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8090C0F8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lbu     v0, 0x0185(s0)             # 00000185
    lui     $at, 0x4220                # $at = 42200000
    beq     v0, $zero, lbl_8090C128    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sb      t6, 0x0185(s0)             # 00000185
lbl_8090C128:
    lwc1    $f4, 0x0154(s0)            # 00000154
    lwc1    $f8, 0x0080(s0)            # 00000080
    mtc1    $at, $f10                  # $f10 = 40.00
    trunc.w.s $f6, $f4                   
    lui     a2, 0x3F99                 # a2 = 3F990000
    ori     a2, a2, 0x999A             # a2 = 3F99999A
    add.s   $f16, $f8, $f10            
    mfc1    v1, $f6                    
    addiu   a0, s0, 0x02E8             # a0 = 000002E8
    mfc1    a1, $f16                   
    jal     func_8006385C              
    sw      v1, 0x0024($sp)            
    lw      v1, 0x0024($sp)            
    lui     $at, %hi(var_8090D8B0)     # $at = 80910000
    lwc1    $f6, %lo(var_8090D8B0)($at) 
    mtc1    v1, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_8090D8B4)     # $at = 80910000
    lwc1    $f10, %lo(var_8090D8B4)($at) 
    cvt.s.w $f4, $f18                  
    mul.s   $f8, $f4, $f6              
    nop
    mul.s   $f12, $f8, $f10            
    jal     func_800CF470              
    nop
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f18                  # $f18 = 8.00
    lwc1    $f16, 0x02E8(s0)           # 000002E8
    lbu     v0, 0x0185(s0)             # 00000185
    mul.s   $f4, $f0, $f18             
    lw      v1, 0x0024($sp)            
    addiu   $at, $zero, 0x0010         # $at = 00000010
    sub.s   $f6, $f16, $f4             
    beq     v0, $zero, lbl_8090C1F4    
    swc1    $f6, 0x0028(s0)            # 00000028
    addiu   $at, $zero, 0x0006         # $at = 00000006
    div     $zero, v0, $at             
    lh      t8, 0x00B6(s0)             # 000000B6
    mfhi    t0                         
    slti    $at, v1, 0x0010            
    addiu   t9, t8, 0x0800             # t9 = 00000800
    bne     t0, $zero, lbl_8090C224    
    sh      t9, 0x00B6(s0)             # 000000B6
    bne     $at, $zero, lbl_8090C224   
    slti    $at, v1, 0x0038            
    beq     $at, $zero, lbl_8090C224   
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x389D          # a1 = 0000389D
    jal     func_80022FD0              
    sw      v1, 0x0024($sp)            
    beq     $zero, $zero, lbl_8090C224 
    lw      v1, 0x0024($sp)            
lbl_8090C1F4:
    beq     v1, $at, lbl_8090C214      
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    beq     v1, $at, lbl_8090C214      
    addiu   $at, $zero, 0x002A         # $at = 0000002A
    beq     v1, $at, lbl_8090C214      
    addiu   $at, $zero, 0x0037         # $at = 00000037
    bne     v1, $at, lbl_8090C224      
lbl_8090C214:
    addiu   a1, $zero, 0x389D          # a1 = 0000389D
    jal     func_80022FD0              
    sw      v1, 0x0024($sp)            
    lw      v1, 0x0024($sp)            
lbl_8090C224:
    slti    $at, v1, 0x0029            
    bne     $at, $zero, lbl_8090C234   
    addiu   t1, $zero, 0x0050          # t1 = 00000050
    subu    v1, t1, v1                 
lbl_8090C234:
    addiu   t2, v1, 0x0004             # t2 = 00000004
    mtc1    t2, $f8                    # $f8 = 0.00
    lui     $at, %hi(var_8090D8B8)     # $at = 80910000
    lwc1    $f18, %lo(var_8090D8B8)($at) 
    cvt.s.w $f10, $f8                  
    lui     $at, %hi(var_8090D8BC)     # $at = 80910000
    lwc1    $f4, %lo(var_8090D8BC)($at) 
    lui     $at, 0x437A                # $at = 437A0000
    lh      t7, 0x00B6(s0)             # 000000B6
    mul.s   $f16, $f10, $f18           
    lwc1    $f18, 0x0090(s0)           # 00000090
    mtc1    $at, $f10                  # $f10 = 250.00
    nop
    c.lt.s  $f10, $f18                 
    mul.s   $f6, $f16, $f4             
    trunc.w.s $f8, $f6                   
    mfc1    t6, $f8                    
    nop
    addu    t8, t7, t6                 
    bc1f    lbl_8090C290               
    sh      t8, 0x00B6(s0)             # 000000B6
    jal     func_8090BDCC              
    or      a0, s0, $zero              # a0 = 00000000
lbl_8090C290:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8090C2A4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lbu     v0, 0x0184(a0)             # 00000184
    beq     v0, $zero, lbl_8090C2BC    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sb      t6, 0x0184(a0)             # 00000184
lbl_8090C2BC:
    jal     func_8090BE28              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lbu     v0, 0x0184(a0)             # 00000184
    bne     v0, $zero, lbl_8090C318    
    andi    t3, v0, 0x0001             # t3 = 00000000
    lw      t7, 0x0004(a0)             # 00000004
    lbu     t9, 0x03FD(a0)             # 000003FD
    lh      t1, 0x001C(a0)             # 0000001C
    ori     t8, t7, 0x0001             # t8 = 00000001
    ori     t0, t9, 0x0001             # t0 = 00000001
    sw      t8, 0x0004(a0)             # 00000004
    bne     t1, $at, lbl_8090C308      
    sb      t0, 0x03FD(a0)             # 000003FD
    jal     func_8090BAD4              
    nop
    beq     $zero, $zero, lbl_8090C350 
    lw      $ra, 0x0014($sp)           
lbl_8090C308:
    lui     t2, %hi(func_8090C0F8)     # t2 = 80910000
    addiu   t2, t2, %lo(func_8090C0F8) # t2 = 8090C0F8
    beq     $zero, $zero, lbl_8090C34C 
    sw      t2, 0x0180(a0)             # 00000180
lbl_8090C318:
    beq     t3, $zero, lbl_8090C338    
    lui     $at, 0x3F80                # $at = 3F800000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x0028(a0)            # 00000028
    add.s   $f8, $f4, $f6              
    beq     $zero, $zero, lbl_8090C34C 
    swc1    $f8, 0x0028(a0)            # 00000028
lbl_8090C338:
    lwc1    $f10, 0x0028(a0)           # 00000028
    mtc1    $at, $f16                  # $f16 = 1.00
    nop
    sub.s   $f18, $f10, $f16           
    swc1    $f18, 0x0028(a0)           # 00000028
lbl_8090C34C:
    lw      $ra, 0x0014($sp)           
lbl_8090C350:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8090C35C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_8090C3A8    
    lw      a2, 0x0018($sp)            
    lbu     t6, 0x00AF(a2)             # 000000AF
    or      a0, a2, $zero              # a0 = 00000000
    beq     t6, $zero, lbl_8090C3A0    
    nop
    jal     func_8090BB44              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8090C3AC 
    lw      $ra, 0x0014($sp)           
lbl_8090C3A0:
    jal     func_8090BBDC              
    lw      a1, 0x001C($sp)            
lbl_8090C3A8:
    lw      $ra, 0x0014($sp)           
lbl_8090C3AC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8090C3B8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_8090C3E8    
    lw      $ra, 0x0014($sp)           
    jal     func_8090B884              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
lbl_8090C3E8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8090C3F4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      v0, 0x0186(a0)             # 00000186
    beq     v0, $zero, lbl_8090C410    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(a0)             # 00000186
    lh      v0, 0x0186(a0)             # 00000186
lbl_8090C410:
    bnel    v0, $zero, lbl_8090C424    
    lw      $ra, 0x0014($sp)           
    jal     func_8090BBDC              
    nop
    lw      $ra, 0x0014($sp)           
lbl_8090C424:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8090C430:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s6, 0x005C($sp)            
    sw      s2, 0x004C($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    or      s6, a1, $zero              # s6 = 00000000
    sw      $ra, 0x0064($sp)           
    sw      s7, 0x0060($sp)            
    sw      s5, 0x0058($sp)            
    sw      s4, 0x0054($sp)            
    sw      s3, 0x0050($sp)            
    sw      s1, 0x0048($sp)            
    sw      s0, 0x0044($sp)            
    sdc1    $f26, 0x0038($sp)          
    sdc1    $f24, 0x0030($sp)          
    sdc1    $f22, 0x0028($sp)          
    sdc1    $f20, 0x0020($sp)          
    lh      v0, 0x0186(s2)             # 00000186
    or      s1, $zero, $zero           # s1 = 00000000
    lui     $at, %hi(var_8090D8C0)     # $at = 80910000
    beq     v0, $zero, lbl_8090C48C    
    addiu   s7, $zero, 0x0002          # s7 = 00000002
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(s2)             # 00000186
lbl_8090C48C:
    lwc1    $f26, %lo(var_8090D8C0)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f24                  # $f24 = 1.00
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f22                  # $f22 = 8.00
    lui     $at, 0x41A0                # $at = 41A00000
    lui     s5, %hi(var_8090D854)      # s5 = 80910000
    lui     s4, %hi(var_8090D848)      # s4 = 80910000
    mtc1    $at, $f20                  # $f20 = 20.00
    addiu   s4, s4, %lo(var_8090D848)  # s4 = 8090D848
    addiu   s5, s5, %lo(var_8090D854)  # s5 = 8090D854
    addiu   s3, $sp, 0x0070            # s3 = FFFFFFF0
lbl_8090C4BC:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    lwc1    $f4, 0x0024(s2)            # 00000024
    mov.s   $f12, $f22                 
    add.s   $f6, $f0, $f4              
    jal     func_80026D90              
    swc1    $f6, 0x0070($sp)           
    lwc1    $f8, 0x0028(s2)            # 00000028
    mov.s   $f12, $f20                 
    add.s   $f10, $f0, $f8             
    jal     func_80026D90              
    swc1    $f10, 0x0074($sp)          
    lwc1    $f16, 0x002C(s2)           # 0000002C
    add.s   $f18, $f0, $f16            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0078($sp)          
    add.s   $f4, $f0, $f24             
    lui     $at, %hi(var_8090D84C)     # $at = 80910000
    addiu   a0, $zero, 0x0028          # a0 = 00000028
    addiu   a1, $zero, 0x0028          # a1 = 00000028
    jal     func_80063BF0              
    swc1    $f4, %lo(var_8090D84C)($at) 
    sll     s0, v0, 16                 
    jal     func_800CDCCC              # Rand.Next() float
    sra     s0, s0, 16                 
    c.lt.s  $f0, $f26                  
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFF0
    or      a2, s4, $zero              # a2 = 8090D848
    bc1f    lbl_8090C56C               
    or      a3, s5, $zero              # a3 = 8090D854
    addiu   t7, $zero, 0x0019          # t7 = 00000019
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x001C($sp)            
    sw      t7, 0x0014($sp)            
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFF0
    or      a2, s4, $zero              # a2 = 8090D848
    or      a3, s5, $zero              # a3 = 8090D854
    sw      s0, 0x0010($sp)            
    jal     func_8001D110              
    sw      s7, 0x0018($sp)            
    beq     $zero, $zero, lbl_8090C58C 
    addiu   s1, s1, 0x0001             # s1 = 00000001
lbl_8090C56C:
    addiu   t9, $zero, 0x0019          # t9 = 00000019
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x001C($sp)            
    sw      t9, 0x0014($sp)            
    sw      s0, 0x0010($sp)            
    jal     func_8001D110              
    sw      $zero, 0x0018($sp)         
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_8090C58C:
    bne     s1, s7, lbl_8090C4BC       
    nop
    lh      t1, 0x0186(s2)             # 00000186
    bnel    t1, $zero, lbl_8090C5AC    
    lw      $ra, 0x0064($sp)           
    jal     func_80020EB4              
    or      a0, s2, $zero              # a0 = 00000000
    lw      $ra, 0x0064($sp)           
lbl_8090C5AC:
    ldc1    $f20, 0x0020($sp)          
    ldc1    $f22, 0x0028($sp)          
    ldc1    $f24, 0x0030($sp)          
    ldc1    $f26, 0x0038($sp)          
    lw      s0, 0x0044($sp)            
    lw      s1, 0x0048($sp)            
    lw      s2, 0x004C($sp)            
    lw      s3, 0x0050($sp)            
    lw      s4, 0x0054($sp)            
    lw      s5, 0x0058($sp)            
    lw      s6, 0x005C($sp)            
    lw      s7, 0x0060($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0080           # $sp = 00000000


func_8090C5E4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      v1, 0x0186(s0)             # 00000186
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a0, s0, 0x0028             # a0 = 00000028
    beq     v1, $zero, lbl_8090C618    
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(s0)             # 00000186
lbl_8090C618:
    lwc1    $f0, 0x0060(s0)            # 00000060
    c.eq.s  $f4, $f0                   
    nop
    bc1tl   lbl_8090C674               
    lh      t7, 0x0186(s0)             # 00000186
    mfc1    a2, $f0                    
    jal     func_8006385C              
    lw      a1, 0x0080(s0)             # 00000080
    beq     v0, $zero, lbl_8090C65C    
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $zero, $f6                 # $f6 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    jal     func_80022FD0              
    swc1    $f6, 0x0060(s0)            # 00000060
    beq     $zero, $zero, lbl_8090C674 
    lh      t7, 0x0186(s0)             # 00000186
lbl_8090C65C:
    lwc1    $f8, 0x0060(s0)            # 00000060
    mtc1    $at, $f10                  # $f10 = 0.00
    nop
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x0060(s0)           # 00000060
    lh      t7, 0x0186(s0)             # 00000186
lbl_8090C674:
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t7, $zero, lbl_8090C690    
    lw      $ra, 0x001C($sp)           
    jal     func_8090B884              
    sb      t8, 0x0410(s0)             # 00000410
    lw      $ra, 0x001C($sp)           
lbl_8090C690:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8090C6A0:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      a1, 0x0064($sp)            
    lh      v0, 0x0186(s0)             # 00000186
    addiu   t7, $zero, 0x0024          # t7 = 00000024
    beq     v0, $zero, lbl_8090C6CC    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0186(s0)             # 00000186
    lh      v0, 0x0186(s0)             # 00000186
lbl_8090C6CC:
    addiu   v1, v0, 0xFFEC             # v1 = FFFFFFEC
    blez    v1, lbl_8090C7E0           
    sb      t7, 0x0114(s0)             # 00000114
    andi    t8, v0, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_8090C81C    
    sra     v0, v1,  1                 
    subu    t9, $zero, v0              
    sll     t0, t9,  2                 
    addu    t0, t0, t9                 
    addiu   t1, t0, 0x0028             # t1 = 00000028
    mtc1    t1, $f10                   # $f10 = 0.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    cvt.s.w $f16, $f10                 
    andi    t2, v0, 0x0002             # t2 = 00000000
    lui     $at, 0xC140                # $at = C1400000
    sub.s   $f8, $f4, $f6              
    add.s   $f18, $f8, $f16            
    beq     t2, $zero, lbl_8090C730    
    swc1    $f18, 0x0058($sp)          
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f0                   # $f0 = 12.00
    beq     $zero, $zero, lbl_8090C73C 
    lwc1    $f4, 0x0024(s0)            # 00000024
lbl_8090C730:
    mtc1    $at, $f0                   # $f0 = 12.00
    nop
    lwc1    $f4, 0x0024(s0)            # 00000024
lbl_8090C73C:
    andi    t3, v0, 0x0001             # t3 = 00000000
    lui     $at, 0xC140                # $at = C1400000
    add.s   $f6, $f0, $f4              
    beq     t3, $zero, lbl_8090C760    
    swc1    $f6, 0x0054($sp)           
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f0                   # $f0 = 12.00
    beq     $zero, $zero, lbl_8090C76C 
    lwc1    $f10, 0x002C(s0)           # 0000002C
lbl_8090C760:
    mtc1    $at, $f0                   # $f0 = 12.00
    nop
    lwc1    $f10, 0x002C(s0)           # 0000002C
lbl_8090C76C:
    add.s   $f8, $f0, $f10             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x005C($sp)           
    lui     $at, %hi(var_8090D8C4)     # $at = 80910000
    lwc1    $f16, %lo(var_8090D8C4)($at) 
    lui     $at, %hi(var_8090D8C8)     # $at = 80910000
    lwc1    $f4, %lo(var_8090D8C8)($at) 
    mul.s   $f18, $f0, $f16            
    addiu   t4, $zero, 0x0096          # t4 = 00000096
    addiu   t5, $zero, 0x0096          # t5 = 00000096
    addiu   t6, $zero, 0x00FA          # t6 = 000000FA
    addiu   t7, $zero, 0x00EB          # t7 = 000000EB
    addiu   t8, $zero, 0x00F5          # t8 = 000000F5
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    add.s   $f6, $f18, $f4             
    sw      t9, 0x0024($sp)            
    sw      t8, 0x0020($sp)            
    sw      t7, 0x001C($sp)            
    swc1    $f6, 0x0028($sp)           
    sw      t6, 0x0018($sp)            
    sw      t5, 0x0014($sp)            
    sw      t4, 0x0010($sp)            
    lw      a0, 0x0064($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFF4
    jal     func_8001DC4C              
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    beq     $zero, $zero, lbl_8090C820 
    lw      $ra, 0x003C($sp)           
lbl_8090C7E0:
    bne     v0, $zero, lbl_8090C81C    
    lui     $at, 0x3F80                # $at = 3F800000
    lwc1    $f10, 0x0060(s0)           # 00000060
    mtc1    $at, $f8                   # $f8 = 1.00
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x0080(s0)             # 00000080
    add.s   $f16, $f10, $f8            
    swc1    $f16, 0x0060(s0)           # 00000060
    jal     func_8006385C              
    lw      a2, 0x0060(s0)             # 00000060
    beq     v0, $zero, lbl_8090C81C    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8090BBDC              
    lw      a1, 0x0064($sp)            
    sb      $zero, 0x0114(s0)          # 00000114
lbl_8090C81C:
    lw      $ra, 0x003C($sp)           
lbl_8090C820:
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra                        
    nop


func_8090C830:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      v0, 0x0020($sp)            
    lui     $at, %hi(var_8090D8CC)     # $at = 80910000
    lwc1    $f4, %lo(var_8090D8CC)($at) 
    lw      a1, 0x000C(v0)             # 0000000C
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x4170                 # a3 = 41700000
    addiu   a0, v0, 0x0028             # a0 = 00000028
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    lui     $at, %hi(var_8090D8D0)     # $at = 80910000
    lwc1    $f6, %lo(var_8090D8D0)($at) 
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_8090C894               
    lw      $ra, 0x001C($sp)           
    jal     func_8090B7FC              
    lw      a0, 0x0020($sp)            
    lw      $ra, 0x001C($sp)           
lbl_8090C894:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8090C8A0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lbu     v0, 0x03FD(s0)             # 000003FD
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0404             # a1 = 00000404
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_8090CA44    
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    sb      t7, 0x03FD(s0)             # 000003FD
    jal     func_800283BC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lbu     t8, 0x00B1(s0)             # 000000B1
    bne     t8, $zero, lbl_8090C8F0    
    nop
    lbu     t9, 0x00B0(s0)             # 000000B0
    beql    t9, $zero, lbl_8090CA48    
    lw      $ra, 0x0024($sp)           
lbl_8090C8F0:
    jal     func_80028390              
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_8090C92C    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x389F          # a1 = 0000389F
    lw      a0, 0x002C($sp)            
    jal     func_80025B4C              
    or      a1, s0, $zero              # a1 = 00000000
    lw      t0, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lbu     v0, 0x00B1(s0)             # 000000B1
    and     t1, t0, $at                
    beq     $zero, $zero, lbl_8090C950 
    sw      t1, 0x0004(s0)             # 00000004
lbl_8090C92C:
    lbu     v0, 0x00B1(s0)             # 000000B1
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_8090C950      
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beq     v0, $at, lbl_8090C950      
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38DC          # a1 = 000038DC
    lbu     v0, 0x00B1(s0)             # 000000B1
lbl_8090C950:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_8090C984      
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    lw      t3, 0x0180(s0)             # 00000180
    lui     t2, %hi(func_8090C5E4)     # t2 = 80910000
    addiu   t2, t2, %lo(func_8090C5E4) # t2 = 8090C5E4
    beql    t2, t3, lbl_8090CA48       
    lw      $ra, 0x0024($sp)           
    jal     func_8090BCE0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8090CA48 
    lw      $ra, 0x0024($sp)           
    addiu   $at, $zero, 0x000F         # $at = 0000000F
lbl_8090C984:
    bnel    v0, $at, lbl_8090C9E4      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      t5, 0x0180(s0)             # 00000180
    lui     t4, %hi(func_8090C5E4)     # t4 = 80910000
    addiu   t4, t4, %lo(func_8090C5E4) # t4 = 8090C5E4
    beq     t4, t5, lbl_8090C9D0       
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    sw      t6, 0x0010($sp)            
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x0096          # a2 = 00000096
    jal     func_80027090              
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sh      t7, 0x001C(s0)             # 0000001C
    jal     func_8090BA9C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8090CA48 
    lw      $ra, 0x0024($sp)           
lbl_8090C9D0:
    jal     func_8090BAD4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8090CA48 
    lw      $ra, 0x0024($sp)           
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_8090C9E4:
    bnel    v0, $at, lbl_8090CA00      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    jal     func_8090BB84              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8090CA48 
    lw      $ra, 0x0024($sp)           
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_8090CA00:
    bnel    v0, $at, lbl_8090CA1C      
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    jal     func_8090BD6C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8090CA48 
    lw      $ra, 0x0024($sp)           
    addiu   $at, $zero, 0x000E         # $at = 0000000E
lbl_8090CA1C:
    bne     v0, $at, lbl_8090CA3C      
    nop
    lbu     t8, 0x0185(s0)             # 00000185
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    bnel    t8, $zero, lbl_8090CA48    
    lw      $ra, 0x0024($sp)           
    beq     $zero, $zero, lbl_8090CA44 
    sb      t9, 0x0185(s0)             # 00000185
lbl_8090CA3C:
    jal     func_8090BAD4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_8090CA44:
    lw      $ra, 0x0024($sp)           
lbl_8090CA48:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8090CA58:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lbu     v1, 0x03FC(s0)             # 000003FC
    or      a0, s0, $zero              # a0 = 00000000
    andi    t6, v1, 0x0002             # t6 = 00000000
    bne     t6, $zero, lbl_8090CAA4    
    andi    t5, v1, 0xFFFD             # t5 = 00000000
    lbu     t7, 0x02FC(s0)             # 000002FC
    andi    t8, t7, 0x0002             # t8 = 00000000
    bnel    t8, $zero, lbl_8090CAA8    
    lbu     t1, 0x02FC(s0)             # 000002FC
    lbu     t9, 0x037C(s0)             # 0000037C
    andi    t0, t9, 0x0002             # t0 = 00000000
    beql    t0, $zero, lbl_8090CAC8    
    or      a0, s0, $zero              # a0 = 00000000
lbl_8090CAA4:
    lbu     t1, 0x02FC(s0)             # 000002FC
lbl_8090CAA8:
    lbu     t3, 0x037C(s0)             # 0000037C
    sb      t5, 0x03FC(s0)             # 000003FC
    andi    t2, t1, 0xFFFD             # t2 = 00000000
    andi    t4, t3, 0xFFFD             # t4 = 00000000
    sb      t2, 0x02FC(s0)             # 000002FC
    jal     func_8090BA9C              
    sb      t4, 0x037C(s0)             # 0000037C
    or      a0, s0, $zero              # a0 = 00000000
lbl_8090CAC8:
    jal     func_8090C8A0              
    or      a1, s1, $zero              # a1 = 00000000
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lw      v0, 0x0180(s0)             # 00000180
    lui     t6, %hi(func_8090C430)     # t6 = 80910000
    addiu   t6, t6, %lo(func_8090C430) # t6 = 8090C430
    beq     t6, v0, lbl_8090CBA0       
    lui     t7, %hi(func_8090C024)     # t7 = 80910000
    addiu   t7, t7, %lo(func_8090C024) # t7 = 8090C024
    beq     t7, v0, lbl_8090CBA0       
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x03EC             # a1 = 000003EC
    jal     func_80050B00              
    sw      a1, 0x0020($sp)            
    lw      t0, 0x0180(s0)             # 00000180
    lui     t8, %hi(func_8090C0F8)     # t8 = 80910000
    addiu   t8, t8, %lo(func_8090C0F8) # t8 = 8090C0F8
    bne     t8, t0, lbl_8090CB5C       
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at                
    sw      a1, 0x0024($sp)            
    jal     func_8004BD50              # CollisionCheck_setAT
    addiu   a2, s0, 0x02EC             # a2 = 000002EC
    lw      a1, 0x0024($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    addiu   a2, s0, 0x036C             # a2 = 0000036C
    lw      a1, 0x0024($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x0020($sp)            
lbl_8090CB5C:
    lbu     t1, 0x03FD(s0)             # 000003FD
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t2, t1, 0x0001             # t2 = 00000000
    beq     t2, $zero, lbl_8090CB88    
    addu    a1, s1, $at                
    or      a0, s1, $zero              # a0 = 00000000
    lw      a2, 0x0020($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    sw      a1, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
lbl_8090CB88:
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0020($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
lbl_8090CBA0:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_8090CBB4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    mtc1    a1, $f14                   # $f14 = 0.00
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lw      v0, 0x0180(a0)             # 00000180
    lui     t6, %hi(func_8090C2A4)     # t6 = 80910000
    addiu   t6, t6, %lo(func_8090C2A4) # t6 = 8090C2A4
    bne     t6, v0, lbl_8090CC58       
    addiu   v1, $zero, 0x0014          # v1 = 00000014
    lbu     t7, 0x0184(a0)             # 00000184
    div     $zero, t7, v1              
    bne     v1, $zero, lbl_8090CBF0    
    nop
    break   # 0x01C00
lbl_8090CBF0:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_8090CC08      
    lui     $at, 0x8000                # $at = 80000000
    bne     t7, $at, lbl_8090CC08      
    nop
    break   # 0x01800
lbl_8090CC08:
    mfhi    t8                         
    subu    v0, v1, t8                 
    slti    $at, v0, 0x000A            
    bnel    $at, $zero, lbl_8090CC24   
    mtc1    v0, $f4                    # $f4 = 0.00
    addiu   v0, v0, 0xFFF6             # v0 = FFFFFFF6
    mtc1    v0, $f4                    # $f4 = NaN
lbl_8090CC24:
    lui     $at, %hi(var_8090D8D4)     # $at = 80910000
    lwc1    $f8, %lo(var_8090D8D4)($at) 
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800CF470              
    nop
    lui     $at, %hi(var_8090D8D8)     # $at = 80910000
    lwc1    $f16, %lo(var_8090D8D8)($at) 
    lwc1    $f10, 0x0004(s0)           # 00000004
    mul.s   $f18, $f16, $f0            
    sub.s   $f4, $f10, $f18            
    beq     $zero, $zero, lbl_8090CDBC 
    swc1    $f4, 0x0004(s0)            # 00000004
lbl_8090CC58:
    lui     t9, %hi(func_8090C35C)     # t9 = 80910000
    addiu   t9, t9, %lo(func_8090C35C) # t9 = 8090C35C
    bne     t9, v0, lbl_8090CCB8       
    lui     t0, %hi(func_8090C3B8)     # t0 = 80910000
    lui     $at, %hi(var_8090D8DC)     # $at = 80910000
    lwc1    $f6, %lo(var_8090D8DC)($at) 
    mul.s   $f12, $f6, $f14            
    jal     func_800CF470              
    nop
    lui     $at, %hi(var_8090D8E0)     # $at = 80910000
    lwc1    $f16, %lo(var_8090D8E0)($at) 
    lwc1    $f8, 0x0004(s0)            # 00000004
    lui     $at, %hi(var_8090D8E4)     # $at = 80910000
    mul.s   $f10, $f16, $f0            
    lwc1    $f4, 0x0000(s0)            # 00000000
    sub.s   $f18, $f8, $f10            
    swc1    $f18, 0x0004(s0)           # 00000004
    lwc1    $f6, %lo(var_8090D8E4)($at) 
    mul.s   $f16, $f6, $f0             
    sub.s   $f8, $f4, $f16             
    swc1    $f8, 0x0000(s0)            # 00000000
    lwc1    $f10, 0x0000(s0)           # 00000000
    beq     $zero, $zero, lbl_8090CDBC 
    swc1    $f10, 0x0008(s0)           # 00000008
lbl_8090CCB8:
    addiu   t0, t0, %lo(func_8090C3B8) # t0 = FFFFC3B8
    bne     t0, v0, lbl_8090CD14       
    lui     t1, %hi(func_8090C5E4)     # t1 = 80910000
    lui     $at, %hi(var_8090D8E8)     # $at = 80910000
    lwc1    $f18, %lo(var_8090D8E8)($at) 
    mul.s   $f12, $f18, $f14           
    jal     func_800D2CD0              
    nop
    lui     $at, %hi(var_8090D8EC)     # $at = 80910000
    lwc1    $f4, %lo(var_8090D8EC)($at) 
    lwc1    $f6, 0x0004(s0)            # 00000004
    lui     $at, %hi(var_8090D8F0)     # $at = 80910000
    mul.s   $f16, $f4, $f0             
    lwc1    $f10, 0x0000(s0)           # 00000000
    sub.s   $f8, $f6, $f16             
    swc1    $f8, 0x0004(s0)            # 00000004
    lwc1    $f18, %lo(var_8090D8F0)($at) 
    mul.s   $f4, $f18, $f0             
    sub.s   $f6, $f10, $f4             
    swc1    $f6, 0x0000(s0)            # 00000000
    lwc1    $f16, 0x0000(s0)           # 00000000
    beq     $zero, $zero, lbl_8090CDBC 
    swc1    $f16, 0x0008(s0)           # 00000008
lbl_8090CD14:
    addiu   t1, t1, %lo(func_8090C5E4) # t1 = FFFFC5E4
    bne     t1, v0, lbl_8090CD78       
    lui     $at, 0x4220                # $at = 42200000
    lh      t2, 0x0186(a0)             # 00000186
    lui     $at, %hi(var_8090D8F4)     # $at = 80910000
    lwc1    $f10, %lo(var_8090D8F4)($at) 
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f18, $f8                  
    mul.s   $f12, $f18, $f10           
    jal     func_800CF470              
    nop
    lui     $at, %hi(var_8090D8F8)     # $at = 80910000
    lwc1    $f4, %lo(var_8090D8F8)($at) 
    lwc1    $f6, 0x0000(s0)            # 00000000
    lwc1    $f8, 0x0004(s0)            # 00000004
    mul.s   $f2, $f0, $f4              
    lwc1    $f10, 0x0008(s0)           # 00000008
    add.s   $f16, $f6, $f2             
    sub.s   $f18, $f8, $f2             
    swc1    $f16, 0x0000(s0)           # 00000000
    add.s   $f4, $f10, $f2             
    swc1    $f18, 0x0004(s0)           # 00000004
    beq     $zero, $zero, lbl_8090CDBC 
    swc1    $f4, 0x0008(s0)            # 00000008
lbl_8090CD78:
    mtc1    $at, $f0                   # $f0 = 0.00
    lui     $at, %hi(var_8090D8FC)     # $at = 80910000
    c.le.s  $f0, $f14                  
    nop
    bc1f    lbl_8090CD94               
    nop
    sub.s   $f14, $f14, $f0            
lbl_8090CD94:
    lwc1    $f6, %lo(var_8090D8FC)($at) 
    mul.s   $f12, $f6, $f14            
    jal     func_800CF470              
    nop
    lui     $at, %hi(var_8090D900)     # $at = 80910000
    lwc1    $f8, %lo(var_8090D900)($at) 
    lwc1    $f16, 0x0004(s0)           # 00000004
    mul.s   $f18, $f8, $f0             
    sub.s   $f10, $f16, $f18           
    swc1    $f10, 0x0004(s0)           # 00000004
lbl_8090CDBC:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8090CDD0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    mtc1    a1, $f14                   # $f14 = 0.00
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lw      v0, 0x0180(a0)             # 00000180
    lui     t6, %hi(func_8090C2A4)     # t6 = 80910000
    addiu   t6, t6, %lo(func_8090C2A4) # t6 = 8090C2A4
    bne     t6, v0, lbl_8090CE74       
    addiu   v1, $zero, 0x0014          # v1 = 00000014
    lbu     t7, 0x0184(a0)             # 00000184
    div     $zero, t7, v1              
    bne     v1, $zero, lbl_8090CE0C    
    nop
    break   # 0x01C00
lbl_8090CE0C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_8090CE24      
    lui     $at, 0x8000                # $at = 80000000
    bne     t7, $at, lbl_8090CE24      
    nop
    break   # 0x01800
lbl_8090CE24:
    mfhi    t8                         
    subu    v0, v1, t8                 
    slti    $at, v0, 0x000A            
    bnel    $at, $zero, lbl_8090CE40   
    mtc1    v0, $f4                    # $f4 = 0.00
    addiu   v0, v0, 0xFFF6             # v0 = FFFFFFF6
    mtc1    v0, $f4                    # $f4 = NaN
lbl_8090CE40:
    lui     $at, %hi(var_8090D904)     # $at = 80910000
    lwc1    $f8, %lo(var_8090D904)($at) 
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800CF470              
    nop
    lui     $at, %hi(var_8090D908)     # $at = 80910000
    lwc1    $f16, %lo(var_8090D908)($at) 
    lwc1    $f10, 0x0004(s0)           # 00000004
    mul.s   $f18, $f16, $f0            
    sub.s   $f4, $f10, $f18            
    beq     $zero, $zero, lbl_8090CFD8 
    swc1    $f4, 0x0004(s0)            # 00000004
lbl_8090CE74:
    lui     t9, %hi(func_8090C35C)     # t9 = 80910000
    addiu   t9, t9, %lo(func_8090C35C) # t9 = 8090C35C
    bne     t9, v0, lbl_8090CED4       
    lui     t0, %hi(func_8090C3B8)     # t0 = 80910000
    lui     $at, %hi(var_8090D90C)     # $at = 80910000
    lwc1    $f6, %lo(var_8090D90C)($at) 
    mul.s   $f12, $f6, $f14            
    jal     func_800CF470              
    nop
    lui     $at, %hi(var_8090D910)     # $at = 80910000
    lwc1    $f16, %lo(var_8090D910)($at) 
    lwc1    $f8, 0x0004(s0)            # 00000004
    lui     $at, %hi(var_8090D914)     # $at = 80910000
    mul.s   $f10, $f16, $f0            
    lwc1    $f4, 0x0000(s0)            # 00000000
    sub.s   $f18, $f8, $f10            
    swc1    $f18, 0x0004(s0)           # 00000004
    lwc1    $f6, %lo(var_8090D914)($at) 
    mul.s   $f16, $f6, $f0             
    sub.s   $f8, $f4, $f16             
    swc1    $f8, 0x0000(s0)            # 00000000
    lwc1    $f10, 0x0000(s0)           # 00000000
    beq     $zero, $zero, lbl_8090CFD8 
    swc1    $f10, 0x0008(s0)           # 00000008
lbl_8090CED4:
    addiu   t0, t0, %lo(func_8090C3B8) # t0 = FFFFC3B8
    bne     t0, v0, lbl_8090CF30       
    lui     t1, %hi(func_8090C5E4)     # t1 = 80910000
    lui     $at, %hi(var_8090D918)     # $at = 80910000
    lwc1    $f18, %lo(var_8090D918)($at) 
    mul.s   $f12, $f18, $f14           
    jal     func_800D2CD0              
    nop
    lui     $at, %hi(var_8090D91C)     # $at = 80910000
    lwc1    $f4, %lo(var_8090D91C)($at) 
    lwc1    $f6, 0x0004(s0)            # 00000004
    lui     $at, %hi(var_8090D920)     # $at = 80910000
    mul.s   $f16, $f4, $f0             
    lwc1    $f10, 0x0000(s0)           # 00000000
    sub.s   $f8, $f6, $f16             
    swc1    $f8, 0x0004(s0)            # 00000004
    lwc1    $f18, %lo(var_8090D920)($at) 
    mul.s   $f4, $f18, $f0             
    sub.s   $f6, $f10, $f4             
    swc1    $f6, 0x0000(s0)            # 00000000
    lwc1    $f16, 0x0000(s0)           # 00000000
    beq     $zero, $zero, lbl_8090CFD8 
    swc1    $f16, 0x0008(s0)           # 00000008
lbl_8090CF30:
    addiu   t1, t1, %lo(func_8090C5E4) # t1 = FFFFC5E4
    bne     t1, v0, lbl_8090CF94       
    lui     $at, 0x4220                # $at = 42200000
    lh      t2, 0x0186(a0)             # 00000186
    lui     $at, %hi(var_8090D924)     # $at = 80910000
    lwc1    $f10, %lo(var_8090D924)($at) 
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f18, $f8                  
    mul.s   $f12, $f18, $f10           
    jal     func_800CF470              
    nop
    lui     $at, %hi(var_8090D928)     # $at = 80910000
    lwc1    $f4, %lo(var_8090D928)($at) 
    lwc1    $f6, 0x0000(s0)            # 00000000
    lwc1    $f8, 0x0004(s0)            # 00000004
    mul.s   $f2, $f0, $f4              
    lwc1    $f10, 0x0008(s0)           # 00000008
    sub.s   $f16, $f6, $f2             
    add.s   $f18, $f8, $f2             
    swc1    $f16, 0x0000(s0)           # 00000000
    sub.s   $f4, $f10, $f2             
    swc1    $f18, 0x0004(s0)           # 00000004
    beq     $zero, $zero, lbl_8090CFD8 
    swc1    $f4, 0x0008(s0)            # 00000008
lbl_8090CF94:
    mtc1    $at, $f0                   # $f0 = 0.00
    lui     $at, %hi(var_8090D92C)     # $at = 80910000
    c.le.s  $f0, $f14                  
    nop
    bc1f    lbl_8090CFB0               
    nop
    sub.s   $f14, $f14, $f0            
lbl_8090CFB0:
    lwc1    $f6, %lo(var_8090D92C)($at) 
    mul.s   $f12, $f6, $f14            
    jal     func_800CF470              
    nop
    lui     $at, %hi(var_8090D930)     # $at = 80910000
    lwc1    $f8, %lo(var_8090D930)($at) 
    lwc1    $f16, 0x0004(s0)           # 00000004
    mul.s   $f18, $f8, $f0             
    sub.s   $f10, $f16, $f18           
    swc1    $f10, 0x0004(s0)           # 00000004
lbl_8090CFD8:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8090CFEC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    mtc1    a1, $f14                   # $f14 = 0.00
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      t6, 0x0018($sp)            
    lui     t7, %hi(func_8090C0F8)     # t7 = 80910000
    addiu   t7, t7, %lo(func_8090C0F8) # t7 = 8090C0F8
    lw      v0, 0x0180(t6)             # 00000180
    lui     t8, %hi(func_8090C35C)     # t8 = 80910000
    lui     $at, 0x4120                # $at = 41200000
    bne     t7, v0, lbl_8090D09C       
    addiu   t8, t8, %lo(func_8090C35C) # t8 = 8090C35C
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, 0x428C                # $at = 428C0000
    c.le.s  $f14, $f4                  
    nop
    bc1fl   lbl_8090D054               
    mtc1    $at, $f16                  # $f16 = 70.00
    lui     $at, %hi(var_8090D934)     # $at = 80910000
    lwc1    $f6, %lo(var_8090D934)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    mul.s   $f8, $f14, $f6             
    beq     $zero, $zero, lbl_8090D13C 
    add.s   $f2, $f8, $f10             
    mtc1    $at, $f16                  # $f16 = 1.00
lbl_8090D054:
    lui     $at, 0x3FC0                # $at = 3FC00000
    c.lt.s  $f16, $f14                 
    nop
    bc1fl   lbl_8090D094               
    mtc1    $at, $f2                   # $f2 = 1.50
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f18                  # $f18 = 80.00
    lui     $at, %hi(var_8090D938)     # $at = 80910000
    lwc1    $f6, %lo(var_8090D938)($at) 
    sub.s   $f4, $f18, $f14            
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    mul.s   $f8, $f4, $f6              
    beq     $zero, $zero, lbl_8090D13C 
    add.s   $f2, $f8, $f10             
    mtc1    $at, $f2                   # $f2 = 1.00
lbl_8090D094:
    beq     $zero, $zero, lbl_8090D140 
    lw      a0, 0x0018($sp)            
lbl_8090D09C:
    bne     t8, v0, lbl_8090D0D4       
    lui     t9, %hi(func_8090C3B8)     # t9 = 80910000
    lui     $at, %hi(var_8090D93C)     # $at = 80910000
    lwc1    $f16, %lo(var_8090D93C)($at) 
    mul.s   $f12, $f16, $f14           
    jal     func_800CF470              
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    lui     $at, %hi(var_8090D940)     # $at = 80910000
    lwc1    $f4, %lo(var_8090D940)($at) 
    mul.s   $f6, $f0, $f4              
    beq     $zero, $zero, lbl_8090D13C 
    sub.s   $f2, $f18, $f6             
lbl_8090D0D4:
    addiu   t9, t9, %lo(func_8090C3B8) # t9 = FFFFC3B8
    bne     t9, v0, lbl_8090D110       
    lui     t0, %hi(func_8090C2A4)     # t0 = 80910000
    lui     $at, %hi(var_8090D944)     # $at = 80910000
    lwc1    $f8, %lo(var_8090D944)($at) 
    mul.s   $f12, $f8, $f14            
    jal     func_800D2CD0              
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    lui     $at, %hi(var_8090D948)     # $at = 80910000
    lwc1    $f16, %lo(var_8090D948)($at) 
    mul.s   $f4, $f0, $f16             
    beq     $zero, $zero, lbl_8090D13C 
    sub.s   $f2, $f10, $f4             
lbl_8090D110:
    addiu   t0, t0, %lo(func_8090C2A4) # t0 = FFFFC2A4
    beq     t0, v0, lbl_8090D128       
    lui     t1, %hi(func_8090C6A0)     # t1 = 80910000
    addiu   t1, t1, %lo(func_8090C6A0) # t1 = 8090C6A0
    bne     t1, v0, lbl_8090D134       
    lui     $at, 0x3F80                # $at = 3F800000
lbl_8090D128:
    lw      t2, 0x0018($sp)            
    beq     $zero, $zero, lbl_8090D13C 
    lwc1    $f2, 0x02E4(t2)            # 000002E4
lbl_8090D134:
    mtc1    $at, $f2                   # $f2 = 1.00
    nop
lbl_8090D13C:
    lw      a0, 0x0018($sp)            
lbl_8090D140:
    mfc1    a1, $f2                    
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    jal     func_8006385C              
    addiu   a0, a0, 0x02E4             # a0 = 000002E4
    lw      t3, 0x0018($sp)            
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    lwc1    $f6, 0x02E4(t3)            # 000002E4
    lw      $ra, 0x0014($sp)           
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    c.eq.s  $f18, $f6                  
    nop
    bc1f    lbl_8090D184               
    nop
    beq     $zero, $zero, lbl_8090D184 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8090D184:
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_8090D18C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a3, 0x0024($sp)            
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     a1, $at, lbl_8090D1BC      
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   $at, $zero, 0x001C         # $at = 0000001C
    beq     a1, $at, lbl_8090D1BC      
    addiu   $at, $zero, 0x001B         # $at = 0000001B
    bne     a1, $at, lbl_8090D1C4      
    lw      a0, 0x002C($sp)            
lbl_8090D1BC:
    beq     $zero, $zero, lbl_8090D20C 
    sw      $zero, 0x0000(a2)          # 00000000
lbl_8090D1C4:
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     a1, $at, lbl_8090D1DC      
    lwc1    $f0, 0x0154(a0)            # 00000154
    addiu   $at, $zero, 0x0012         # $at = 00000012
    bnel    a1, $at, lbl_8090D20C      
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8090D1DC:
    mfc1    a1, $f0                    
    jal     func_8090CFEC              
    nop
    beq     v0, $zero, lbl_8090D208    
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    lw      t6, 0x002C($sp)            
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f14                   
    jal     func_800AA8FC              
    lwc1    $f12, 0x02E4(t6)           # 000002E4
lbl_8090D208:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8090D20C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8090D21C:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0020($sp)            
    sw      a2, 0x0050($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lw      s0, 0x0058($sp)            
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0048($sp)            
    sw      a1, 0x004C($sp)            
    sw      a3, 0x0054($sp)            
    lw      t7, 0x0180(s0)             # 00000180
    lui     t6, %hi(func_8090C0F8)     # t6 = 80910000
    addiu   t6, t6, %lo(func_8090C0F8) # t6 = 8090C0F8
    bne     t6, t7, lbl_8090D2CC       
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beq     a2, $at, lbl_8090D264      
    lui     a0, %hi(var_8090D860)      # a0 = 80910000
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bne     a2, $at, lbl_8090D2CC      
lbl_8090D264:
    addiu   a0, a0, %lo(var_8090D860)  # a0 = 8090D860
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFF4
    jal     func_800AB958              
    sw      a2, 0x004C($sp)            
    lui     a0, %hi(var_8090D86C)      # a0 = 80910000
    addiu   a0, a0, %lo(var_8090D86C)  # a0 = 8090D86C
    jal     func_800AB958              
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFE8
    lw      a2, 0x004C($sp)            
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFE8
    bne     a2, $at, lbl_8090D2B8      
    addiu   a0, s0, 0x036C             # a0 = 0000036C
    addiu   t8, s0, 0x0338             # t8 = 00000338
    sw      t8, 0x0010($sp)            
    addiu   a0, s0, 0x02EC             # a0 = 000002EC
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFF4
    jal     func_80050B64              
    addiu   a3, s0, 0x032C             # a3 = 0000032C
    beq     $zero, $zero, lbl_8090D2D0 
    lw      $ra, 0x0024($sp)           
lbl_8090D2B8:
    addiu   t9, s0, 0x03B8             # t9 = 000003B8
    sw      t9, 0x0010($sp)            
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFF4
    jal     func_80050B64              
    addiu   a3, s0, 0x03AC             # a3 = 000003AC
lbl_8090D2CC:
    lw      $ra, 0x0024($sp)           
lbl_8090D2D0:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_8090D2E0:
    addiu   $sp, $sp, 0xFF48           # $sp = FFFFFF48
    sw      s3, 0x0020($sp)            
    sw      s2, 0x001C($sp)            
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    lui     t7, %hi(var_8090D878)      # t7 = 80910000
    addiu   t7, t7, %lo(var_8090D878)  # t7 = 8090D878
    lw      t9, 0x0000(t7)             # 8090D878
    addiu   t6, $sp, 0x0060            # t6 = FFFFFFA8
    lw      t8, 0x0004(t7)             # 8090D87C
    sw      t9, 0x0000(t6)             # FFFFFFA8
    lw      t9, 0x0008(t7)             # 8090D880
    addiu   a0, $sp, 0x0078            # a0 = FFFFFFC0
    sw      t8, 0x0004(t6)             # FFFFFFAC
    sw      t9, 0x0008(t6)             # FFFFFFB0
    jal     func_800AA740              
    lw      s1, 0x0000(s2)             # 00000000
    lwc1    $f0, 0x0154(s3)            # 00000154
    or      a0, s3, $zero              # a0 = 00000000
    addiu   a2, $sp, 0x0060            # a2 = FFFFFFA8
    mfc1    a1, $f0                    
    jal     func_8090CDD0              
    swc1    $f0, 0x006C($sp)           
    lwc1    $f12, 0x0060($sp)          
    lwc1    $f14, 0x0064($sp)          
    lw      a2, 0x0068($sp)            
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x0054($sp)            
    lw      a1, 0x0054($sp)            
    lui     t3, 0xDE00                 # t3 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x2610             # t4 = 06002610
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0004(s0)             # 00000004
    sw      t3, 0x0000(s0)             # 00000000
    jal     func_800AA764              
    addiu   a0, $sp, 0x0078            # a0 = FFFFFFC0
    lh      t5, 0x00B6(s3)             # 000000B6
    lui     $at, %hi(var_8090D94C)     # $at = 80910000
    lwc1    $f8, %lo(var_8090D94C)($at) 
    subu    t6, $zero, t5              
    mtc1    t6, $f4                    # $f4 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800AAB94              
    nop
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s3)             # 000000B6
    swc1    $f0, 0x0074($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s3)             # 000000B6
    swc1    $f0, 0x0070($sp)           
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x004C($sp)            
    lui     $at, 0x43FD                # $at = 43FD0000
    lw      a1, 0x004C($sp)            
    mtc1    $at, $f0                   # $f0 = 506.00
    lui     $at, 0x43BA                # $at = 43BA0000
    lwc1    $f16, 0x0074($sp)          
    lwc1    $f18, 0x0070($sp)          
    mtc1    $at, $f2                   # $f2 = 372.00
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x2740             # a0 = 06002740
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      t0, 0x0000(s0)             # 00000000
    sw      a0, 0x0004(s0)             # 00000004
    mul.s   $f10, $f0, $f16            
    lui     $at, %hi(var_8090D950)     # $at = 80910000
    lwc1    $f14, %lo(var_8090D950)($at) 
    mul.s   $f4, $f2, $f18             
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sw      a0, 0x002C($sp)            
    mul.s   $f6, $f2, $f16             
    nop
    mul.s   $f8, $f0, $f18             
    add.s   $f12, $f10, $f4            
    sub.s   $f10, $f6, $f8             
    mfc1    a2, $f10                   
    jal     func_800AA7F4              
    nop
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x0044($sp)            
    lw      a1, 0x0044($sp)            
    lwc1    $f0, 0x0070($sp)           
    lui     $at, 0xC471                # $at = C4710000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xDE00                 # t4 = DE000000
    mtc1    $at, $f4                   # $f4 = -964.00
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(s0)             # 00000000
    lw      t5, 0x002C($sp)            
    sw      t5, 0x0004(s0)             # 00000004
    lwc1    $f6, 0x0074($sp)           
    lui     $at, 0x4449                # $at = 44490000
    mtc1    $at, $f10                  # $f10 = 804.00
    mul.s   $f8, $f4, $f6              
    lui     $at, 0xC2D8                # $at = C2D80000
    mtc1    $at, $f14                  # $f14 = -108.00
    mul.s   $f4, $f10, $f0             
    lui     $at, 0xC449                # $at = C4490000
    mtc1    $at, $f10                  # $f10 = -804.00
    lui     $at, 0x4471                # $at = 44710000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sub.s   $f12, $f8, $f4             
    mul.s   $f8, $f10, $f6             
    mtc1    $at, $f4                   # $f4 = 964.00
    nop
    mul.s   $f10, $f4, $f0             
    add.s   $f6, $f8, $f10             
    mfc1    a2, $f6                    
    jal     func_800AA7F4              
    nop
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x003C($sp)            
    lw      a1, 0x003C($sp)            
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xDE00                 # t9 = DE000000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lw      t0, 0x002C($sp)            
    sw      t0, 0x0004(s0)             # 00000004
    jal     func_800AA764              
    addiu   a0, $sp, 0x0078            # a0 = FFFFFFC0
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    or      a0, s3, $zero              # a0 = 00000000
    lw      a1, 0x006C($sp)            
    addiu   a2, $sp, 0x0060            # a2 = FFFFFFA8
    swc1    $f0, 0x0068($sp)           
    swc1    $f0, 0x0064($sp)           
    jal     func_8090CBB4              
    swc1    $f0, 0x0060($sp)           
    lwc1    $f12, 0x0060($sp)          
    lwc1    $f14, 0x0064($sp)          
    lw      a2, 0x0068($sp)            
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x0034($sp)            
    lw      a1, 0x0034($sp)            
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x27D8             # t5 = 060027D8
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0004(s0)             # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    jal     func_800AA764              
    addiu   a0, $sp, 0x0078            # a0 = FFFFFFC0
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    lw      s2, 0x001C($sp)            
    lw      s3, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00B8           # $sp = 00000000


func_8090D628:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s2, 0x0030($sp)            
    sw      s1, 0x002C($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      s0, 0x0028($sp)            
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_8007E2C0              
    or      s0, a0, $zero              # s0 = 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    lui     t8, 0x0001                 # t8 = 00010000
    addu    t8, t8, s2                 
    sw      t7, 0x0000(v0)             # 00000000
    lw      t8, 0x1DE4(t8)             # 00011DE4
    addiu   t0, $zero, 0x007F          # t0 = 0000007F
    lw      a0, 0x0000(s2)             # 00000000
    sll     t9, t8,  2                 
    subu    t9, t9, t8                 
    sll     t9, t9,  2                 
    subu    a2, t0, t9                 
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    sw      t1, 0x0010($sp)            
    andi    a2, a2, 0x007F             # a2 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a3, $zero, 0x0020          # a3 = 00000020
    jal     func_8007EB00              
    sw      v0, 0x003C($sp)            
    lw      v1, 0x003C($sp)            
    lui     t8, 0xDB06                 # t8 = DB060000
    or      a0, s1, $zero              # a0 = 00000000
    sw      v0, 0x0004(v1)             # 00000004
    lbu     t2, 0x0184(s1)             # 00000184
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0024             # t5 = DB060024
    andi    t3, t2, 0x0001             # t3 = 00000000
    beq     t3, $zero, lbl_8090D6F4    
    ori     t8, t8, 0x0024             # t8 = DB060024
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t6, %hi(var_8090D888)      # t6 = 80910000
    addiu   t6, t6, %lo(var_8090D888)  # t6 = 8090D888
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v0)             # 00000004
    sw      t5, 0x0000(v0)             # 00000000
    beq     $zero, $zero, lbl_8090D710 
    nop
lbl_8090D6F4:
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t0, %hi(var_8090D898)      # t0 = 80910000
    addiu   t0, t0, %lo(var_8090D898)  # t0 = 8090D898
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0004(v0)             # 00000004
    sw      t8, 0x0000(v0)             # 00000000
lbl_8090D710:
    jal     func_8090D2E0              
    or      a1, s2, $zero              # a1 = 00000000
    lw      a1, 0x0140(s1)             # 00000140
    lw      a2, 0x015C(s1)             # 0000015C
    lui     t9, %hi(func_8090D21C)     # t9 = 80910000
    addiu   t9, t9, %lo(func_8090D21C) # t9 = 8090D21C
    sw      t9, 0x0010($sp)            
    sw      s1, 0x0014($sp)            
    lw      t1, 0x02D0(s0)             # 000002D0
    lui     a3, %hi(func_8090D18C)     # a3 = 80910000
    addiu   a3, a3, %lo(func_8090D18C) # a3 = 8090D18C
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8008A414              
    sw      t1, 0x0018($sp)            
    sw      v0, 0x02D0(s0)             # 000002D0
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x0028($sp)            
    lw      s1, 0x002C($sp)            
    lw      s2, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    nop
    nop
    nop

.section .data

var_8090D770: .word 0x00630500, 0x00001015, 0x00560000, 0x00000438
.word func_8090B630
.word func_8090B7AC
.word func_8090CA58
.word func_8090D628
var_8090D790: .word \
0x0A110000, 0x10030000, 0x00000000, 0xFFCFFFFF, \
0x07080000, 0x00000000, 0x00000000, 0x19000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_8090D7E0: .word \
0x08110939, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x07080000, 0xFFCFFFFF, 0x01000000, 0x01010100, \
0x00110023, 0xFFF10000, 0x00000000
var_8090D80C: .word 0x02000012, 0x0020FE00
var_8090D814: .word \
0x1002E002, 0x10020202, 0xF1F2F424, 0x34020202, \
0x02243400, 0x00000104, 0x02020804, 0x00000400
var_8090D834: .word 0x89170018, 0xC850000A, 0x304C1388
var_8090D840: .word 0xFFFFFFFF
var_8090D844: .word 0xC8FFFFFF
var_8090D848: .word 0x00000000
var_8090D84C: .word 0x00000000, 0x00000000
var_8090D854: .word 0x00000000, 0x00000000, 0x00000000
var_8090D860: .word 0x453B8000, 0x00000000, 0x00000000
var_8090D86C: .word 0xC47A0000, 0x00000000, 0x00000000
var_8090D878: .word 0x3F800000, 0x3F800000, 0x3F800000, 0x00000000
var_8090D888: .word 0xFC621603, 0x1F5BFFF8, 0xDF000000, 0x00000000
var_8090D898: .word \
0xFC121603, 0xFF5BFFF8, 0xDF000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_8090D8B0: .word 0x40490FDB
var_8090D8B4: .word 0x3C4CCCCD
var_8090D8B8: .word 0x3ECCCCCD
var_8090D8BC: .word 0x43360B61
var_8090D8C0: .word 0x3F333333
var_8090D8C4: .word 0x3E4CCCCD
var_8090D8C8: .word 0x3FA66666
var_8090D8CC: .word 0x3DCCCCCD
var_8090D8D0: .word 0x3C23D70A
var_8090D8D4: .word 0x3EA0D97C
var_8090D8D8: .word 0x3E4CCCCD
var_8090D8DC: .word 0x3EA0D97C
var_8090D8E0: .word 0x3E75C28F
var_8090D8E4: .word 0x3E051EB8
var_8090D8E8: .word 0x3D80ADFD
var_8090D8EC: .word 0x3E75C28F
var_8090D8F0: .word 0x3E051EB8
var_8090D8F4: .word 0x3EA0D97C
var_8090D8F8: .word 0x3DA3D70A
var_8090D8FC: .word 0x3DA0D97C
var_8090D900: .word 0x3E4CCCCD
var_8090D904: .word 0x3EA0D97C
var_8090D908: .word 0x3E051EB8
var_8090D90C: .word 0x3EA0D97C
var_8090D910: .word 0x3E3851EC
var_8090D914: .word 0x3DCCCCCD
var_8090D918: .word 0x3D80ADFD
var_8090D91C: .word 0x3E3851EC
var_8090D920: .word 0x3DCCCCCD
var_8090D924: .word 0x3EA0D97C
var_8090D928: .word 0x3DA3D70A
var_8090D92C: .word 0x3DA0D97C
var_8090D930: .word 0x3E051EB8
var_8090D934: .word 0x3D4CCCCD
var_8090D938: .word 0x3D4CCCCD
var_8090D93C: .word 0x3EA0D97C
var_8090D940: .word 0x3EB33333
var_8090D944: .word 0x3D80ADFD
var_8090D948: .word 0x3EB33333
var_8090D94C: .word 0x38C90FDB
var_8090D950: .word 0x448B4000, 0x00000000, 0x00000000, 0x00000000

