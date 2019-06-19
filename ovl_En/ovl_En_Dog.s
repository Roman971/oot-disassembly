.section .text
func_80B49E50:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t7, 0x0144(a0)             # 00000144
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x1368             # t6 = 06001368
    bne     t6, t7, lbl_80B49EA8       
    lui     $at, 0x3F80                # $at = 3F800000
    lwc1    $f0, 0x0154(a0)            # 00000154
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     $at, 0x40E0                # $at = 40E00000
    c.eq.s  $f4, $f0                   
    nop
    bc1t    lbl_80B49EA0               
    nop
    mtc1    $at, $f6                   # $f6 = 7.00
    nop
    c.eq.s  $f6, $f0                   
    nop
    bc1fl   lbl_80B49EAC               
    lw      $ra, 0x0014($sp)           
lbl_80B49EA0:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x28EF          # a1 = 000028EF
lbl_80B49EA8:
    lw      $ra, 0x0014($sp)           
lbl_80B49EAC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B49EB8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t7, 0x0144(a0)             # 00000144
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x0D78             # t6 = 06000D78
    bne     t6, t7, lbl_80B49F10       
    lui     $at, 0x4000                # $at = 40000000
    lwc1    $f0, 0x0154(a0)            # 00000154
    mtc1    $at, $f4                   # $f4 = 2.00
    lui     $at, 0x4080                # $at = 40800000
    c.eq.s  $f4, $f0                   
    nop
    bc1t    lbl_80B49F08               
    nop
    mtc1    $at, $f6                   # $f6 = 4.00
    nop
    c.eq.s  $f6, $f0                   
    nop
    bc1fl   lbl_80B49F14               
    lw      $ra, 0x0014($sp)           
lbl_80B49F08:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x28EF          # a1 = 000028EF
lbl_80B49F10:
    lw      $ra, 0x0014($sp)           
lbl_80B49F14:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B49F20:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t7, 0x0144(a0)             # 00000144
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x0278             # t6 = 06000278
    bne     t6, t7, lbl_80B49F78       
    lui     $at, 0x4150                # $at = 41500000
    lwc1    $f0, 0x0154(a0)            # 00000154
    mtc1    $at, $f4                   # $f4 = 13.00
    lui     $at, 0x4198                # $at = 41980000
    c.eq.s  $f4, $f0                   
    nop
    bc1t    lbl_80B49F70               
    nop
    mtc1    $at, $f6                   # $f6 = 19.00
    nop
    c.eq.s  $f6, $f0                   
    nop
    bc1fl   lbl_80B49F7C               
    lw      $ra, 0x0014($sp)           
lbl_80B49F70:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x28D8          # a1 = 000028D8
lbl_80B49F78:
    lw      $ra, 0x0014($sp)           
lbl_80B49F7C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B49F88:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lh      v0, 0x01E0(s0)             # 000001E0
    lh      v1, 0x01E2(s0)             # 000001E2
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beql    v0, v1, lbl_80B4A04C       
    sltiu   $at, v1, 0x0006            
    bne     v0, $at, lbl_80B49FBC      
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sh      t6, 0x01E0(s0)             # 000001E0
    lh      v0, 0x01E0(s0)             # 000001E0
lbl_80B49FBC:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v0, $at, lbl_80B49FD0      
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    sh      t7, 0x01E0(s0)             # 000001E0
    lh      v0, 0x01E0(s0)             # 000001E0
lbl_80B49FD0:
    andi    t8, v0, 0xFFFF             # t8 = 00000000
    sltiu   $at, t8, 0x0006            
    beq     $at, $zero, lbl_80B4A030   
    sh      v0, 0x01E2(s0)             # 000001E2
    sll     t8, t8,  2                 
    lui     $at, %hi(var_80B4AE90)     # $at = 80B50000
    addu    $at, $at, t8               
    lw      t8, %lo(var_80B4AE90)($at) 
    jr      t8                         
    nop
var_80B49FF8:
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    beq     $zero, $zero, lbl_80B4A030 
    sw      t9, 0x0024($sp)            
var_80B4A004:
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    beq     $zero, $zero, lbl_80B4A030 
    sw      t0, 0x0024($sp)            
var_80B4A010:
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    beq     $zero, $zero, lbl_80B4A030 
    sw      t1, 0x0024($sp)            
var_80B4A01C:
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    beq     $zero, $zero, lbl_80B4A030 
    sw      t2, 0x0024($sp)            
var_80B4A028:
    addiu   t3, $zero, 0x0006          # t3 = 00000006
    sw      t3, 0x0024($sp)            
lbl_80B4A030:
    lui     a1, %hi(var_80B4ADA8)      # a1 = 80B50000
    addiu   a1, a1, %lo(var_80B4ADA8)  # a1 = 80B4ADA8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98              
    lw      a2, 0x0024($sp)            
    lh      v1, 0x01E2(s0)             # 000001E2
    sltiu   $at, v1, 0x0006            
