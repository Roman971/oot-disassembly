#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B23300:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80B23310:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    lh      t6, 0x001C(a2)             ## 0000001C
    lh      a3, 0x0034(a2)             ## 00000034
    lui     t0, %hi(var_80B23920)      ## t0 = 80B20000
    sra     t7, t6,  6                 
    andi    t8, t7, 0x00FF             ## t8 = 00000000
    blez    a3, lbl_80B2339C           
    sh      t8, 0x0140(a2)             ## 00000140
    sll     v0, a3, 16                 
    sra     v0, v0, 16                 
    slti    $at, v0, 0x000B            
    bne     $at, $zero, lbl_80B23368   
    or      v1, $zero, $zero           ## v1 = 00000000
lbl_80B23350:
    addiu   v0, v0, 0xFFF6             ## v0 = FFFFFFF6
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    slti    $at, v0, 0x000B            
    beq     $at, $zero, lbl_80B23350   
    addiu   v1, v1, 0x0001             ## v1 = 00000001
lbl_80B23368:
    mtc1    v0, $f4                    ## $f4 = NaN
    lui     $at, 0x4220                ## $at = 42200000
    mtc1    $at, $f8                   ## $f8 = 40.00
    cvt.s.w $f6, $f4                   
    slti    $at, v1, 0x0007            
    mul.s   $f10, $f6, $f8             
    bne     $at, $zero, lbl_80B2338C   
    swc1    $f10, 0x014C(a2)           ## 0000014C
    or      v1, $zero, $zero           ## v1 = 00000000
lbl_80B2338C:
    sll     t9, v1,  1                 
    addu    t0, t0, t9                 
    lh      t0, %lo(var_80B23920)(t0)  
    sb      t0, 0x001F(a2)             ## 0000001F
lbl_80B2339C:
    lh      v0, 0x001C(a2)             ## 0000001C
    lw      t2, 0x0024(a2)             ## 00000024
    lw      t1, 0x0028(a2)             ## 00000028
    andi    t3, v0, 0x003F             ## t3 = 00000036
    sh      t3, 0x0142(a2)             ## 00000142
    lh      a1, 0x0142(a2)             ## 00000142
    sw      t2, 0x0154(a2)             ## 00000154
    lw      t2, 0x002C(a2)             ## 0000002C
    sra     t4, v0, 14                 
    andi    t5, t4, 0x0003             ## t5 = 00000000
    addiu   $at, $zero, 0x003F         ## $at = 0000003F
    sh      t5, 0x0144(a2)             ## 00000144
    sw      t1, 0x0158(a2)             ## 00000158
    bne     a1, $at, lbl_80B233E4      
    sw      t2, 0x015C(a2)             ## 0000015C
    addiu   t6, $zero, 0xFFFF          ## t6 = FFFFFFFF
    sh      t6, 0x0142(a2)             ## 00000142
    lh      a1, 0x0142(a2)             ## 00000142
lbl_80B233E4:
    bltz    a1, lbl_80B2340C           
    lw      a0, 0x001C($sp)            
    jal     func_8002049C              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_80B2340C    
    lw      a2, 0x0018($sp)            
    jal     func_80020EB4              
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B23494 
    lw      $ra, 0x0014($sp)           
lbl_80B2340C:
    lh      v0, 0x0144(a2)             ## 00000144
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    lw      t7, 0x001C($sp)            
    bne     v0, $at, lbl_80B2345C      
    lui     t3, %hi(func_80B234A0)     ## t3 = 80B20000
    lh      t8, 0x00A4(t7)             ## 000000A4
    addiu   $at, $zero, 0x000B         ## $at = 0000000B
    bnel    t8, $at, lbl_80B23460      
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    lh      a1, 0x0142(a2)             ## 00000142
    addiu   $at, $zero, 0x0008         ## $at = 00000008
    beq     a1, $at, lbl_80B2345C      
    addiu   $at, $zero, 0x0016         ## $at = 00000016
    beq     a1, $at, lbl_80B2345C      
    addiu   $at, $zero, 0x002F         ## $at = 0000002F
    beq     a1, $at, lbl_80B2345C      
    addiu   t9, $zero, 0x0004          ## t9 = 00000004
    sh      t9, 0x0144(a2)             ## 00000144
    sb      $zero, 0x014A(a2)          ## 0000014A
    lh      v0, 0x0144(a2)             ## 00000144
