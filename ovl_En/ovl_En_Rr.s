#include <mips.h>
.set noreorder
.set noat

.section .text
func_809E6C60:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lui     a1, %hi(var_809E8E18)      # a1 = 809F0000
    addiu   a1, a1, %lo(var_809E8E18)  # a1 = 809E8E18
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     t6, %hi(var_809E8DF8)      # t6 = 809F0000
    addiu   t6, t6, %lo(var_809E8DF8)  # t6 = 809E8DF8
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sw      t6, 0x0098(s0)             # 00000098
    sb      t7, 0x00AF(s0)             # 000000AF
    addiu   a1, s0, 0x0140             # a1 = 00000140
    sw      a1, 0x0024($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_809E8DA0)      # a3 = 809F0000
    lw      a1, 0x0024($sp)            
    addiu   a3, a3, %lo(var_809E8DA0)  # a3 = 809E8DA0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004AC84              
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x018C             # a1 = 0000018C
    sw      a1, 0x0024($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_809E8DCC)      # a3 = 809F0000
    lw      a1, 0x0024($sp)            
    addiu   a3, a3, %lo(var_809E8DCC)  # a3 = 809E8DCC
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004AC84              
    or      a2, s0, $zero              # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    lui     a1, 0x41F0                 # a1 = 41F00000
    lui     $at, %hi(var_809E8E70)     # $at = 809F0000
    lwc1    $f2, %lo(var_809E8E70)($at) 
    lui     $at, %hi(var_809E8E74)     # $at = 809F0000
    lwc1    $f4, %lo(var_809E8E74)($at) 
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sb      t8, 0x00AE(s0)             # 000000AE
    lui     $at, %hi(var_809E8E78)     # $at = 809F0000
    swc1    $f2, 0x0050(s0)            # 00000050
    swc1    $f2, 0x0058(s0)            # 00000058
    swc1    $f4, 0x0054(s0)            # 00000054
    swc1    $f0, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0060(s0)            # 00000060
    lwc1    $f6, %lo(var_809E8E78)($at) 
    lui     t0, %hi(func_809E7D88)     # t0 = 809E0000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   t0, t0, %lo(func_809E7D88) # t0 = 809E7D88
    sll     t1, v1,  6                 
    sh      $zero, 0x01DA(s0)          # 000001DA
    sb      $zero, 0x0362(s0)          # 00000362
    sb      $zero, 0x0363(s0)          # 00000363
    sb      $zero, 0x0365(s0)          # 00000365
    sh      $zero, 0x01DE(s0)          # 000001DE
    sh      $zero, 0x01E0(s0)          # 000001E0
    sh      $zero, 0x01E2(s0)          # 000001E2
    sh      $zero, 0x0368(s0)          # 00000368
    sb      $zero, 0x0366(s0)          # 00000366
    sh      $zero, 0x01E4(s0)          # 000001E4
    sb      $zero, 0x0360(s0)          # 00000360
    sb      $zero, 0x0361(s0)          # 00000361
    sw      t0, 0x013C(s0)             # 0000013C
    addu    v0, s0, t1                 
    swc1    $f0, 0x0214(s0)            # 00000214
    swc1    $f0, 0x0218(s0)            # 00000218
    swc1    $f0, 0x0234(s0)            # 00000234
    swc1    $f0, 0x0238(s0)            # 00000238
    swc1    $f0, 0x023C(s0)            # 0000023C
    swc1    $f6, 0x006C(s0)            # 0000006C
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    swc1    $f0, 0x02D4(v0)            # 000002D4
    swc1    $f0, 0x02D8(v0)            # 000002D8
    swc1    $f0, 0x02F4(v0)            # 000002F4
    swc1    $f0, 0x02F8(v0)            # 000002F8
    swc1    $f0, 0x02FC(v0)            # 000002FC
    swc1    $f0, 0x0294(v0)            # 00000294
    swc1    $f0, 0x0298(v0)            # 00000298
    swc1    $f0, 0x02B4(v0)            # 000002B4
    swc1    $f0, 0x02B8(v0)            # 000002B8
    swc1    $f0, 0x02BC(v0)            # 000002BC
    swc1    $f0, 0x0254(v0)            # 00000254
    swc1    $f0, 0x0258(v0)            # 00000258
    swc1    $f0, 0x0274(v0)            # 00000274
    swc1    $f0, 0x0278(v0)            # 00000278
    swc1    $f0, 0x027C(v0)            # 0000027C
    swc1    $f0, 0x0214(v0)            # 00000214
    swc1    $f0, 0x0218(v0)            # 00000218
    swc1    $f0, 0x0234(v0)            # 00000234
    swc1    $f0, 0x0238(v0)            # 00000238
    jal     func_809E7A44              
    swc1    $f0, 0x023C(v0)            # 0000023C
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_809E6E00:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x0140             # a1 = 00000140
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x018C             # a1 = 0000018C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809E6E40:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    mtc1    a1, $f12                   # $f12 = 0.00
    sw      $ra, 0x0014($sp)           
    swc1    $f12, 0x0068(a0)           # 00000068
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3990          # a1 = 00003990
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809E6E68:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    mtc1    $zero, $f2                 # $f2 = 0.00
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sb      t6, 0x0360(a2)             # 00000360
    sh      t7, 0x01DA(a2)             # 000001DA
    lui     $at, %hi(var_809E8E7C)     # $at = 809F0000
    lwc1    $f4, %lo(var_809E8E7C)($at) 
    swc1    $f2, 0x0354(a2)            # 00000354
    lui     $at, %hi(var_809E8E80)     # $at = 809F0000
    swc1    $f4, 0x01EC(a2)            # 000001EC
    lwc1    $f0, %lo(var_809E8E80)($at) 
    lui     $at, %hi(var_809E8E84)     # $at = 809F0000
    lwc1    $f12, %lo(var_809E8E84)($at) 
    lui     $at, %hi(var_809E8E24)     # $at = 809F0000
    lwc1    $f6, %lo(var_809E8E24)($at) 
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lui     t0, %hi(var_809E8E24)      # t0 = 809F0000
    addiu   t0, t0, %lo(var_809E8E24)  # t0 = 809E8E24
    sll     t9, a0,  2                 
    swc1    $f2, 0x0248(a2)            # 00000248
    addu    v1, t9, t0                 
    sll     t8, a0,  6                 
    swc1    $f0, 0x0228(a2)            # 00000228
    swc1    $f0, 0x0230(a2)            # 00000230
    swc1    $f12, 0x0240(a2)           # 00000240
    swc1    $f6, 0x0218(a2)            # 00000218
    lwc1    $f8, 0x0000(v1)            # 00000000
    addu    v0, a2, t8                 
    swc1    $f2, 0x0248(v0)            # 00000248
    swc1    $f0, 0x0230(v0)            # 00000230
    swc1    $f0, 0x0228(v0)            # 00000228
    swc1    $f12, 0x0240(v0)           # 00000240
    swc1    $f8, 0x0218(v0)            # 00000218
    lwc1    $f10, 0x0004(v1)           # 00000004
    swc1    $f2, 0x0288(v0)            # 00000288
    swc1    $f0, 0x0268(v0)            # 00000268
    swc1    $f0, 0x0270(v0)            # 00000270
    swc1    $f12, 0x0280(v0)           # 00000280
    swc1    $f10, 0x0258(v0)           # 00000258
    lwc1    $f16, 0x0008(v1)           # 00000008
    swc1    $f2, 0x02C8(v0)            # 000002C8
    swc1    $f0, 0x02A8(v0)            # 000002A8
    swc1    $f0, 0x02B0(v0)            # 000002B0
    swc1    $f12, 0x02C0(v0)           # 000002C0
    swc1    $f16, 0x0298(v0)           # 00000298
    lwc1    $f18, 0x000C(v1)           # 0000000C
    lui     t1, %hi(func_809E7E48)     # t1 = 809E0000
    swc1    $f2, 0x0308(v0)            # 00000308
    addiu   t1, t1, %lo(func_809E7E48) # t1 = 809E7E48
    swc1    $f0, 0x02E8(v0)            # 000002E8
    swc1    $f0, 0x02F0(v0)            # 000002F0
    swc1    $f12, 0x0300(v0)           # 00000300
    swc1    $f18, 0x02D8(v0)           # 000002D8
    sw      t1, 0x013C(a2)             # 0000013C
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3991          # a1 = 00003991
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809E6F68:
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, %hi(var_809E8E88)     # $at = 809F0000
    sb      $zero, 0x0360(a0)          # 00000360
    swc1    $f0, 0x0354(a0)            # 00000354
    lwc1    $f4, %lo(var_809E8E88)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sll     t6, v0,  6                 
    swc1    $f0, 0x0240(a0)            # 00000240
    swc1    $f0, 0x0248(a0)            # 00000248
    swc1    $f0, 0x0218(a0)            # 00000218
    addu    v1, a0, t6                 
    swc1    $f4, 0x01EC(a0)            # 000001EC
    swc1    $f2, 0x0230(a0)            # 00000230
    swc1    $f2, 0x0228(a0)            # 00000228
    swc1    $f0, 0x0300(v1)            # 00000300
    swc1    $f0, 0x0308(v1)            # 00000308
    swc1    $f0, 0x02D8(v1)            # 000002D8
    swc1    $f0, 0x02C0(v1)            # 000002C0
    swc1    $f0, 0x02C8(v1)            # 000002C8
    swc1    $f0, 0x0298(v1)            # 00000298
    swc1    $f0, 0x0280(v1)            # 00000280
    swc1    $f0, 0x0288(v1)            # 00000288
    swc1    $f0, 0x0258(v1)            # 00000258
    swc1    $f0, 0x0218(v1)            # 00000218
    swc1    $f0, 0x0240(v1)            # 00000240
    swc1    $f0, 0x0248(v1)            # 00000248
    swc1    $f2, 0x02E8(v1)            # 000002E8
    swc1    $f2, 0x02F0(v1)            # 000002F0
    swc1    $f2, 0x02A8(v1)            # 000002A8
    swc1    $f2, 0x02B0(v1)            # 000002B0
    swc1    $f2, 0x0268(v1)            # 00000268
    swc1    $f2, 0x0270(v1)            # 00000270
    swc1    $f2, 0x0228(v1)            # 00000228
    swc1    $f2, 0x0230(v1)            # 00000230
    lbu     t7, 0x0365(a0)             # 00000365
    lui     t1, %hi(func_809E7D88)     # t1 = 809E0000
    addiu   t0, $zero, 0x003C          # t0 = 0000003C
    beq     t7, $zero, lbl_809E7024    
    addiu   t1, t1, %lo(func_809E7D88) # t1 = 809E7D88
    lui     t9, %hi(func_809E8448)     # t9 = 809F0000
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    addiu   t9, t9, %lo(func_809E8448) # t9 = 809E8448
    sh      t8, 0x01DA(a0)             # 000001DA
    jr      $ra                        
    sw      t9, 0x013C(a0)             # 0000013C
lbl_809E7024:
    sh      t0, 0x01DA(a0)             # 000001DA
    sw      t1, 0x013C(a0)             # 0000013C
    jr      $ra                        
    nop