lbl_80B4A04C:
    beq     $at, $zero, lbl_80B4A108   
    sll     t4, v1,  2                 
    lui     $at, %hi(var_80B4AEA8)     # $at = 80B50000
    addu    $at, $at, t4               
    lw      t4, %lo(var_80B4AEA8)($at) 
    jr      t4                         
    nop
var_80B4A068:
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      a1, 0x014C(s0)             # 0000014C
    jal     func_8008D6A8              
    sw      a0, 0x0020($sp)            
    beq     v0, $zero, lbl_80B4A108    
    lw      a0, 0x0020($sp)            
    lui     a1, %hi(var_80B4ADA8)      # a1 = 80B50000
    addiu   a1, a1, %lo(var_80B4ADA8)  # a1 = 80B4ADA8
    jal     func_80027C98              
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    sh      t5, 0x01E0(s0)             # 000001E0
    lh      t6, 0x01E0(s0)             # 000001E0
    beq     $zero, $zero, lbl_80B4A108 
    sh      t6, 0x01E2(s0)             # 000001E2
var_80B4A0A4:
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      a1, 0x014C(s0)             # 0000014C
    jal     func_8008D6A8              
    sw      a0, 0x0020($sp)            
    beq     v0, $zero, lbl_80B4A108    
    lw      a0, 0x0020($sp)            
    lui     a1, %hi(var_80B4ADA8)      # a1 = 80B50000
    addiu   a1, a1, %lo(var_80B4ADA8)  # a1 = 80B4ADA8
    jal     func_80027C98              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    sh      t7, 0x01E0(s0)             # 000001E0
    lh      t8, 0x01E0(s0)             # 000001E0
    beq     $zero, $zero, lbl_80B4A108 
    sh      t8, 0x01E2(s0)             # 000001E2
var_80B4A0E0:
    jal     func_80B49E50              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B4A10C 
    or      v0, $zero, $zero           # v0 = 00000000
var_80B4A0F0:
    jal     func_80B49EB8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B4A10C 
    or      v0, $zero, $zero           # v0 = 00000000
var_80B4A100:
    jal     func_80B49F20              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B4A108:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B4A10C:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B4A120:
    lbu     v1, 0x0195(a0)             # 00000195
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    andi    t6, v1, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80B4A13C    
    andi    t7, v1, 0xFFFD             # t7 = 00000000
    jr      $ra                        
    sb      t7, 0x0195(a0)             # 00000195
lbl_80B4A13C:
    lh      t8, 0x00A4(a1)             # 000000A4
    addiu   $at, $zero, 0x0020         # $at = 00000020
    bnel    t8, $at, lbl_80B4A158      
    lbu     v0, 0x0197(a0)             # 00000197
    jr      $ra                        
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B4A154:
    lbu     v0, 0x0197(a0)             # 00000197
lbl_80B4A158:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    andi    t9, v0, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_80B4A198    
    andi    t0, v0, 0xFFFE             # t0 = 00000000
    sb      t0, 0x0197(a0)             # 00000197
    lh      t1, 0x13C4(v1)             # 8011B994
    beql    t1, $zero, lbl_80B4A188    
    lh      t2, 0x001C(a0)             # 0000001C
    jr      $ra                        
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B4A184:
    lh      t2, 0x001C(a0)             # 0000001C
lbl_80B4A188:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    andi    t3, t2, 0x7FFF             # t3 = 00000000
    jr      $ra                        
    sh      t3, 0x13C4(v1)             # 8011B994
lbl_80B4A198:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    nop


func_80B4A1A4:
    sw      a1, 0x0004($sp)            
    lw      t6, 0x01D0(a0)             # 000001D0
    bnel    t6, $zero, lbl_80B4A1C0    
    lbu     v0, 0x01D4(a0)             # 000001D4
    jr      $ra                        
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B4A1BC:
    lbu     v0, 0x01D4(a0)             # 000001D4
lbl_80B4A1C0:
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    beq     v0, $zero, lbl_80B4A1D4    
    nop
    beq     $zero, $zero, lbl_80B4A1D4 
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
lbl_80B4A1D4:
    lh      t7, 0x01D6(a0)             # 000001D6
    addu    t8, t7, v1                 
    beq     v0, $zero, lbl_80B4A204    
    sh      t8, 0x01D6(a0)             # 000001D6
    lh      t9, 0x01D6(a0)             # 000001D6
    bgezl   t9, lbl_80B4A228           
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      t0, 0x01D0(a0)             # 000001D0
    lbu     t1, 0x0000(t0)             # 00000000
    addiu   t2, t1, 0xFFFF             # t2 = FFFFFFFF
    beq     $zero, $zero, lbl_80B4A224 
    sh      t2, 0x01D6(a0)             # 000001D6
