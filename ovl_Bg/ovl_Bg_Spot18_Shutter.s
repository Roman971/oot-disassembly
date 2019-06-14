#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B760B0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x003C($sp)            
    lh      t6, 0x001C(s0)             # 0000001C
    sw      $zero, 0x0028($sp)         
    or      a0, s0, $zero              # a0 = 00000000
    sra     t7, t6,  8                 
    andi    t8, t7, 0x0001             # t8 = 00000000
    sw      t8, 0x002C($sp)            
    jal     func_80035260              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a1, %hi(var_80B76560)      # a1 = 80B70000
    addiu   a1, a1, %lo(var_80B76560)  # a1 = 80B76560
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x002C($sp)            
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bne     t9, $zero, lbl_80B761B8    
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      t0, 0x0004(v1)             # 8011A5D4
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    beq     t0, $zero, lbl_80B76128    
    nop
    beq     $zero, $zero, lbl_80B76128 
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_80B76128:
    bnel    v0, $at, lbl_80B76174      
    lh      a1, 0x001C(s0)             # 0000001C
    lhu     t1, 0x0F18(v1)             # 8011B4E8
    lui     t4, %hi(func_80B76304)     # t4 = 80B70000
    lui     $at, 0x4334                # $at = 43340000
    andi    t2, t1, 0x0200             # t2 = 00000000
    beq     t2, $zero, lbl_80B76168    
    addiu   t4, t4, %lo(func_80B76304) # t4 = 80B76304
    lwc1    $f4, 0x0028(s0)            # 00000028
    mtc1    $at, $f6                   # $f6 = 180.00
    lui     t3, %hi(func_80B76294)     # t3 = 80B70000
    addiu   t3, t3, %lo(func_80B76294) # t3 = 80B76294
    add.s   $f8, $f4, $f6              
    sw      t3, 0x0154(s0)             # 00000154
    beq     $zero, $zero, lbl_80B76224 
    swc1    $f8, 0x0028(s0)            # 00000028
lbl_80B76168:
    beq     $zero, $zero, lbl_80B76224 
    sw      t4, 0x0154(s0)             # 00000154
    lh      a1, 0x001C(s0)             # 0000001C
lbl_80B76174:
    lw      a0, 0x003C($sp)            
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80B761AC    
    lui     t6, %hi(func_80B762A4)     # t6 = 80B70000
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f16                  # $f16 = 180.00
    lwc1    $f10, 0x0028(s0)           # 00000028
    lui     t5, %hi(func_80B76294)     # t5 = 80B70000
    addiu   t5, t5, %lo(func_80B76294) # t5 = 80B76294
    add.s   $f18, $f10, $f16           
    sw      t5, 0x0154(s0)             # 00000154
    beq     $zero, $zero, lbl_80B76224 
    swc1    $f18, 0x0028(s0)           # 00000028
lbl_80B761AC:
    addiu   t6, t6, %lo(func_80B762A4) # t6 = 80B762A4
    beq     $zero, $zero, lbl_80B76224 
    sw      t6, 0x0154(s0)             # 00000154
lbl_80B761B8:
    lhu     t7, 0x0F18(v1)             # 00000F18
    lui     t0, %hi(func_80B76304)     # t0 = 80B70000
    addiu   t0, t0, %lo(func_80B76304) # t0 = 80B76304
    andi    t8, t7, 0x0200             # t8 = 00000000
    beql    t8, $zero, lbl_80B76224    
    sw      t0, 0x0154(s0)             # 00000154
    jal     func_80063684              # coss?
    lh      a0, 0x0032(s0)             # 00000032
    lui     $at, 0x42FA                # $at = 42FA0000
    mtc1    $at, $f6                   # $f6 = 125.00
    lwc1    $f4, 0x0024(s0)            # 00000024
    lh      a0, 0x0032(s0)             # 00000032
    mul.s   $f8, $f6, $f0              
    add.s   $f10, $f4, $f8             
    jal     func_800636C4              # sins?
    swc1    $f10, 0x0024(s0)           # 00000024
    lui     $at, 0x42FA                # $at = 42FA0000
    mtc1    $at, $f18                  # $f18 = 125.00
    lwc1    $f16, 0x002C(s0)           # 0000002C
    lui     t9, %hi(func_80B76294)     # t9 = 80B70000
    mul.s   $f6, $f18, $f0             
    addiu   t9, t9, %lo(func_80B76294) # t9 = 80B76294
    sw      t9, 0x0154(s0)             # 00000154
    sub.s   $f4, $f16, $f6             
    beq     $zero, $zero, lbl_80B76224 
    swc1    $f4, 0x002C(s0)            # 0000002C
    sw      t0, 0x0154(s0)             # 00000154
