#include <mips.h>
.set noreorder
.set noat

.section .text
func_8091FB80:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0044($sp)            
    sw      $zero, 0x003C($sp)         
    lh      v0, 0x001C(s0)             ## 0000001C
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    or      a0, s0, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_8091FBD4    
    lui     a1, 0x3CCC                 ## a1 = 3CCC0000
    beq     v0, $at, lbl_8091FBE4      
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    beq     v0, $at, lbl_8091FBF8      
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    beq     v0, $at, lbl_8091FC0C      
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_8091FC1C 
    lw      t7, 0x0024(s0)             ## 00000024
lbl_8091FBD4:
    jal     func_80020F88              
    ori     a1, a1, 0xCCCD             ## a1 = 3CCCCCCD
    beq     $zero, $zero, lbl_8091FC1C 
    lw      t7, 0x0024(s0)             ## 00000024
lbl_8091FBE4:
    lui     a1, 0x3D4C                 ## a1 = 3D4C0000
    jal     func_80020F88              
    ori     a1, a1, 0xCCCD             ## a1 = 3D4CCCCD
    beq     $zero, $zero, lbl_8091FC1C 
    lw      t7, 0x0024(s0)             ## 00000024
lbl_8091FBF8:
    lui     a1, 0x3D99                 ## a1 = 3D990000
    jal     func_80020F88              
    ori     a1, a1, 0x999A             ## a1 = 3D99999A
    beq     $zero, $zero, lbl_8091FC1C 
    lw      t7, 0x0024(s0)             ## 00000024
lbl_8091FC0C:
    lui     a1, 0x3DCC                 ## a1 = 3DCC0000
    jal     func_80020F88              
    ori     a1, a1, 0xCCCD             ## a1 = 3DCCCCCD
    lw      t7, 0x0024(s0)             ## 00000024
lbl_8091FC1C:
    lw      t6, 0x0028(s0)             ## 00000028
    addiu   t8, $zero, 0x001E          ## t8 = 0000001E
    sw      t7, 0x0038(s0)             ## 00000038
    lw      t7, 0x002C(s0)             ## 0000002C
    addiu   t9, $zero, 0x0032          ## t9 = 00000032
    lui     a2, 0x8002                 ## a2 = 80020000
    sh      t8, 0x00A8(s0)             ## 000000A8
    sh      t9, 0x00AA(s0)             ## 000000AA
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    lui     a3, 0x40C0                 ## a3 = 40C00000
    sw      t6, 0x003C(s0)             ## 0000003C
    jal     func_8001EC20              
    sw      t7, 0x0040(s0)             ## 00000040
    lui     $at, 0xC000                ## $at = C0000000
    mtc1    $at, $f4                   ## $f4 = -2.00
    lui     a0, 0x0600                 ## a0 = 06000000
    sb      $zero, 0x0150(s0)          ## 00000150
    sw      $zero, 0x014C(s0)          ## 0000014C
    sb      $zero, 0x001F(s0)          ## 0000001F
    addiu   a0, a0, 0x1F10             ## a0 = 06001F10
    addiu   a1, $sp, 0x003C            ## a1 = FFFFFFFC
    jal     func_80033EF4              
    swc1    $f4, 0x006C(s0)            ## 0000006C
    lw      a0, 0x0044($sp)            
    or      a2, s0, $zero              ## a2 = 00000000
    lw      a3, 0x003C($sp)            
    jal     func_800313A4              ## DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             ## a1 = 00000810
    sw      v0, 0x013C(s0)             ## 0000013C
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_8091FCAC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              ## a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              ## a0 = 00000000
    addiu   a1, a3, 0x0810             ## a1 = 00000810
    jal     func_80031638              ## DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             ## 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8091FCE0:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lh      t6, 0x0152(s0)             ## 00000152
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    beq     t6, $zero, lbl_8091FD20    
    nop
    jal     func_80022D40              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_8091FF00    
    nop
    beq     $zero, $zero, lbl_8091FF00 
    sh      $zero, 0x0152(s0)          ## 00000152
lbl_8091FD20:
    jal     func_80022BB0              
    lw      a1, 0x002C($sp)            
    beql    v0, $zero, lbl_8091FD44    
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lh      t7, 0x0152(s0)             ## 00000152
    addiu   t8, t7, 0x0001             ## t8 = 00000001
    beq     $zero, $zero, lbl_8091FF00 
    sh      t8, 0x0152(s0)             ## 00000152
    mtc1    $zero, $f0                 ## $f0 = 0.00
lbl_8091FD44:
    lwc1    $f4, 0x0068(s0)            ## 00000068
    c.eq.s  $f0, $f4                   
    nop
    bc1tl   lbl_8091FDC8               
    lhu     t7, 0x0088(s0)             ## 00000088
    lhu     t9, 0x0088(s0)             ## 00000088
    lui     a3, 0x8010                 ## a3 = 80100000
    addiu   a3, a3, 0x43A0             ## a3 = 801043A0
    andi    t0, t9, 0x0008             ## t0 = 00000000
    beq     t0, $zero, lbl_8091FDC4    
    addiu   a0, $zero, 0x282F          ## a0 = 0000282F
    lh      v0, 0x0032(s0)             ## 00000032
    lh      t1, 0x007E(s0)             ## 0000007E
    lui     t4, 0x8010                 ## t4 = 80100000
    addiu   t4, t4, 0x43A8             ## t4 = 801043A8
    addu    t2, v0, t1                 
    subu    t3, t2, v0                 
    sh      t3, 0x0032(s0)             ## 00000032
    sw      t4, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a1, s0, 0x00E4             ## a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          ## a2 = 00000004
    lui     $at, %hi(var_8091FFC0)     ## $at = 80920000
    lwc1    $f8, %lo(var_8091FFC0)($at) 
    lwc1    $f6, 0x0068(s0)            ## 00000068
    lhu     t5, 0x0088(s0)             ## 00000088
    mtc1    $zero, $f0                 ## $f0 = 0.00
    mul.s   $f10, $f6, $f8             
    andi    t6, t5, 0xFFF7             ## t6 = 00000000
    sh      t6, 0x0088(s0)             ## 00000088
    swc1    $f10, 0x0068(s0)           ## 00000068