lbl_80B4A204:
    lw      t4, 0x01D0(a0)             # 000001D0
    lh      t3, 0x01D6(a0)             # 000001D6
    lbu     t5, 0x0000(t4)             # 00000000
    addiu   t6, t5, 0xFFFF             # t6 = FFFFFFFF
    slt     $at, t6, t3                
    beql    $at, $zero, lbl_80B4A228   
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      $zero, 0x01D6(a0)          # 000001D6
lbl_80B4A224:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B4A228:
    jr      $ra                        
    nop


func_80B4A230:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x01D0(s0)             # 000001D0
    lh      a2, 0x01D6(s0)             # 000001D6
    jal     func_80078FC4              
    addiu   a3, $sp, 0x002E            # a3 = FFFFFFFE
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)            
    addiu   a0, s0, 0x0032             # a0 = 00000032
    lh      a1, 0x002E($sp)            
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    jal     func_80064508              
    swc1    $f0, 0x0028($sp)           
    lwc1    $f2, 0x0028($sp)           
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x447A                # $at = 447A0000
    or      v0, $zero, $zero           # v0 = 00000000
    c.lt.s  $f4, $f2                   
    nop
    bc1f    lbl_80B4A2C0               
    nop
    mtc1    $at, $f6                   # $f6 = 1000.00
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f2, $f6                   
    nop
    bc1f    lbl_80B4A2C0               
    nop
    jal     func_80B4A1A4              
    lw      a1, 0x0034($sp)            
    beq     $zero, $zero, lbl_80B4A2C4 
    lw      $ra, 0x0024($sp)           
lbl_80B4A2C0:
    lw      $ra, 0x0024($sp)           
lbl_80B4A2C4:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80B4A2D4:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x004C($sp)            
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41C0                 # a3 = 41C00000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   t6, s0, 0x01E4             # t6 = 000001E4
    addiu   t7, s0, 0x0232             # t7 = 00000232
    addiu   t8, $zero, 0x000D          # t8 = 0000000D
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a2, a2, 0x7290             # a2 = 06007290
    sw      a1, 0x0034($sp)            
    lw      a0, 0x004C($sp)            
    jal     func_8008C788              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a1, %hi(var_80B4ADA8)      # a1 = 80B50000
    addiu   a1, a1, %lo(var_80B4ADA8)  # a1 = 80B4ADA8
    lw      a0, 0x0034($sp)            
    jal     func_80027C98              
    or      a2, $zero, $zero           # a2 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   a1, s0, 0x0184             # a1 = 00000184
    andi    t9, v0, 0x8000             # t9 = 00000000
    bne     t9, $zero, lbl_80B4A37C    
    andi    t0, v0, 0xF0FF             # t0 = 00000000
    andi    t1, v0, 0x0F00             # t1 = 00000000
    sra     t2, t1,  8                 
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sll     t4, t3,  8                 
    or      t5, t0, t4                 # t5 = 00000000
    sh      t5, 0x001C(s0)             # 0000001C
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80B4A37C:
    lh      v1, -0x466C(v1)            # 8011B994
    andi    t6, v0, 0x0F00             # t6 = 00000000
    sra     t7, t6,  8                 
    andi    v1, v1, 0x0F00             # v1 = 00000000
    sra     v1, v1,  8                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    bne     v1, t7, lbl_80B4A3B8       
    andi    t8, v0, 0x8000             # t8 = 00000000
    bnel    t8, $zero, lbl_80B4A3BC    
    lw      a0, 0x004C($sp)            
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B4A514 
    lw      $ra, 0x002C($sp)           
lbl_80B4A3B8:
    lw      a0, 0x004C($sp)            