lbl_80B76224:
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x0534             # a0 = 06000534
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFF0
    lw      a0, 0x003C($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0028($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sw      v0, 0x013C(s0)             # 0000013C
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80B76260:
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


func_80B76294:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80B762A4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      t6, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    lh      a1, 0x001C(t6)             # 0000001C
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80B762F4    
    lw      a0, 0x0018($sp)            
    jal     func_80020F04              
    lui     a1, 0x428C                 # a1 = 428C0000
    lw      a0, 0x001C($sp)            
    jal     func_8006BA10              
    lw      a1, 0x0018($sp)            
    lw      t8, 0x0018($sp)            
    lui     t7, %hi(func_80B7638C)     # t7 = 80B70000
    addiu   t7, t7, %lo(func_80B7638C) # t7 = 80B7638C
    sw      t7, 0x0154(t8)             # 00000154
lbl_80B762F4:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B76304:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B18(t6)            # 8011B4E8
    or      a0, a3, $zero              # a0 = 00000000
    lui     a1, 0x428C                 # a1 = 428C0000
    andi    t7, t6, 0x0200             # t7 = 00000000
    beql    t7, $zero, lbl_80B76380    
    lw      $ra, 0x001C($sp)           
    jal     func_80020F04              
    sw      a3, 0x0020($sp)            
    lw      a3, 0x0020($sp)            
    lui     t2, %hi(func_80B76410)     # t2 = 80B70000
    lui     t1, %hi(func_80B7638C)     # t1 = 80B70000
    lh      t8, 0x001C(a3)             # 0000001C
    addiu   t2, t2, %lo(func_80B76410) # t2 = 80B76410
    addiu   a1, $zero, 0x107D          # a1 = 0000107D
    sra     t9, t8,  8                 
    andi    t0, t9, 0x0001             # t0 = 00000000
    bne     t0, $zero, lbl_80B7636C    
    addiu   a2, $zero, 0x008C          # a2 = 0000008C
    addiu   t1, t1, %lo(func_80B7638C) # t1 = 80B7638C
    beq     $zero, $zero, lbl_80B7637C 
    sw      t1, 0x0154(a3)             # 00000154
lbl_80B7636C:
    sw      t2, 0x0154(a3)             # 00000154
    sw      $zero, 0x0010($sp)         
    jal     func_8006B6FC              
    lw      a0, 0x0024($sp)            
lbl_80B7637C:
    lw      $ra, 0x001C($sp)           
lbl_80B76380:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B7638C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f6                   # $f6 = 180.00
    lwc1    $f4, 0x000C(a3)            # 0000000C
    lui     a2, 0x3FB8                 # a2 = 3FB80000
    ori     a2, a2, 0x51EC             # a2 = 3FB851EC
    add.s   $f8, $f4, $f6              
    sw      a3, 0x0018($sp)            
    addiu   a0, a3, 0x0028             # a0 = 00000028
    mfc1    a1, $f8                    
    jal     func_8006385C              
    nop
    beq     v0, $zero, lbl_80B763F4    
    lw      a3, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2893          # a1 = 00002893
    jal     func_80022FD0              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lui     t6, %hi(func_80B76294)     # t6 = 80B70000
    addiu   t6, t6, %lo(func_80B76294) # t6 = 80B76294
    beq     $zero, $zero, lbl_80B76400 
    sw      t6, 0x0154(a3)             # 00000154
lbl_80B763F4:
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8002313C              
    addiu   a1, $zero, 0x201E          # a1 = 0000201E
lbl_80B76400:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B76410:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    swc1    $f0, 0x002C($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x0032(s0)             # 00000032
    lui     $at, 0x42FA                # $at = 42FA0000
    mtc1    $at, $f6                   # $f6 = 125.00
    mov.s   $f2, $f0                   
    lwc1    $f4, 0x0008(s0)            # 00000008
    mul.s   $f8, $f6, $f2              
    abs.s   $f0, $f0                   
    addiu   a0, s0, 0x0024             # a0 = 00000024
    mfc1    a2, $f0                    
    add.s   $f10, $f4, $f8             
    mfc1    a1, $f10                   
    jal     func_8006385C              
    nop
    lui     $at, 0x42FA                # $at = 42FA0000
    lwc1    $f2, 0x002C($sp)           
    mtc1    $at, $f18                  # $f18 = 125.00
    lwc1    $f16, 0x0010(s0)           # 00000010
    abs.s   $f0, $f2                   
    mul.s   $f6, $f18, $f2             
    andi    v1, v0, 0x0001             # v1 = 00000000
    mfc1    a2, $f0                    
    sw      v1, 0x0024($sp)            
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    sub.s   $f4, $f16, $f6             
    mfc1    a1, $f4                    
    jal     func_8006385C              
    nop
    lw      v1, 0x0024($sp)            
    addiu   a1, $zero, 0x2893          # a1 = 00002893
    or      a0, s0, $zero              # a0 = 00000000
    and     v1, v1, v0                 
    beq     v1, $zero, lbl_80B764D0    
    nop
    jal     func_80022FD0              
    or      a0, s0, $zero              # a0 = 00000000
    lui     t6, %hi(func_80B76294)     # t6 = 80B70000
    addiu   t6, t6, %lo(func_80B76294) # t6 = 80B76294
    beq     $zero, $zero, lbl_80B764D8 
    sw      t6, 0x0154(s0)             # 00000154
lbl_80B764D0:
    jal     func_8002313C              
    addiu   a1, $zero, 0x201E          # a1 = 0000201E
lbl_80B764D8:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80B764EC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B76510:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0420             # a1 = 06000420
    jal     func_80028048              
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_80B76540: .word 0x01C40600, 0x00000030, 0x00AF0000, 0x00000158
.word func_80B760B0
.word func_80B76260
.word func_80B764EC
.word func_80B76510
var_80B76560: .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

.section .rodata


