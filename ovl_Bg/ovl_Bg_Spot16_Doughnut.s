.section .text
func_809EF040:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, %hi(var_809EF560)      # a1 = 809F0000
    addiu   a1, a1, %lo(var_809EF560)  # a1 = 809EF560
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sh      $zero, 0x013C(s0)          # 0000013C
    sb      t6, 0x0140(s0)             # 00000140
    beq     v1, $at, lbl_809EF0AC      
    or      v0, v1, $zero              # v0 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_809EF0AC      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_809EF0AC      
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_809EF0FC      
    lw      t1, 0x0024($sp)            
lbl_809EF0AC:
    sll     t7, v1,  1                 
    lui     t8, %hi(var_809EF56C)      # t8 = 809F0000
    addu    t8, t8, t7                 
    lh      t8, %lo(var_809EF56C)(t8)  
    lui     $at, %hi(var_809EF580)     # $at = 809F0000
    lwc1    $f8, %lo(var_809EF580)($at) 
    mtc1    t8, $f4                    # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f8             
    mfc1    a1, $f10                   
    jal     func_80020F88              
    nop
    lui     t9, %hi(func_809EF470)     # t9 = 809F0000
    lui     t0, %hi(func_809EF258)     # t0 = 809F0000
    addiu   t9, t9, %lo(func_809EF470) # t9 = 809EF470
    addiu   t0, t0, %lo(func_809EF258) # t0 = 809EF258
    sw      t9, 0x0134(s0)             # 00000134
    beq     $zero, $zero, lbl_809EF1A0 
    sw      t0, 0x0130(s0)             # 00000130
lbl_809EF0FC:
    lh      v0, 0x00A4(t1)             # 000000A4
    addiu   $at, $zero, 0x0023         # $at = 00000023
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $at, lbl_809EF144      
    lui     a1, 0x3C93                 # a1 = 3C930000
    addiu   $at, $zero, 0x0024         # $at = 00000024
    beq     v0, $at, lbl_809EF144      
    addiu   $at, $zero, 0x0025         # $at = 00000025
    beq     v0, $at, lbl_809EF144      
    addiu   $at, $zero, 0x0052         # $at = 00000052
    bne     v0, $at, lbl_809EF154      
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x3D23                 # a1 = 3D230000
    ori     a1, a1, 0xD70A             # a1 = 3D23D70A
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809EF160 
    nop
lbl_809EF144:
    jal     func_80020F88              
    ori     a1, a1, 0x74BC             # a1 = 000074BC
    beq     $zero, $zero, lbl_809EF160 
    nop
lbl_809EF154:
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    jal     func_80020F88              
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
lbl_809EF160:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lw      t2, 0x0004(v0)             # 8011A5D4
    bnel    t2, $zero, lbl_809EF188    
    lhu     t5, 0x013C(s0)             # 0000013C
    lhu     t3, 0x0ED8(v0)             # 8011B4A8
    andi    t4, t3, 0x8000             # t4 = 00000000
    beql    t4, $zero, lbl_809EF198    
    lhu     t7, 0x013C(s0)             # 0000013C
    lhu     t5, 0x013C(s0)             # 0000013C
lbl_809EF188:
    andi    t6, t5, 0xFFFE             # t6 = 00000000
    beq     $zero, $zero, lbl_809EF1A0 
    sh      t6, 0x013C(s0)             # 0000013C
    lhu     t7, 0x013C(s0)             # 0000013C
lbl_809EF198:
    ori     t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x013C(s0)             # 0000013C
lbl_809EF1A0:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809EF1B4:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_809EF1C4:
    lhu     v0, 0x013C(a0)             # 0000013C
    andi    t6, v0, 0x0001             # t6 = 00000000
    bnel    t6, $zero, lbl_809EF208    
    lbu     t1, 0x1D6C(a1)             # 00001D6C
    lh      t7, 0x00B6(a0)             # 000000B6
    lbu     v1, 0x0140(a0)             # 00000140
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   t8, t7, 0xFFE0             # t8 = FFFFFFE0
    slti    $at, v1, 0x00FF            
    beq     $at, $zero, lbl_809EF1FC   
    sh      t8, 0x00B6(a0)             # 000000B6
    addiu   t9, v1, 0x0005             # t9 = 00000005
    jr      $ra                        
    sb      t9, 0x0140(a0)             # 00000140
lbl_809EF1FC:
    jr      $ra                        
    sb      t0, 0x0140(a0)             # 00000140
lbl_809EF204:
    lbu     t1, 0x1D6C(a1)             # 00001D6C
lbl_809EF208:
    beq     t1, $zero, lbl_809EF250    
    nop
    lw      v1, 0x1D94(a1)             # 00001D94
    beq     v1, $zero, lbl_809EF250    
    nop
    lhu     t2, 0x0000(v1)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t2, $at, lbl_809EF250      
    nop
    lbu     v1, 0x0140(a0)             # 00000140
    andi    t4, v0, 0xFFFE             # t4 = 00000000
    slti    $at, v1, 0x0006            
    bne     $at, $zero, lbl_809EF248   
    addiu   t3, v1, 0xFFFB             # t3 = FFFFFFFB
    jr      $ra                        
    sb      t3, 0x0140(a0)             # 00000140