lbl_80B2345C:
    addiu   $at, $zero, 0x0003         ## $at = 00000003
lbl_80B23460:
    bne     v0, $at, lbl_80B2348C      
    addiu   t3, t3, %lo(func_80B234A0) ## t3 = 80B234A0
    lw      t0, 0x0004(a2)             ## 00000004
    lui     $at, 0xF7FF                ## $at = F7FF0000
    ori     $at, $at, 0xFFFF           ## $at = F7FFFFFF
    lui     t2, %hi(func_80B238A8)     ## t2 = 80B20000
    addiu   t2, t2, %lo(func_80B238A8) ## t2 = 80B238A8
    and     t1, t0, $at                
    sw      t1, 0x0004(a2)             ## 00000004
    beq     $zero, $zero, lbl_80B23490 
    sw      t2, 0x013C(a2)             ## 0000013C
lbl_80B2348C:
    sw      t3, 0x013C(a2)             ## 0000013C
lbl_80B23490:
    lw      $ra, 0x0014($sp)           
lbl_80B23494:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B234A0:
    sw      a1, 0x0004($sp)            
    lh      t8, 0x0140(a0)             ## 00000140
    lh      v0, 0x0144(a0)             ## 00000144
    addiu   t7, $zero, 0x0200          ## t7 = 00000200
    sh      t7, 0x010E(a0)             ## 0000010E
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    or      t9, t7, t8                 ## t9 = 00000200
    beq     v0, $at, lbl_80B234D0      
    sh      t9, 0x010E(a0)             ## 0000010E
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    bne     v0, $at, lbl_80B234E0      
    lui     t1, %hi(func_80B234F0)     ## t1 = 80B20000
lbl_80B234D0:
    lui     t0, %hi(func_80B23758)     ## t0 = 80B20000
    addiu   t0, t0, %lo(func_80B23758) ## t0 = 80B23758
    jr      $ra                        
    sw      t0, 0x013C(a0)             ## 0000013C
lbl_80B234E0:
    addiu   t1, t1, %lo(func_80B234F0) ## t1 = 80B234F0
    sw      t1, 0x013C(a0)             ## 0000013C
    jr      $ra                        
    nop


func_80B234F0:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    lw      t7, 0x1C44(t6)             ## 00001C44
    sw      t7, 0x002C($sp)            
    lh      t8, 0x0148(s0)             ## 00000148
    lh      a2, 0x0142(s0)             ## 00000142
    addiu   t9, t8, 0x0001             ## t9 = 00000001
    bltz    a2, lbl_80B23560           
    sh      t9, 0x0148(s0)             ## 00000148
    lw      a0, 0x0034($sp)            
    jal     func_8002049C              
    or      a1, a2, $zero              ## a1 = 00000000
    beql    v0, $zero, lbl_80B23564    
    or      a0, s0, $zero              ## a0 = 00000000
    lbu     t0, 0x014A(s0)             ## 0000014A
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    bnel    t0, $zero, lbl_80B23660    
    lw      $ra, 0x0024($sp)           
    lw      t1, 0x0004(s0)             ## 00000004
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    sb      t3, 0x014A(s0)             ## 0000014A
    and     t2, t1, $at                
    beq     $zero, $zero, lbl_80B2365C 
    sw      t2, 0x0004(s0)             ## 00000004
lbl_80B23560:
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B23564:
    jal     func_80022930              
    lw      a1, 0x0034($sp)            
    beq     v0, $zero, lbl_80B235AC    
    lui     $at, 0x4220                ## $at = 42200000
    lh      a2, 0x0142(s0)             ## 00000142
    bltz    a2, lbl_80B2359C           
    nop
    lh      t4, 0x0144(s0)             ## 00000144
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    lw      a0, 0x0034($sp)            
    beq     t4, $at, lbl_80B2359C      
    nop
    jal     func_800204D0              
    or      a1, a2, $zero              ## a1 = 00000000
lbl_80B2359C:
    lui     t5, %hi(func_80B234A0)     ## t5 = 80B20000
    addiu   t5, t5, %lo(func_80B234A0) ## t5 = 80B234A0
    beq     $zero, $zero, lbl_80B2365C 
    sw      t5, 0x013C(s0)             ## 0000013C