lbl_80B4A3BC:
    jal     func_8004AB7C              
    sw      a1, 0x0034($sp)            
    lui     a3, %hi(var_80B4AD70)      # a3 = 80B50000
    lw      a1, 0x0034($sp)            
    addiu   a3, a3, %lo(var_80B4AD70)  # a3 = 80B4AD70
    lw      a0, 0x004C($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lui     a2, %hi(var_80B4AD9C)      # a2 = 80B50000
    addiu   a2, a2, %lo(var_80B4AD9C)  # a2 = 80B4AD9C
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050370              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a1, 0x3BF5                 # a1 = 3BF50000
    ori     a1, a1, 0xC28F             # a1 = 3BF5C28F
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x001C(s0)             # 0000001C
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    andi    a1, a1, 0x00F0             # a1 = 00000000
    sra     a1, a1,  4                 
    sh      $zero, 0x01D6(s0)          # 000001D6
    sll     a1, a1, 16                 
    swc1    $f4, 0x006C(s0)            # 0000006C
    lw      a0, 0x004C($sp)            
    sra     a1, a1, 16                 
    jal     func_80078F80              
    addiu   a2, $zero, 0x000F          # a2 = 0000000F
    sw      v0, 0x01D0(s0)             # 000001D0
    lw      t9, 0x004C($sp)            
    addiu   $at, $zero, 0x0021         # $at = 00000021
    lui     t1, 0x8012                 # t1 = 80120000
    lh      v1, 0x00A4(t9)             # 000000A4
    beq     v1, $at, lbl_80B4A460      
    addiu   $at, $zero, 0x0035         # $at = 00000035
    beql    v1, $at, lbl_80B4A49C      
    lh      v0, 0x001C(s0)             # 0000001C
    lh      v0, 0x001C(s0)             # 0000001C
    beq     $zero, $zero, lbl_80B4A4E4 
    andi    v0, v0, 0x8000             # v0 = 00000000
lbl_80B4A460:
    lbu     t1, -0x4614(t1)            # 8011B9EC
    bnel    t1, $zero, lbl_80B4A490    
    lh      v0, 0x001C(s0)             # 0000001C
    lh      t2, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    t3, t2, 0x0F00             # t3 = 00000000
    sra     t0, t3,  8                 
    bnel    t0, $at, lbl_80B4A490      
    lh      v0, 0x001C(s0)             # 0000001C
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80B4A490:
    beq     $zero, $zero, lbl_80B4A4E4 
    andi    v0, v0, 0x8000             # v0 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80B4A49C:
    lui     t4, 0x8012                 # t4 = 80120000
    andi    v0, v0, 0x8000             # v0 = 00000000
    bne     v0, $zero, lbl_80B4A4E4    
    nop
    lbu     t4, -0x4614(t4)            # 8011B9EC
    lui     t6, %hi(func_80B4AB04)     # t6 = 80B50000
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    bne     t4, $zero, lbl_80B4A4D4    
    addiu   t6, t6, %lo(func_80B4AB04) # t6 = 80B4AB04
    mtc1    $zero, $f6                 # $f6 = 0.00
    sh      t5, 0x01E0(s0)             # 000001E0
    sw      t6, 0x0180(s0)             # 00000180
    beq     $zero, $zero, lbl_80B4A510 
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_80B4A4D4:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B4A514 
    lw      $ra, 0x002C($sp)           
lbl_80B4A4E4:
    beq     v0, $zero, lbl_80B4A500    
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    lui     t7, %hi(func_80B4A7D8)     # t7 = 80B50000
    addiu   t7, t7, %lo(func_80B4A7D8) # t7 = 80B4A7D8
    sh      $zero, 0x01E0(s0)          # 000001E0
    beq     $zero, $zero, lbl_80B4A510 
    sw      t7, 0x0180(s0)             # 00000180
lbl_80B4A500:
    lui     t9, %hi(func_80B4A6E8)     # t9 = 80B50000
    addiu   t9, t9, %lo(func_80B4A6E8) # t9 = 80B4A6E8
    sh      t8, 0x01E0(s0)             # 000001E0
    sw      t9, 0x0180(s0)             # 00000180
lbl_80B4A510:
    lw      $ra, 0x002C($sp)           
lbl_80B4A514:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_80B4A524:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x0184             # a1 = 00000184
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B4A550:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0054($sp)            
    lui     t7, %hi(var_80B4AE68)      # t7 = 80B50000
    addiu   t7, t7, %lo(var_80B4AE68)  # t7 = 80B4AE68
    lw      t9, 0x0000(t7)             # 80B4AE68
    addiu   t6, $sp, 0x0044            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 80B4AE6C
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 80B4AE70
    lui     t1, %hi(var_80B4AE74)      # t1 = 80B50000
    addiu   t1, t1, %lo(var_80B4AE74)  # t1 = 80B4AE74
    sw      t8, 0x0004(t6)             # FFFFFFF8
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lw      t3, 0x0000(t1)             # 80B4AE74
    addiu   t0, $sp, 0x0038            # t0 = FFFFFFE8
    lw      t2, 0x0004(t1)             # 80B4AE78
    sw      t3, 0x0000(t0)             # FFFFFFE8
    lw      t3, 0x0008(t1)             # 80B4AE7C
    sw      t2, 0x0004(t0)             # FFFFFFEC
    or      a0, s0, $zero              # a0 = 00000000
    sw      t3, 0x0008(t0)             # FFFFFFF0
    jal     func_80B4A120              
    lw      a1, 0x0054($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80B4A5CC      
    lui     t4, %hi(func_80B4A7D8)     # t4 = 80B50000
    addiu   t4, t4, %lo(func_80B4A7D8) # t4 = 80B4A7D8
    sw      t4, 0x0180(s0)             # 00000180
lbl_80B4A5CC:
    lh      v0, 0x01DC(s0)             # 000001DC
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    bne     v0, $zero, lbl_80B4A5E8    
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    beq     $zero, $zero, lbl_80B4A5F0 
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B4A5E8:
    sh      t5, 0x01DC(s0)             # 000001DC
    lh      v1, 0x01DC(s0)             # 000001DC
lbl_80B4A5F0:
    beq     v1, $zero, lbl_80B4A694    
    lw      t4, 0x0054($sp)            
    lh      t6, 0x01E0(s0)             # 000001E0
    mtc1    $zero, $f4                 # $f4 = 0.00
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    bne     t6, $zero, lbl_80B4A61C    
    lui     a3, 0x3F80                 # a3 = 3F800000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    beq     $zero, $zero, lbl_80B4A62C 
    mfc1    a1, $f0                    
lbl_80B4A61C:
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f0                   # $f0 = 4.00
    nop
    mfc1    a1, $f0                    
lbl_80B4A62C:
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B4A230              
    lw      a1, 0x0054($sp)            
    lwl     t8, 0x0030(s0)             # 00000030
    lwr     t8, 0x0033(s0)             # 00000033
    lh      t9, 0x01D6(s0)             # 000001D6
    lui     v0, 0x8012                 # v0 = 80120000
    swl     t8, 0x00B4(s0)             # 000000B4
    swr     t8, 0x00B7(s0)             # 000000B7
    lhu     t8, 0x0034(s0)             # 00000034
    slti    $at, t9, 0x0009            
    beq     $at, $zero, lbl_80B4A680   
    sh      t8, 0x00B8(s0)             # 000000B8
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t0, 0x1400(v0)             # 8011B9D0
    ori     t1, t0, 0x0001             # t1 = 00000001
    beq     $zero, $zero, lbl_80B4A6D4 
    sh      t1, 0x1400(v0)             # 8011B9D0
lbl_80B4A680:
    addiu   v0, v0, 0xA5D0             # v0 = 80114BA0
    lhu     t2, 0x1400(v0)             # 80115FA0
    andi    t3, t2, 0xFFFE             # t3 = 00000000
    beq     $zero, $zero, lbl_80B4A6D4 
    sh      t3, 0x1400(v0)             # 80115FA0
lbl_80B4A694:
    lw      v1, 0x009C(t4)             # 0000009C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   t6, $sp, 0x0044            # t6 = FFFFFFF4
    divu    $zero, v1, $at             
    mfhi    v1                         
    sll     t5, v1,  2                 
    addu    v0, t5, t6                 
    lw      t7, 0x0000(v0)             # 80114BA0
    addiu   a0, $zero, 0x003C          # a0 = 0000003C
    sh      t7, 0x01E0(s0)             # 000001E0
    jal     func_80063BF0              
    lh      a1, 0x0002(v0)             # 80114BA2
    lui     t8, %hi(func_80B4A6E8)     # t8 = 80B50000
    addiu   t8, t8, %lo(func_80B4A6E8) # t8 = 80B4A6E8
    sh      v0, 0x01DC(s0)             # 000001DC
    sw      t8, 0x0180(s0)             # 00000180
lbl_80B4A6D4:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra                        
    nop


func_80B4A6E8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B4A120              
    lw      a1, 0x002C($sp)            
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    bne     v0, a2, lbl_80B4A71C       
    lui     t6, %hi(func_80B4A7D8)     # t6 = 80B50000
    addiu   t6, t6, %lo(func_80B4A7D8) # t6 = 80B4A7D8
    sw      t6, 0x0180(s0)             # 00000180
lbl_80B4A71C:
    lh      v0, 0x01DC(s0)             # 000001DC
    addiu   a0, $zero, 0x00C8          # a0 = 000000C8
    bne     v0, $zero, lbl_80B4A734    
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    beq     $zero, $zero, lbl_80B4A73C 
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B4A734:
    sh      t7, 0x01DC(s0)             # 000001DC
    lh      v1, 0x01DC(s0)             # 000001DC
lbl_80B4A73C:
    bnel    v1, $zero, lbl_80B4A7A8    
    mtc1    $zero, $f0                 # $f0 = 0.00
    jal     func_80063BF0              
    addiu   a1, $zero, 0x0064          # a1 = 00000064
    sh      v0, 0x01DC(s0)             # 000001DC
    lw      t8, 0x002C($sp)            
    lui     t4, %hi(func_80B4A550)     # t4 = 80B50000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      t9, 0x009C(t8)             # 0000009C
    addiu   t4, t4, %lo(func_80B4A550) # t4 = 80B4A550
    andi    t0, t9, 0x0001             # t0 = 00000000
    beql    t0, $zero, lbl_80B4A77C    
    sh      a2, 0x01E0(s0)             # 000001E0
    beq     $zero, $zero, lbl_80B4A77C 
    sh      $zero, 0x01E0(s0)          # 000001E0
    sh      a2, 0x01E0(s0)             # 000001E0
lbl_80B4A77C:
    lh      t1, 0x01E0(s0)             # 000001E0
    bnel    a2, t1, lbl_80B4A7A4       
    sw      t4, 0x0180(s0)             # 00000180
    lh      t2, 0x01DC(s0)             # 000001DC
    bgez    t2, lbl_80B4A79C           
    sra     t3, t2,  1                 
    addiu   $at, t2, 0x0001            # $at = 00000001
    sra     t3, $at,  1                
lbl_80B4A79C:
    sh      t3, 0x01DC(s0)             # 000001DC
    sw      t4, 0x0180(s0)             # 00000180
lbl_80B4A7A4:
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80B4A7A8:
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    mfc1    a1, $f0                    
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_80064178              
    swc1    $f0, 0x0010($sp)           
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B4A7D8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      a1, 0x002C($sp)            
    lui     a1, 0x8012                 # a1 = 80120000
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    sw      $ra, 0x0024($sp)           
    lh      t6, 0x13C4(a1)             # 8011B994
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    lui     t8, %hi(func_80B4AB04)     # t8 = 80B50000
    bne     t6, $zero, lbl_80B4A820    
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t8, t8, %lo(func_80B4AB04) # t8 = 80B4AB04
    sh      t7, 0x01E0(s0)             # 000001E0
    sw      t8, 0x0180(s0)             # 00000180
    beq     $zero, $zero, lbl_80B4A944 
    swc1    $f4, 0x0068(s0)            # 00000068
lbl_80B4A820:
    lwc1    $f0, 0x0090(s0)            # 00000090
    mtc1    $at, $f6                   # $f6 = 400.00
    nop
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_80B4A868               
    lui     $at, 0x42C8                # $at = 42C80000
    lh      v0, 0x01E0(s0)             # 000001E0
    addiu   $at, $zero, 0x0003         # $at = 00000003
    mtc1    $zero, $f0                 # $f0 = 0.00
    beq     v0, $at, lbl_80B4A85C      
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80B4A85C      
    addiu   v1, $zero, 0x0005          # v1 = 00000005
    sh      v1, 0x01E0(s0)             # 000001E0
lbl_80B4A85C:
    beq     $zero, $zero, lbl_80B4A8DC 
    sh      $zero, 0x13C4(a1)          # 8011B994
    lui     $at, 0x42C8                # $at = 42C80000
lbl_80B4A868:
    mtc1    $at, $f8                   # $f8 = 100.00
    nop
    c.lt.s  $f8, $f0                   
    nop
    bc1f    lbl_80B4A890               
    lui     $at, 0x4080                # $at = 40800000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    mtc1    $at, $f0                   # $f0 = 4.00
    beq     $zero, $zero, lbl_80B4A8DC 
    sh      t9, 0x01E0(s0)             # 000001E0
lbl_80B4A890:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f10                  # $f10 = 40.00
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_80B4A8D8               
    mtc1    $at, $f0                   # $f0 = 1.00
    lh      v0, 0x01E0(s0)             # 000001E0
    addiu   v1, $zero, 0x0005          # v1 = 00000005
    mtc1    $zero, $f0                 # $f0 = 0.00
    beq     v1, v0, lbl_80B4A8CC       
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $at, lbl_80B4A8CC      
    nop
    sh      v1, 0x01E0(s0)             # 000001E0
lbl_80B4A8CC:
    beq     $zero, $zero, lbl_80B4A8E0 
    mfc1    a1, $f0                    
    mtc1    $at, $f0                   # $f0 = 0.00
lbl_80B4A8D8:
    sh      $zero, 0x01E0(s0)          # 000001E0
lbl_80B4A8DC:
    mfc1    a1, $f0                    
lbl_80B4A8E0:
    lui     a2, 0x3F19                 # a2 = 3F190000
    ori     a2, a2, 0x999A             # a2 = 3F19999A
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_80064280              
    lui     a3, 0x3F80                 # a3 = 3F800000
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f16                  # $f16 = 400.00
    lwc1    $f18, 0x0090(s0)           # 00000090
    c.lt.s  $f16, $f18                 
    nop
    bc1tl   lbl_80B4A948               
    lw      $ra, 0x0024($sp)           
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0010($sp)            
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80064508              
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    lwl     t2, 0x0030(s0)             # 00000030
    lwr     t2, 0x0033(s0)             # 00000033
    swl     t2, 0x00B4(s0)             # 000000B4
    swr     t2, 0x00B7(s0)             # 000000B7
    lhu     t2, 0x0034(s0)             # 00000034
    sh      t2, 0x00B8(s0)             # 000000B8
lbl_80B4A944:
    lw      $ra, 0x0024($sp)           
lbl_80B4A948:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B4A958:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    lui     a2, 0x3F19                 # a2 = 3F190000
    lui     t7, %hi(func_80B4A9FC)     # t7 = 80B50000
    c.lt.s  $f4, $f6                   
    ori     a2, a2, 0x999A             # a2 = 3F19999A
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x4080                 # a1 = 40800000
    bc1f    lbl_80B4A9D0               
    addiu   t7, t7, %lo(func_80B4A9FC) # t7 = 80B4A9FC
    jal     func_80064280              
    lui     a3, 0x3F80                 # a3 = 3F800000
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)            
    xori    a1, a1, 0x8000             # a1 = FFFF8000
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80064508              
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    beq     $zero, $zero, lbl_80B4A9D8 
    lwl     t9, 0x0030(s0)             # 00000030
lbl_80B4A9D0:
    sw      t7, 0x0180(s0)             # 00000180
    lwl     t9, 0x0030(s0)             # 00000030
lbl_80B4A9D8:
    lwr     t9, 0x0033(s0)             # 00000033
    swl     t9, 0x00B4(s0)             # 000000B4
    swr     t9, 0x00B7(s0)             # 000000B7
    lhu     t9, 0x0034(s0)             # 00000034
    sh      t9, 0x00B8(s0)             # 000000B8
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80B4A9FC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    lui     t3, %hi(func_80B4A958)     # t3 = 80B50000
    lui     $at, 0x3F80                # $at = 3F800000
    c.le.s  $f6, $f4                   
    addiu   a0, s0, 0x0068             # a0 = 00000068
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, t3, %lo(func_80B4A958) # t3 = 80B4A958
    bc1fl   lbl_80B4AAD8               
    sh      t2, 0x01E0(s0)             # 000001E0
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     a2, 0x3F19                 # a2 = 3F190000
    sh      $zero, 0x01E0(s0)          # 000001E0
    mfc1    a1, $f0                    
    mfc1    a3, $f0                    
    jal     func_80064280              
    ori     a2, a2, 0x999A             # a2 = 3F19999A
    lh      t6, 0x0032(s0)             # 00000032
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0010($sp)            
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    jal     func_80064508              
    sh      t6, 0x002C($sp)            
    lh      t8, 0x0032(s0)             # 00000032
    lh      t9, 0x002C($sp)            
    lui     $at, 0x4348                # $at = 43480000
    mtc1    t8, $f8                    # $f8 = 0.00
    mtc1    t9, $f10                   # $f10 = 0.00
    mtc1    $at, $f18                  # $f18 = 200.00
    cvt.s.w $f2, $f8                   
    lui     t1, %hi(func_80B4AB04)     # t1 = 80B50000
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    addiu   t1, t1, %lo(func_80B4AB04) # t1 = 80B4AB04
    cvt.s.w $f16, $f10                 
    sub.s   $f2, $f2, $f16             
    abs.s   $f0, $f2                   
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_80B4AAE0               
    lwl     t5, 0x0030(s0)             # 00000030
    mtc1    $zero, $f4                 # $f4 = 0.00
    sh      t0, 0x01E0(s0)             # 000001E0
    sw      t1, 0x0180(s0)             # 00000180
    beq     $zero, $zero, lbl_80B4AADC 
    swc1    $f4, 0x0068(s0)            # 00000068
    sh      t2, 0x01E0(s0)             # 000001E0
lbl_80B4AAD8:
    sw      t3, 0x0180(s0)             # 00000180
lbl_80B4AADC:
    lwl     t5, 0x0030(s0)             # 00000030
lbl_80B4AAE0:
    lwr     t5, 0x0033(s0)             # 00000033
    swl     t5, 0x00B4(s0)             # 000000B4
    swr     t5, 0x00B7(s0)             # 000000B7
    lhu     t5, 0x0034(s0)             # 00000034
    sh      t5, 0x00B8(s0)             # 000000B8
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80B4AB04:
    sw      a1, 0x0004($sp)            
    lh      t6, 0x008A(a0)             # 0000008A
    lh      t7, 0x00B6(a0)             # 000000B6
    lui     t9, 0x8012                 # t9 = 80120000
    lui     $at, 0x4348                # $at = 43480000
    subu    t8, t6, t7                 
    sh      t8, 0x01D8(a0)             # 000001D8
    lh      t9, -0x466C(t9)            # 8011B994
    beq     t9, $zero, lbl_80B4AB54    
    nop
    lwc1    $f4, 0x0090(a0)            # 00000090
    mtc1    $at, $f6                   # $f6 = 200.00
    lui     t1, %hi(func_80B4A958)     # t1 = 80B50000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    c.lt.s  $f4, $f6                   
    addiu   t1, t1, %lo(func_80B4A958) # t1 = 80B4A958
    bc1f    lbl_80B4AB54               
    nop
    sh      t0, 0x01E0(a0)             # 000001E0
    sw      t1, 0x0180(a0)             # 00000180
lbl_80B4AB54:
    jr      $ra                        
    nop


func_80B4AB5C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    jal     func_80B49F88              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      t7, 0x01C6(s0)             # 000001C6
    lh      t6, 0x01C4(s0)             # 000001C4
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    t7, $f6                    # $f6 = 0.00
    mtc1    $at, $f10                  # $f10 = 0.50
    mtc1    t6, $f4                    # $f4 = 0.00
    cvt.s.w $f8, $f6                   
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    sw      t8, 0x0014($sp)            
    lw      a0, 0x003C($sp)            
    cvt.s.w $f4, $f4                   
    mul.s   $f16, $f8, $f10            
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f18, 0x0010($sp)          
    mfc1    a2, $f4                    
    mfc1    a3, $f16                   
    jal     func_80021E6C              
    nop
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)            
    jalr    $ra, t9                    
    nop
    addiu   a2, s0, 0x0184             # a2 = 00000184
    or      a1, a2, $zero              # a1 = 00000184
    sw      a2, 0x002C($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x003C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x002C($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at                
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80B4AC28:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    nop


func_80B4AC44:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    jr      $ra                        
    nop


func_80B4AC5C:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0054($sp)            
    lui     t7, %hi(var_80B4AE80)      # t7 = 80B50000
    addiu   t7, t7, %lo(var_80B4AE80)  # t7 = 80B4AE80
    lw      t9, 0x0000(t7)             # 80B4AE80
    lw      t8, 0x0004(t7)             # 80B4AE84
    addiu   t6, $sp, 0x0044            # t6 = FFFFFFF4
    sw      t9, 0x0000(t6)             # FFFFFFF4
    sw      t8, 0x0004(t6)             # FFFFFFF8
    lw      t3, 0x0054($sp)            
    lw      a0, 0x0000(t3)             # 00000000
    jal     func_8007E298              
    sw      a0, 0x0040($sp)            
    lw      t2, 0x0040($sp)            
    lw      v0, 0x02C0(t2)             # 000002C0
    lui     t5, 0xE700                 # t5 = E7000000
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(t2)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t5, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(t2)             # 000002C0
    lui     t7, 0xFB00                 # t7 = FB000000
    addiu   t4, $sp, 0x0044            # t4 = FFFFFFF4
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(t2)             # 000002C0
    sw      t7, 0x0000(v0)             # 00000000
    lh      t8, 0x001C(s0)             # 0000001C
    andi    t9, t8, 0x000F             # t9 = 00000000
    sll     t3, t9,  2                 
    addu    v1, t3, t4                 
    lbu     t8, 0x0000(v1)             # 00000000
    lbu     t6, 0x0003(v1)             # 00000003
    lbu     t5, 0x0001(v1)             # 00000001
    sll     t9, t8, 24                 
    or      t3, t6, t9                 # t3 = 00000008
    lbu     t9, 0x0002(v1)             # 00000002
    sll     t7, t5, 16                 
    or      t8, t3, t7                 # t8 = FB000008
    sll     t4, t9,  8                 
    or      t5, t8, t4                 # t5 = FFFFFFFC
    sw      t5, 0x0004(v0)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t3, %hi(func_80B4AC28)     # t3 = 80B50000
    lui     t7, %hi(func_80B4AC44)     # t7 = 80B50000
    addiu   t7, t7, %lo(func_80B4AC44) # t7 = 80B4AC44
    addiu   t3, t3, %lo(func_80B4AC28) # t3 = 80B4AC28
    sw      t3, 0x0010($sp)            
    sw      t7, 0x0014($sp)            
    sw      s0, 0x0018($sp)            
    jal     func_80089D8C              
    lw      a0, 0x0054($sp)            
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_80B4AD50: .word 0x019B0400, 0x00000000, 0x016B0000, 0x00000280
.word func_80B4A2D4
.word func_80B4A524
.word func_80B4AB5C
.word func_80B4AC5C
var_80B4AD70: .word \
0x06000939, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x00100014, 0x00000000, 0x00000000
var_80B4AD9C: .word 0x00000000, 0x00000000, 0x32000000
var_80B4ADA8: .word \
0x06001368, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x06001368, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC0C00000, \
0x06000D78, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xC0C00000, 0x06000278, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC0C00000, \
0x06001150, 0x3F800000, 0x00000000, 0x40800000, \
0x02000000, 0xC0C00000, 0x06001150, 0x3F800000, \
0x40A00000, 0x41C80000, 0x04000000, 0xC0C00000, \
0x06000928, 0x3F800000, 0x00000000, 0x40C00000, \
0x02000000, 0xC0C00000, 0x06000C28, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC0C00000
var_80B4AE68: .word 0x00000003, 0x00000005, 0x00000002
var_80B4AE74: .word 0x00000028, 0x00000050, 0x00000014
var_80B4AE80: .word 0xFFFFC800, 0x96643200, 0x00000000, 0x00000000

.section .rodata

var_80B4AE90: .word var_80B49FF8
.word var_80B4A004
.word var_80B4A010
.word var_80B4A01C
.word lbl_80B4A030
.word var_80B4A028
var_80B4AEA8: .word var_80B4A0E0
.word var_80B4A0F0
.word var_80B4A100
.word var_80B4A068
.word lbl_80B4A108
.word var_80B4A0A4