lbl_809EF248:
    sb      $zero, 0x0140(a0)          # 00000140
    sh      t4, 0x013C(a0)             # 0000013C
lbl_809EF250:
    jr      $ra                        
    nop


func_809EF258:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lbu     v0, 0x0140(a0)             # 00000140
    slti    $at, v0, 0x0006            
    bne     $at, $zero, lbl_809EF27C   
    addiu   t6, v0, 0xFFFB             # t6 = FFFFFFFB
    beq     $zero, $zero, lbl_809EF288 
    sb      t6, 0x0140(a0)             # 00000140
lbl_809EF27C:
    jal     func_80020EB4              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
lbl_809EF288:
    lh      t7, 0x00B6(a0)             # 000000B6
    lui     $at, %hi(var_809EF584)     # $at = 809F0000
    lwc1    $f4, 0x0050(a0)            # 00000050
    addiu   t8, t7, 0xFFE0             # t8 = FFFFFFE0
    sh      t8, 0x00B6(a0)             # 000000B6
    lwc1    $f6, %lo(var_809EF584)($at) 
    add.s   $f8, $f4, $f6              
    mfc1    a1, $f8                    
    jal     func_80020F88              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809EF2C0:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      $ra, 0x003C($sp)           
    sw      s0, 0x0038($sp)            
    sw      a0, 0x0060($sp)            
    lui     t0, 0x0001                 # t0 = 00010000
    addu    t0, t0, a1                 
    lw      t0, 0x1DE4(t0)             # 00011DE4
    andi    t0, t0, 0xFFFF             # t0 = 00000000
    lw      a0, 0x0000(a1)             # 00000000
    sw      t0, 0x0058($sp)            
    sw      a1, 0x0064($sp)            
    jal     func_8007E2C0              
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x0064($sp)            
    lw      a0, 0x0000(t8)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0048($sp)            
    lw      a1, 0x0048($sp)            
    lw      t0, 0x0058($sp)            
    lw      t2, 0x0060($sp)            
    sw      v0, 0x0004(a1)             # 00000004
    lhu     t9, 0x013C(t2)             # 0000013C
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0020             # t5 = DB060020
    andi    t3, t9, 0x0001             # t3 = 00000000
    beq     t3, $zero, lbl_809EF3FC    
    or      a1, $zero, $zero           # a1 = 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    subu    $at, $zero, t0             
    sll     t3, $at,  1                
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lw      t6, 0x0064($sp)            
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t4, $zero, 0x0010          # t4 = 00000010
    lw      a0, 0x0000(t6)             # 00000000
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    sw      t5, 0x0028($sp)            
    sw      t4, 0x0024($sp)            
    sw      t3, 0x0020($sp)            
    sw      t0, 0x001C($sp)            
    subu    a2, $zero, t0              
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84              
    sw      v1, 0x0044($sp)            
    lw      t1, 0x0044($sp)            
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xFB00                 # t7 = FB000000
    lui     $at, 0xFF00                # $at = FF000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x0060($sp)            
    lui     t6, 0xDE00                 # t6 = DE000000
    lbu     t3, 0x0140(t8)             # 00000140
    or      t4, t3, $at                # t4 = FF000000
    sw      t4, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x0660             # t7 = 06000660
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_809EF460 
    lw      $ra, 0x003C($sp)           
lbl_809EF3FC:
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lbu     t4, 0x0140(t2)             # 00000140
    lui     t3, 0xDE00                 # t3 = DE000000
    or      t5, t4, $at                # t5 = FFFFFF00
    sw      t5, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x0FC0             # t4 = 06000FC0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      $ra, 0x003C($sp)           
lbl_809EF460:
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra                        
    nop


func_809EF470:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0              
    sw      a0, 0x0020($sp)            
    lw      a2, 0x0020($sp)            
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(a2)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x002C($sp)            
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0018($sp)            
    lw      t0, 0x0018($sp)            
    lw      a2, 0x0020($sp)            
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t2, 0xFB00                 # t2 = FB000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(a2)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lw      t3, 0x0028($sp)            
    lui     t2, 0xDE00                 # t2 = DE000000
    lbu     t5, 0x0140(t3)             # 00000140
    or      t6, t5, $at                # t6 = FFFFFF00
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(a2)             # 000002D0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t3, 0x0600                 # t3 = 06000000
    addiu   t3, t3, 0x0FC0             # t3 = 06000FC0
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(a2)             # 000002D0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_809EF540: .word 0x00E50600, 0x00000000, 0x017A0000, 0x00000144
.word func_809EF040
.word func_809EF1B4
.word func_809EF1C4
.word func_809EF2C0
var_809EF560: .word 0xB0F4157C, 0xB0F81388, 0x30FC1388
var_809EF56C: .word \
0x00000000, 0x004600D2, 0x012C0000, 0x00000000, \
0x00000000

.section .rodata

var_809EF580: .word 0x38D1B717
var_809EF584: .word 0x3B03126E, 0x00000000, 0x00000000

