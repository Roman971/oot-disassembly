#include <mips.h>
.set noreorder
.set noat

.section .text
func_8096E5E0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    jal     func_8008D6D0              
    addiu   a0, a2, 0x013C             ## a0 = 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096E604:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lh      t6, 0x0182(a2)             ## 00000182
    addiu   v1, a2, 0x0182             ## v1 = 00000182
    or      v0, $zero, $zero           ## v0 = 00000000
    bne     t6, $zero, lbl_8096E62C    
    addiu   a0, $zero, 0x003C          ## a0 = 0000003C
    beq     $zero, $zero, lbl_8096E63C 
    addiu   v1, a2, 0x0182             ## v1 = 00000182
lbl_8096E62C:
    lh      t7, 0x0000(v1)             ## 00000182
    addiu   t8, t7, 0xFFFF             ## t8 = FFFFFFFF
    sh      t8, 0x0000(v1)             ## 00000182
    lh      v0, 0x0000(v1)             ## 00000182
lbl_8096E63C:
    bne     v0, $zero, lbl_8096E65C    
    addiu   a1, $zero, 0x003C          ## a1 = 0000003C
    sw      v1, 0x001C($sp)            
    jal     func_80063BF0              
    sw      a2, 0x0038($sp)            
    lw      v1, 0x001C($sp)            
    lw      a2, 0x0038($sp)            
    sh      v0, 0x0000(v1)             ## 00000000
lbl_8096E65C:
    lh      t9, 0x0000(v1)             ## 00000000
    addiu   v0, a2, 0x0180             ## v0 = 00000180
    sh      t9, 0x0000(v0)             ## 00000180
    lh      t0, 0x0000(v0)             ## 00000180
    slti    $at, t0, 0x0003            
    bnel    $at, $zero, lbl_8096E680   
    lw      $ra, 0x0014($sp)           
    sh      $zero, 0x0000(v0)          ## 00000180
    lw      $ra, 0x0014($sp)           
lbl_8096E680:
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096E68C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    lui     $at, 0x41F0                ## $at = 41F00000
    sw      a1, 0x0024($sp)            
    mtc1    $at, $f0                   ## $f0 = 30.00
    or      a1, a0, $zero              ## a1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    mfc1    a3, $f0                    
    addiu   t6, $zero, 0x0005          ## t6 = 00000005
    sw      t6, 0x0014($sp)            
    lw      a0, 0x0024($sp)            
    lui     a2, 0x4296                 ## a2 = 42960000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096E6D4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              ## a1 = 00000000
    jal     func_8008C9C0              
    addiu   a0, a1, 0x013C             ## a0 = 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096E6F8:
    sw      a2, 0x0008($sp)            
    andi    a2, a2, 0xFFFF             ## a2 = 00000000
    sw      a0, 0x0000($sp)            
    lbu     t6, 0x1D6C(a1)             ## 00001D6C
    sll     t7, a3,  2                 
    addu    t8, a1, t7                 
    beql    t6, $zero, lbl_8096E73C    
    or      v0, $zero, $zero           ## v0 = 00000000
    lw      v0, 0x1D8C(t8)             ## 00001D8C
    beql    v0, $zero, lbl_8096E73C    
    or      v0, $zero, $zero           ## v0 = 00000000
    lhu     t9, 0x0000(v0)             ## 00000000
    bnel    a2, t9, lbl_8096E73C       
    or      v0, $zero, $zero           ## v0 = 00000000
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_8096E738:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_8096E73C:
    jr      $ra                        
    nop


func_8096E744:
    sw      a2, 0x0008($sp)            
    andi    a2, a2, 0xFFFF             ## a2 = 00000000
    sw      a0, 0x0000($sp)            
    lbu     t6, 0x1D6C(a1)             ## 00001D6C
    sll     t7, a3,  2                 
    addu    t8, a1, t7                 
    beql    t6, $zero, lbl_8096E788    
    or      v0, $zero, $zero           ## v0 = 00000000
    lw      v0, 0x1D8C(t8)             ## 00001D8C
    beql    v0, $zero, lbl_8096E788    
    or      v0, $zero, $zero           ## v0 = 00000000
    lhu     t9, 0x0000(v0)             ## 00000000
    beql    a2, t9, lbl_8096E788       
    or      v0, $zero, $zero           ## v0 = 00000000
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_8096E784:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_8096E788:
    jr      $ra                        
    nop


