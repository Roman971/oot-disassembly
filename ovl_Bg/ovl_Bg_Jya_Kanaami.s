.section .text
func_80A34160:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    sw      a2, 0x0028($sp)            
    sw      $zero, 0x0018($sp)         
    lw      a0, 0x0020($sp)            
    jal     func_80035260              
    or      a1, a3, $zero              # a1 = 00000000
    lw      a0, 0x0028($sp)            
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0018            # a1 = FFFFFFF8
    lw      a0, 0x0024($sp)            
    lw      a2, 0x0020($sp)            
    lw      a3, 0x0018($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      t6, 0x0020($sp)            
    sw      v0, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80A341B8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   a2, a2, 0xF208             # a2 = 0600F208
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)            
    jal     func_80A34160              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a1, %hi(var_80A344A0)      # a1 = 80A30000
    addiu   a1, a1, %lo(var_80A344A0)  # a1 = 80A344A0
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)            
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80A3421C    
    nop
    jal     func_80A343FC              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A34228 
    lw      $ra, 0x001C($sp)           
lbl_80A3421C:
    jal     func_80A3426C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80A34228:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A34238:
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


func_80A3426C:
    lui     t6, %hi(func_80A34284)     # t6 = 80A30000
    addiu   t6, t6, %lo(func_80A34284) # t6 = 80A34284
    sw      t6, 0x0154(a0)             # 00000154
    sh      $zero, 0x015A(a0)          # 0000015A
    jr      $ra                        
    nop


func_80A34284:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lh      a1, 0x001C(a3)             # 0000001C
    sw      a3, 0x0020($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    bne     v0, $zero, lbl_80A342B8    
    lw      a3, 0x0020($sp)            
    lh      t6, 0x015A(a3)             # 0000015A
    blez    t6, lbl_80A3431C           
lbl_80A342B8:
    lui     $at, 0xC47A                # $at = C47A0000
    mtc1    $at, $f4                   # $f4 = -1000.00
    lwc1    $f6, 0x0024(a3)            # 00000024
    lh      v1, 0x015A(a3)             # 0000015A
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A34300               
    addiu   t7, v1, 0x0001             # t7 = 00000001
    bne     v1, $zero, lbl_80A342FC    
    lw      a0, 0x0024($sp)            
    addiu   a1, $zero, 0x0D7A          # a1 = 00000D7A
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    sw      $zero, 0x0010($sp)         
    jal     func_8006B6FC              
    sw      a3, 0x0020($sp)            
    lw      a3, 0x0020($sp)            
    lh      v1, 0x015A(a3)             # 0000015A
lbl_80A342FC:
    addiu   t7, v1, 0x0001             # t7 = 00000001
lbl_80A34300:
    sh      t7, 0x015A(a3)             # 0000015A
    lh      t8, 0x015A(a3)             # 0000015A
    slti    $at, t8, 0x000A            
    bnel    $at, $zero, lbl_80A34320   
    lw      $ra, 0x001C($sp)           
    jal     func_80A3432C              
    or      a0, a3, $zero              # a0 = 00000000
lbl_80A3431C:
    lw      $ra, 0x001C($sp)           
lbl_80A34320:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A3432C:
    lui     t6, %hi(func_80A34344)     # t6 = 80A30000
    addiu   t6, t6, %lo(func_80A34344) # t6 = 80A34344
    sw      t6, 0x0154(a0)             # 00000154
    sh      $zero, 0x0158(a0)          # 00000158
    jr      $ra                        
    nop


func_80A34344:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x0158(a3)             # 00000158
    addiu   a0, a3, 0x0030             # a0 = 00000030
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   t7, t6, 0x0020             # t7 = 00000020
    sh      t7, 0x0158(a3)             # 00000158
    lh      a2, 0x0158(a3)             # 00000158
    jal     func_80063704              
    sw      a3, 0x0030($sp)            
    beq     v0, $zero, lbl_80A343EC    
    lw      a3, 0x0030($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80A343FC              
    sw      a3, 0x0030($sp)            
    lw      a0, 0x0030($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2851          # a1 = 00002851
    lw      v0, 0x0034($sp)            
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lh      t8, 0x07A0(v0)             # 000007A0
    sll     t9, t8,  2                 
    addu    t0, v0, t9                 
    jal     func_8007D85C              
    lw      a0, 0x0790(t0)             # 00000790
    sll     a0, v0, 16                 
    sw      v0, 0x0024($sp)            
    sra     a0, a0, 16                 
    jal     func_8007D668              
    addiu   a1, $zero, 0x61A8          # a1 = 000061A8
    lh      a0, 0x0026($sp)            
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_8007D738              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_8007D6B0              
    addiu   a1, $zero, 0x0010          # a1 = 00000010
lbl_80A343EC:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A343FC:
    addiu   t6, $zero, 0x4000          # t6 = 00004000
    sw      $zero, 0x0154(a0)          # 00000154
    sh      t6, 0x0030(a0)             # 00000030
    jr      $ra                        
    nop


func_80A34410:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x0154(a0)             # 00000154
    beql    v0, $zero, lbl_80A34434    
    lh      t6, 0x0030(a0)             # 00000030
    jalr    $ra, v0                    
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lh      t6, 0x0030(a0)             # 00000030
lbl_80A34434:
    sh      t6, 0x00B4(a0)             # 000000B4
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A34444:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xF000             # a1 = 0600F000
    jal     func_80028048              
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_80A34480: .word 0x00FD0100, 0x00000000, 0x00F10000, 0x0000015C
.word func_80A341B8
.word func_80A34238
.word func_80A34410
.word func_80A34444
var_80A344A0: .word 0xC8500064, 0xB0F403E8, 0xB0F802BC, 0x30FC03E8

.section .rodata