func_809E7034:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      t7, 0x0004(a0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    and     t8, t7, $at                
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sh      t6, 0x01DE(a0)             # 000001DE
    sw      t8, 0x0004(a0)             # 00000004
    sh      t9, 0x01E4(a0)             # 000001E4
    sh      t0, 0x0368(a0)             # 00000368
    sb      $zero, 0x0360(a0)          # 00000360
    swc1    $f0, 0x0068(a0)            # 00000068
    swc1    $f0, 0x035C(a0)            # 0000035C
    swc1    $f0, 0x0354(a0)            # 00000354
    lui     $at, %hi(var_809E8E8C)     # $at = 809F0000
    lwc1    $f4, %lo(var_809E8E8C)($at) 
    lui     $at, %hi(var_809E8E90)     # $at = 809F0000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    swc1    $f4, 0x0208(a0)            # 00000208
    lwc1    $f6, %lo(var_809E8E90)($at) 
    lui     $at, 0x4400                # $at = 44000000
    mtc1    $at, $f8                   # $f8 = 512.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    sll     t1, v1,  6                 
    swc1    $f0, 0x0240(a0)            # 00000240
    swc1    $f0, 0x0248(a0)            # 00000248
    swc1    $f0, 0x0218(a0)            # 00000218
    addu    v0, a0, t1                 
    swc1    $f6, 0x01EC(a0)            # 000001EC
    swc1    $f8, 0x0210(a0)            # 00000210
    swc1    $f2, 0x0230(a0)            # 00000230
    swc1    $f2, 0x0228(a0)            # 00000228
    lui     t2, %hi(func_809E7F64)     # t2 = 809E0000
    swc1    $f0, 0x0300(v0)            # 00000300
    swc1    $f0, 0x0308(v0)            # 00000308
    swc1    $f0, 0x02D8(v0)            # 000002D8
    swc1    $f0, 0x02C0(v0)            # 000002C0
    swc1    $f0, 0x02C8(v0)            # 000002C8
    swc1    $f0, 0x0298(v0)            # 00000298
    swc1    $f0, 0x0280(v0)            # 00000280
    swc1    $f0, 0x0288(v0)            # 00000288
    swc1    $f0, 0x0258(v0)            # 00000258
    swc1    $f0, 0x0218(v0)            # 00000218
    swc1    $f0, 0x0240(v0)            # 00000240
    swc1    $f0, 0x0248(v0)            # 00000248
    addiu   t2, t2, %lo(func_809E7F64) # t2 = 809E7F64
    swc1    $f2, 0x02E8(v0)            # 000002E8
    swc1    $f2, 0x02F0(v0)            # 000002F0
    swc1    $f2, 0x02A8(v0)            # 000002A8
    swc1    $f2, 0x02B0(v0)            # 000002B0
    swc1    $f2, 0x0268(v0)            # 00000268
    swc1    $f2, 0x0270(v0)            # 00000270
    swc1    $f2, 0x0228(v0)            # 00000228
    swc1    $f2, 0x0230(v0)            # 00000230
    sw      t2, 0x013C(a0)             # 0000013C
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3992          # a1 = 00003992
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809E713C:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    andi    a1, a1, 0x00FF             # a1 = 00000000
    andi    a0, a0, 0x00FF             # a0 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     a0, $at, lbl_809E7164      
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    a0, $at, lbl_809E716C      
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_809E7164:
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_809E716C:
    beq     a1, $at, lbl_809E717C      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    a1, $at, lbl_809E7188      
    or      v0, v1, $zero              # v0 = 00000001
lbl_809E717C:
    ori     v1, v1, 0x0002             # v1 = 00000003
    andi    v1, v1, 0x00FF             # v1 = 00000003
    or      v0, v1, $zero              # v0 = 00000003
lbl_809E7188:
    jr      $ra                        
    nop


func_809E7190:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t0, $zero, 0x006E          # t0 = 0000006E
    lw      t7, 0x1C44(t6)             # 00001C44
    lui     $at, %hi(var_809E8E94)     # $at = 809F0000
    lui     t1, 0x8012                 # t1 = 80120000
    sw      t7, 0x002C($sp)            
    lw      t8, 0x0004(s0)             # 00000004
    sh      $zero, 0x0368(s0)          # 00000368
    sh      t0, 0x01E4(s0)             # 000001E4
    ori     t9, t8, 0x0001             # t9 = 00000001
    sw      t9, 0x0004(s0)             # 00000004
    swc1    $f4, 0x0354(s0)            # 00000354
    lwc1    $f6, %lo(var_809E8E94)($at) 
    lui     $at, 0x4500                # $at = 45000000
    mtc1    $at, $f8                   # $f8 = 2048.00
    swc1    $f6, 0x01EC(s0)            # 000001EC
    lui     t2, 0x8010                 # t2 = 80100000
    swc1    $f8, 0x0210(s0)            # 00000210
    lhu     t2, -0x738E(t2)            # 800F8C72
    lhu     t1, -0x59C0(t1)            # 8011A640
    lui     t4, 0x8010                 # t4 = 80100000
    lbu     t4, -0x733F(t4)            # 800F8CC1
    and     t3, t1, t2                 
    addiu   $at, $zero, 0x0003         # $at = 00000003
    srav    t5, t3, t4                 
    or      a2, $zero, $zero           # a2 = 00000000
    beq     t5, $at, lbl_809E7240      
    or      a3, $zero, $zero           # a3 = 00000000
    lw      a0, 0x0034($sp)            
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_80081188              
    sb      $zero, 0x002A($sp)         
    lbu     a2, 0x002A($sp)            
    beq     v0, $zero, lbl_809E7240    
    andi    a3, v0, 0x00FF             # a3 = 00000000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      v0, 0x0362(s0)             # 00000362
    sb      t6, 0x0365(s0)             # 00000365
lbl_809E7240:
    lui     t7, 0x8012                 # t7 = 80120000
    lui     t8, 0x8010                 # t8 = 80100000
    lhu     t8, -0x738C(t8)            # 800F8C74
    lhu     t7, -0x59C0(t7)            # 8011A640
    lui     t0, 0x8010                 # t0 = 80100000
    lbu     t0, -0x733E(t0)            # 800F8CC2
    and     t9, t7, t8                 
    addiu   $at, $zero, 0x0001         # $at = 00000001
    srav    t1, t9, t0                 
    beq     t1, $at, lbl_809E7290      
    lw      a0, 0x0034($sp)            
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_80081188              
    sb      a3, 0x002B($sp)            
    lbu     a3, 0x002B($sp)            
    beq     v0, $zero, lbl_809E7290    
    andi    a2, v0, 0x00FF             # a2 = 00000000
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sb      v0, 0x0363(s0)             # 00000363
    sb      t2, 0x0365(s0)             # 00000365
lbl_809E7290:
    lw      t3, 0x002C($sp)            
    andi    a0, a3, 0x00FF             # a0 = 00000000
    andi    a1, a2, 0x00FF             # a1 = 00000000
    jal     func_809E713C              
    sw      $zero, 0x0118(t3)          # 00000118
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_809E72D0      
    lw      a0, 0x0034($sp)            
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_809E72E4      
    lw      a0, 0x0034($sp)            
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_809E72F8      
    lw      a0, 0x0034($sp)            
    beq     $zero, $zero, lbl_809E7308 
    lui     $at, 0x4140                # $at = 41400000
lbl_809E72D0:
    addiu   a1, $zero, 0x305F          # a1 = 0000305F
    jal     func_800DCE14              
    or      a2, $zero, $zero           # a2 = 00000000
    beq     $zero, $zero, lbl_809E7308 
    lui     $at, 0x4140                # $at = 41400000
lbl_809E72E4:
    addiu   a1, $zero, 0x3060          # a1 = 00003060
    jal     func_800DCE14              
    or      a2, $zero, $zero           # a2 = 00000000
    beq     $zero, $zero, lbl_809E7308 
    lui     $at, 0x4140                # $at = 41400000
lbl_809E72F8:
    addiu   a1, $zero, 0x3061          # a1 = 00003061
    jal     func_800DCE14              
    or      a2, $zero, $zero           # a2 = 00000000
    lui     $at, 0x4140                # $at = 41400000
lbl_809E7308:
    mtc1    $at, $f10                  # $f10 = 12.00
    lh      a3, 0x00B6(s0)             # 000000B6
    addiu   t4, $zero, 0x0008          # t4 = 00000008
    sw      t4, 0x0014($sp)            
    lw      a0, 0x0034($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x4080                 # a2 = 40800000
    jal     func_80022E7C              
    swc1    $f10, 0x0010($sp)          
    lbu     t5, 0x0114(s0)             # 00000114
    lui     t6, %hi(func_809E7D88)     # t6 = 809E0000
    addiu   t6, t6, %lo(func_809E7D88) # t6 = 809E7D88
    bne     t5, $zero, lbl_809E7354    
    or      a0, s0, $zero              # a0 = 00000000
    sw      t6, 0x013C(s0)             # 0000013C
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3994          # a1 = 00003994
    beq     $zero, $zero, lbl_809E737C 
    lw      $ra, 0x0024($sp)           
lbl_809E7354:
    lbu     t7, 0x00AF(s0)             # 000000AF
    beq     t7, $zero, lbl_809E7370    
    nop
    jal     func_809E738C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809E737C 
    lw      $ra, 0x0024($sp)           
lbl_809E7370:
    jal     func_809E7510              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_809E737C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_809E738C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x0014($sp)           
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sb      $zero, 0x0360(a0)          # 00000360
    swc1    $f0, 0x0354(a0)            # 00000354
    sh      t6, 0x01DA(a0)             # 000001DA
    lui     $at, %hi(var_809E8E98)     # $at = 809F0000
    lwc1    $f4, %lo(var_809E8E98)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sll     t7, v1,  6                 
    swc1    $f0, 0x0208(a0)            # 00000208
    swc1    $f0, 0x0210(a0)            # 00000210
    swc1    $f0, 0x0240(a0)            # 00000240
    swc1    $f0, 0x0248(a0)            # 00000248
    swc1    $f0, 0x0218(a0)            # 00000218
    addu    v0, a0, t7                 
    swc1    $f4, 0x01EC(a0)            # 000001EC
    swc1    $f2, 0x0230(a0)            # 00000230
    swc1    $f2, 0x0228(a0)            # 00000228
    lui     t8, %hi(func_809E805C)     # t8 = 809F0000
    swc1    $f0, 0x0300(v0)            # 00000300
    swc1    $f0, 0x0308(v0)            # 00000308
    swc1    $f0, 0x02D8(v0)            # 000002D8
    swc1    $f0, 0x02C0(v0)            # 000002C0
    swc1    $f0, 0x02C8(v0)            # 000002C8
    swc1    $f0, 0x0298(v0)            # 00000298
    swc1    $f0, 0x0280(v0)            # 00000280
    swc1    $f0, 0x0288(v0)            # 00000288
    swc1    $f0, 0x0258(v0)            # 00000258
    swc1    $f0, 0x0218(v0)            # 00000218
    swc1    $f0, 0x0240(v0)            # 00000240
    swc1    $f0, 0x0248(v0)            # 00000248
    addiu   t8, t8, %lo(func_809E805C) # t8 = 809E805C
    swc1    $f2, 0x02E8(v0)            # 000002E8
    swc1    $f2, 0x02F0(v0)            # 000002F0
    swc1    $f2, 0x02A8(v0)            # 000002A8
    swc1    $f2, 0x02B0(v0)            # 000002B0
    swc1    $f2, 0x0268(v0)            # 00000268
    swc1    $f2, 0x0270(v0)            # 00000270
    swc1    $f2, 0x0228(v0)            # 00000228
    swc1    $f2, 0x0230(v0)            # 00000230
    sw      t8, 0x013C(a0)             # 0000013C
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3995          # a1 = 00003995
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809E7458:
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, %hi(var_809E8E9C)     # $at = 809F0000
    swc1    $f0, 0x0354(a0)            # 00000354
    lwc1    $f4, %lo(var_809E8E9C)($at) 
    lui     $at, %hi(var_809E8EA0)     # $at = 809F0000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    swc1    $f4, 0x0208(a0)            # 00000208
    lwc1    $f6, %lo(var_809E8EA0)($at) 
    lui     $at, 0x4500                # $at = 45000000
    mtc1    $at, $f8                   # $f8 = 2048.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    sll     t6, v0,  6                 
    swc1    $f0, 0x0240(a0)            # 00000240
    swc1    $f0, 0x0248(a0)            # 00000248
    swc1    $f0, 0x0218(a0)            # 00000218
    addu    v1, a0, t6                 
    swc1    $f6, 0x01EC(a0)            # 000001EC
    swc1    $f8, 0x0210(a0)            # 00000210
    swc1    $f2, 0x0230(a0)            # 00000230
    swc1    $f2, 0x0228(a0)            # 00000228
    lui     t7, %hi(func_809E7D88)     # t7 = 809E0000
    swc1    $f0, 0x0300(v1)            # 00000300
    swc1    $f0, 0x0308(v1)            # 00000308
    swc1    $f0, 0x02D8(v1)            # 000002D8
    swc1    $f0, 0x02C0(v1)            # 000002C0
    swc1    $f0, 0x02C8(v1)            # 000002C8
    swc1    $f0, 0x0298(v1)            # 00000298
    swc1    $f0, 0x0280(v1)            # 00000280
    swc1    $f0, 0x0288(v1)            # 00000288
    swc1    $f0, 0x0258(v1)            # 00000258
    swc1    $f0, 0x0218(v1)            # 00000218
    swc1    $f0, 0x0240(v1)            # 00000240
    swc1    $f0, 0x0248(v1)            # 00000248
    addiu   t7, t7, %lo(func_809E7D88) # t7 = 809E7D88
    swc1    $f2, 0x02E8(v1)            # 000002E8
    swc1    $f2, 0x02F0(v1)            # 000002F0
    swc1    $f2, 0x02A8(v1)            # 000002A8
    swc1    $f2, 0x02B0(v1)            # 000002B0
    swc1    $f2, 0x0268(v1)            # 00000268
    swc1    $f2, 0x0270(v1)            # 00000270
    swc1    $f2, 0x0228(v1)            # 00000228
    swc1    $f2, 0x0230(v1)            # 00000230
    sw      t7, 0x013C(a0)             # 0000013C
    jr      $ra                        
    nop


func_809E7510:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x0014($sp)           
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sll     t7, v1,  6                 
    sb      t6, 0x0361(a0)             # 00000361
    sh      $zero, 0x01D8(a0)          # 000001D8
    swc1    $f0, 0x0358(a0)            # 00000358
    swc1    $f0, 0x0354(a0)            # 00000354
    swc1    $f0, 0x0218(a0)            # 00000218
    swc1    $f0, 0x0248(a0)            # 00000248
    swc1    $f0, 0x0240(a0)            # 00000240
    addu    v0, a0, t7                 
    lui     t8, %hi(func_809E80D4)     # t8 = 809F0000
    swc1    $f0, 0x0258(v0)            # 00000258
    swc1    $f0, 0x0288(v0)            # 00000288
    swc1    $f0, 0x0280(v0)            # 00000280
    swc1    $f0, 0x0298(v0)            # 00000298
    swc1    $f0, 0x02C8(v0)            # 000002C8
    swc1    $f0, 0x02C0(v0)            # 000002C0
    swc1    $f0, 0x02D8(v0)            # 000002D8
    swc1    $f0, 0x0308(v0)            # 00000308
    swc1    $f0, 0x0300(v0)            # 00000300
    swc1    $f0, 0x0218(v0)            # 00000218
    swc1    $f0, 0x0248(v0)            # 00000248
    swc1    $f0, 0x0240(v0)            # 00000240
    addiu   t8, t8, %lo(func_809E80D4) # t8 = 809E80D4
    sw      t8, 0x013C(a0)             # 0000013C
    sw      a0, 0x0018($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3996          # a1 = 00003996
    lw      a0, 0x0018($sp)            
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lw      t9, 0x0004(a0)             # 00000004
    and     t0, t9, $at                
    sw      t0, 0x0004(a0)             # 00000004
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_809E75B0:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, 0x0366(a0)             # 00000366
    sh      $zero, 0x01E6(a0)          # 000001E6
    swc1    $f2, 0x01E8(a0)            # 000001E8
    lui     $at, %hi(var_809E8EA4)     # $at = 809F0000
    lwc1    $f4, %lo(var_809E8EA4)($at) 
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    swc1    $f2, 0x01F0(a0)            # 000001F0
    swc1    $f2, 0x01F4(a0)            # 000001F4
    swc1    $f2, 0x01FC(a0)            # 000001FC
    swc1    $f12, 0x0200(a0)           # 00000200
    swc1    $f2, 0x0204(a0)            # 00000204
    lui     $at, %hi(var_809E8EA8)     # $at = 809F0000
    swc1    $f4, 0x01EC(a0)            # 000001EC
    swc1    $f6, 0x01F8(a0)            # 000001F8
    lwc1    $f8, %lo(var_809E8EA8)($at) 
    lui     $at, 0x4500                # $at = 45000000
    mtc1    $at, $f10                  # $f10 = 2048.00
    mov.s   $f0, $f12                  
    swc1    $f2, 0x020C(a0)            # 0000020C
    swc1    $f0, 0x021C(a0)            # 0000021C
    swc1    $f12, 0x0220(a0)           # 00000220
    swc1    $f12, 0x0224(a0)           # 00000224
    swc1    $f12, 0x0228(a0)           # 00000228
    swc1    $f12, 0x022C(a0)           # 0000022C
    swc1    $f12, 0x0230(a0)           # 00000230
    swc1    $f2, 0x0248(a0)            # 00000248
    swc1    $f2, 0x0244(a0)            # 00000244
    swc1    $f2, 0x0240(a0)            # 00000240
    swc1    $f2, 0x0238(a0)            # 00000238
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   v1, a0, 0x0040             # v1 = 00000040
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    swc1    $f8, 0x0208(a0)            # 00000208
    swc1    $f10, 0x0210(a0)           # 00000210
lbl_809E764C:
    addiu   v0, v0, 0x0002             # v0 = 00000003
    swc1    $f2, 0x0278(v1)            # 000002B8
    swc1    $f2, 0x0280(v1)            # 000002C0
    swc1    $f2, 0x0284(v1)            # 000002C4
    swc1    $f2, 0x0288(v1)            # 000002C8
    swc1    $f12, 0x0270(v1)           # 000002B0
    swc1    $f12, 0x026C(v1)           # 000002AC
    swc1    $f12, 0x0268(v1)           # 000002A8
    swc1    $f12, 0x0264(v1)           # 000002A4
    swc1    $f12, 0x0260(v1)           # 000002A0
    swc1    $f0, 0x025C(v1)            # 0000029C
    addiu   v1, v1, 0x0080             # v1 = 000000C0
    swc1    $f2, 0x01B8(v1)            # 00000278
    swc1    $f2, 0x01C0(v1)            # 00000280
    swc1    $f2, 0x01C4(v1)            # 00000284
    swc1    $f2, 0x01C8(v1)            # 00000288
    swc1    $f12, 0x01B0(v1)           # 00000270
    swc1    $f12, 0x01AC(v1)           # 0000026C
    swc1    $f12, 0x01A8(v1)           # 00000268
    swc1    $f12, 0x01A4(v1)           # 00000264
    swc1    $f12, 0x01A0(v1)           # 00000260
    bne     v0, a1, lbl_809E764C       
    swc1    $f0, 0x019C(v1)            # 0000025C
    lui     t7, %hi(func_809E84DC)     # t7 = 809F0000
    addiu   t7, t7, %lo(func_809E84DC) # t7 = 809E84DC
    sw      t7, 0x013C(a0)             # 0000013C
    jr      $ra                        
    nop


func_809E76BC:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x004C($sp)            
    lbu     v0, 0x019D(s0)             # 0000019D
    lw      t6, 0x004C($sp)            
    andi    t7, v0, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_809E7738    
    lw      a3, 0x1C44(t6)             # 00001C44
    lh      t9, 0x01B2(s0)             # 000001B2
    andi    t8, v0, 0xFFFD             # t8 = 00000000
    sb      t8, 0x019D(s0)             # 0000019D
    mtc1    t9, $f4                    # $f4 = 0.00
    lw      a0, 0x004C($sp)            
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFF4
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x003C($sp)           
    lh      t0, 0x01B4(s0)             # 000001B4
    mtc1    t0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0040($sp)          
    lh      t1, 0x01B6(s0)             # 000001B6
    mtc1    t1, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    jal     func_80051250              
    swc1    $f18, 0x0044($sp)          
    beq     $zero, $zero, lbl_809E7A34 
    lw      $ra, 0x0024($sp)           
lbl_809E7738:
    lbu     a0, 0x0151(s0)             # 00000151
    andi    t2, a0, 0x0002             # t2 = 00000000
    beql    t2, $zero, lbl_809E7990    
    lh      t2, 0x01E4(s0)             # 000001E4
    lbu     v0, 0x00B1(s0)             # 000000B1
    andi    t3, a0, 0xFFFD             # t3 = 00000000
    or      v1, $zero, $zero           # v1 = 00000000
    beq     v0, $zero, lbl_809E77B8    
    sb      t3, 0x0151(s0)             # 00000151
    lh      t4, 0x0166(s0)             # 00000166
    lw      a0, 0x004C($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    mtc1    t4, $f4                    # $f4 = 0.00
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFF4
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x003C($sp)           
    lh      t5, 0x0168(s0)             # 00000168
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0040($sp)          
    lh      t6, 0x016A(s0)             # 0000016A
    sw      a3, 0x0038($sp)            
    sb      $zero, 0x0037($sp)         
    mtc1    t6, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    jal     func_8004C430              
    swc1    $f18, 0x0044($sp)          
    lbu     v1, 0x0037($sp)            
    lw      a3, 0x0038($sp)            
    lbu     v0, 0x00B1(s0)             # 000000B1
lbl_809E77B8:
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sltiu   $at, t7, 0x000F            
    beq     $at, $zero, lbl_809E798C   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_809E8EAC)     # $at = 809F0000
    addu    $at, $at, t7               
    lw      t7, %lo(var_809E8EAC)($at) 
    jr      t7                         
    nop
var_809E77DC:
    addiu   v1, $zero, 0x0001          # v1 = 00000001
var_809E77E0:
    addiu   v1, v1, 0x0001             # v1 = 00000002
    andi    v1, v1, 0x00FF             # v1 = 00000002
var_809E77E8:
    addiu   v1, v1, 0x0001             # v1 = 00000003
    andi    v1, v1, 0x00FF             # v1 = 00000003
var_809E77F0:
    addiu   v1, v1, 0x0001             # v1 = 00000004
    andi    v1, v1, 0x00FF             # v1 = 00000004
var_809E77F8:
    sb      $zero, 0x0366(s0)          # 00000366
    sb      v1, 0x0037($sp)            
    jal     func_80028390              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t8, $zero, 0x0028          # t8 = 00000028
    sh      t8, 0x01E0(s0)             # 000001E0
    lh      t9, 0x01E0(s0)             # 000001E0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    jal     func_80027090              
    sw      t9, 0x0010($sp)            
    lh      t0, 0x0368(s0)             # 00000368
    lbu     v1, 0x0037($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    beql    t0, $zero, lbl_809E7854    
    lbu     t1, 0x00AF(s0)             # 000000AF
    jal     func_809E7190              
    lw      a1, 0x004C($sp)            
    beq     $zero, $zero, lbl_809E7A34 
    lw      $ra, 0x0024($sp)           
    lbu     t1, 0x00AF(s0)             # 000000AF
lbl_809E7854:
    or      a0, s0, $zero              # a0 = 00000000
    beq     t1, $zero, lbl_809E7870    
    nop
    jal     func_809E738C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809E7A34 
    lw      $ra, 0x0024($sp)           
lbl_809E7870:
    jal     func_809E7510              
    sb      v1, 0x0364(s0)             # 00000364
    beq     $zero, $zero, lbl_809E7A34 
    lw      $ra, 0x0024($sp)           
var_809E7880:
    jal     func_80028390              
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t2, 0x00AF(s0)             # 000000AF
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    bne     t2, $zero, lbl_809E78A0    
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    sb      $zero, 0x0364(s0)          # 00000364
lbl_809E78A0:
    addiu   t3, $zero, 0x0050          # t3 = 00000050
    sw      t3, 0x0010($sp)            
    jal     func_80027090              
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    sh      t4, 0x01E2(s0)             # 000001E2
    jal     func_809E75B0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809E7A34 
    lw      $ra, 0x0024($sp)           
var_809E78C8:
    jal     func_80028390              
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t5, 0x00AF(s0)             # 000000AF
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    or      a0, s0, $zero              # a0 = 00000000
    bne     t5, $zero, lbl_809E78E8    
    or      a1, $zero, $zero           # a1 = 00000000
    sb      $zero, 0x0364(s0)          # 00000364
lbl_809E78E8:
    sh      t6, 0x01E2(s0)             # 000001E2
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    sw      t7, 0x0010($sp)            
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    jal     func_809E75B0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809E7A34 
    lw      $ra, 0x0024($sp)           
var_809E7910:
    jal     func_80028390              
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t8, 0x00AF(s0)             # 000000AF
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x8000          # a1 = FFFF8000
    bne     t8, $zero, lbl_809E7934    
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    sb      t9, 0x0364(s0)             # 00000364
lbl_809E7934:
    addiu   t0, $zero, 0x0050          # t0 = 00000050
    sw      t0, 0x0010($sp)            
    jal     func_80027090              
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    jal     func_809E75B0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809E7A34 
    lw      $ra, 0x0024($sp)           
var_809E7954:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    addiu   t1, $zero, 0x0050          # t1 = 00000050
    sw      t1, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    jal     func_809E75B0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809E7A34 
    lw      $ra, 0x0024($sp)           
lbl_809E798C:
    lh      t2, 0x01E4(s0)             # 000001E4
lbl_809E7990:
    bnel    t2, $zero, lbl_809E7A34    
    lw      $ra, 0x0024($sp)           
    lbu     t3, 0x0114(s0)             # 00000114
    bnel    t3, $zero, lbl_809E7A34    
    lw      $ra, 0x0024($sp)           
    lb      t4, 0x0A68(a3)             # 00000A68
    bnel    t4, $zero, lbl_809E7A34    
    lw      $ra, 0x0024($sp)           
    lw      t5, 0x0670(a3)             # 00000670
    andi    t6, t5, 0x0080             # t6 = 00000000
    bnel    t6, $zero, lbl_809E7A34    
    lw      $ra, 0x0024($sp)           
    lbu     v0, 0x0152(s0)             # 00000152
    andi    t7, v0, 0x0002             # t7 = 00000000
    bnel    t7, $zero, lbl_809E79E4    
    lbu     t1, 0x019E(s0)             # 0000019E
    lbu     t8, 0x019E(s0)             # 0000019E
    andi    t9, t8, 0x0002             # t9 = 00000000
    beql    t9, $zero, lbl_809E7A34    
    lw      $ra, 0x0024($sp)           
    lbu     t1, 0x019E(s0)             # 0000019E
lbl_809E79E4:
    andi    t0, v0, 0xFFFD             # t0 = 00000000
    sb      t0, 0x0152(s0)             # 00000152
    andi    t2, t1, 0xFFFD             # t2 = 00000000
    sb      t2, 0x019E(s0)             # 0000019E
    lw      a0, 0x004C($sp)            
    lui     t9, 0x0001                 # t9 = 00010000
    sw      a3, 0x0038($sp)            
    addu    t9, t9, a0                 
    lw      t9, 0x1D4C(t9)             # 00011D4C
    or      a1, a3, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    beq     v0, $zero, lbl_809E7A30    
    lw      a3, 0x0038($sp)            
    sw      s0, 0x0118(a3)             # 00000118
    sb      $zero, 0x0366(s0)          # 00000366
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809E7034              
    or      a1, a3, $zero              # a1 = 00000000
lbl_809E7A30:
    lw      $ra, 0x0024($sp)           
lbl_809E7A34:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_809E7A44:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    lui     $at, 0x3F80                # $at = 3F800000
    sw      s2, 0x001C($sp)            
    mtc1    $at, $f0                   # $f0 = 1.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s3, 0x0020($sp)            
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    sw      a1, 0x002C($sp)            
    sh      $zero, 0x01E6(s2)          # 000001E6
    swc1    $f2, 0x01E8(s2)            # 000001E8
    lui     $at, %hi(var_809E8EE8)     # $at = 809F0000
    lwc1    $f4, %lo(var_809E8EE8)($at) 
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    swc1    $f2, 0x01F0(s2)            # 000001F0
    swc1    $f2, 0x01F4(s2)            # 000001F4
    swc1    $f2, 0x01FC(s2)            # 000001FC
    swc1    $f0, 0x0200(s2)            # 00000200
    swc1    $f2, 0x0204(s2)            # 00000204
    lui     $at, %hi(var_809E8EEC)     # $at = 809F0000
    swc1    $f4, 0x01EC(s2)            # 000001EC
    swc1    $f6, 0x01F8(s2)            # 000001F8
    lwc1    $f8, %lo(var_809E8EEC)($at) 
    lui     $at, 0x4500                # $at = 45000000
    mtc1    $at, $f10                  # $f10 = 2048.00
    swc1    $f2, 0x020C(s2)            # 0000020C
    or      s1, $zero, $zero           # s1 = 00000000
    or      s0, s2, $zero              # s0 = 00000000
    swc1    $f8, 0x0208(s2)            # 00000208
    swc1    $f10, 0x0210(s2)           # 00000210
lbl_809E7AC8:
    addiu   s1, s1, 0x0001             # s1 = 00000001
    slti    $at, s1, 0x0005            
    addiu   s0, s0, 0x0040             # s0 = 00000040
    swc1    $f2, 0x01F8(s0)            # 00000238
    swc1    $f2, 0x0200(s0)            # 00000240
    swc1    $f2, 0x0204(s0)            # 00000244
    swc1    $f2, 0x0208(s0)            # 00000248
    swc1    $f0, 0x01F0(s0)            # 00000230
    swc1    $f0, 0x01EC(s0)            # 0000022C
    swc1    $f0, 0x01E8(s0)            # 00000228
    swc1    $f0, 0x01E4(s0)            # 00000224
    swc1    $f0, 0x01E0(s0)            # 00000220
    bne     $at, $zero, lbl_809E7AC8   
    swc1    $f0, 0x01DC(s0)            # 0000021C
    or      s1, $zero, $zero           # s1 = 00000000
    or      s0, s2, $zero              # s0 = 00000000
lbl_809E7B08:
    lwc1    $f16, 0x01F0(s2)           # 000001F0
    trunc.w.s $f18, $f16                 
    mfc1    t7, $f18                   
    nop
    sll     t8, t7, 16                 
    sra     t9, t8, 16                 
    multu   s1, t9                     
    mflo    a0                         
    sll     a0, a0, 12                 
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lwc1    $f4, 0x0204(s2)            # 00000204
    addiu   s1, s1, 0x0001             # s1 = 00000001
    slti    $at, s1, 0x0005            
    mul.s   $f2, $f0, $f4              
    addiu   s0, s0, 0x0040             # s0 = 00000040
    swc1    $f2, 0x01FC(s0)            # 0000023C
    bne     $at, $zero, lbl_809E7B08   
    swc1    $f2, 0x01F4(s0)            # 00000234
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    addiu   s0, s2, 0x0040             # s0 = 00000040
    addiu   s3, $zero, 0x0005          # s3 = 00000005
lbl_809E7B64:
    lwc1    $f6, 0x01F4(s2)            # 000001F4
    trunc.w.s $f8, $f6                   
    mfc1    t1, $f8                    
    nop
    sll     t2, t1, 16                 
    sra     t3, t2, 16                 
    multu   s1, t3                     
    mflo    a0                         
    sll     a0, a0, 12                 
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lwc1    $f10, 0x020C(s2)           # 0000020C
    mul.s   $f16, $f0, $f10            
    swc1    $f16, 0x0240(s0)           # 00000280
    lwc1    $f18, 0x01FC(s2)           # 000001FC
    trunc.w.s $f4, $f18                  
    mfc1    t5, $f4                    
    nop
    sll     t6, t5, 16                 
    sra     t7, t6, 16                 
    multu   s1, t7                     
    mflo    a0                         
    sll     a0, a0, 12                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lwc1    $f6, 0x020C(s2)            # 0000020C
    addiu   s1, s1, 0x0001             # s1 = 00000002
    addiu   s0, s0, 0x0040             # s0 = 00000080
    mul.s   $f8, $f0, $f6              
    bne     s1, s3, lbl_809E7B64       
    swc1    $f8, 0x0208(s0)            # 00000288
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    lw      s2, 0x001C($sp)            
    lw      s3, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_809E7C04:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s2, 0x0020($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s4, 0x0028($sp)            
    sw      s3, 0x0024($sp)            
    sw      s1, 0x001C($sp)            
    sw      s0, 0x0018($sp)            
    sw      a1, 0x0034($sp)            
    lbu     t6, 0x0361(s2)             # 00000361
    lh      s3, 0x01E6(s2)             # 000001E6
    or      s0, $zero, $zero           # s0 = 00000000
    bne     t6, $zero, lbl_809E7D40    
    or      s1, s2, $zero              # s1 = 00000000
lbl_809E7C3C:
    lwc1    $f4, 0x01F0(s2)            # 000001F0
    trunc.w.s $f6, $f4                   
    mfc1    t8, $f6                    
    nop
    sll     t9, t8, 16                 
    sra     t0, t9, 16                 
    multu   s0, t0                     
    mflo    t1                         
    sll     t2, t1, 12                 
    addu    a0, s3, t2                 
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lwc1    $f8, 0x0204(s2)            # 00000204
    addiu   s0, s0, 0x0001             # s0 = 00000001
    slti    $at, s0, 0x0005            
    mul.s   $f2, $f0, $f8              
    addiu   s1, s1, 0x0040             # s1 = 00000040
    swc1    $f2, 0x01FC(s1)            # 0000023C
    bne     $at, $zero, lbl_809E7C3C   
    swc1    $f2, 0x01F4(s1)            # 00000234
    lbu     t3, 0x0361(s2)             # 00000361
    lh      s3, 0x01E6(s2)             # 000001E6
    bnel    t3, $zero, lbl_809E7D44    
    lbu     t7, 0x0366(s2)             # 00000366
    lbu     t4, 0x0360(s2)             # 00000360
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    addiu   s1, s2, 0x0040             # s1 = 00000040
    bne     t4, $zero, lbl_809E7D40    
    addiu   s4, $zero, 0x0005          # s4 = 00000005
lbl_809E7CB4:
    lwc1    $f10, 0x01F4(s2)           # 000001F4
    trunc.w.s $f16, $f10                 
    mfc1    t6, $f16                   
    nop
    sll     t7, t6, 16                 
    sra     t8, t7, 16                 
    multu   s0, t8                     
    mflo    t9                         
    sll     t0, t9, 12                 
    addu    a0, s3, t0                 
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lwc1    $f18, 0x020C(s2)           # 0000020C
    mul.s   $f4, $f0, $f18             
    swc1    $f4, 0x0240(s1)            # 00000280
    lwc1    $f6, 0x01FC(s2)            # 000001FC
    trunc.w.s $f8, $f6                   
    mfc1    t2, $f8                    
    nop
    sll     t3, t2, 16                 
    sra     t4, t3, 16                 
    multu   s0, t4                     
    mflo    t5                         
    sll     t6, t5, 12                 
    addu    a0, s3, t6                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lwc1    $f10, 0x020C(s2)           # 0000020C
    addiu   s0, s0, 0x0001             # s0 = 00000002
    addiu   s1, s1, 0x0040             # s1 = 00000080
    mul.s   $f16, $f0, $f10            
    bne     s0, s4, lbl_809E7CB4       
    swc1    $f16, 0x0208(s1)           # 00000288
lbl_809E7D40:
    lbu     t7, 0x0366(s2)             # 00000366
lbl_809E7D44:
    bnel    t7, $zero, lbl_809E7D6C    
    lw      $ra, 0x002C($sp)           
    lwc1    $f18, 0x01E8(s2)           # 000001E8
    lh      t8, 0x01E6(s2)             # 000001E6
    trunc.w.s $f4, $f18                  
    mfc1    t2, $f4                    
    nop
    addu    t3, t8, t2                 
    sh      t3, 0x01E6(s2)             # 000001E6
    lw      $ra, 0x002C($sp)           
lbl_809E7D6C:
    lw      s0, 0x0018($sp)            
    lw      s1, 0x001C($sp)            
    lw      s2, 0x0020($sp)            
    lw      s3, 0x0024($sp)            
    lw      s4, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_809E7D88:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80064508              
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    lh      t7, 0x01DA(s0)             # 000001DA
    lh      t6, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4320                # $at = 43200000
    bne     t7, $zero, lbl_809E7DF4    
    sh      t6, 0x0032(s0)             # 00000032
    lwc1    $f4, 0x0090(s0)            # 00000090
    mtc1    $at, $f6                   # $f6 = 160.00
    nop
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_809E7DF8               
    lui     $at, 0x43C8                # $at = 43C80000
    jal     func_809E6E68              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809E7E38 
    lw      $ra, 0x0024($sp)           
lbl_809E7DF4:
    lui     $at, 0x43C8                # $at = 43C80000
lbl_809E7DF8:
    mtc1    $at, $f10                  # $f10 = 400.00
    lwc1    $f8, 0x0090(s0)            # 00000090
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_809E7E38               
    lw      $ra, 0x0024($sp)           
    mtc1    $zero, $f16                # $f16 = 0.00
    lwc1    $f18, 0x0068(s0)           # 00000068
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f16, $f18                 
    nop
    bc1fl   lbl_809E7E38               
    lw      $ra, 0x0024($sp)           
    jal     func_809E6E40              
    lui     a1, 0x4000                 # a1 = 40000000
    lw      $ra, 0x0024($sp)           
lbl_809E7E38:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809E7E48:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80064508              
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    lbu     t7, 0x0360(s0)             # 00000360
    lh      t6, 0x00B6(s0)             # 000000B6
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sltiu   $at, t8, 0x0005            
    beq     $at, $zero, lbl_809E7F50   
    sh      t6, 0x0032(s0)             # 00000032
    sll     t8, t8,  2                 
    lui     $at, %hi(var_809E8EF0)     # $at = 809F0000
    addu    $at, $at, t8               
    lw      t8, %lo(var_809E8EF0)($at) 
    jr      t8                         
    nop
var_809E7EA4:
    lh      t9, 0x01DA(s0)             # 000001DA
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    bnel    t9, $zero, lbl_809E7F54    
    lw      $ra, 0x0024($sp)           
    beq     $zero, $zero, lbl_809E7F50 
    sb      t0, 0x0360(s0)             # 00000360
var_809E7EBC:
    lh      t1, 0x01DA(s0)             # 000001DA
    lui     $at, 0x3FC0                # $at = 3FC00000
    addiu   t2, $zero, 0x0005          # t2 = 00000005
    bne     t1, $zero, lbl_809E7F50    
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    mtc1    $at, $f0                   # $f0 = 1.50
    sh      t2, 0x01DA(s0)             # 000001DA
    sb      t3, 0x0360(s0)             # 00000360
    swc1    $f0, 0x0330(s0)            # 00000330
    beq     $zero, $zero, lbl_809E7F50 
    swc1    $f0, 0x0328(s0)            # 00000328
var_809E7EE8:
    lh      t4, 0x01DA(s0)             # 000001DA
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    lui     $at, 0x44FA                # $at = 44FA0000
    bne     t4, $zero, lbl_809E7F50    
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    mtc1    $at, $f4                   # $f4 = 2000.00
    sh      t5, 0x01DA(s0)             # 000001DA
    sb      t6, 0x0360(s0)             # 00000360
    beq     $zero, $zero, lbl_809E7F50 
    swc1    $f4, 0x0318(s0)            # 00000318
var_809E7F10:
    lh      t7, 0x01DA(s0)             # 000001DA
    lui     $at, %hi(var_809E8F04)     # $at = 809F0000
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    bne     t7, $zero, lbl_809E7F50    
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    lwc1    $f0, %lo(var_809E8F04)($at) 
    sh      t8, 0x01DA(s0)             # 000001DA
    sb      t9, 0x0360(s0)             # 00000360
    swc1    $f0, 0x0330(s0)            # 00000330
    beq     $zero, $zero, lbl_809E7F50 
    swc1    $f0, 0x0328(s0)            # 00000328
var_809E7F3C:
    lh      t0, 0x01DA(s0)             # 000001DA
    bnel    t0, $zero, lbl_809E7F54    
    lw      $ra, 0x0024($sp)           
    jal     func_809E6F68              
    or      a0, s0, $zero              # a0 = 00000000
lbl_809E7F50:
    lw      $ra, 0x0024($sp)           
lbl_809E7F54:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809E7F64:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s1, 0x0018($sp)            
    sw      a1, 0x0024($sp)            
    lw      t6, 0x0024($sp)            
    lwc1    $f12, 0x008C(s0)           # 0000008C
    addiu   a1, $zero, 0x0078          # a1 = 00000078
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0078          # a3 = 00000078
    jal     func_800915CC              
    lw      s1, 0x1C44(t6)             # 00001C44
    lh      t7, 0x01D8(s0)             # 000001D8
    or      a0, s0, $zero              # a0 = 00000000
    andi    t8, t7, 0x0007             # t8 = 00000000
    bnel    t8, $zero, lbl_809E7FB8    
    lh      t0, 0x01DE(s0)             # 000001DE
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3993          # a1 = 00003993
    lh      t0, 0x01DE(s0)             # 000001DE
lbl_809E7FB8:
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    sh      t9, 0x01E4(s0)             # 000001E4
    beq     t0, $zero, lbl_809E7FE0    
    or      a0, s0, $zero              # a0 = 00000000
    lw      t1, 0x0670(s1)             # 00000670
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x41F0                 # a3 = 41F00000
    andi    t2, t1, 0x0080             # t2 = 00000000
    bnel    t2, $zero, lbl_809E7FF4    
    addiu   a0, s1, 0x0024             # a0 = 00000024
lbl_809E7FE0:
    jal     func_809E7190              
    lw      a1, 0x0024($sp)            
    beq     $zero, $zero, lbl_809E804C 
    lw      $ra, 0x001C($sp)           
    addiu   a0, s1, 0x0024             # a0 = 00000024
lbl_809E7FF4:
    jal     func_80064280              
    lw      a1, 0x036C(s0)             # 0000036C
    lwc1    $f4, 0x0370(s0)            # 00000370
    lwc1    $f6, 0x035C(s0)            # 0000035C
    addiu   a0, s1, 0x0028             # a0 = 00000028
    lui     a2, 0x3F80                 # a2 = 3F800000
    add.s   $f8, $f4, $f6              
    lui     a3, 0x41F0                 # a3 = 41F00000
    mfc1    a1, $f8                    
    jal     func_80064280              
    nop
    addiu   a0, s1, 0x002C             # a0 = 0000002C
    lw      a1, 0x0374(s0)             # 00000374
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x41F0                 # a3 = 41F00000
    addiu   a0, s0, 0x035C             # a0 = 0000035C
    lui     a1, 0xC25C                 # a1 = C25C0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x40A0                 # a3 = 40A00000
    lw      $ra, 0x001C($sp)           
lbl_809E804C:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_809E805C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lbu     v0, 0x0114(a0)             # 00000114
    bne     v0, $zero, lbl_809E8084    
    andi    t6, v0, 0x0008             # t6 = 00000000
    jal     func_809E7458              
    nop
    beq     $zero, $zero, lbl_809E80C8 
    lw      $ra, 0x0014($sp)           
lbl_809E8084:
    beq     t6, $zero, lbl_809E80AC    
    lui     $at, %hi(var_809E8F0C)     # $at = 809F0000
    lui     $at, %hi(var_809E8F08)     # $at = 809F0000
    lwc1    $f0, %lo(var_809E8F08)($at) 
    addiu   v0, a0, 0x0040             # v0 = 00000040
    swc1    $f0, 0x0288(v0)            # 000002C8
    swc1    $f0, 0x02C8(v0)            # 00000308
    swc1    $f0, 0x0308(v0)            # 00000348
    beq     $zero, $zero, lbl_809E80C4 
    swc1    $f0, 0x0248(v0)            # 00000288
lbl_809E80AC:
    lwc1    $f0, %lo(var_809E8F0C)($at) 
    addiu   v0, a0, 0x0040             # v0 = 00000040
    swc1    $f0, 0x0288(v0)            # 000002C8
    swc1    $f0, 0x02C8(v0)            # 00000308
    swc1    $f0, 0x0308(v0)            # 00000348
    swc1    $f0, 0x0248(v0)            # 00000288
lbl_809E80C4:
    lw      $ra, 0x0014($sp)           
lbl_809E80C8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809E80D4:
    addiu   $sp, $sp, 0xFF50           # $sp = FFFFFF50
    sw      s2, 0x0058($sp)            
    sw      s0, 0x0050($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x005C($sp)           
    sw      s1, 0x0054($sp)            
    sdc1    $f20, 0x0048($sp)          
    lh      v0, 0x01D8(s2)             # 000001D8
    addiu   s1, $sp, 0x009C            # s1 = FFFFFFEC
    addiu   a2, $zero, 0x0015          # a2 = 00000015
    slti    $at, v0, 0x0028            
    beq     $at, $zero, lbl_809E81C4   
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    or      s0, $zero, $zero           # s0 = 00000000
    or      v1, s2, $zero              # v1 = 00000000
    addiu   s1, s2, 0x0218             # s1 = 00000218
lbl_809E811C:
    lh      t6, 0x01D8(s2)             # 000001D8
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f8                   # $f8 = 25.00
    mtc1    t6, $f4                    # $f4 = 0.00
    addiu   t7, s0, 0x003B             # t7 = 0000003B
    mtc1    t7, $f16                   # $f16 = 0.00
    cvt.s.w $f6, $f4                   
    mfc1    a2, $f20                   
    sw      v1, 0x006C($sp)            
    or      a0, s1, $zero              # a0 = 00000218
    lui     a3, 0x4248                 # a3 = 42480000
    cvt.s.w $f18, $f16                 
    mul.s   $f10, $f6, $f8             
    sub.s   $f4, $f18, $f10            
    mfc1    a1, $f4                    
    jal     func_80064280              
    nop
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    subu    v0, t8, s0                 
    multu   v0, v0                     
    lh      t0, 0x01D8(s2)             # 000001D8
    lui     $at, %hi(var_809E8F10)     # $at = 809F0000
    lwc1    $f4, %lo(var_809E8F10)($at) 
    mtc1    t0, $f16                   # $f16 = 0.00
    lw      v1, 0x006C($sp)            
    addiu   $at, $zero, 0x0005         # $at = 00000005
    cvt.s.w $f18, $f16                 
    addiu   s0, s0, 0x0001             # s0 = 00000001
    addiu   s1, s1, 0x0040             # s1 = 00000258
    mflo    t9                         
    mtc1    t9, $f6                    # $f6 = 0.00
    addiu   v1, v1, 0x0040             # v1 = 00000040
    cvt.s.w $f8, $f6                   
    mul.s   $f10, $f8, $f18            
    nop
    mul.s   $f6, $f10, $f4             
    add.s   $f0, $f6, $f20             
    swc1    $f0, 0x01F0(v1)            # 00000230
    bne     s0, $at, lbl_809E811C      
    swc1    $f0, 0x01E8(v1)            # 00000228
    beq     $zero, $zero, lbl_809E8430 
    lw      $ra, 0x005C($sp)           
lbl_809E81C4:
    slti    $at, v0, 0x005F            
    bnel    $at, $zero, lbl_809E8334   
    addiu   $at, $zero, 0x0058         # $at = 00000058
    lwc1    $f16, 0x0024(s2)           # 00000024
    addiu   $at, $zero, 0x0001         # $at = 00000001
    swc1    $f16, 0x009C($sp)          
    lwc1    $f8, 0x0028(s2)            # 00000028
    swc1    $f8, 0x00A0($sp)           
    lwc1    $f18, 0x002C(s2)           # 0000002C
    swc1    $f18, 0x00A4($sp)          
    lbu     v0, 0x0362(s2)             # 00000362
    beq     v0, $at, lbl_809E8208      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_809E821C      
    addiu   s1, $sp, 0x009C            # s1 = FFFFFFEC
    beq     $zero, $zero, lbl_809E822C 
    addiu   s1, $sp, 0x009C            # s1 = FFFFFFEC
lbl_809E8208:
    or      a0, s0, $zero              # a0 = 00000001
    jal     func_80013678              
    or      a1, s1, $zero              # a1 = FFFFFFEC
    beq     $zero, $zero, lbl_809E8230 
    lbu     v0, 0x0363(s2)             # 00000363
lbl_809E821C:
    or      a0, s0, $zero              # a0 = 00000001
    or      a1, s1, $zero              # a1 = FFFFFFEC
    jal     func_80013678              
    addiu   a2, $zero, 0x0016          # a2 = 00000016
lbl_809E822C:
    lbu     v0, 0x0363(s2)             # 00000363
lbl_809E8230:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   a2, $zero, 0x0018          # a2 = 00000018
    beq     v0, $at, lbl_809E8250      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_809E8264      
    addiu   a2, $zero, 0x0017          # a2 = 00000017
    beq     $zero, $zero, lbl_809E8274 
    lbu     t1, 0x0364(s2)             # 00000364
lbl_809E8250:
    or      a0, s0, $zero              # a0 = 00000001
    jal     func_80013678              
    or      a1, s1, $zero              # a1 = FFFFFFEC
    beq     $zero, $zero, lbl_809E8274 
    lbu     t1, 0x0364(s2)             # 00000364
lbl_809E8264:
    or      a0, s0, $zero              # a0 = 00000001
    jal     func_80013678              
    or      a1, s1, $zero              # a1 = FFFFFFEC
    lbu     t1, 0x0364(s2)             # 00000364
lbl_809E8274:
    sltiu   $at, t1, 0x0006            
    beq     $at, $zero, lbl_809E830C   
    sll     t1, t1,  2                 
    lui     $at, %hi(var_809E8F14)     # $at = 809F0000
    addu    $at, $at, t1               
    lw      t1, %lo(var_809E8F14)($at) 
    jr      t1                         
    nop
var_809E8294:
    or      a0, s0, $zero              # a0 = 00000001
    or      a1, s1, $zero              # a1 = FFFFFFEC
    jal     func_80013678              
    addiu   a2, $zero, 0x000F          # a2 = 0000000F
    beq     $zero, $zero, lbl_809E8320 
    nop
var_809E82AC:
    or      a0, s0, $zero              # a0 = 00000001
    or      a1, s1, $zero              # a1 = FFFFFFEC
    jal     func_80013678              
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    beq     $zero, $zero, lbl_809E8320 
    nop
var_809E82C4:
    or      a0, s0, $zero              # a0 = 00000001
    or      a1, s1, $zero              # a1 = FFFFFFEC
    jal     func_80013678              
    addiu   a2, $zero, 0x0012          # a2 = 00000012
    beq     $zero, $zero, lbl_809E8320 
    nop
var_809E82DC:
    or      a0, s0, $zero              # a0 = 00000001
    or      a1, s1, $zero              # a1 = FFFFFFEC
    jal     func_80013678              
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    beq     $zero, $zero, lbl_809E8320 
    nop
var_809E82F4:
    or      a0, s0, $zero              # a0 = 00000001
    or      a1, s1, $zero              # a1 = FFFFFFEC
    jal     func_80013678              
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    beq     $zero, $zero, lbl_809E8320 
    nop
lbl_809E830C:
    or      a0, s0, $zero              # a0 = 00000001
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = FFFFFFEC
    jal     func_80013A84              
    addiu   a3, $zero, 0x00C0          # a3 = 000000C0
lbl_809E8320:
    jal     func_80020EB4              
    or      a0, s2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809E8430 
    lw      $ra, 0x005C($sp)           
    addiu   $at, $zero, 0x0058         # $at = 00000058
lbl_809E8334:
    bne     v0, $at, lbl_809E83E8      
    or      a0, s0, $zero              # a0 = 00000001
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x41A0                # $at = 41A00000
    lwc1    $f10, 0x0024(s2)           # 00000024
    mtc1    $at, $f6                   # $f6 = 20.00
    addiu   t2, $zero, 0x0064          # t2 = 00000064
    swc1    $f10, 0x0090($sp)          
    lwc1    $f4, 0x0028(s2)            # 00000028
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    add.s   $f16, $f4, $f6             
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    swc1    $f16, 0x0094($sp)          
    lwc1    $f8, 0x002C(s2)            # 0000002C
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0009          # t9 = 00000009
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    swc1    $f0, 0x0084($sp)           
    swc1    $f0, 0x0088($sp)           
    swc1    $f0, 0x008C($sp)           
    swc1    $f0, 0x0078($sp)           
    swc1    $f0, 0x007C($sp)           
    swc1    $f0, 0x0080($sp)           
    sw      t0, 0x003C($sp)            
    sw      t9, 0x0038($sp)            
    sw      t8, 0x0034($sp)            
    sw      $zero, 0x0030($sp)         
    sw      $zero, 0x002C($sp)         
    sw      t7, 0x0028($sp)            
    sw      t6, 0x0024($sp)            
    sw      t5, 0x0020($sp)            
    sw      t4, 0x001C($sp)            
    sw      t3, 0x0018($sp)            
    sw      $zero, 0x0014($sp)         
    sw      t2, 0x0010($sp)            
    addiu   a1, $sp, 0x0090            # a1 = FFFFFFE0
    addiu   a2, $sp, 0x0084            # a2 = FFFFFFD4
    addiu   a3, $sp, 0x0078            # a3 = FFFFFFC8
    jal     func_8001E1D4              
    swc1    $f8, 0x0098($sp)           
    beq     $zero, $zero, lbl_809E8430 
    lw      $ra, 0x005C($sp)           
lbl_809E83E8:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s2, 0x0050             # a0 = 00000050
    mfc1    a2, $f20                   
    mfc1    a1, $f0                    
    jal     func_80064280              
    lw      a3, 0x0358(s2)             # 00000358
    lui     a1, 0x3A83                 # a1 = 3A830000
    mfc1    a2, $f20                   
    lui     a3, 0x3727                 # a3 = 37270000
    ori     a3, a3, 0xC5AC             # a3 = 3727C5AC
    ori     a1, a1, 0x126F             # a1 = 3A83126F
    jal     func_80064280              
    addiu   a0, s2, 0x0358             # a0 = 00000358
    lwc1    $f18, 0x0050(s2)           # 00000050
    swc1    $f18, 0x0058(s2)           # 00000058
    lw      $ra, 0x005C($sp)           
lbl_809E8430:
    ldc1    $f20, 0x0048($sp)          
    lw      s0, 0x0050($sp)            
    lw      s1, 0x0054($sp)            
    lw      s2, 0x0058($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00B0           # $sp = 00000000


func_809E8448:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lh      t6, 0x01DA(s0)             # 000001DA
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    ori     $at, $zero, 0x8000         # $at = 00008000
    bne     t6, $zero, lbl_809E8484    
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    lui     t7, %hi(func_809E7D88)     # t7 = 809E0000
    addiu   t7, t7, %lo(func_809E7D88) # t7 = 809E7D88
    sb      $zero, 0x0365(s0)          # 00000365
    beq     $zero, $zero, lbl_809E84C8 
    sw      t7, 0x013C(s0)             # 0000013C
lbl_809E8484:
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)         
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    addu    a1, a1, $at                
    sll     a1, a1, 16                 
    jal     func_80064508              
    sra     a1, a1, 16                 
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0068(s0)            # 00000068
    lh      t8, 0x00B6(s0)             # 000000B6
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f4, $f6                   
    sh      t8, 0x0032(s0)             # 00000032
    bc1fl   lbl_809E84CC               
    lw      $ra, 0x0024($sp)           
    jal     func_809E6E40              
    lui     a1, 0x4000                 # a1 = 40000000
lbl_809E84C8:
    lw      $ra, 0x0024($sp)           
lbl_809E84CC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809E84DC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lbu     t6, 0x0114(a0)             # 00000114
    bnel    t6, $zero, lbl_809E8538    
    lw      $ra, 0x0014($sp)           
    lh      t7, 0x0368(a0)             # 00000368
    sb      $zero, 0x0366(a0)          # 00000366
    beql    t7, $zero, lbl_809E8514    
    lbu     t8, 0x00AF(a0)             # 000000AF
    jal     func_809E7190              
    nop
    beq     $zero, $zero, lbl_809E8538 
    lw      $ra, 0x0014($sp)           
    lbu     t8, 0x00AF(a0)             # 000000AF
lbl_809E8514:
    lui     t9, %hi(func_809E7D88)     # t9 = 809E0000
    addiu   t9, t9, %lo(func_809E7D88) # t9 = 809E7D88
    beq     t8, $zero, lbl_809E852C    
    nop
    beq     $zero, $zero, lbl_809E8534 
    sw      t9, 0x013C(a0)             # 0000013C
lbl_809E852C:
    jal     func_809E7510              
    nop
lbl_809E8534:
    lw      $ra, 0x0014($sp)           
lbl_809E8538:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809E8544:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s4, 0x0040($sp)            
    sw      s1, 0x0034($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      s6, 0x0048($sp)            
    sw      s5, 0x0044($sp)            
    sw      s3, 0x003C($sp)            
    sw      s2, 0x0038($sp)            
    sw      s0, 0x0030($sp)            
    sdc1    $f22, 0x0028($sp)          
    sdc1    $f20, 0x0020($sp)          
    lh      t6, 0x01D8(s1)             # 000001D8
    lbu     t8, 0x0366(s1)             # 00000366
    lui     $at, 0x41F0                # $at = 41F00000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    bne     t8, $zero, lbl_809E859C    
    sh      t7, 0x01D8(s1)             # 000001D8
    lh      t9, 0x01DC(s1)             # 000001DC
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sh      t0, 0x01DC(s1)             # 000001DC
lbl_809E859C:
    lh      v0, 0x01DA(s1)             # 000001DA
    mtc1    $at, $f22                  # $f22 = 30.00
    beq     v0, $zero, lbl_809E85B0    
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x01DA(s1)             # 000001DA
lbl_809E85B0:
    lh      v0, 0x01DE(s1)             # 000001DE
    mfc1    a1, $f22                   
    beq     v0, $zero, lbl_809E85C4    
    addiu   t2, v0, 0xFFFF             # t2 = FFFFFFFF
    sh      t2, 0x01DE(s1)             # 000001DE
lbl_809E85C4:
    lh      v0, 0x01E4(s1)             # 000001E4
    beq     v0, $zero, lbl_809E85D4    
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x01E4(s1)             # 000001E4
lbl_809E85D4:
    lh      v0, 0x01E0(s1)             # 000001E0
    beq     v0, $zero, lbl_809E85E4    
    addiu   t4, v0, 0xFFFF             # t4 = FFFFFFFF
    sh      t4, 0x01E0(s1)             # 000001E0
lbl_809E85E4:
    lh      v0, 0x01E2(s1)             # 000001E2
    beq     v0, $zero, lbl_809E85F4    
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    sh      t5, 0x01E2(s1)             # 000001E2
lbl_809E85F4:
    jal     func_80020F04              
    or      a0, s1, $zero              # a0 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_809E7C04              
    or      a1, s4, $zero              # a1 = 00000000
    lbu     t6, 0x0361(s1)             # 00000361
    bnel    t6, $zero, lbl_809E8640    
    lw      t9, 0x013C(s1)             # 0000013C
    lbu     t7, 0x0114(s1)             # 00000114
    or      a0, s1, $zero              # a0 = 00000000
    beq     t7, $zero, lbl_809E8634    
    nop
    lhu     t8, 0x0112(s1)             # 00000112
    andi    t9, t8, 0x4000             # t9 = 00000000
    bnel    t9, $zero, lbl_809E8640    
    lw      t9, 0x013C(s1)             # 0000013C
lbl_809E8634:
    jal     func_809E76BC              
    or      a1, s4, $zero              # a1 = 00000000
    lw      t9, 0x013C(s1)             # 0000013C
lbl_809E8640:
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s1, 0x0068             # a0 = 00000068
    jal     func_8006385C              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8002121C              
    or      a0, s1, $zero              # a0 = 00000000
    addiu   s3, s1, 0x0140             # s3 = 00000140
    or      a1, s3, $zero              # a1 = 00000140
    jal     func_80050B00              
    or      a0, s1, $zero              # a0 = 00000000
    lwc1    $f4, 0x036C(s1)            # 0000036C
    lwc1    $f8, 0x0370(s1)            # 00000370
    lwc1    $f16, 0x0374(s1)           # 00000374
    trunc.w.s $f6, $f4                   
    lbu     t6, 0x0361(s1)             # 00000361
    trunc.w.s $f10, $f8                  
    mfc1    t1, $f6                    
    trunc.w.s $f18, $f16                 
    mfc1    t3, $f10                   
    sh      t1, 0x01D2(s1)             # 000001D2
    mfc1    t5, $f18                   
    sh      t3, 0x01D4(s1)             # 000001D4
    bne     t6, $zero, lbl_809E8720    
    sh      t5, 0x01D6(s1)             # 000001D6
    lh      t7, 0x01E0(s1)             # 000001E0
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    bne     t7, $zero, lbl_809E8720    
    or      a0, s4, $zero              # a0 = 00000000
    addu    s0, s4, $at                
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a2, s3, $zero              # a2 = 00000140
    addiu   s2, s1, 0x018C             # s2 = 0000018C
    or      a2, s2, $zero              # a2 = 0000018C
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a1, s0, $zero              # a1 = 00000000
    lh      t8, 0x01E4(s1)             # 000001E4
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    bnel    t8, $zero, lbl_809E870C    
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    or      a2, s3, $zero              # a2 = 00000140
    or      a0, s4, $zero              # a0 = 00000000
lbl_809E870C:
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    or      a2, s2, $zero              # a2 = 0000018C
    beq     $zero, $zero, lbl_809E8754 
    lui     $at, 0x41A0                # $at = 41A00000
lbl_809E8720:
    lbu     t9, 0x019E(s1)             # 0000019E
    lbu     t1, 0x019D(s1)             # 0000019D
    lbu     t3, 0x0152(s1)             # 00000152
    lbu     t5, 0x0151(s1)             # 00000151
    andi    t0, t9, 0xFFFD             # t0 = 00000000
    andi    t2, t1, 0xFFFD             # t2 = 00000000
    andi    t4, t3, 0xFFFD             # t4 = 00000000
    andi    t6, t5, 0xFFFD             # t6 = 00000000
    sb      t0, 0x019E(s1)             # 0000019E
    sb      t2, 0x019D(s1)             # 0000019D
    sb      t4, 0x0152(s1)             # 00000152
    sb      t6, 0x0151(s1)             # 00000151
    lui     $at, 0x41A0                # $at = 41A00000
lbl_809E8754:
    mtc1    $at, $f20                  # $f20 = 20.00
    mfc1    a3, $f22                   
    addiu   t7, $zero, 0x0007          # t7 = 00000007
    mfc1    a2, $f20                   
    sw      t7, 0x0014($sp)            
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f20, 0x0010($sp)          
    lbu     t8, 0x0366(s1)             # 00000366
    lui     $at, 0x3F80                # $at = 3F800000
    bnel    t8, $zero, lbl_809E8944    
    lw      $ra, 0x004C($sp)           
    mtc1    $at, $f22                  # $f22 = 1.00
    addiu   a0, s1, 0x01E8             # a0 = 000001E8
    lw      a1, 0x01EC(s1)             # 000001EC
    mfc1    a2, $f22                   
    jal     func_80064280              
    lui     a3, 0x4248                 # a3 = 42480000
    mfc1    a2, $f22                   
    addiu   a0, s1, 0x01F0             # a0 = 000001F0
    lui     a1, 0x4080                 # a1 = 40800000
    jal     func_80064280              
    lui     a3, 0x40A0                 # a3 = 40A00000
    mfc1    a2, $f22                   
    lui     a3, 0x3D23                 # a3 = 3D230000
    ori     a3, a3, 0xD70A             # a3 = 3D23D70A
    addiu   a0, s1, 0x01F4             # a0 = 000001F4
    jal     func_80064280              
    lw      a1, 0x01F8(s1)             # 000001F8
    mfc1    a2, $f22                   
    lui     a3, 0x3C23                 # a3 = 3C230000
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    addiu   a0, s1, 0x01FC             # a0 = 000001FC
    jal     func_80064280              
    lw      a1, 0x0200(s1)             # 00000200
    mfc1    a2, $f22                   
    lui     a3, 0x3AC4                 # a3 = 3AC40000
    ori     a3, a3, 0x9BA6             # a3 = 3AC49BA6
    addiu   a0, s1, 0x0204             # a0 = 00000204
    jal     func_80064280              
    lw      a1, 0x0208(s1)             # 00000208
    mfc1    a2, $f22                   
    mfc1    a3, $f20                   
    addiu   a0, s1, 0x020C             # a0 = 0000020C
    jal     func_80064280              
    lw      a1, 0x0210(s1)             # 00000210
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f20                  # $f20 = 1000.00
    or      s2, $zero, $zero           # s2 = 00000000
    or      s0, s1, $zero              # s0 = 00000000
    addiu   s3, s1, 0x0214             # s3 = 00000214
    addiu   s4, s1, 0x021C             # s4 = 0000021C
    addiu   s5, s1, 0x0250             # s5 = 00000250
    addiu   s6, s1, 0x024C             # s6 = 0000024C
lbl_809E8830:
    lwc1    $f8, 0x0354(s1)            # 00000354
    lwc1    $f4, 0x0240(s0)            # 00000240
    sw      $zero, 0x0010($sp)         
    mul.s   $f10, $f8, $f20            
    trunc.w.s $f6, $f4                   
    or      a0, s6, $zero              # a0 = 0000024C
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    mfc1    a1, $f6                    
    trunc.w.s $f16, $f10                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    mfc1    a3, $f16                   
    nop
    sll     a3, a3, 16                 
    jal     func_80064508              
    sra     a3, a3, 16                 
    lwc1    $f6, 0x0354(s1)            # 00000354
    lwc1    $f18, 0x0248(s0)           # 00000248
    sw      $zero, 0x0010($sp)         
    mul.s   $f8, $f6, $f20             
    trunc.w.s $f4, $f18                  
    or      a0, s5, $zero              # a0 = 00000250
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    mfc1    a1, $f4                    
    trunc.w.s $f10, $f8                  
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    mfc1    a3, $f10                   
    nop
    sll     a3, a3, 16                 
    jal     func_80064508              
    sra     a3, a3, 16                 
    lui     $at, %hi(var_809E8F2C)     # $at = 809F0000
    lwc1    $f18, %lo(var_809E8F2C)($at) 
    lwc1    $f16, 0x0354(s1)           # 00000354
    mfc1    a2, $f22                   
    or      a0, s4, $zero              # a0 = 0000021C
    mul.s   $f4, $f16, $f18            
    lw      a1, 0x0228(s0)             # 00000228
    mfc1    a3, $f4                    
    jal     func_80064280              
    nop
    lwc1    $f6, 0x021C(s0)            # 0000021C
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f10                  # $f10 = 300.00
    swc1    $f6, 0x0224(s0)            # 00000224
    lwc1    $f8, 0x0354(s1)            # 00000354
    mfc1    a2, $f22                   
    or      a0, s3, $zero              # a0 = 00000214
    mul.s   $f16, $f8, $f10            
    lw      a1, 0x0218(s0)             # 00000218
    mfc1    a3, $f16                   
    jal     func_80064280              
    nop
    addiu   s2, s2, 0x0040             # s2 = 00000040
    addiu   $at, $zero, 0x0140         # $at = 00000140
    addiu   s0, s0, 0x0040             # s0 = 00000040
    addiu   s3, s3, 0x0040             # s3 = 00000254
    addiu   s4, s4, 0x0040             # s4 = 0000025C
    addiu   s5, s5, 0x0040             # s5 = 00000290
    bne     s2, $at, lbl_809E8830      
    addiu   s6, s6, 0x0040             # s6 = 0000028C
    mfc1    a1, $f22                   
    mfc1    a2, $f22                   
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    jal     func_80064280              
    addiu   a0, s1, 0x0354             # a0 = 00000354
    lw      $ra, 0x004C($sp)           
lbl_809E8944:
    ldc1    $f20, 0x0020($sp)          
    ldc1    $f22, 0x0028($sp)          
    lw      s0, 0x0030($sp)            
    lw      s1, 0x0034($sp)            
    lw      s2, 0x0038($sp)            
    lw      s3, 0x003C($sp)            
    lw      s4, 0x0040($sp)            
    lw      s5, 0x0044($sp)            
    lw      s6, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_809E8970:
    addiu   $sp, $sp, 0xFF30           # $sp = FFFFFF30
    sw      s3, 0x0058($sp)            
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x006C($sp)           
    sw      s7, 0x0068($sp)            
    sw      s6, 0x0064($sp)            
    sw      s5, 0x0060($sp)            
    sw      s4, 0x005C($sp)            
    sw      s2, 0x0054($sp)            
    sw      s1, 0x0050($sp)            
    sw      s0, 0x004C($sp)            
    sdc1    $f24, 0x0040($sp)          
    sdc1    $f22, 0x0038($sp)          
    sdc1    $f20, 0x0030($sp)          
    lw      a0, 0x0000(a1)             # 00000000
    lw      s0, 0x02C4(a0)             # 000002C4
    addiu   s0, s0, 0xFF00             # s0 = FFFFFF00
    or      s4, s0, $zero              # s4 = FFFFFF00
    sw      s0, 0x02C4(a0)             # 000002C4
    lw      a0, 0x0000(a1)             # 00000000
    sw      a1, 0x00D4($sp)            
    jal     func_8007E2C0              
    or      s7, a0, $zero              # s7 = 00000000
    lw      v0, 0x02D0(s7)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0030             # t7 = DB060030
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s7)             # 000002D0
    sw      s0, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s7)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s7)             # 000002D0
    sw      t9, 0x0000(v0)             # 00000000
    lw      t2, 0x00D4($sp)            
    lh      t0, 0x01DC(s3)             # 000001DC
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    lw      a0, 0x0000(t2)             # 00000000
    subu    $at, $zero, t0             
    sll     t6, $at,  2                
    subu    t6, t6, $at                
    sll     t6, t6,  1                 
    andi    t7, t6, 0x007F             # t7 = 00000008
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    andi    a3, $zero, 0x003F          # a3 = 00000000
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0010          # t4 = 00000010
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0018($sp)            
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    sw      a3, 0x001C($sp)            
    sw      t8, 0x0024($sp)            
    sw      t7, 0x0020($sp)            
    sw      t9, 0x0028($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    or      t1, $zero, $zero           # t1 = 00000000
    andi    a2, $zero, 0x007F          # a2 = 00000000
    jal     func_8007EB84              
    or      s1, v0, $zero              # s1 = 00000000
    sw      v0, 0x0004(s1)             # 00000004
    jal     func_800AA6EC              
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    lwc1    $f6, 0x0234(s3)            # 00000234
    lwc1    $f4, 0x021C(s3)            # 0000021C
    lwc1    $f16, 0x0238(s3)           # 00000238
    add.s   $f8, $f20, $f6             
    lwc1    $f10, 0x0220(s3)           # 00000220
    lwc1    $f6, 0x0224(s3)            # 00000224
    add.s   $f18, $f20, $f16           
    mul.s   $f12, $f4, $f8             
    lwc1    $f4, 0x023C(s3)            # 0000023C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f14, $f10, $f18           
    add.s   $f8, $f20, $f4             
    mul.s   $f16, $f6, $f8             
    mfc1    a2, $f16                   
    jal     func_800AA8FC              
    nop
    lw      v0, 0x02D0(s7)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s7)             # 000002D0
    sw      t3, 0x0000(v0)             # 00000000
    lw      t4, 0x00D4($sp)            
    or      s0, v0, $zero              # s0 = 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(t4)             # 00000000
    sw      v0, 0x0004(s0)             # 00000004
    jal     func_800AA724              
    nop
    mtc1    $zero, $f22                # $f22 = 0.00
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f24                  # $f24 = 1000.00
    addiu   s1, $zero, 0x000C          # s1 = 0000000C
    addiu   s2, s3, 0x0384             # s2 = 00000384
    addiu   s0, s3, 0x0040             # s0 = 00000040
    addiu   s6, $sp, 0x00C0            # s6 = FFFFFFF0
    addiu   s5, $zero, 0x003C          # s5 = 0000003C
    swc1    $f22, 0x00C0($sp)          
    swc1    $f22, 0x00C4($sp)          
    swc1    $f22, 0x00C8($sp)          
lbl_809E8B1C:
    lwc1    $f10, 0x0214(s0)           # 00000254
    mfc1    a2, $f22                   
    mov.s   $f12, $f22                 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA7F4              
    add.s   $f14, $f10, $f24           
    lh      a0, 0x024C(s0)             # 0000028C
    lh      a1, 0x024E(s0)             # 0000028E
    lh      a2, 0x0250(s0)             # 00000290
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA6EC              
    nop
    lwc1    $f4, 0x0234(s0)            # 00000274
    lwc1    $f18, 0x021C(s0)           # 0000025C
    lwc1    $f16, 0x0238(s0)           # 00000278
    add.s   $f6, $f20, $f4             
    lwc1    $f8, 0x0220(s0)            # 00000260
    lwc1    $f4, 0x0224(s0)            # 00000264
    add.s   $f10, $f20, $f16           
    mul.s   $f12, $f18, $f6            
    lwc1    $f18, 0x023C(s0)           # 0000027C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f14, $f8, $f10            
    add.s   $f6, $f20, $f18            
    mul.s   $f16, $f4, $f6             
    mfc1    a2, $f16                   
    jal     func_800AA8FC              
    nop
    jal     func_800AB8D8              
    or      a0, s4, $zero              # a0 = FFFFFF00
    jal     func_800AA724              
    nop
    addiu   s4, s4, 0x0040             # s4 = FFFFFF40
    or      a0, s6, $zero              # a0 = FFFFFFF0
    jal     func_800AB958              
    or      a1, s2, $zero              # a1 = 00000384
    addiu   s1, s1, 0x000C             # s1 = 00000018
    addiu   s2, s2, 0x000C             # s2 = 00000390
    bne     s1, s5, lbl_809E8B1C       
    addiu   s0, s0, 0x0040             # s0 = 00000080
    lw      t6, 0x0024(s3)             # 00000024
    lw      t5, 0x0028(s3)             # 00000028
    or      a0, s6, $zero              # a0 = FFFFFFF0
    sw      t6, 0x0378(s3)             # 00000378
    lw      t6, 0x002C(s3)             # 0000002C
    addiu   a1, s3, 0x036C             # a1 = 0000036C
    sw      t5, 0x037C(s3)             # 0000037C
    jal     func_800AB958              
    sw      t6, 0x0380(s3)             # 00000380
    lw      v0, 0x02D0(s7)             # 000002D0
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x0470             # t9 = 06000470
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s7)             # 000002D0
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      t8, 0x0000(v0)             # 00000000
    sw      t9, 0x0004(v0)             # 00000004
    lh      v0, 0x01E2(s3)             # 000001E2
    beq     v0, $zero, lbl_809E8D48    
    addiu   s0, v0, 0xFFFF             # s0 = FFFFFFFF
    lbu     t2, 0x0114(s3)             # 00000114
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    andi    t4, s0, 0x0001             # t4 = 00000001
    addiu   t3, t2, 0x0001             # t3 = 00000001
    bne     t4, $zero, lbl_809E8D48    
    sb      t3, 0x0114(s3)             # 00000114
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f20                  # $f20 = 10.00
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    sra     t5, s0,  2                 
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    subu    t7, t6, t5                 
    addiu   v0, $zero, 0x000C          # v0 = 0000000C
    multu   t7, v0                     
    sra     t9, s0,  1                 
    andi    t2, t9, 0x0003             # t2 = 00000000
    lui     t4, %hi(var_809E8E38)      # t4 = 809F0000
    addiu   t4, t4, %lo(var_809E8E38)  # t4 = 809E8E38
    mov.s   $f12, $f20                 
    mflo    t8                         
    addu    s1, s3, t8                 
    lwc1    $f8, 0x0378(s1)            # 00000390
    multu   t2, v0                     
    mflo    t3                         
    addu    s2, t3, t4                 
    lwc1    $f10, 0x0000(s2)           # 00000390
    add.s   $f18, $f8, $f10            
    add.s   $f4, $f0, $f18             
    jal     func_80026D90              
    swc1    $f4, 0x0090($sp)           
    lwc1    $f6, 0x037C(s1)            # 00000394
    lwc1    $f16, 0x0004(s2)           # 00000394
    mov.s   $f12, $f20                 
    add.s   $f8, $f6, $f16             
    add.s   $f10, $f0, $f8             
    jal     func_80026D90              
    swc1    $f10, 0x0094($sp)          
    lwc1    $f18, 0x0380(s1)           # 00000398
    lwc1    $f4, 0x0008(s2)            # 00000398
    lw      a0, 0x00D4($sp)            
    or      a1, s3, $zero              # a1 = 00000000
    add.s   $f6, $f18, $f4             
    addiu   a2, $sp, 0x0090            # a2 = FFFFFFC0
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    addiu   t8, $zero, 0x0096          # t8 = 00000096
    add.s   $f16, $f0, $f6             
    addiu   t9, $zero, 0x0096          # t9 = 00000096
    addiu   t2, $zero, 0x00FA          # t2 = 000000FA
    addiu   t3, $zero, 0x00EB          # t3 = 000000EB
    swc1    $f16, 0x0098($sp)          
    lhu     t6, 0x0112(s3)             # 00000112
    addiu   t4, $zero, 0x00F5          # t4 = 000000F5
    lui     $at, 0x4040                # $at = 40400000
    andi    t5, t6, 0x4000             # t5 = 00000000
    beq     t5, $zero, lbl_809E8D24    
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    sw      t7, 0x0018($sp)            
    lw      a0, 0x00D4($sp)            
    or      a1, s3, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0090            # a2 = FFFFFFC0
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    sw      $zero, 0x0010($sp)         
    jal     func_8001DFEC              
    sw      $zero, 0x0014($sp)         
    beq     $zero, $zero, lbl_809E8D4C 
    lw      $ra, 0x006C($sp)           
lbl_809E8D24:
    mtc1    $at, $f8                   # $f8 = 0.00
    sw      t8, 0x0010($sp)            
    sw      t9, 0x0014($sp)            
    sw      t2, 0x0018($sp)            
    sw      t3, 0x001C($sp)            
    sw      t4, 0x0020($sp)            
    sw      t6, 0x0024($sp)            
    jal     func_8001DC4C              
    swc1    $f8, 0x0028($sp)           
lbl_809E8D48:
    lw      $ra, 0x006C($sp)           
lbl_809E8D4C:
    ldc1    $f20, 0x0030($sp)          
    ldc1    $f22, 0x0038($sp)          
    ldc1    $f24, 0x0040($sp)          
    lw      s0, 0x004C($sp)            
    lw      s1, 0x0050($sp)            
    lw      s2, 0x0054($sp)            
    lw      s3, 0x0058($sp)            
    lw      s4, 0x005C($sp)            
    lw      s5, 0x0060($sp)            
    lw      s6, 0x0064($sp)            
    lw      s7, 0x0068($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00D0           # $sp = 00000000

.section .data

var_809E8D80: .word 0x00DD0500, 0x00000435, 0x00D40000, 0x000023B4
.word func_809E6C60
.word func_809E6E00
.word func_809E8544
.word func_809E8970
var_809E8DA0: .word \
0x0A000909, 0x01000000, 0x00000000, 0xFFCFFFFF, \
0x00080000, 0xFFCFFFFF, 0x00000000, 0x01050100, \
0x001E0037, 0x00000000, 0x00000000
var_809E8DCC: .word \
0x0A000D0D, 0x01000000, 0x00000000, 0xFFCFFFFF, \
0x00080000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x00140014, 0xFFF60000, 0x00000000
var_809E8DF8: .word \
0x00F2F1F2, 0x10F2F210, 0xF1F2F424, 0x34BFD4CF, \
0xEF24334A, 0x0000F1F4, 0xF2F2F8F4, 0xEA000000
var_809E8E18: .word 0x89170037, 0x801F0002, 0x304C001E
var_809E8E24: .word \
0x00000000, 0x43FA0000, 0x443B8000, 0x447A0000, \
0x447A0000
var_809E8E38: .word \
0x41C80000, 0x00000000, 0x00000000, 0xC1C80000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x41C80000, 0x00000000, 0x00000000, 0xC1C80000, \
0x00000000, 0x00000000

.section .rodata

var_809E8E70: .word 0x3C656042
var_809E8E74: .word 0x3C54FDF4
var_809E8E78: .word 0xBECCCCCD
var_809E8E7C: .word 0x451C4000
var_809E8E80: .word 0x3F4CCCCD
var_809E8E84: .word 0x45BB8000
var_809E8E88: .word 0x451C4000
var_809E8E8C: .word 0x3E19999A
var_809E8E90: .word 0x459C4000
var_809E8E94: .word 0x451C4000
var_809E8E98: .word 0x451C4000
var_809E8E9C: .word 0x3E19999A
var_809E8EA0: .word 0x451C4000
var_809E8EA4: .word 0x451C4000
var_809E8EA8: .word 0x3E19999A
var_809E8EAC: .word var_809E7954
.word var_809E7880
.word var_809E78C8
.word var_809E7910
.word lbl_809E798C
.word lbl_809E798C
.word lbl_809E798C
.word lbl_809E798C
.word lbl_809E798C
.word lbl_809E798C
.word var_809E77DC
.word var_809E77E0
.word var_809E77E8
.word var_809E77F0
.word var_809E77F8
var_809E8EE8: .word 0x451C4000
var_809E8EEC: .word 0x3E19999A
var_809E8EF0: .word var_809E7EA4
.word var_809E7EBC
.word var_809E7EE8
.word var_809E7F10
.word var_809E7F3C
var_809E8F04: .word 0x3F4CCCCD
var_809E8F08: .word 0x459C4000
var_809E8F0C: .word 0xC59C4000
var_809E8F10: .word 0x3B449BA6
var_809E8F14: .word lbl_809E830C
.word var_809E8294
.word var_809E82AC
.word var_809E82C4
.word var_809E82DC
.word var_809E82F4
var_809E8F2C: .word 0x3E4CCCCD