func_8096E790:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lw      a1, 0x0028($sp)            
    lui     a2, 0x0600                 ## a2 = 06000000
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   a3, a3, 0x0A3C             ## a3 = 06000A3C
    addiu   a2, a2, 0x7B38             ## a2 = 06007B38
    lw      a0, 0x002C($sp)            
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0018($sp)         
    jal     func_8008C788              
    addiu   a1, a1, 0x013C             ## a1 = 0000013C
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096E7DC:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0030($sp)            
    or      s0, a1, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a0, 0x0038($sp)            
    lui     t6, 0x8012                 ## t6 = 80120000
    lw      t6, -0x46D0(t6)            ## 8011B930
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    lh      v0, 0x00A4(s0)             ## 000000A4
    bne     t6, $at, lbl_8096E8A8      
    addiu   $at, $zero, 0x0044         ## $at = 00000044
    bnel    v0, $at, lbl_8096E8AC      
    lw      $ra, 0x0034($sp)           
    lbu     t7, 0x1D6C(s0)             ## 00001D6C
    beql    t7, $zero, lbl_8096E8AC    
    lw      $ra, 0x0034($sp)           
    lw      v0, 0x1DA4(s0)             ## 00001DA4
    beql    v0, $zero, lbl_8096E8AC    
    lw      $ra, 0x0034($sp)           
    lhu     t8, 0x0000(v0)             ## 00000000
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    lw      t9, 0x0038($sp)            
    bnel    t8, $at, lbl_8096E8AC      
    lw      $ra, 0x0034($sp)           
    lw      t0, 0x0198(t9)             ## 00000198
    lui     $at, 0x42A0                ## $at = 42A00000
    addiu   a0, s0, 0x1C24             ## a0 = 00001C24
    bne     t0, $zero, lbl_8096E8A8    
    or      a1, s0, $zero              ## a1 = 00000000
    lw      v0, 0x1C44(s0)             ## 00001C44
    mtc1    $at, $f6                   ## $f6 = 80.00
    addiu   t1, $zero, 0x000E          ## t1 = 0000000E
    lwc1    $f0, 0x0024(v0)            ## 00000024
    lwc1    $f4, 0x0028(v0)            ## 00000028
    lwc1    $f12, 0x002C(v0)           ## 0000002C
    mfc1    a3, $f0                    
    add.s   $f2, $f4, $f6              
    sw      t1, 0x0024($sp)            
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    swc1    $f2, 0x0010($sp)           
    sw      $zero, 0x0018($sp)         
    addiu   a2, $zero, 0x008B          ## a2 = 0000008B
    jal     func_80025110              ## ActorSpawn
    swc1    $f12, 0x0014($sp)          
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x006B          ## a1 = 0000006B
    lw      t3, 0x0038($sp)            
    addiu   t2, $zero, 0x0001          ## t2 = 00000001
    sw      t2, 0x0198(t3)             ## 00000198
lbl_8096E8A8:
    lw      $ra, 0x0034($sp)           
lbl_8096E8AC:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096E8BC:
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    lh      v1, 0x0032(a0)             ## 00000032
    lw      v0, 0x1C44(a1)             ## 00001C44
    ori     $at, $zero, 0x8000         ## $at = 00008000
    addu    v1, v1, $at                
    sll     v1, v1, 16                 
    sw      a2, 0x0188(a0)             ## 00000188
    sw      a2, 0x0184(a0)             ## 00000184
    sra     v1, v1, 16                 
    sh      v1, 0x00B6(v0)             ## 000000B6
    sh      v1, 0x0032(v0)             ## 00000032
    jr      $ra                        
    nop