lbl_8091FDC4:
    lhu     t7, 0x0088(s0)             ## 00000088
lbl_8091FDC8:
    lui     t9, 0x8012                 ## t9 = 80120000
    lui     t1, 0x8012                 ## t1 = 80120000
    andi    t8, t7, 0x0001             ## t8 = 00000000
    bne     t8, $zero, lbl_8091FE18    
    nop
    lw      t9, -0x4600(t9)            ## 8011BA00
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f4                   ## $f4 = 100.00
    lh      t0, 0x0746(t9)             ## 80120746
    mfc1    a1, $f0                    
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    mtc1    t0, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    div.s   $f6, $f18, $f4             
    mfc1    a2, $f6                    
    jal     func_8006385C              
    nop
    beq     $zero, $zero, lbl_8091FF00 
    nop
lbl_8091FE18:
    lw      t1, -0x4600(t1)            ## FFFFBA00
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f16                  ## $f16 = 100.00
    lh      t2, 0x0748(t1)             ## 00000748
    mfc1    a1, $f0                    
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    mtc1    t2, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    div.s   $f18, $f10, $f16           
    mfc1    a2, $f18                   
    jal     func_8006385C              
    nop
    lhu     t3, 0x0088(s0)             ## 00000088
    lui     t5, 0x8012                 ## t5 = 80120000
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t4, t3, 0x0002             ## t4 = 00000000
    beq     t4, $zero, lbl_8091FEF8    
    nop
    lw      t5, -0x4600(t5)            ## 8011BA00
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f10                  ## $f10 = 100.00
    lh      t6, 0x074A(t5)             ## 8012074A
    lwc1    $f4, 0x0060(s0)            ## 00000060
    lui     t7, 0x8010                 ## t7 = 80100000
    mtc1    t6, $f6                    ## $f6 = 0.00
    lui     t8, 0x8010                 ## t8 = 80100000
    addiu   t8, t8, 0x43A8             ## t8 = 801043A8
    cvt.s.w $f8, $f6                   
    addiu   a3, t7, 0x43A0             ## a3 = 801043A0
    addiu   a1, s0, 0x00E4             ## a1 = 000000E4
    addiu   a2, $zero, 0x0004          ## a2 = 00000004
    div.s   $f16, $f8, $f10            
    c.lt.s  $f4, $f16                  
    nop
    bc1f    lbl_8091FEF8               
    nop
    addiu   a0, $zero, 0x282F          ## a0 = 0000282F
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    sw      t8, 0x0014($sp)            
    lui     t9, 0x8012                 ## t9 = 80120000
    lw      t9, -0x4600(t9)            ## 8011BA00
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f8                   ## $f8 = 100.00
    lh      t0, 0x074C(t9)             ## 8012074C
    lwc1    $f4, 0x0060(s0)            ## 00000060
    lhu     t1, 0x0088(s0)             ## 00000088
    mtc1    t0, $f18                   ## $f18 = 0.00
    andi    t2, t1, 0xFFFE             ## t2 = 00000000
    cvt.s.w $f6, $f18                  
    sh      t2, 0x0088(s0)             ## 00000088
    div.s   $f10, $f6, $f8             
    mul.s   $f16, $f4, $f10            
    beq     $zero, $zero, lbl_8091FF00 
    swc1    $f16, 0x0060(s0)           ## 00000060
lbl_8091FEF8:
    jal     func_80022D20              
    lw      a1, 0x002C($sp)            
lbl_8091FF00:
    jal     func_8002121C              
    or      a0, s0, $zero              ## a0 = 00000000
    lh      t3, 0x00AA(s0)             ## 000000AA
    lh      t4, 0x00A8(s0)             ## 000000A8
    addiu   t5, $zero, 0x001D          ## t5 = 0000001D
    mtc1    t3, $f18                   ## $f18 = 0.00
    mtc1    t4, $f6                    ## $f6 = 0.00
    sw      t5, 0x0014($sp)            
    cvt.s.w $f18, $f18                 
    lw      a0, 0x002C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    cvt.s.w $f0, $f6                   
    mfc1    a2, $f18                   
    mfc1    a3, $f0                    
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lw      t7, 0x0024(s0)             ## 00000024
    lw      t6, 0x0028(s0)             ## 00000028
    sw      t7, 0x0038(s0)             ## 00000038
    lw      t7, 0x002C(s0)             ## 0000002C
    sw      t6, 0x003C(s0)             ## 0000003C
    sw      t7, 0x0040(s0)             ## 00000040
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_8091FF68:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              ## a2 = 00000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x0B70             ## a1 = 06000B70
    jal     func_80028048              
    or      a0, a2, $zero              ## a0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_8091FFA0: .word 0x007C0600, 0x00000010, 0x00810000, 0x00000154
.word func_8091FB80
.word func_8091FCAC
.word func_8091FCE0
.word func_8091FF68

.section .rodata

var_8091FFC0: .word 0x3F333333, 0x00000000, 0x00000000, 0x00000000

