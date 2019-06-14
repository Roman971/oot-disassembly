#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B79200:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x00B4(s0)             # 000000B4
    lwc1    $f4, 0x0060(s0)            # 00000060
    mul.s   $f6, $f0, $f4              
    swc1    $f6, 0x0024($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x00B4(s0)             # 000000B4
    lwc1    $f8, 0x0060(s0)            # 00000060
    lwc1    $f16, 0x000C(s0)           # 0000000C
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f10, $f0, $f8             
    add.s   $f18, $f10, $f16           
    jal     func_800636C4              # sins?
    swc1    $f18, 0x0028(s0)           # 00000028
    lwc1    $f4, 0x0024($sp)           
    lwc1    $f8, 0x0008(s0)            # 00000008
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f6, $f0, $f4              
    add.s   $f10, $f6, $f8             
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f16, 0x0024($sp)          
    lwc1    $f4, 0x0010(s0)            # 00000010
    mul.s   $f18, $f0, $f16            
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x002C(s0)            # 0000002C
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80B79288:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x003C($sp)            
    lui     a1, %hi(var_80B79600)      # a1 = 80B80000
    sw      $zero, 0x002C($sp)         
    addiu   a1, a1, %lo(var_80B79600)  # a1 = 80B79600
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           # a1 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x2854             # a0 = 06002854
    andi    t6, v0, 0x00FF             # t6 = 00000000
    sra     t7, v0,  8                 
    sw      t6, 0x0028($sp)            
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sh      t8, 0x001C(s0)             # 0000001C
    jal     func_80033EF4              
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    lw      a0, 0x003C($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x002C($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      v1, 0x0028($sp)            
    addiu   $at, $zero, 0x0002         # $at = 00000002
    sw      v0, 0x013C(s0)             # 0000013C
    bne     v1, $at, lbl_80B79310      
    addiu   t9, $zero, 0xC000          # t9 = FFFFC000
    sh      t9, 0x00B4(s0)             # 000000B4
lbl_80B79310:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_80B7934C      
    lw      a0, 0x003C($sp)            
    lw      a0, 0x003C($sp)            
    jal     func_80020640              
    lb      a1, 0x0003(s0)             # 00000003
    beq     v0, $zero, lbl_80B79340    
    lui     t0, %hi(func_80B7943C)     # t0 = 80B80000
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B79378 
    lw      t2, 0x0028($sp)            
lbl_80B79340:
    addiu   t0, t0, %lo(func_80B7943C) # t0 = FFFF943C
    beq     $zero, $zero, lbl_80B79374 
    sw      t0, 0x0154(s0)             # 00000154
lbl_80B7934C:
    jal     func_8002049C              
    lh      a1, 0x001C(s0)             # 0000001C
    beq     v0, $zero, lbl_80B7936C    
    lui     t1, %hi(func_80B794B4)     # t1 = 80B80000
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B79378 
    lw      t2, 0x0028($sp)            
lbl_80B7936C:
    addiu   t1, t1, %lo(func_80B794B4) # t1 = FFFF94B4
    sw      t1, 0x0154(s0)             # 00000154
lbl_80B79374:
    lw      t2, 0x0028($sp)            
lbl_80B79378:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    bne     t2, $at, lbl_80B793EC      
    nop
    jal     func_800636C4              # sins?
    lh      a0, 0x00B4(s0)             # 000000B4
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    nop
    mul.s   $f6, $f0, $f4              
    swc1    $f6, 0x0024($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lwc1    $f8, 0x0024($sp)           
    lwc1    $f16, 0x0008(s0)           # 00000008
    lwc1    $f4, 0x000C(s0)            # 0000000C
    mul.s   $f10, $f0, $f8             
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f4, 0x003C(s0)            # 0000003C
    add.s   $f18, $f10, $f16           
    jal     func_80063684              # coss?
    swc1    $f18, 0x0038(s0)           # 00000038
    lwc1    $f6, 0x0024($sp)           
    lwc1    $f10, 0x0010(s0)           # 00000010
    mul.s   $f8, $f0, $f6              
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x0040(s0)           # 00000040
    beq     $zero, $zero, lbl_80B793F8 
    lw      $ra, 0x001C($sp)           
lbl_80B793EC:
    jal     func_80020F04              
    lui     a1, 0x4248                 # a1 = 42480000
    lw      $ra, 0x001C($sp)           
lbl_80B793F8:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80B79408:
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


func_80B7943C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_80020694              
    lb      a1, 0x0003(s0)             # 00000003
    beq     v0, $zero, lbl_80B794A0    
    lw      a0, 0x0024($sp)            
    jal     func_80020658              
    lb      a1, 0x0003(s0)             # 00000003
    lw      a0, 0x0024($sp)            
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x001E          # a2 = 0000001E
    jal     func_80058FF8              
    addiu   a3, $zero, 0x2814          # a3 = 00002814
    lh      t7, 0x00B4(s0)             # 000000B4
    lui     t6, %hi(func_80B7951C)     # t6 = 80B80000
    addiu   t6, t6, %lo(func_80B7951C) # t6 = 80B7951C
    bne     t7, $zero, lbl_80B794A0    
    sw      t6, 0x0154(s0)             # 00000154
    lw      a0, 0x0024($sp)            
    jal     func_8006BA10              
    or      a1, s0, $zero              # a1 = 00000000
lbl_80B794A0:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B794B4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      t6, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8002049C              
    lh      a1, 0x001C(t6)             # 0000001C
    beq     v0, $zero, lbl_80B7950C    
    lw      a0, 0x001C($sp)            
    lw      a1, 0x0018($sp)            
    addiu   a2, $zero, 0x001E          # a2 = 0000001E
    addiu   a3, $zero, 0x2814          # a3 = 00002814
    jal     func_80058FF8              
    addiu   a1, a1, 0x0024             # a1 = 00000024
    lw      t8, 0x0018($sp)            
    lui     t7, %hi(func_80B7951C)     # t7 = 80B80000
    addiu   t7, t7, %lo(func_80B7951C) # t7 = 80B7951C
    sw      t7, 0x0154(t8)             # 00000154
    lw      a1, 0x0018($sp)            
    jal     func_8006BA10              
    lw      a0, 0x001C($sp)            
lbl_80B7950C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B7951C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x0068             # a0 = 00000068
    lui     a1, 0x41F0                 # a1 = 41F00000
    lui     a2, 0x4000                 # a2 = 40000000
    jal     func_8006385C              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lui     a1, 0x4352                 # a1 = 43520000
    addiu   a0, a3, 0x0060             # a0 = 00000060
    jal     func_8006385C              
    lw      a2, 0x0068(a3)             # 00000068
    beq     v0, $zero, lbl_80B7956C    
    lw      a3, 0x0018($sp)            
    jal     func_80020EB4              
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B79578 
    lw      $ra, 0x0014($sp)           
lbl_80B7956C:
    jal     func_80B79200              
    or      a0, a3, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
lbl_80B79578:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B79584:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B795A8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2740             # a1 = 06002740
    jal     func_80028048              
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_80B795E0: .word 0x01C80600, 0x00000010, 0x006B0000, 0x00000158
.word func_80B79288
.word func_80B79408
.word func_80B79584
.word func_80B795A8
var_80B79600: .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

.section .rodata