func_8096E8F0:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lbu     t6, 0x1D6C(a1)             ## 00001D6C
    beql    t6, $zero, lbl_8096E978    
    lw      $ra, 0x0024($sp)           
    lw      v0, 0x1D8C(a1)             ## 00001D8C
    beql    v0, $zero, lbl_8096E978    
    lw      $ra, 0x0024($sp)           
    lhu     t7, 0x0000(v0)             ## 00000000
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    lui     a0, 0x0600                 ## a0 = 06000000
    bnel    t7, $at, lbl_8096E978      
    lw      $ra, 0x0024($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0x040C             ## a0 = 0600040C
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t8, $zero, 0x0002          ## t8 = 00000002
    mfc1    a3, $f0                    
    sw      t8, 0x0014($sp)            
    addiu   a1, a1, 0x040C             ## a1 = 0600040C
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t0, 0x0028($sp)            
    addiu   t9, $zero, 0x0002          ## t9 = 00000002
    sw      t9, 0x0184(t0)             ## 00000184
    lw      $ra, 0x0024($sp)           
lbl_8096E978:
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096E984:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    beq     a1, $zero, lbl_8096E9E0    
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x0830             ## a0 = 06000830
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x0830             ## a1 = 06000830
    lui     a2, 0x3F80                 ## a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t7, 0x0028($sp)            
    addiu   t6, $zero, 0x0003          ## t6 = 00000003
    sw      t6, 0x0184(t7)             ## 00000184
lbl_8096E9E0:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096E9F0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_8096E8BC              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096EA10:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8096E68C              
    lw      a1, 0x001C($sp)            
    jal     func_8096E6D4              
    lw      a0, 0x0018($sp)            
    jal     func_8096E604              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8096E8F0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096EA58:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    jal     func_8096E68C              
    lw      a0, 0x0020($sp)            
    jal     func_8096E6D4              
    lw      a0, 0x0020($sp)            
    sw      v0, 0x001C($sp)            
    jal     func_8096E604              
    lw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_8096E984              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096EA9C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8096E68C              
    lw      a1, 0x001C($sp)            
    jal     func_8096E6D4              
    lw      a0, 0x0018($sp)            
    jal     func_8096E604              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8096E7DC              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096EAE4:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lw      a1, 0x0028($sp)            
    lui     a2, 0x0600                 ## a2 = 06000000
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   a3, a3, 0x0A3C             ## a3 = 06000A3C
    addiu   a2, a2, 0x7B38             ## a2 = 06007B38
    lw      a0, 0x002C($sp)            
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0018($sp)         
    jal     func_8008C788              
    addiu   a1, a1, 0x013C             ## a1 = 0000013C
    lw      v0, 0x0028($sp)            
    addiu   t6, $zero, 0x0004          ## t6 = 00000004
    sw      t6, 0x0184(v0)             ## 00000184
    sb      $zero, 0x00C8(v0)          ## 000000C8
    lw      $ra, 0x0024($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_8096EB3C:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    or      a2, a1, $zero              ## a2 = 00000000
    or      a1, a0, $zero              ## a1 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a0, 0x0038($sp)            
    lwc1    $f4, 0x0024(a1)            ## 00000024
    lui     t6, 0x8012                 ## t6 = 80120000
    lw      t6, -0x4600(t6)            ## 8011BA00
    swc1    $f4, 0x0010($sp)           
    lui     $at, 0x41B0                ## $at = 41B00000
    lh      t7, 0x1478(t6)             ## 80121478
    mtc1    $at, $f10                  ## $f10 = 22.00
    lwc1    $f18, 0x0028(a1)           ## 00000028
    mtc1    t7, $f6                    ## $f6 = 0.00
    addiu   t8, $zero, 0x0005          ## t8 = 00000005
    addiu   a0, a2, 0x1C24             ## a0 = 00001C24
    cvt.s.w $f8, $f6                   
    addiu   a3, $zero, 0x00F5          ## a3 = 000000F5
    add.s   $f16, $f8, $f10            
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0014($sp)           
    lwc1    $f6, 0x002C(a1)            ## 0000002C
    sw      t8, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    jal     func_800253F0              
    swc1    $f6, 0x0018($sp)           
    lw      $ra, 0x0034($sp)           
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096EBBC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    addiu   a2, $zero, 0x0004          ## a2 = 00000004
    or      a3, $zero, $zero           ## a3 = 00000000
    jal     func_8096E6F8              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_8096EBFC    
    lw      a0, 0x0018($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    addiu   t6, $zero, 0x0005          ## t6 = 00000005
    addiu   t7, $zero, 0x0002          ## t7 = 00000002
    sw      t6, 0x0184(a0)             ## 00000184
    sw      t7, 0x0188(a0)             ## 00000188
    sw      $zero, 0x0190(a0)          ## 00000190
    sb      $zero, 0x00C8(a0)          ## 000000C8
    swc1    $f4, 0x018C(a0)            ## 0000018C
lbl_8096EBFC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096EC0C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    addiu   a2, $zero, 0x0004          ## a2 = 00000004
    or      a3, $zero, $zero           ## a3 = 00000000
    jal     func_8096E6F8              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_8096ECBC    
    lw      a0, 0x0018($sp)            
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f2                   ## $f2 = 10.00
    lui     $at, 0x3F80                ## $at = 3F800000
    addiu   v0, a0, 0x018C             ## v0 = 0000018C
    lwc1    $f4, 0x0000(v0)            ## 0000018C
    mtc1    $at, $f6                   ## $f6 = 1.00
    lui     a1, 0x8012                 ## a1 = 80120000
    addiu   a1, a1, 0xBA00             ## a1 = 8011BA00
    add.s   $f8, $f4, $f6              
    addiu   t8, $zero, 0x0007          ## t8 = 00000007
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    swc1    $f8, 0x0000(v0)            ## 0000018C
    lw      t6, 0x0000(a1)             ## 8011BA00
    lwc1    $f0, 0x0000(v0)            ## 0000018C
    lh      t7, 0x145E(t6)             ## 0000145E
    mtc1    t7, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    add.s   $f18, $f16, $f2            
    c.le.s  $f18, $f0                  
    nop
    bc1f    lbl_8096ED04               
    nop
    sw      t8, 0x0184(a0)             ## 00000184
    sw      t9, 0x0188(a0)             ## 00000188
    lw      t0, 0x0000(a1)             ## 8011BA00
    addiu   v1, $zero, 0x00FF          ## v1 = 000000FF
    lh      t1, 0x145E(t0)             ## 0000145E
    mtc1    t1, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    add.s   $f8, $f6, $f2              
    swc1    $f8, 0x0000(v0)            ## 0000018C
    sw      v1, 0x0190(a0)             ## 00000190
    beq     $zero, $zero, lbl_8096ED50 
    sb      v1, 0x00C8(a0)             ## 000000C8
lbl_8096ECBC:
    addiu   v0, a0, 0x018C             ## v0 = 0000018C
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f16                  ## $f16 = 1.00
    lwc1    $f10, 0x0000(v0)           ## 0000018C
    mtc1    $zero, $f2                 ## $f2 = 0.00
    sub.s   $f18, $f10, $f16           
    swc1    $f18, 0x0000(v0)           ## 0000018C
    lwc1    $f0, 0x0000(v0)            ## 0000018C
    c.le.s  $f0, $f2                   
    nop
    bc1f    lbl_8096ED04               
    addiu   t2, $zero, 0x0004          ## t2 = 00000004
    sw      t2, 0x0184(a0)             ## 00000184
    sw      $zero, 0x0188(a0)          ## 00000188
    swc1    $f2, 0x0000(v0)            ## 0000018C
    sw      $zero, 0x0190(a0)          ## 00000190
    beq     $zero, $zero, lbl_8096ED50 
    sb      $zero, 0x00C8(a0)          ## 000000C8
lbl_8096ED04:
    lui     a1, 0x8012                 ## a1 = 80120000
    addiu   a1, a1, 0xBA00             ## a1 = 8011BA00
    lw      t3, 0x0000(a1)             ## 8011BA00
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f2                   ## $f2 = 10.00
    lh      t4, 0x145E(t3)             ## 0000145E
    lui     $at, 0x437F                ## $at = 437F0000
    mtc1    $at, $f16                  ## $f16 = 255.00
    mtc1    t4, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    add.s   $f8, $f6, $f2              
    div.s   $f10, $f0, $f8             
    mul.s   $f18, $f10, $f16           
    trunc.w.s $f4, $f18                  
    mfc1    v0, $f4                    
    nop
    sw      v0, 0x0190(a0)             ## 00000190
    sb      v0, 0x00C8(a0)             ## 000000C8
lbl_8096ED50:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096ED60:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x0034($sp)            
    addiu   a2, $zero, 0x0003          ## a2 = 00000003
    jal     func_8096E6F8              
    or      a3, $zero, $zero           ## a3 = 00000000
    beq     v0, $zero, lbl_8096EDE4    
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x040C             ## a0 = 0600040C
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f8                   ## $f8 = -8.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x040C             ## a1 = 0600040C
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    addiu   t7, $zero, 0x0006          ## t7 = 00000006
    sw      t7, 0x0184(s0)             ## 00000184
    beq     $zero, $zero, lbl_8096EE5C 
    lw      $ra, 0x002C($sp)           
lbl_8096EDE4:
    lw      a1, 0x0034($sp)            
    addiu   a2, $zero, 0x0004          ## a2 = 00000004
    jal     func_8096E744              
    or      a3, $zero, $zero           ## a3 = 00000000
    beq     v0, $zero, lbl_8096EE58    
    addiu   t8, $zero, 0x0005          ## t8 = 00000005
    addiu   t9, $zero, 0x0002          ## t9 = 00000002
    sw      t8, 0x0184(s0)             ## 00000184
    sw      t9, 0x0188(s0)             ## 00000188
    lui     t0, 0x8012                 ## t0 = 80120000
    lw      t0, -0x4600(t0)            ## 8011BA00
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f18                  ## $f18 = 10.00
    lh      t1, 0x145E(t0)             ## 8012145E
    lw      t3, 0x0194(s0)             ## 00000194
    addiu   t2, $zero, 0x00FF          ## t2 = 000000FF
    mtc1    t1, $f10                   ## $f10 = 0.00
    sw      t2, 0x0190(s0)             ## 00000190
    or      a0, s0, $zero              ## a0 = 00000000
    cvt.s.w $f16, $f10                 
    add.s   $f4, $f16, $f18            
    bne     t3, $zero, lbl_8096EE50    
    swc1    $f4, 0x018C(s0)            ## 0000018C
    jal     func_8096EB3C              
    lw      a1, 0x0034($sp)            
    addiu   t4, $zero, 0x0001          ## t4 = 00000001
    sw      t4, 0x0194(s0)             ## 00000194
lbl_8096EE50:
    addiu   t5, $zero, 0x00FF          ## t5 = 000000FF
    sb      t5, 0x00C8(s0)             ## 000000C8
lbl_8096EE58:
    lw      $ra, 0x002C($sp)           
lbl_8096EE5C:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096EE6C:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    beq     a1, $zero, lbl_8096EEC8    
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x0830             ## a0 = 06000830
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x0830             ## a1 = 06000830
    lui     a2, 0x3F80                 ## a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t7, 0x0028($sp)            
    addiu   t6, $zero, 0x0007          ## t6 = 00000007
    sw      t6, 0x0184(t7)             ## 00000184
lbl_8096EEC8:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096EED8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_8096EBBC              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096EEF8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8096E68C              
    lw      a1, 0x001C($sp)            
    jal     func_8096E6D4              
    lw      a0, 0x0018($sp)            
    jal     func_8096E604              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8096EC0C              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096EF40:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    jal     func_8096E68C              
    lw      a0, 0x0020($sp)            
    jal     func_8096E6D4              
    lw      a0, 0x0020($sp)            
    sw      v0, 0x001C($sp)            
    jal     func_8096E604              
    lw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_8096EE6C              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096EF84:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8096E68C              
    lw      a1, 0x001C($sp)            
    jal     func_8096E6D4              
    lw      a0, 0x0018($sp)            
    jal     func_8096E604              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8096ED60              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096EFCC:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0040($sp)            
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0040($sp)            
    lui     t1, %hi(var_8096F360)      ## t1 = 80970000
    lw      t8, 0x0044($sp)            
    lh      v0, 0x0180(t6)             ## 00000180
    sll     t7, v0,  2                 
    addu    t1, t1, t7                 
    lw      t1, %lo(var_8096F360)(t1)  
    lw      a0, 0x0000(t8)             ## 00000000
    sw      t1, 0x0030($sp)            
    jal     func_8007E2C0              
    sw      a0, 0x0028($sp)            
    lw      v1, 0x0028($sp)            
    lw      t1, 0x0030($sp)            
    lui     t2, 0x8000                 ## t2 = 80000000
    lw      t3, 0x0040($sp)            
    lw      v0, 0x02D0(v1)             ## 000002D0
    sll     t5, t1,  4                 
    srl     t6, t5, 28                 
    lui     t4, 0xDB06                 ## t4 = DB060000
    lui     t8, 0x8012                 ## t8 = 80120000
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(v1)             ## 000002D0
    addiu   t8, t8, 0x0C38             ## t8 = 80120C38
    ori     t4, t4, 0x0020             ## t4 = DB060020
    sll     t7, t6,  2                 
    addu    a1, t7, t8                 
    sw      t4, 0x0000(v0)             ## 00000000
    lw      t9, 0x0000(a1)             ## 00000000
    lui     $at, 0x00FF                ## $at = 00FF0000
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     a2, t1, $at                
    addu    t4, t9, a2                 
    addu    t5, t4, t2                 
    sw      t5, 0x0004(v0)             ## 00000004
    lw      v0, 0x02D0(v1)             ## 000002D0
    lui     t7, 0xDB06                 ## t7 = DB060000
    ori     t7, t7, 0x0024             ## t7 = DB060024
    addiu   t6, v0, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(v1)             ## 000002D0
    sw      t7, 0x0000(v0)             ## 00000000
    lw      t8, 0x0000(a1)             ## 00000000
    addiu   t0, t3, 0x013C             ## t0 = 0000013C
    addu    t9, t8, a2                 
    addu    t4, t9, t2                 
    sw      t4, 0x0004(v0)             ## 00000004
    lw      v0, 0x02D0(v1)             ## 000002D0
    lui     t6, 0xFB00                 ## t6 = FB000000
    lui     t4, 0xDB06                 ## t4 = DB060000
    addiu   t5, v0, 0x0008             ## t5 = 00000008
    sw      t5, 0x02D0(v1)             ## 000002D0
    sw      t6, 0x0000(v0)             ## 00000000
    lw      t7, 0x0190(t3)             ## 00000190
    ori     t4, t4, 0x0030             ## t4 = DB060030
    andi    t8, t7, 0x00FF             ## t8 = 00000024
    sw      t8, 0x0004(v0)             ## 00000004
    lw      v0, 0x02D0(v1)             ## 000002D0
    lui     t5, 0x800F                 ## t5 = 800F0000
    addiu   t5, t5, 0x8510             ## t5 = 800E8510
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(v1)             ## 000002D0
    sw      t5, 0x0004(v0)             ## 00000004
    sw      t4, 0x0000(v0)             ## 00000000
    lw      a1, 0x0004(t0)             ## 00000140
    lw      a2, 0x0020(t0)             ## 0000015C
    lbu     a3, 0x0002(t0)             ## 0000013E
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0010($sp)         
    lw      t6, 0x02D0(v1)             ## 000002D0
    sw      v1, 0x0028($sp)            
    lw      a0, 0x0044($sp)            
    jal     func_8008A88C              
    sw      t6, 0x001C($sp)            
    lw      v1, 0x0028($sp)            
    sw      v0, 0x02D0(v1)             ## 000002D0
    lw      $ra, 0x0024($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_8096F114:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x0184(a0)             ## 00000184
    bltz    v0, lbl_8096F14C           
    slti    $at, v0, 0x0008            
    beq     $at, $zero, lbl_8096F14C   
    sll     t6, v0,  2                 
    lui     v1, %hi(var_8096F36C)      ## v1 = 80970000
    addu    v1, v1, t6                 
    lw      v1, %lo(var_8096F36C)(v1)  
    beql    v1, $zero, lbl_8096F150    
    lw      $ra, 0x0014($sp)           
    jalr    $ra, v1                    
    nop
lbl_8096F14C:
    lw      $ra, 0x0014($sp)           
lbl_8096F150:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096F15C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    lui     a3, 0x4248                 ## a3 = 42480000
    jal     func_8001EC20              
    addiu   a0, a0, 0x00B4             ## a0 = 000000B4
    lw      a0, 0x0018($sp)            
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    lw      a1, 0x001C($sp)            
    lh      t6, 0x001C(a0)             ## 0000001C
    bne     t6, $at, lbl_8096F1B0      
    nop
    jal     func_8096EAE4              
    nop
    beq     $zero, $zero, lbl_8096F1BC 
    lw      $ra, 0x0014($sp)           
lbl_8096F1B0:
    jal     func_8096E790              
    nop
    lw      $ra, 0x0014($sp)           
lbl_8096F1BC:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096F1C8:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_8096F1D8:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0040($sp)            
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0040($sp)            
    lui     t1, %hi(var_8096F360)      ## t1 = 80970000
    lw      t8, 0x0044($sp)            
    lh      v0, 0x0180(t6)             ## 00000180
    sll     t7, v0,  2                 
    addu    t1, t1, t7                 
    lw      t1, %lo(var_8096F360)(t1)  
    lw      a0, 0x0000(t8)             ## 00000000
    sw      t1, 0x0030($sp)            
    jal     func_8007E298              
    sw      a0, 0x0028($sp)            
    lw      v1, 0x0028($sp)            
    lw      t1, 0x0030($sp)            
    lui     t3, 0x8000                 ## t3 = 80000000
    lw      t4, 0x0040($sp)            
    lw      v0, 0x02C0(v1)             ## 000002C0
    sll     t6, t1,  4                 
    srl     t7, t6, 28                 
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02C0(v1)             ## 000002C0
    lui     t9, 0x8012                 ## t9 = 80120000
    lui     t5, 0xDB06                 ## t5 = DB060000
    ori     t5, t5, 0x0020             ## t5 = DB060020
    addiu   t9, t9, 0x0C38             ## t9 = 80120C38
    sll     t8, t7,  2                 
    addu    a1, t8, t9                 
    sw      t5, 0x0000(v0)             ## 00000000
    lw      t5, 0x0000(a1)             ## 00000000
    lui     $at, 0x00FF                ## $at = 00FF0000
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     a2, t1, $at                
    addu    t6, t5, a2                 
    addu    t7, t6, t3                 
    sw      t7, 0x0004(v0)             ## 00000004
    lw      v0, 0x02C0(v1)             ## 000002C0
    lui     t9, 0xDB06                 ## t9 = DB060000
    ori     t9, t9, 0x0024             ## t9 = DB060024
    addiu   t8, v0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02C0(v1)             ## 000002C0
    sw      t9, 0x0000(v0)             ## 00000000
    lw      t5, 0x0000(a1)             ## 00000000
    addiu   t0, t4, 0x013C             ## t0 = 0000013C
    addu    t6, t5, a2                 
    addu    t7, t6, t3                 
    sw      t7, 0x0004(v0)             ## 00000004
    lw      v0, 0x02C0(v1)             ## 000002C0
    lui     t9, 0xFB00                 ## t9 = FB000000
    addiu   t5, $zero, 0x00FF          ## t5 = 000000FF
    addiu   t8, v0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02C0(v1)             ## 000002C0
    sw      t5, 0x0004(v0)             ## 00000004
    sw      t9, 0x0000(v0)             ## 00000000
    lw      v0, 0x02C0(v1)             ## 000002C0
    lui     t7, 0xDB06                 ## t7 = DB060000
    lui     t8, 0x800F                 ## t8 = 800F0000
    addiu   t6, v0, 0x0008             ## t6 = 00000008
    sw      t6, 0x02C0(v1)             ## 000002C0
    addiu   t8, t8, 0x8520             ## t8 = 800E8520
    ori     t7, t7, 0x0030             ## t7 = DB060030
    sw      t7, 0x0000(v0)             ## 00000000
    sw      t8, 0x0004(v0)             ## 00000004
    lw      a1, 0x0004(t0)             ## 00000140
    lw      a2, 0x0020(t0)             ## 0000015C
    lbu     a3, 0x0002(t0)             ## 0000013E
    sw      t4, 0x0018($sp)            
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0010($sp)         
    jal     func_80089D8C              
    lw      a0, 0x0044($sp)            
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096F30C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x0188(a0)             ## 00000188
    bltz    v0, lbl_8096F344           
    slti    $at, v0, 0x0003            
    beq     $at, $zero, lbl_8096F344   
    sll     t6, v0,  2                 
    lui     v1, %hi(var_8096F38C)      ## v1 = 80970000
    addu    v1, v1, t6                 
    lw      v1, %lo(var_8096F38C)(v1)  
    beql    v1, $zero, lbl_8096F348    
    lw      $ra, 0x0014($sp)           
    jalr    $ra, v1                    
    nop
lbl_8096F344:
    lw      $ra, 0x0014($sp)           
lbl_8096F348:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_8096F360: .word 0x06003620, 0x06003960, 0x06003B60
var_8096F36C: .word func_8096E9F0
.word func_8096EA10
.word func_8096EA58
.word func_8096EA9C
.word func_8096EED8
.word func_8096EEF8
.word func_8096EF40
.word func_8096EF84
var_8096F38C: .word func_8096F1C8
.word func_8096F1D8
.word func_8096EFCC
var_8096F398: .word 0x00A60400, 0x00000010, 0x00A70000, 0x0000019C
.word func_8096F15C
.word func_8096E5E0
.word func_8096F114
.word func_8096F30C
.word 0x00000000, 0x00000000

.section .rodata


