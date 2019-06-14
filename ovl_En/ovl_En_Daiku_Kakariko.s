#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B6FBE0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0038($sp)            
    sw      a2, 0x0040($sp)            
    lw      t6, 0x0040($sp)            
    lui     t8, %hi(var_80B70D78)      # t8 = 80B70000
    addiu   t8, t8, %lo(var_80B70D78)  # t8 = 80B70D78
    lw      v0, 0x0000(t6)             # 00000000
    sll     t7, a1,  4                 
    bltzl   v0, lbl_80B6FC18           
    mtc1    $zero, $f0                 # $f0 = 0.00
    bne     a1, v0, lbl_80B6FC20       
    sll     t9, a1,  4                 
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80B6FC18:
    beq     $zero, $zero, lbl_80B6FC30 
    addu    v1, t7, t8                 
lbl_80B6FC20:
    lui     t0, %hi(var_80B70D78)      # t0 = 80B70000
    addiu   t0, t0, %lo(var_80B70D78)  # t0 = 80B70D78
    addu    v1, t9, t0                 
    lwc1    $f0, 0x000C(v1)            # 0000000C
lbl_80B6FC30:
    lw      a0, 0x0000(v1)             # 00000000
    sw      v1, 0x002C($sp)            
    sw      a1, 0x003C($sp)            
    jal     func_8008A194              
    swc1    $f0, 0x0034($sp)           
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      v1, 0x002C($sp)            
    lwc1    $f0, 0x0034($sp)           
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0038($sp)            
    lbu     t1, 0x0008(v1)             # 00000008
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    lw      a1, 0x0000(v1)             # 00000000
    swc1    $f6, 0x0010($sp)           
    swc1    $f0, 0x0018($sp)           
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    sw      t1, 0x0014($sp)            
    lw      t2, 0x003C($sp)            
    lw      t3, 0x0040($sp)            
    sw      t2, 0x0000(t3)             # 00000000
    lw      $ra, 0x0024($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80B6FC94:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0028($sp)            
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x004C($sp)            
    lw      t6, 0x0004(v1)             # 8011A5D4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beql    t6, $zero, lbl_80B6FCCC    
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    beq     $zero, $zero, lbl_80B6FCCC 
    addiu   v0, $zero, 0x0005          # v0 = 00000005
    addiu   v0, $zero, 0x0011          # v0 = 00000011
lbl_80B6FCCC:
    bnel    v0, $at, lbl_80B6FD64      
    lhu     t3, 0x01F0(s0)             # 000001F0
    lw      t7, 0x004C($sp)            
    addiu   $at, $zero, 0x002A         # $at = 0000002A
    lh      v0, 0x00A4(t7)             # 000000A4
    beq     v0, $at, lbl_80B6FD34      
    addiu   $at, $zero, 0x0030         # $at = 00000030
    beq     v0, $at, lbl_80B6FD54      
    addiu   $at, $zero, 0x0052         # $at = 00000052
    bnel    v0, $at, lbl_80B6FD64      
    lhu     t3, 0x01F0(s0)             # 000001F0
    lw      t8, 0x0010(v1)             # 8011A5E0
    bnel    t8, $zero, lbl_80B6FD64    
    lhu     t3, 0x01F0(s0)             # 000001F0
    lh      t2, 0x001C(s0)             # 0000001C
    lhu     t9, 0x01F0(s0)             # 000001F0
    lui     t5, %hi(var_80B70DD8)      # t5 = 80B70000
    andi    t3, t2, 0x0003             # t3 = 00000000
    sll     t4, t3,  1                 
    ori     t1, t9, 0x0001             # t1 = 00000001
    sh      t1, 0x01F0(s0)             # 000001F0
    addu    t5, t5, t4                 
    lhu     t5, %lo(var_80B70DD8)(t5)  
    or      t6, t1, t5                 # t6 = 80B70001
    beq     $zero, $zero, lbl_80B6FD60 
    sh      t6, 0x01F0(s0)             # 000001F0
lbl_80B6FD34:
    lw      t7, 0x0010(v1)             # 8011A5E0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t7, $at, lbl_80B6FD64      
    lhu     t3, 0x01F0(s0)             # 000001F0
    lhu     t8, 0x01F0(s0)             # 000001F0
    ori     t9, t8, 0x0002             # t9 = 00000002
    beq     $zero, $zero, lbl_80B6FD60 
    sh      t9, 0x01F0(s0)             # 000001F0
lbl_80B6FD54:
    lhu     t0, 0x01F0(s0)             # 000001F0
    ori     t2, t0, 0x0004             # t2 = 00000004
    sh      t2, 0x01F0(s0)             # 000001F0
lbl_80B6FD60:
    lhu     t3, 0x01F0(s0)             # 000001F0
lbl_80B6FD64:
    andi    t4, t3, 0x0007             # t4 = 00000000
    bnel    t4, $zero, lbl_80B6FD84    
    lw      t1, 0x0010(v1)             # 8011A5E0
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      t1, 0x0010(v1)             # 8011A5E0
lbl_80B6FD84:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    bne     t1, $at, lbl_80B6FDA0      
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lhu     t5, 0x01F0(s0)             # 000001F0
    ori     t6, t5, 0x0008             # t6 = 00000008
    sh      t6, 0x01F0(s0)             # 000001F0
lbl_80B6FDA0:
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    jal     func_8001EC20              
    lui     a3, 0x4220                 # a3 = 42200000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   t7, s0, 0x021C             # t7 = 0000021C
    addiu   t8, s0, 0x0282             # t8 = 00000282
    addiu   t9, $zero, 0x0011          # t9 = 00000011
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    addiu   a2, a2, 0x7958             # a2 = 06007958
    sw      a1, 0x0034($sp)            
    lw      a0, 0x004C($sp)            
    jal     func_8008C788              
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   a1, s0, 0x0184             # a1 = 00000184
    sw      a1, 0x0030($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x004C($sp)            
    lui     a3, %hi(var_80B70D20)      # a3 = 80B70000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_80B70D20)  # a3 = 80B70D20
    lw      a0, 0x004C($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lui     a1, %hi(var_80B70D58)      # a1 = 80B70000
    lui     a2, %hi(var_80B70D4C)      # a2 = 80B70000
    addiu   a2, a2, %lo(var_80B70D4C)  # a2 = 80B70D4C
    addiu   a1, a1, %lo(var_80B70D58)  # a1 = 80B70D58
    jal     func_80050370              
    addiu   a0, s0, 0x0098             # a0 = 00000098
    lui     v1, %hi(var_80B70D78)      # v1 = 80B70000
    addiu   v1, v1, %lo(var_80B70D78)  # v1 = 80B70D78
    jal     func_8008A194              
    lw      a0, 0x0000(v1)             # 80B70D78
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     v1, %hi(var_80B70D78)      # v1 = 80B70000
    addiu   v1, v1, %lo(var_80B70D78)  # v1 = 80B70D78
    cvt.s.w $f6, $f4                   
    lbu     t0, 0x0008(v1)             # 80B70D80
    lwc1    $f8, 0x000C(v1)            # 80B70D84
    lw      a1, 0x0000(v1)             # 80B70D78
    lw      a0, 0x0034($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f6, 0x0010($sp)           
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      t0, 0x0014($sp)            
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    sw      t2, 0x0014($sp)            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    lw      a0, 0x004C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f16                  # $f16 = 3.00
    lhu     v0, 0x01F0(s0)             # 000001F0
    lui     $at, 0x4496                # $at = 44960000
    mtc1    $zero, $f10                # $f10 = 0.00
    mtc1    $at, $f18                  # $f18 = 1200.00
    addiu   t3, $zero, 0x0006          # t3 = 00000006
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    andi    t1, v0, 0x0040             # t1 = 00000000
    sb      t3, 0x001F(s0)             # 0000001F
    sw      t4, 0x01DC(s0)             # 000001DC
    swc1    $f16, 0x01D8(s0)           # 000001D8
    swc1    $f10, 0x006C(s0)           # 0000006C
    beq     t1, $zero, lbl_80B6FEDC    
    swc1    $f18, 0x00F4(s0)           # 000000F4
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    lhu     v0, 0x01F0(s0)             # 000001F0
    swc1    $f4, 0x006C(s0)            # 0000006C
lbl_80B6FEDC:
    andi    t5, v0, 0x0010             # t5 = 00000000
    beq     t5, $zero, lbl_80B6FF08    
    andi    t7, v0, 0x0008             # t7 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    jal     func_80B6FBE0              
    addiu   a2, s0, 0x01DC             # a2 = 000001DC
    lui     t6, %hi(func_80B70498)     # t6 = 80B70000
    addiu   t6, t6, %lo(func_80B70498) # t6 = 80B70498
    beq     $zero, $zero, lbl_80B6FFD8 
    sw      t6, 0x0180(s0)             # 00000180
lbl_80B6FF08:
    beq     t7, $zero, lbl_80B6FF88    
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    andi    v0, v0, 0x0003             # v0 = 00000000
    beq     v0, $at, lbl_80B6FF34      
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_80B6FF4C      
    addiu   a2, s0, 0x01DC             # a2 = 000001DC
lbl_80B6FF34:
    jal     func_80B6FBE0              
    addiu   a2, s0, 0x01DC             # a2 = 000001DC
    lhu     t8, 0x01F0(s0)             # 000001F0
    ori     t9, t8, 0x0800             # t9 = 00000800
    beq     $zero, $zero, lbl_80B6FF58 
    sh      t9, 0x01F0(s0)             # 000001F0
lbl_80B6FF4C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B6FBE0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
lbl_80B6FF58:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lwc1    $f6, 0x014C(s0)            # 0000014C
    mul.s   $f8, $f0, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    t2, $f10                   
    nop
    mtc1    t2, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    beq     $zero, $zero, lbl_80B6FFC0 
    swc1    $f18, 0x0154(s0)           # 00000154
lbl_80B6FF88:
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80B6FBE0              
    addiu   a2, s0, 0x01DC             # a2 = 000001DC
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lwc1    $f4, 0x014C(s0)            # 0000014C
    mul.s   $f6, $f0, $f4              
    trunc.w.s $f8, $f6                   
    mfc1    t4, $f8                    
    nop
    mtc1    t4, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    swc1    $f16, 0x0154(s0)           # 00000154
lbl_80B6FFC0:
    lhu     t1, 0x01F0(s0)             # 000001F0
    lui     t6, %hi(func_80B7034C)     # t6 = 80B70000
    addiu   t6, t6, %lo(func_80B7034C) # t6 = 80B7034C
    ori     t5, t1, 0x0100             # t5 = 00000100
    sh      t5, 0x01F0(s0)             # 000001F0
    sw      t6, 0x0180(s0)             # 00000180
lbl_80B6FFD8:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_80B6FFEC:
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


func_80B70018:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x001C($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80B700AC      
    lw      v0, 0x001C($sp)            
    jal     func_800D6110              
    lw      a0, 0x0024($sp)            
    beq     v0, $zero, lbl_80B700A8    
    lw      t7, 0x0020($sp)            
    lhu     v0, 0x010E(t7)             # 0000010E
    addiu   $at, $zero, 0x6061         # $at = 00006061
    beq     v0, $at, lbl_80B70078      
    addiu   $at, $zero, 0x6064         # $at = 00006064
    beq     v0, $at, lbl_80B70090      
    nop
    beq     $zero, $zero, lbl_80B700A8 
    sw      $zero, 0x001C($sp)         
lbl_80B70078:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0F26(v0)             # 8011B4F6
    ori     t9, t8, 0x0040             # t9 = 00000040
    beq     $zero, $zero, lbl_80B700A4 
    sh      t9, 0x0F26(v0)             # 8011B4F6
lbl_80B70090:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t0, 0x0F26(v0)             # 8011B4F6
    ori     t1, t0, 0x0100             # t1 = 00000100
    sh      t1, 0x0F26(v0)             # 8011B4F6
lbl_80B700A4:
    sw      $zero, 0x001C($sp)         
lbl_80B700A8:
    lw      v0, 0x001C($sp)            
lbl_80B700AC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B700BC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lw      t6, 0x01D0(s0)             # 000001D0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    bne     t6, $at, lbl_80B700F0      
    nop
    jal     func_80B70018              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B70264 
    sw      v0, 0x01D0(s0)             # 000001D0
lbl_80B700F0:
    jal     func_80022930              
    sw      a1, 0x002C($sp)            
    beq     v0, $zero, lbl_80B7010C    
    lw      a0, 0x002C($sp)            
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    beq     $zero, $zero, lbl_80B70264 
    sw      t7, 0x01D0(s0)             # 000001D0
lbl_80B7010C:
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0026            # a2 = FFFFFFFE
    jal     func_80022B14              
    addiu   a3, $sp, 0x0024            # a3 = FFFFFFFC
    lh      v0, 0x0026($sp)            
    bltz    v0, lbl_80B70264           
    slti    $at, v0, 0x0141            
    beq     $at, $zero, lbl_80B70264   
    lh      v0, 0x0024($sp)            
    bltz    v0, lbl_80B70264           
    slti    $at, v0, 0x00F1            
    beql    $at, $zero, lbl_80B70268   
    lw      $ra, 0x001C($sp)           
    lw      t8, 0x01D0(s0)             # 000001D0
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)            
    bnel    t8, $zero, lbl_80B70268    
    lw      $ra, 0x001C($sp)           
    jal     func_80022A68              
    lui     a2, 0x42C8                 # a2 = 42C80000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_80B70268      
    lw      $ra, 0x001C($sp)           
    lh      t9, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_80B70DE0)      # a1 = 80B70000
    lw      a0, 0x002C($sp)            
    andi    t0, t9, 0x0003             # t0 = 00000000
    sll     t1, t0,  2                 
    addu    a1, a1, t1                 
    jal     func_800597C0              
    lw      a1, %lo(var_80B70DE0)(a1)  
    andi    t2, v0, 0xFFFF             # t2 = 00000000
    bne     t2, $zero, lbl_80B70264    
    sh      v0, 0x010E(s0)             # 0000010E
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    v0, v0, 0x0003             # v0 = 00000000
    beql    v0, $zero, lbl_80B701CC    
    lhu     t3, 0x01F0(s0)             # 000001F0
    beq     v0, $at, lbl_80B701F0      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B70218      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    v0, $at, lbl_80B70244      
    lhu     t5, 0x01F0(s0)             # 000001F0
    beq     $zero, $zero, lbl_80B70268 
    lw      $ra, 0x001C($sp)           
    lhu     t3, 0x01F0(s0)             # 000001F0
lbl_80B701CC:
    addiu   t5, $zero, 0x5076          # t5 = 00005076
    addiu   t6, $zero, 0x5075          # t6 = 00005075
    andi    t4, t3, 0x0008             # t4 = 00000000
    beq     t4, $zero, lbl_80B701E8    
    nop
    beq     $zero, $zero, lbl_80B70264 
    sh      t5, 0x010E(s0)             # 0000010E
lbl_80B701E8:
    beq     $zero, $zero, lbl_80B70264 
    sh      t6, 0x010E(s0)             # 0000010E
lbl_80B701F0:
    lhu     t7, 0x01F0(s0)             # 000001F0
    addiu   t9, $zero, 0x502A          # t9 = 0000502A
    addiu   t0, $zero, 0x5074          # t0 = 00005074
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80B70210    
    nop
    beq     $zero, $zero, lbl_80B70264 
    sh      t9, 0x010E(s0)             # 0000010E
lbl_80B70210:
    beq     $zero, $zero, lbl_80B70264 
    sh      t0, 0x010E(s0)             # 0000010E
lbl_80B70218:
    lhu     t1, 0x01F0(s0)             # 000001F0
    addiu   t3, $zero, 0x506A          # t3 = 0000506A
    addiu   t4, $zero, 0x506B          # t4 = 0000506B
    andi    t2, t1, 0x0001             # t2 = 00000000
    beq     t2, $zero, lbl_80B70238    
    nop
    beq     $zero, $zero, lbl_80B70264 
    sh      t3, 0x010E(s0)             # 0000010E
lbl_80B70238:
    beq     $zero, $zero, lbl_80B70264 
    sh      t4, 0x010E(s0)             # 0000010E
    lhu     t5, 0x01F0(s0)             # 000001F0
lbl_80B70244:
    addiu   t7, $zero, 0x5077          # t7 = 00005077
    addiu   t8, $zero, 0x5078          # t8 = 00005078
    andi    t6, t5, 0x0001             # t6 = 00000000
    beql    t6, $zero, lbl_80B70264    
    sh      t8, 0x010E(s0)             # 0000010E
    beq     $zero, $zero, lbl_80B70264 
    sh      t7, 0x010E(s0)             # 0000010E
    sh      t8, 0x010E(s0)             # 0000010E
lbl_80B70264:
    lw      $ra, 0x001C($sp)           
lbl_80B70268:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B70278:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_80B702A8    
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    jal     func_80B6FBE0              
    addiu   a2, s0, 0x01DC             # a2 = 000001DC
lbl_80B702A8:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B700BC              
    lw      a1, 0x0024($sp)            
    lw      t6, 0x01D0(s0)             # 000001D0
    bnel    t6, $zero, lbl_80B7033C    
    lw      $ra, 0x001C($sp)           
    lhu     v0, 0x01F0(s0)             # 000001F0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    andi    t7, v0, 0x0010             # t7 = 00000000
    beq     t7, $zero, lbl_80B702FC    
    andi    t1, v0, 0x0008             # t1 = 00000000
    jal     func_80B6FBE0              
    addiu   a2, s0, 0x01DC             # a2 = 000001DC
    lhu     t8, 0x01F0(s0)             # 000001F0
    lui     t0, %hi(func_80B70498)     # t0 = 80B70000
    addiu   t0, t0, %lo(func_80B70498) # t0 = 80B70498
    andi    t9, t8, 0xFCFF             # t9 = 00000000
    sh      t9, 0x01F0(s0)             # 000001F0
    beq     $zero, $zero, lbl_80B70338 
    sw      t0, 0x0180(s0)             # 00000180
lbl_80B702FC:
    bne     t1, $zero, lbl_80B70314    
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80B6FBE0              
    addiu   a2, s0, 0x01DC             # a2 = 000001DC
    lhu     v0, 0x01F0(s0)             # 000001F0
lbl_80B70314:
    andi    t2, v0, 0x0800             # t2 = 00000000
    bne     t2, $zero, lbl_80B70330    
    lui     t6, %hi(func_80B7034C)     # t6 = 80B70000
    andi    t4, v0, 0xFDFF             # t4 = 00000000
    sh      t4, 0x01F0(s0)             # 000001F0
    ori     t5, t4, 0x0100             # t5 = 00000100
    sh      t5, 0x01F0(s0)             # 000001F0
lbl_80B70330:
    addiu   t6, t6, %lo(func_80B7034C) # t6 = 80B7034C
    sw      t6, 0x0180(s0)             # 00000180
lbl_80B70338:
    lw      $ra, 0x001C($sp)           
lbl_80B7033C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B7034C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    jal     func_80B700BC              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_80B70380    
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80B6FBE0              
    addiu   a2, s0, 0x01DC             # a2 = 000001DC
lbl_80B70380:
    lw      t6, 0x01D0(s0)             # 000001D0
    beql    t6, $zero, lbl_80B703D8    
    lw      $ra, 0x001C($sp)           
    lhu     v0, 0x01F0(s0)             # 000001F0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    andi    t7, v0, 0x0008             # t7 = 00000000
    bnel    t7, $zero, lbl_80B703B4    
    andi    t8, v0, 0x0800             # t8 = 00000000
    jal     func_80B6FBE0              
    addiu   a2, s0, 0x01DC             # a2 = 000001DC
    lhu     v0, 0x01F0(s0)             # 000001F0
    andi    t8, v0, 0x0800             # t8 = 00000000
lbl_80B703B4:
    bne     t8, $zero, lbl_80B703CC    
    lui     t2, %hi(func_80B70278)     # t2 = 80B70000
    ori     t0, v0, 0x0200             # t0 = 00000200
    sh      t0, 0x01F0(s0)             # 000001F0
    andi    t1, t0, 0xFEFF             # t1 = 00000200
    sh      t1, 0x01F0(s0)             # 000001F0
lbl_80B703CC:
    addiu   t2, t2, %lo(func_80B70278) # t2 = 80B70278
    sw      t2, 0x0180(s0)             # 00000180
    lw      $ra, 0x001C($sp)           
lbl_80B703D8:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B703E8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_80B70448    
    or      a0, s0, $zero              # a0 = 00000000
    lw      t6, 0x02E8(s0)             # 000002E8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    bgtz    t7, lbl_80B7043C           
    sw      t7, 0x02E8(s0)             # 000002E8
    jal     func_80B6FBE0              
    addiu   a2, s0, 0x01DC             # a2 = 000001DC
    lui     t9, %hi(func_80B70498)     # t9 = 80B70000
    addiu   t9, t9, %lo(func_80B70498) # t9 = 80B70498
    beq     $zero, $zero, lbl_80B70444 
    sw      t9, 0x0180(s0)             # 00000180
lbl_80B7043C:
    lwc1    $f4, 0x0148(s0)            # 00000148
    swc1    $f4, 0x0154(s0)            # 00000154
lbl_80B70444:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B70448:
    jal     func_80B700BC              
    lw      a1, 0x0024($sp)            
    lw      t0, 0x01D0(s0)             # 000001D0
    or      a0, s0, $zero              # a0 = 00000000
    beql    t0, $zero, lbl_80B70488    
    lw      $ra, 0x001C($sp)           
    lhu     t1, 0x01F0(s0)             # 000001F0
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    addiu   a2, s0, 0x01DC             # a2 = 000001DC
    ori     t2, t1, 0x0200             # t2 = 00000200
    jal     func_80B6FBE0              
    sh      t2, 0x01F0(s0)             # 000001F0
    lui     t3, %hi(func_80B70278)     # t3 = 80B70000
    addiu   t3, t3, %lo(func_80B70278) # t3 = 80B70278
    sw      t3, 0x0180(s0)             # 00000180
    lw      $ra, 0x001C($sp)           
lbl_80B70488:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B70498:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s0, 0x002C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s3, 0x0038($sp)            
    sw      s2, 0x0034($sp)            
    sw      s1, 0x0030($sp)            
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    sw      a1, 0x006C($sp)            
    lw      a2, 0x006C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addiu   s3, $zero, 0x0001          # s3 = 00000001
    addu    a2, a2, $at                
    sw      a2, 0x0040($sp)            
    lw      a2, 0x0040($sp)            
lbl_80B704D8:
    lh      t7, 0x001C(s0)             # 0000001C
    lui     t4, 0x8012                 # t4 = 80120000
    lw      t6, 0x1E08(a2)             # 00001E08
    sra     t8, t7,  8                 
    andi    t9, t8, 0x00FF             # t9 = 00000000
    sll     t0, t9,  3                 
    addu    s1, t6, t0                 
    lw      v1, 0x0004(s1)             # 00000004
    lw      t8, 0x01D4(s0)             # 000001D4
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t1, v1,  4                 
    srl     t2, t1, 28                 
    sll     t3, t2,  2                 
    addu    t4, t4, t3                 
    lw      t4, 0x0C38(t4)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t9, t8,  2                 
    and     t5, v1, $at                
    subu    t9, t9, t8                 
    sll     t9, t9,  1                 
    addu    t7, t4, t5                 
    addu    v0, t7, t9                 
    lui     $at, 0x8000                # $at = 80000000
    addu    v0, v0, $at                
    lh      t6, 0x0000(v0)             # 00000000
    lh      t0, 0x0004(v0)             # 00000004
    lwc1    $f8, 0x0024(s0)            # 00000024
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    t0, $f10                   # $f10 = 0.00
    lwc1    $f18, 0x002C(s0)           # 0000002C
    cvt.s.w $f6, $f4                   
    or      s2, $zero, $zero           # s2 = 00000000
    cvt.s.w $f16, $f10                 
    sub.s   $f20, $f6, $f8             
    sub.s   $f22, $f16, $f18           
    mov.s   $f12, $f20                 
    jal     func_800CD76C              
    mov.s   $f14, $f22                 
    lui     $at, %hi(var_80B70E10)     # $at = 80B70000
    lwc1    $f4, %lo(var_80B70E10)($at) 
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    mul.s   $f6, $f0, $f4              
    nop
    mul.s   $f10, $f20, $f20           
    nop
    mul.s   $f16, $f22, $f22           
    trunc.w.s $f8, $f6                   
    add.s   $f0, $f10, $f16            
    mfc1    a1, $f8                    
    sqrt.s  $f2, $f0                   
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    c.le.s  $f2, $f18                  
    nop
    bc1f    lbl_80B7069C               
    nop
    lw      t2, 0x01E8(s0)             # 000001E8
    bnel    t2, $zero, lbl_80B7064C    
    lw      t1, 0x01D4(s0)             # 000001D4
    lw      t3, 0x01D4(s0)             # 000001D4
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sw      t4, 0x01D4(s0)             # 000001D4
    lbu     v1, 0x0000(s1)             # 00000000
    slt     $at, t4, v1                
    bnel    $at, $zero, lbl_80B70640   
    or      s2, s3, $zero              # s2 = 00000001
    lhu     v0, 0x01F0(s0)             # 000001F0
    addiu   t7, v1, 0xFFFE             # t7 = FFFFFFFE
    andi    t8, v0, 0x0020             # t8 = 00000000
    beq     t8, $zero, lbl_80B70630    
    andi    t9, v0, 0x0400             # t9 = 00000000
    sw      t7, 0x01D4(s0)             # 000001D4
    sw      s3, 0x01E8(s0)             # 000001E8
    beq     t9, $zero, lbl_80B7069C    
    sw      $zero, 0x01EC(s0)          # 000001EC
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x02E8(s0)             # 000002E8
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80B6FBE0              
    addiu   a2, s0, 0x01DC             # a2 = 000001DC
    lui     t0, %hi(func_80B703E8)     # t0 = 80B70000
    addiu   t0, t0, %lo(func_80B703E8) # t0 = 80B703E8
    beq     $zero, $zero, lbl_80B707F4 
    sw      t0, 0x0180(s0)             # 00000180
lbl_80B70630:
    sw      $zero, 0x01D4(s0)          # 000001D4
    beq     $zero, $zero, lbl_80B7069C 
    or      s2, s3, $zero              # s2 = 00000001
    or      s2, s3, $zero              # s2 = 00000001
lbl_80B70640:
    beq     $zero, $zero, lbl_80B7069C 
    sw      s3, 0x01EC(s0)             # 000001EC
    lw      t1, 0x01D4(s0)             # 000001D4
lbl_80B7064C:
    addiu   t2, t1, 0xFFFF             # t2 = FFFFFFFF
    bgez    t2, lbl_80B70698           
    sw      t2, 0x01D4(s0)             # 000001D4
    lhu     t4, 0x01F0(s0)             # 000001F0
    sw      s3, 0x01D4(s0)             # 000001D4
    sw      $zero, 0x01E8(s0)          # 000001E8
    andi    t5, t4, 0x0400             # t5 = 00000000
    beq     t5, $zero, lbl_80B7069C    
    sw      $zero, 0x01EC(s0)          # 000001EC
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t8, 0x02E8(s0)             # 000002E8
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80B6FBE0              
    addiu   a2, s0, 0x01DC             # a2 = 000001DC
    lui     t7, %hi(func_80B703E8)     # t7 = 80B70000
    addiu   t7, t7, %lo(func_80B703E8) # t7 = 80B703E8
    beq     $zero, $zero, lbl_80B707F4 
    sw      t7, 0x0180(s0)             # 00000180
lbl_80B70698:
    or      s2, s3, $zero              # s2 = 00000001
lbl_80B7069C:
    bnel    s2, $zero, lbl_80B704D8    
    lw      a2, 0x0040($sp)            
    sll     a2, s3, 16                 
    sra     a2, a2, 16                 
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a3, $zero, 0x1388          # a3 = 00001388
    sw      $zero, 0x0010($sp)         
    jal     func_80064508              
    swc1    $f2, 0x004C($sp)           
    lw      v1, 0x01EC(s0)             # 000001EC
    lh      t9, 0x00B6(s0)             # 000000B6
    lwc1    $f2, 0x004C($sp)           
    bne     v1, $zero, lbl_80B706F0    
    sh      t9, 0x0032(s0)             # 00000032
    bne     v0, $zero, lbl_80B706E4    
    or      v1, s3, $zero              # v1 = 00000001
    beq     $zero, $zero, lbl_80B706F0 
    sw      s3, 0x01EC(s0)             # 000001EC
lbl_80B706E4:
    mtc1    $zero, $f20                # $f20 = 0.00
    lw      v1, 0x01EC(s0)             # 000001EC
    swc1    $f20, 0x0068(s0)           # 00000068
lbl_80B706F0:
    mtc1    $zero, $f20                # $f20 = 0.00
    bne     s3, v1, lbl_80B70714       
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lw      a1, 0x01D8(s0)             # 000001D8
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    mfc1    a3, $f2                    
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    jal     func_80064178              
    swc1    $f20, 0x0010($sp)          
lbl_80B70714:
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    lhu     v0, 0x01F0(s0)             # 000001F0
    lw      a0, 0x006C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    andi    t6, v0, 0x0040             # t6 = 00000000
    beq     t6, $zero, lbl_80B70754    
    andi    t1, v0, 0x0080             # t1 = 00000000
    mfc1    a2, $f20                   
    mfc1    a3, $f20                   
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    sw      t0, 0x0014($sp)            
    jal     func_80021E6C              
    swc1    $f20, 0x0010($sp)          
    beq     $zero, $zero, lbl_80B707AC 
    nop
lbl_80B70754:
    beql    t1, $zero, lbl_80B70778    
    lhu     t5, 0x01F2(s0)             # 000001F2
    lhu     t2, 0x01F2(s0)             # 000001F2
    andi    t4, v0, 0xFF7F             # t4 = 00000000
    sh      t4, 0x01F0(s0)             # 000001F0
    ori     t3, t2, 0x0001             # t3 = 00000001
    beq     $zero, $zero, lbl_80B707AC 
    sh      t3, 0x01F2(s0)             # 000001F2
    lhu     t5, 0x01F2(s0)             # 000001F2
lbl_80B70778:
    lw      a0, 0x006C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    andi    t8, t5, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80B707AC    
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    mfc1    a2, $f20                   
    mfc1    a3, $f20                   
    swc1    $f20, 0x0010($sp)          
    jal     func_80021E6C              
    sw      t7, 0x0014($sp)            
    lhu     t9, 0x01F2(s0)             # 000001F2
    andi    t6, t9, 0xFFFE             # t6 = 00000000
    sh      t6, 0x01F2(s0)             # 000001F2
lbl_80B707AC:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B700BC              
    lw      a1, 0x006C($sp)            
    lw      t0, 0x01D0(s0)             # 000001D0
    or      a0, s0, $zero              # a0 = 00000000
    beql    t0, $zero, lbl_80B707F8    
    lw      $ra, 0x003C($sp)           
    lhu     t1, 0x01F0(s0)             # 000001F0
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    addiu   a2, s0, 0x01DC             # a2 = 000001DC
    ori     t2, t1, 0x0200             # t2 = 00000200
    jal     func_80B6FBE0              
    sh      t2, 0x01F0(s0)             # 000001F0
    lui     t3, %hi(func_80B70278)     # t3 = 80B70000
    addiu   t3, t3, %lo(func_80B70278) # t3 = 80B70278
    sw      t3, 0x0180(s0)             # 00000180
lbl_80B707F4:
    lw      $ra, 0x003C($sp)           
lbl_80B707F8:
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    lw      s0, 0x002C($sp)            
    lw      s1, 0x0030($sp)            
    lw      s2, 0x0034($sp)            
    lw      s3, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_80B70818:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0044($sp)            
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x0034($sp)            
    lw      t8, 0x01DC(s0)             # 000001DC
    bnel    t8, $at, lbl_80B7087C      
    addiu   a2, s0, 0x0184             # a2 = 00000184
    lwc1    $f4, 0x0154(s0)            # 00000154
    addiu   $at, $zero, 0x0006         # $at = 00000006
    or      a0, s0, $zero              # a0 = 00000000
    trunc.w.s $f6, $f4                   
    mfc1    v0, $f6                    
    nop
    beq     v0, $at, lbl_80B70870      
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bnel    v0, $at, lbl_80B7087C      
    addiu   a2, s0, 0x0184             # a2 = 00000184
lbl_80B70870:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38B8          # a1 = 000038B8
    addiu   a2, s0, 0x0184             # a2 = 00000184
lbl_80B7087C:
    or      a1, a2, $zero              # a1 = 00000184
    sw      a2, 0x002C($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lhu     t0, 0x01F0(s0)             # 000001F0
    lw      a2, 0x002C($sp)            
    addiu   t6, $zero, 0x003F          # t6 = 0000003F
    andi    t1, t0, 0x0004             # t1 = 00000000
    beq     t1, $zero, lbl_80B708C0    
    lui     $at, 0x0001                # $at = 00010000
    lh      t2, 0x01CA(s0)             # 000001CA
    lh      t4, 0x01CE(s0)             # 000001CE
    sh      t6, 0x01C4(s0)             # 000001C4
    addiu   t3, t2, 0xFFE5             # t3 = FFFFFFE5
    addiu   t5, t4, 0xFFE5             # t5 = FFFFFFE5
    sh      t3, 0x01CA(s0)             # 000001CA
    sh      t5, 0x01CE(s0)             # 000001CE
lbl_80B708C0:
    lw      a0, 0x0044($sp)            
    ori     $at, $at, 0x1E60           # $at = 00011E60
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at                
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)            
    jalr    $ra, t9                    
    nop
    lw      v1, 0x0034($sp)            
    lhu     v0, 0x01F0(s0)             # 000001F0
    addiu   t8, $zero, 0x170C          # t8 = 0000170C
    lwc1    $f8, 0x0038(v1)            # 00000038
    andi    t7, v0, 0x0100             # t7 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f8, 0x020C(s0)            # 0000020C
    lwc1    $f10, 0x003C(v1)           # 0000003C
    addiu   a1, s0, 0x01F4             # a1 = 000001F4
    ori     t0, v0, 0x1000             # t0 = 00001000
    swc1    $f10, 0x0210(s0)           # 00000210
    lwc1    $f16, 0x0040(v1)           # 00000040
    andi    t1, v0, 0x0200             # t1 = 00000000
    beq     t7, $zero, lbl_80B7093C    
    swc1    $f16, 0x0214(s0)           # 00000214
    sh      t8, 0x02F2(s0)             # 000002F2
    sh      t0, 0x01F0(s0)             # 000001F0
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_80027854              
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    beq     $zero, $zero, lbl_80B70968 
    lh      a1, 0x02F2(s0)             # 000002F2
lbl_80B7093C:
    beq     t1, $zero, lbl_80B70964    
    addiu   t2, $zero, 0x170C          # t2 = 0000170C
    ori     t3, v0, 0x1000             # t3 = 00001000
    sh      t2, 0x02F2(s0)             # 000002F2
    sh      t3, 0x01F0(s0)             # 000001F0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x01F4             # a1 = 000001F4
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_80027854              
    addiu   a3, $zero, 0x0004          # a3 = 00000004
lbl_80B70964:
    lh      a1, 0x02F2(s0)             # 000002F2
lbl_80B70968:
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x02EC             # a0 = 000002EC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x071C          # a3 = 0000071C
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80B70990:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    sw      a2, 0x0030($sp)            
    sw      a3, 0x0034($sp)            
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     a1, $at, lbl_80B709C4      
    lw      v0, 0x003C($sp)            
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    beql    a1, $at, lbl_80B70A34      
    mtc1    $zero, $f14                # $f14 = 0.00
    beq     $zero, $zero, lbl_80B70B40 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B709C4:
    lwl     t8, 0x0202(v0)             # 00000202
    lwr     t8, 0x0205(v0)             # 00000205
    addiu   t6, $sp, 0x001C            # t6 = FFFFFFF4
    lui     $at, %hi(var_80B70E14)     # $at = 80B70000
    sw      t8, 0x0000(t6)             # FFFFFFF4
    lhu     t8, 0x0206(v0)             # 00000206
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sh      t8, 0x0004(t6)             # FFFFFFF8
    lh      t9, 0x001E($sp)            
    lwc1    $f8, %lo(var_80B70E14)($at) 
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800AA9E0              
    neg.s   $f12, $f12                 
    lh      t0, 0x001C($sp)            
    lui     $at, %hi(var_80B70E18)     # $at = 80B70000
    lwc1    $f18, %lo(var_80B70E18)($at) 
    mtc1    t0, $f10                   # $f10 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f16, $f10                 
    mul.s   $f12, $f16, $f18           
    jal     func_800AAD4C              
    neg.s   $f12, $f12                 
    beq     $zero, $zero, lbl_80B70B40 
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $zero, $f14                # $f14 = 0.00
lbl_80B70A34:
    lui     $at, 0x44AF                # $at = 44AF0000
    mtc1    $at, $f12                  # $f12 = 1400.00
    mfc1    a2, $f14                   
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v0, 0x003C($sp)            
    addiu   t1, $sp, 0x001C            # t1 = FFFFFFF4
    lwl     t3, 0x01FC(v0)             # 000001FC
    lwr     t3, 0x01FF(v0)             # 000001FF
    sw      t3, 0x0000(t1)             # FFFFFFF4
    lhu     t3, 0x0200(v0)             # 00000200
    sh      t3, 0x0004(t1)             # FFFFFFF8
    lhu     t4, 0x01F0(v0)             # 000001F0
    lh      t6, 0x001E($sp)            
    lh      t2, 0x001E($sp)            
    andi    t5, t4, 0x1000             # t5 = 00000000
    beql    t5, $zero, lbl_80B70AE4    
    mtc1    t2, $f4                    # $f4 = 0.00
    lh      t7, 0x02EE(v0)             # 000002EE
    lui     $at, %hi(var_80B70E1C)     # $at = 80B70000
    lwc1    $f8, %lo(var_80B70E1C)($at) 
    addu    t8, t6, t7                 
    mtc1    t8, $f4                    # $f4 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800AA9E0              
    nop
    lw      v0, 0x003C($sp)            
    lh      t9, 0x001C($sp)            
    lui     $at, %hi(var_80B70E20)     # $at = 80B70000
    lh      t0, 0x02EC(v0)             # 000002EC
    lwc1    $f18, %lo(var_80B70E20)($at) 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addu    t1, t9, t0                 
    mtc1    t1, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    mul.s   $f12, $f16, $f18           
    jal     func_800AAD4C              
    nop
    beq     $zero, $zero, lbl_80B70B28 
    mtc1    $zero, $f14                # $f14 = 0.00
    mtc1    t2, $f4                    # $f4 = 0.00
lbl_80B70AE4:
    lui     $at, %hi(var_80B70E24)     # $at = 80B70000
    lwc1    $f8, %lo(var_80B70E24)($at) 
    cvt.s.w $f6, $f4                   
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f6, $f8             
    jal     func_800AA9E0              
    nop
    lh      t3, 0x001C($sp)            
    lui     $at, %hi(var_80B70E28)     # $at = 80B70000
    lwc1    $f18, %lo(var_80B70E28)($at) 
    mtc1    t3, $f10                   # $f10 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f16, $f10                 
    mul.s   $f12, $f16, $f18           
    jal     func_800AAD4C              
    nop
    mtc1    $zero, $f14                # $f14 = 0.00
lbl_80B70B28:
    lui     $at, 0xC4AF                # $at = C4AF0000
    mtc1    $at, $f12                  # $f12 = -1400.00
    mfc1    a2, $f14                   
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B70B40:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B70B50:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a2, 0x0028($sp)            
    sw      a3, 0x002C($sp)            
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     a1, $at, lbl_80B70BBC      
    lw      a2, 0x0000(a0)             # 00000000
    lw      a1, 0x0030($sp)            
    lui     a0, %hi(var_80B70E00)      # a0 = 80B70000
    addiu   a0, a0, %lo(var_80B70E00)  # a0 = 80B70E00
    sw      a2, 0x0018($sp)            
    jal     func_800AB958              
    addiu   a1, a1, 0x0038             # a1 = 00000038
    lw      a2, 0x0018($sp)            
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    lui     t2, %hi(var_80B70DF0)      # t2 = 80B70000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a2)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x0030($sp)            
    lh      t9, 0x001C(t8)             # 0000001C
    andi    t0, t9, 0x0003             # t0 = 00000000
    sll     t1, t0,  2                 
    addu    t2, t2, t1                 
    lw      t2, %lo(var_80B70DF0)(t2)  
    sw      t2, 0x0004(v1)             # 00000004
lbl_80B70BBC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B70BCC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lw      t6, 0x003C($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298              
    sw      a0, 0x0030($sp)            
    lh      v0, 0x001C(s0)             # 0000001C
    lw      v1, 0x0030($sp)            
    lui     t8, 0xFB00                 # t8 = FB000000
    andi    v0, v0, 0x0003             # v0 = 00000000
    bne     v0, $zero, lbl_80B70C2C    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t9, 0xAA0A                 # t9 = AA0A0000
    ori     t9, t9, 0x46FF             # t9 = AA0A46FF
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      t9, 0x0004(v0)             # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    beq     $zero, $zero, lbl_80B70CB4 
    lw      a1, 0x0140(s0)             # 00000140
lbl_80B70C2C:
    bne     v0, $at, lbl_80B70C58      
    lui     t1, 0xFB00                 # t1 = FB000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t2, 0xAAC8                 # t2 = AAC80000
    ori     t2, t2, 0xFFFF             # t2 = AAC8FFFF
    addiu   t0, v0, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(v1)             # 000002C0
    sw      t2, 0x0004(v0)             # 00000004
    sw      t1, 0x0000(v0)             # 00000000
    beq     $zero, $zero, lbl_80B70CB4 
    lw      a1, 0x0140(s0)             # 00000140
lbl_80B70C58:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80B70C88      
    lui     t4, 0xFB00                 # t4 = FB000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t5, 0x00E6                 # t5 = 00E60000
    ori     t5, t5, 0x46FF             # t5 = 00E646FF
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(v1)             # 000002C0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    beq     $zero, $zero, lbl_80B70CB4 
    lw      a1, 0x0140(s0)             # 00000140
lbl_80B70C88:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_80B70CB0      
    lui     t7, 0xFB00                 # t7 = FB000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t8, 0xC800                 # t8 = C8000000
    ori     t8, t8, 0x96FF             # t8 = C80096FF
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    sw      t8, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
lbl_80B70CB0:
    lw      a1, 0x0140(s0)             # 00000140
lbl_80B70CB4:
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t9, %hi(func_80B70990)     # t9 = 80B70000
    lui     t0, %hi(func_80B70B50)     # t0 = 80B70000
    addiu   t0, t0, %lo(func_80B70B50) # t0 = 80B70B50
    addiu   t9, t9, %lo(func_80B70990) # t9 = 80B70990
    sw      t9, 0x0010($sp)            
    sw      t0, 0x0014($sp)            
    sw      s0, 0x0018($sp)            
    jal     func_80089D8C              
    lw      a0, 0x003C($sp)            
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_80B70D00: .word 0x01BC0400, 0x00000019, 0x01220000, 0x000002F8
.word func_80B6FC94
.word func_80B6FFEC
.word func_80B70818
.word func_80B70BCC
var_80B70D20: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x00120042, 0x00000000, 0x00000000
var_80B70D4C: .word 0x00000000, 0x00000000, 0xFF000000
var_80B70D58: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80B70D78: .word \
0x06001AB0, 0x3F800000, 0x02000000, 0xC0E00000, \
0x06007DE0, 0x3F800000, 0x00000000, 0xC0E00000, \
0x0600885C, 0x3F800000, 0x00000000, 0xC0E00000, \
0x06000C44, 0x3F800000, 0x00000000, 0xC0E00000, \
0x06000600, 0x3F800000, 0x00000000, 0xC0E00000, \
0x06008164, 0x3F800000, 0x00000000, 0xC0E00000
var_80B70DD8: .word 0x008000B0, 0x00700470
var_80B70DE0: .word 0x00000001, 0x00000002, 0x00000003, 0x00000004
var_80B70DF0: .word 0x06005BD0, 0x06005AC0, 0x06005990, 0x06005880
var_80B70E00: .word 0x442F0000, 0x44898000, 0x00000000, 0x00000000

.section .rodata

var_80B70E10: .word 0x4622F983
var_80B70E14: .word 0x38C90FDB
var_80B70E18: .word 0x38C90FDB
var_80B70E1C: .word 0x38C90FDB
var_80B70E20: .word 0x38C90FDB
var_80B70E24: .word 0x38C90FDB
var_80B70E28: .word 0x38C90FDB, 0x00000000

