#include <mips.h>
.set noreorder
.set noat

.section .text
func_80920000:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    sw      $zero, 0x002C($sp)         
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80920054    
    lui     a1, 0x3B23                 # a1 = 3B230000
    beq     v0, $at, lbl_80920064      
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80920078      
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_8092008C      
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8092009C 
    lui     $at, 0x4496                # $at = 44960000
lbl_80920054:
    jal     func_80020F88              
    ori     a1, a1, 0xD70A             # a1 = 3B23D70A
    beq     $zero, $zero, lbl_8092009C 
    lui     $at, 0x4496                # $at = 44960000
lbl_80920064:
    lui     a1, 0x3BA3                 # a1 = 3BA30000
    jal     func_80020F88              
    ori     a1, a1, 0xD70A             # a1 = 3BA3D70A
    beq     $zero, $zero, lbl_8092009C 
    lui     $at, 0x4496                # $at = 44960000
lbl_80920078:
    lui     a1, 0x3BF5                 # a1 = 3BF50000
    jal     func_80020F88              
    ori     a1, a1, 0xC28F             # a1 = 3BF5C28F
    beq     $zero, $zero, lbl_8092009C 
    lui     $at, 0x4496                # $at = 44960000
lbl_8092008C:
    lui     a1, 0x3C23                 # a1 = 3C230000
    jal     func_80020F88              
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    lui     $at, 0x4496                # $at = 44960000
lbl_8092009C:
    mtc1    $at, $f4                   # $f4 = 1200.00
    lui     $at, 0x4434                # $at = 44340000
    mtc1    $at, $f6                   # $f6 = 720.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    addiu   t8, $zero, 0x0032          # t8 = 00000032
    lui     a2, 0x8002                 # a2 = 80020000
    sw      t6, 0x0154(s0)             # 00000154
    sh      t7, 0x00A8(s0)             # 000000A8
    sh      t8, 0x00AA(s0)             # 000000AA
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a3, 0x40C0                 # a3 = 40C00000
    swc1    $f4, 0x00FC(s0)            # 000000FC
    jal     func_8001EC20              
    swc1    $f6, 0x00F8(s0)            # 000000F8
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f8                   # $f8 = -2.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     a0, 0x0600                 # a0 = 06000000
    sb      $zero, 0x0150(s0)          # 00000150
    sw      $zero, 0x014C(s0)          # 0000014C
    sb      t9, 0x001F(s0)             # 0000001F
    addiu   a0, a0, 0x06D0             # a0 = 060006D0
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFFC
    jal     func_80033EF4              
    swc1    $f8, 0x006C(s0)            # 0000006C
    lw      a0, 0x0034($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x002C($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sw      v0, 0x013C(s0)             # 0000013C
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80920138:
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


func_8092016C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    lui     $at, 0xC020                # $at = C0200000
    sw      s0, 0x0020($sp)            
    mtc1    $at, $f2                   # $f2 = -2.50
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lwc1    $f4, 0x0068(s0)            # 00000068
    lwc1    $f6, 0x0140(s0)            # 00000140
    lh      t6, 0x0148(s0)             # 00000148
    lui     $at, 0x4020                # $at = 40200000
    add.s   $f8, $f4, $f6              
    sh      t6, 0x0032(s0)             # 00000032
    swc1    $f8, 0x0068(s0)            # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_809201C4               
    mtc1    $at, $f12                  # $f12 = 2.50
    beq     $zero, $zero, lbl_809201E8 
    swc1    $f2, 0x0068(s0)            # 00000068
    mtc1    $at, $f12                  # $f12 = 2.50
lbl_809201C4:
    nop
    c.lt.s  $f12, $f0                  
    nop
    bc1fl   lbl_809201E4               
    mov.s   $f2, $f0                   
    beq     $zero, $zero, lbl_809201E4 
    mov.s   $f2, $f12                  
    mov.s   $f2, $f0                   
lbl_809201E4:
    swc1    $f2, 0x0068(s0)            # 00000068
lbl_809201E8:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x0068             # a0 = 00000068
    mfc1    a2, $f2                    
    mfc1    a3, $f2                    
    mfc1    a1, $f0                    
    jal     func_80064178              
    swc1    $f0, 0x0010($sp)           
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f10, 0x0068(s0)           # 00000068
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    c.eq.s  $f0, $f10                  
    addiu   a0, $zero, 0x200A          # a0 = 0000200A
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    bc1t    lbl_8092024C               
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    sw      t7, 0x0014($sp)            
    jal     func_800C806C              
    sw      a3, 0x0010($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
lbl_8092024C:
    swc1    $f0, 0x0144(s0)            # 00000144
    swc1    $f0, 0x0140(s0)            # 00000140
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t8, 0x00AA(s0)             # 000000AA
    lh      t9, 0x00A8(s0)             # 000000A8
    addiu   t0, $zero, 0x001D          # t0 = 0000001D
    mtc1    t8, $f16                   # $f16 = 0.00
    mtc1    t9, $f18                   # $f18 = 0.00
    sw      t0, 0x0014($sp)            
    cvt.s.w $f16, $f16                 
    lw      a0, 0x002C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    cvt.s.w $f0, $f18                  
    mfc1    a2, $f16                   
    mfc1    a3, $f0                    
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lw      t2, 0x0024(s0)             # 00000024
    lw      t1, 0x0028(s0)             # 00000028
    sw      t2, 0x0038(s0)             # 00000038
    lw      t2, 0x002C(s0)             # 0000002C
    sw      t1, 0x003C(s0)             # 0000003C
    sw      t2, 0x0040(s0)             # 00000040
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_809202BC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0380             # a1 = 06000380
    jal     func_80028048              
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_809202F0: .word 0x007D0100, 0x00000010, 0x00820000, 0x00000158
.word func_80920000
.word func_80920138
.word func_8092016C
.word func_809202BC

.section .rodata