lbl_80B235AC:
    lh      t6, 0x008A(s0)             ## 0000008A
    lh      t7, 0x0032(s0)             ## 00000032
    mtc1    $at, $f4                   ## $f4 = 0.00
    lw      t8, 0x002C($sp)            
    subu    v0, t6, t7                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80B235DC           
    subu    v1, $zero, v0              
    sll     v1, v0, 16                 
    beq     $zero, $zero, lbl_80B235E4 
    sra     v1, v1, 16                 
lbl_80B235DC:
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
lbl_80B235E4:
    lwc1    $f2, 0x014C(s0)            ## 0000014C
    lwc1    $f8, 0x0090(s0)            ## 00000090
    add.s   $f6, $f4, $f2              
    c.lt.s  $f6, $f8                   
    nop
    bc1tl   lbl_80B23660               
    lw      $ra, 0x0024($sp)           
    lwc1    $f10, 0x0028(t8)           ## 00000028
    lwc1    $f16, 0x0028(s0)           ## 00000028
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f12                  ## $f12 = 100.00
    sub.s   $f0, $f10, $f16            
    slti    $at, v1, 0x4000            
    abs.s   $f0, $f0                   
    c.lt.s  $f12, $f0                  
    nop
    bc1tl   lbl_80B23660               
    lw      $ra, 0x0024($sp)           
    beq     $at, $zero, lbl_80B2365C   
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f18                  ## $f18 = 50.00
    sh      $zero, 0x0148(s0)          ## 00000148
    mfc1    a3, $f12                   
    add.s   $f4, $f2, $f18             
    sw      $zero, 0x0010($sp)         
    lw      a1, 0x0034($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    mfc1    a2, $f4                    
    jal     func_80022960              
    nop
lbl_80B2365C:
    lw      $ra, 0x0024($sp)           
lbl_80B23660:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B23670:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lw      a0, 0x002C($sp)            
    addiu   a0, a0, 0x20D8             ## a0 = 000020D8
    jal     func_800DD464              
    sw      a0, 0x0020($sp)            
    beq     v0, $zero, lbl_80B236D8    
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    beq     v0, $at, lbl_80B236AC      
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bnel    v0, $at, lbl_80B23748      
    lw      $ra, 0x001C($sp)           
lbl_80B236AC:
    jal     func_800D6110              
    lw      a0, 0x002C($sp)            
    beql    v0, $zero, lbl_80B23748    
    lw      $ra, 0x001C($sp)           
    jal     func_800DD464              
    lw      a0, 0x0020($sp)            
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    bnel    v0, $at, lbl_80B236DC      
    lh      a1, 0x0142(s0)             ## 00000142
    jal     func_800D6218              
    lw      a0, 0x002C($sp)            
lbl_80B236D8:
    lh      a1, 0x0142(s0)             ## 00000142
lbl_80B236DC:
    bltzl   a1, lbl_80B23700           
    lh      t7, 0x0144(s0)             ## 00000144
    lh      t6, 0x0144(s0)             ## 00000144
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    beql    t6, $at, lbl_80B23700      
    lh      t7, 0x0144(s0)             ## 00000144
    jal     func_800204D0              
    lw      a0, 0x002C($sp)            
    lh      t7, 0x0144(s0)             ## 00000144
lbl_80B23700:
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    bne     t7, $at, lbl_80B23714      
    or      a1, $zero, $zero           ## a1 = 00000000
    sb      t8, 0x014A(s0)             ## 0000014A
lbl_80B23714:
    lw      t9, 0x0004(s0)             ## 00000004
    addiu   $at, $zero, 0xFFEE         ## $at = FFFFFFEE
    addiu   a2, $zero, 0x0007          ## a2 = 00000007
    and     t0, t9, $at                
    sw      t0, 0x0004(s0)             ## 00000004
    jal     func_800218EC              
    lw      a0, 0x002C($sp)            
    lui     t2, %hi(func_80B23758)     ## t2 = 80B20000
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    addiu   t2, t2, %lo(func_80B23758) ## t2 = 80B23758
    sh      t1, 0x0146(s0)             ## 00000146
    sw      t2, 0x013C(s0)             ## 0000013C
    lw      $ra, 0x001C($sp)           
lbl_80B23748:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B23758:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lw      t6, 0x0024($sp)            
    lh      t7, 0x0148(a3)             ## 00000148
    lh      a2, 0x0142(a3)             ## 00000142
    lw      v1, 0x1C44(t6)             ## 00001C44
    addiu   t8, t7, 0x0001             ## t8 = 00000001
    bltz    a2, lbl_80B237CC           
    sh      t8, 0x0148(a3)             ## 00000148
    lw      a0, 0x0024($sp)            
    or      a1, a2, $zero              ## a1 = 00000000
    sw      v1, 0x001C($sp)            
    jal     func_8002049C              
    sw      a3, 0x0020($sp)            
    lw      v1, 0x001C($sp)            
    beq     v0, $zero, lbl_80B237CC    
    lw      a3, 0x0020($sp)            
    lbu     t9, 0x014A(a3)             ## 0000014A
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    bnel    t9, $zero, lbl_80B2389C    
    lw      $ra, 0x0014($sp)           
    lw      t0, 0x0004(a3)             ## 00000004
    addiu   t2, $zero, 0x0001          ## t2 = 00000001
    sb      t2, 0x014A(a3)             ## 0000014A
    and     t1, t0, $at                
    beq     $zero, $zero, lbl_80B23898 
    sw      t1, 0x0004(a3)             ## 00000004
lbl_80B237CC:
    lh      t3, 0x0144(a3)             ## 00000144
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    bnel    t3, $at, lbl_80B237E8      
    lui     $at, 0x4220                ## $at = 42200000
    lbu     t4, 0x014A(a3)             ## 0000014A
    bne     t4, $zero, lbl_80B23898    
    lui     $at, 0x4220                ## $at = 42200000
lbl_80B237E8:
    mtc1    $at, $f6                   ## $f6 = 40.00
    lwc1    $f8, 0x014C(a3)            ## 0000014C
    lwc1    $f4, 0x0090(a3)            ## 00000090
    add.s   $f10, $f6, $f8             
    c.lt.s  $f4, $f10                  
    nop
    bc1fl   lbl_80B23898               
    sh      $zero, 0x0146(a3)          ## 00000146
    lwc1    $f16, 0x0028(v1)           ## 00000028
    lwc1    $f18, 0x0028(a3)           ## 00000028
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f6                   ## $f6 = 100.00
    sub.s   $f0, $f16, $f18            
    lw      a0, 0x0024($sp)            
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80B23898               
    sh      $zero, 0x0146(a3)          ## 00000146
    jal     func_8009CB08              
    sw      a3, 0x0020($sp)            
    bne     v0, $zero, lbl_80B23894    
    lw      a3, 0x0020($sp)            
    lh      t5, 0x0146(a3)             ## 00000146
    sh      $zero, 0x0148(a3)          ## 00000148
    lw      a0, 0x0024($sp)            
    bne     t5, $zero, lbl_80B23898    
    or      a2, $zero, $zero           ## a2 = 00000000
    lhu     a1, 0x010E(a3)             ## 0000010E
    jal     func_800DCE14              
    sw      a3, 0x0020($sp)            
    lw      a0, 0x0024($sp)            
    or      a1, $zero, $zero           ## a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0008          ## a2 = 00000008
    lw      a3, 0x0020($sp)            
    lui     t8, %hi(func_80B23670)     ## t8 = 80B20000
    addiu   t8, t8, %lo(func_80B23670) ## t8 = 80B23670
    lw      t6, 0x0004(a3)             ## 00000004
    sw      t8, 0x013C(a3)             ## 0000013C
    ori     t7, t6, 0x0011             ## t7 = 00000011
    beq     $zero, $zero, lbl_80B23898 
    sw      t7, 0x0004(a3)             ## 00000004
lbl_80B23894:
    sh      $zero, 0x0146(a3)          ## 00000146
lbl_80B23898:
    lw      $ra, 0x0014($sp)           
lbl_80B2389C:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B238A8:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80B238B8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      t9, 0x013C(a0)             ## 0000013C
    jalr    $ra, t9                    
    nop
    lw      a0, 0x0018($sp)            
    lwc1    $f4, 0x0158(a0)            ## 00000158
    lw      a1, 0x0150(a0)             ## 00000150
    jal     func_80020F04              
    swc1    $f4, 0x0028(a0)            ## 00000028
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_80B23900: .word 0x01850700, 0x08000009, 0x00010000, 0x00000160
.word func_80B23310
.word func_80B23300
.word func_80B238B8
.word 0x00000000
var_80B23920: .word 0x00060000, 0x00010002, 0x00030004, 0x00050000

.section .rodata


