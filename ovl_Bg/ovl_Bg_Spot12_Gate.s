.section .text
func_80B3D5B0:
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


func_80B3D608:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x11EC             # a2 = 060011EC
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)            
    jal     func_80B3D5B0              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a1, %hi(var_80B3D940)      # a1 = 80B40000
    addiu   a1, a1, %lo(var_80B3D940)  # a1 = 80B3D940
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)            
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80B3D66C    
    nop
    jal     func_80B3D87C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3D678 
    lw      $ra, 0x001C($sp)           
lbl_80B3D66C:
    jal     func_80B3D6BC              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80B3D678:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3D688:
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


func_80B3D6BC:
    lwc1    $f4, 0x000C(a0)            # 0000000C
    lui     t6, %hi(func_80B3D6D8)     # t6 = 80B40000
    addiu   t6, t6, %lo(func_80B3D6D8) # t6 = 80B3D6D8
    sw      t6, 0x0154(a0)             # 00000154
    swc1    $f4, 0x0028(a0)            # 00000028
    jr      $ra                        
    nop


func_80B3D6D8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      t6, 0x0020($sp)            
    lw      a0, 0x0024($sp)            
    lh      a1, 0x001C(t6)             # 0000001C
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beql    v0, $zero, lbl_80B3D728    
    lw      $ra, 0x001C($sp)           
    jal     func_80B3D734              
    lw      a0, 0x0020($sp)            
    lw      a0, 0x0024($sp)            
    addiu   a1, $zero, 0x1040          # a1 = 00001040
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    lw      a3, 0x0020($sp)            
    jal     func_8006B6FC              
    sw      $zero, 0x0010($sp)         
    lw      $ra, 0x001C($sp)           
lbl_80B3D728:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3D734:
    lui     t6, %hi(func_80B3D750)     # t6 = 80B40000
    addiu   t6, t6, %lo(func_80B3D750) # t6 = 80B3D750
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    sw      t6, 0x0154(a0)             # 00000154
    sh      t7, 0x0158(a0)             # 00000158
    jr      $ra                        
    nop


func_80B3D750:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      t6, 0x0158(a0)             # 00000158
    bgtzl   t6, lbl_80B3D774           
    lw      $ra, 0x0014($sp)           
    jal     func_80B3D780              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80B3D774:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3D780:
    lui     t6, %hi(func_80B3D794)     # t6 = 80B40000
    addiu   t6, t6, %lo(func_80B3D794) # t6 = 80B3D794
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra                        
    nop


func_80B3D794:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lui     a1, 0x3FCC                 # a1 = 3FCC0000
    lui     a2, 0x3CF5                 # a2 = 3CF50000
    ori     a2, a2, 0xC28F             # a2 = 3CF5C28F
    ori     a1, a1, 0xCCCD             # a1 = 3FCCCCCD
    jal     func_8006385C              
    addiu   a0, s0, 0x0060             # a0 = 00000060
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f4, 0x000C(s0)            # 0000000C
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a2, 0x0060(s0)             # 00000060
    add.s   $f8, $f4, $f6              
    mfc1    a1, $f8                    
    jal     func_8006385C              
    nop
    beq     v0, $zero, lbl_80B3D860    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B3D87C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x003C($sp)            
    lh      t6, 0x07A0(v0)             # 000007A0
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sll     t7, t6,  2                 
    addu    t8, v0, t7                 
    jal     func_8007D85C              
    lw      a0, 0x0790(t8)             # 00000790
    sll     a0, v0, 16                 
    sw      v0, 0x0030($sp)            
    sra     a0, a0, 16                 
    jal     func_8007D668              
    addiu   a1, $zero, 0xC350          # a1 = FFFFC350
    lh      a0, 0x0032($sp)            
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_8007D738              
    sw      a0, 0x002C($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_8007D6B0              
    addiu   a1, $zero, 0x000C          # a1 = 0000000C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x280E          # a1 = 0000280E
    beq     $zero, $zero, lbl_80B3D86C 
    lw      $ra, 0x0024($sp)           
lbl_80B3D860:
    jal     func_8002313C              
    addiu   a1, $zero, 0x2067          # a1 = 00002067
    lw      $ra, 0x0024($sp)           
lbl_80B3D86C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3D87C:
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f4, 0x000C(a0)            # 0000000C
    lui     t6, %hi(func_80B3D8A4)     # t6 = 80B40000
    addiu   t6, t6, %lo(func_80B3D8A4) # t6 = 80B3D8A4
    add.s   $f8, $f4, $f6              
    sw      t6, 0x0154(a0)             # 00000154
    swc1    $f8, 0x0028(a0)            # 00000028
    jr      $ra                        
    nop


func_80B3D8A4:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80B3D8B4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      v0, 0x0158(a0)             # 00000158
    blez    v0, lbl_80B3D8CC           
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0158(a0)             # 00000158
lbl_80B3D8CC:
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B3D8E8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1080             # a1 = 06001080
    jal     func_80028048              
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_80B3D920: .word 0x01900100, 0x00000000, 0x01620000, 0x0000015C
.word func_80B3D608
.word func_80B3D688
.word func_80B3D8B4
.word func_80B3D8E8
var_80B3D940: .word 0xC8500064, 0xB0F409C4, 0xB0F801F4, 0x30FC04B0

.section .rodata


