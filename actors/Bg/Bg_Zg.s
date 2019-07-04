.section .text
func_80AFC2B0:
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


func_80AFC2E4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    lw      a1, 0x0020($sp)            
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    sw      t6, 0x0014($sp)            
    addiu   a0, $zero, 0x2859          # a0 = 00002859
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    addiu   a1, a1, 0x00E4             # a1 = 000000E4
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80AFC32C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      a1, 0x001C(a2)             # 0000001C
    or      a0, a3, $zero              # a0 = 00000000
    sra     a1, a1,  8                 
    jal     func_8002049C              
    andi    a1, a1, 0x00FF             # a1 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AFC360:
    lh      v1, 0x001C(a0)             # 0000001C
    andi    v0, v1, 0x00FF             # v0 = 00000000
    jr      $ra                        
    nop


func_80AFC370:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, 0xA000                 # t6 = A0000000
    lw      t7, 0x02E8(t6)             # A00002E8
    lui     $at, 0xC86E                # $at = C86E0000
    ori     $at, $at, 0x2000           # $at = C86E2000
    bnel    t7, $at, lbl_80AFC3B0      
    lw      $ra, 0x0014($sp)           
    jal     func_80AFC32C              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80AFC3AC    
    lw      a0, 0x0018($sp)            
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    jal     func_80AFC2E4              
    sw      t8, 0x0154(a0)             # 00000154
lbl_80AFC3AC:
    lw      $ra, 0x0014($sp)           
lbl_80AFC3B0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AFC3BC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     v0, 0x8012                 # v0 = 80120000
    lui     $at, %hi(var_80AFC690)     # $at = 80B00000
    lwc1    $f0, %lo(var_80AFC690)($at) 
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      t6, 0x0000(v0)             # 8011BA00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lh      t7, 0x1474(t6)             # 00001474
    lwc1    $f18, 0x0028(a0)           # 00000028
    lui     $at, 0x4348                # $at = 43480000
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    add.s   $f10, $f6, $f8             
    mul.s   $f16, $f10, $f0            
    add.s   $f4, $f18, $f16            
    mtc1    $at, $f18                  # $f18 = 200.00
    swc1    $f4, 0x0028(a0)            # 00000028
    lw      t8, 0x0000(v0)             # 8011BA00
    lwc1    $f6, 0x0028(a0)            # 00000028
    lh      t9, 0x1476(t8)             # 00001476
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    lwc1    $f8, 0x000C(a0)            # 0000000C
    add.s   $f16, $f10, $f18           
    mul.s   $f4, $f16, $f0             
    add.s   $f10, $f4, $f8             
    c.le.s  $f10, $f6                  
    nop
    bc1fl   lbl_80AFC454               
    lw      $ra, 0x0014($sp)           
    jal     func_80020EB4              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80AFC454:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AFC460:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x0154(a0)             # 00000154
    bltz    v0, lbl_80AFC498           
    slti    $at, v0, 0x0002            
    beq     $at, $zero, lbl_80AFC498   
    sll     t6, v0,  2                 
    lui     v1, %hi(var_80AFC660)      # v1 = 80B00000
    addu    v1, v1, t6                 
    lw      v1, %lo(var_80AFC660)(v1)  
    beql    v1, $zero, lbl_80AFC49C    
    lw      $ra, 0x0014($sp)           
    jalr    $ra, v1                    
    nop
lbl_80AFC498:
    lw      $ra, 0x0014($sp)           
lbl_80AFC49C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AFC4A8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a1, %hi(var_80AFC668)      # a1 = 80B00000
    addiu   a1, a1, %lo(var_80AFC668)  # a1 = 80AFC668
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    sw      $zero, 0x0020($sp)         
    addiu   a0, a0, 0x11D4             # a0 = 060011D4
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0020            # a1 = FFFFFFF0
    lw      a0, 0x0034($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0020($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sw      v0, 0x013C(s0)             # 0000013C
    jal     func_80AFC360              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v0, $at, lbl_80AFC528      
    nop
    jal     func_80AFC360              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     v0, $at, lbl_80AFC55C      
lbl_80AFC528:
    lui     $at, %hi(var_80AFC694)     # $at = 80B00000
    lwc1    $f0, %lo(var_80AFC694)($at) 
    lwc1    $f4, 0x0050(s0)            # 00000050
    lwc1    $f8, 0x0058(s0)            # 00000058
    lui     $at, %hi(var_80AFC698)     # $at = 80B00000
    mul.s   $f6, $f4, $f0              
    lwc1    $f16, 0x0054(s0)           # 00000054
    mul.s   $f10, $f8, $f0             
    swc1    $f6, 0x0050(s0)            # 00000050
    swc1    $f10, 0x0058(s0)           # 00000058
    lwc1    $f18, %lo(var_80AFC698)($at) 
    mul.s   $f4, $f16, $f18            
    swc1    $f4, 0x0054(s0)            # 00000054
lbl_80AFC55C:
    sw      $zero, 0x0154(s0)          # 00000154
    sw      $zero, 0x0158(s0)          # 00000158
    lw      a1, 0x0034($sp)            
    jal     func_80AFC32C              
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80AFC584    
    lw      $ra, 0x001C($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80AFC584:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80AFC594:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    lw      a0, 0x0000(a1)             # 00000000
    jal     func_8007E298              
    sw      a0, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    lw      a1, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, a1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    sw      t7, 0x0000(a1)             # 00000000
    jal     func_800AB900              
    sw      a1, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lw      a0, 0x0024($sp)            
    lui     t9, 0xDE00                 # t9 = DE000000
    sw      v0, 0x0004(a2)             # 00000004
    lw      a1, 0x02C0(a0)             # 000002C0
    lui     t0, 0x0600                 # t0 = 06000000
    addiu   t0, t0, 0x1080             # t0 = 06001080
    addiu   t8, a1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(a0)             # 000002C0
    sw      t0, 0x0004(a1)             # 00000004
    sw      t9, 0x0000(a1)             # 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AFC60C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x0158(a0)             # 00000158
    bltzl   v0, lbl_80AFC648           
    lw      $ra, 0x0014($sp)           
    bgtz    v0, lbl_80AFC644           
    sll     t6, v0,  2                 
    lui     v1, %hi(var_80AFC66C)      # v1 = 80B00000
    addu    v1, v1, t6                 
    lw      v1, %lo(var_80AFC66C)(v1)  
    beql    v1, $zero, lbl_80AFC648    
    lw      $ra, 0x0014($sp)           
    jalr    $ra, v1                    
    nop
lbl_80AFC644:
    lw      $ra, 0x0014($sp)           
lbl_80AFC648:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_80AFC660: .word func_80AFC370
.word func_80AFC3BC
var_80AFC668: .word 0x485003E8
var_80AFC66C: .word func_80AFC594
var_80AFC670: .word 0x01770400, 0x00000010, 0x01560000, 0x0000015C
.word func_80AFC4A8
.word func_80AFC2B0
.word func_80AFC460
.word func_80AFC60C

.section .rodata

var_80AFC690: .word 0x3F99999A
var_80AFC694: .word 0x3FA66666
var_80AFC698: .word 0x3F99999A, 0x00000000

