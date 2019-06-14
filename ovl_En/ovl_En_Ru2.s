#include <mips.h>
.set noreorder
.set noat

.section .text
func_809C78D0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a1, a2, 0x02B8             # a1 = 000002B8
    sw      a1, 0x0018($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_8004AB7C              
    sw      a2, 0x0020($sp)            
    lui     a3, %hi(var_809C9380)      # a3 = 809D0000
    lw      a1, 0x0018($sp)            
    lw      a2, 0x0020($sp)            
    addiu   a3, a3, %lo(var_809C9380)  # a3 = 809C9380
    jal     func_8004AC84              
    lw      a0, 0x0024($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809C791C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0034($sp)            
    addiu   a2, a0, 0x02B8             # a2 = 000002B8
    or      a1, a2, $zero              # a1 = 000002B8
    jal     func_80050B00              
    sw      a2, 0x0018($sp)            
    lw      a0, 0x0034($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0018($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at                
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_809C7960:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x02B8             # a1 = 000002B8
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C798C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x0296(a2)             # 00000296
    addiu   v1, a2, 0x0296             # v1 = 00000296
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t6, $zero, lbl_809C79B4    
    addiu   a0, $zero, 0x003C          # a0 = 0000003C
    beq     $zero, $zero, lbl_809C79C4 
    addiu   v1, a2, 0x0296             # v1 = 00000296
lbl_809C79B4:
    lh      t7, 0x0000(v1)             # 00000296
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0000(v1)             # 00000296
    lh      v0, 0x0000(v1)             # 00000296
lbl_809C79C4:
    bne     v0, $zero, lbl_809C79E4    
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    sw      v1, 0x001C($sp)            
    jal     func_80063BF0              
    sw      a2, 0x0038($sp)            
    lw      v1, 0x001C($sp)            
    lw      a2, 0x0038($sp)            
    sh      v0, 0x0000(v1)             # 00000000
lbl_809C79E4:
    lh      t9, 0x0000(v1)             # 00000000
    addiu   v0, a2, 0x0294             # v0 = 00000294
    sh      t9, 0x0000(v0)             # 00000294
    lh      t0, 0x0000(v0)             # 00000294
    slti    $at, t0, 0x0003            
    bnel    $at, $zero, lbl_809C7A08   
    lw      $ra, 0x0014($sp)           
    sh      $zero, 0x0000(v0)          # 00000294
    lw      $ra, 0x0014($sp)           
lbl_809C7A08:
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_809C7A14:
    lh      v1, 0x001C(a0)             # 0000001C
    sra     v1, v1,  8                 
    andi    v0, v1, 0x00FF             # v0 = 00000000
    jr      $ra                        
    nop


func_809C7A28:
    lh      v1, 0x001C(a0)             # 0000001C
    andi    v0, v1, 0x00FF             # v0 = 00000000
    jr      $ra                        
    nop


func_809C7A38:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    lui     $at, 0x41F0                # $at = 41F00000
    sw      a1, 0x0024($sp)            
    mtc1    $at, $f0                   # $f0 = 30.00
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    mfc1    a3, $f0                    
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      t6, 0x0014($sp)            
    lw      a0, 0x0024($sp)            
    lui     a2, 0x4296                 # a2 = 42960000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809C7A80:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              # a1 = 00000000
    jal     func_8008C9C0              
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C7AA4:
    lbu     t6, 0x1D6C(a0)             # 00001D6C
    sll     t7, a1,  2                 
    addu    t8, a0, t7                 
    beql    t6, $zero, lbl_809C7AC4    
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    lw      v0, 0x1D8C(t8)             # 00001D8C
lbl_809C7AC0:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809C7AC4:
    jr      $ra                        
    nop


func_809C7ACC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    sw      a2, 0x0020($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_809C7AA4              
    or      a1, a3, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_809C7B0C    
    lw      $ra, 0x0014($sp)           
    lhu     t6, 0x0022($sp)            
    lhu     t7, 0x0000(v0)             # 00000000
    bnel    t6, t7, lbl_809C7B10       
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_809C7B10 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809C7B0C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809C7B10:
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_809C7B18:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    sw      a2, 0x0020($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_809C7AA4              
    or      a1, a3, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_809C7B58    
    lw      $ra, 0x0014($sp)           
    lhu     t6, 0x0022($sp)            
    lhu     t7, 0x0000(v0)             # 00000000
    beql    t6, t7, lbl_809C7B5C       
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_809C7B5C 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809C7B58:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809C7B5C:
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_809C7B64:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lw      a0, 0x001C($sp)            
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_809C7AA4              
    sw      a3, 0x0018($sp)            
    beq     v0, $zero, lbl_809C7BD4    
    lw      a3, 0x0018($sp)            
    lw      t6, 0x000C(v0)             # 0000000C
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0024(a3)            # 00000024
    lw      t7, 0x0010(v0)             # 00000010
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0028(a3)           # 00000028
    lw      t8, 0x0014(v0)             # 00000014
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x002C(a3)           # 0000002C
    lh      v1, 0x0008(v0)             # 00000008
    sh      v1, 0x00B6(a3)             # 000000B6
    sh      v1, 0x0032(a3)             # 00000032
lbl_809C7BD4:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C7BE4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    sw      a2, 0x0030($sp)            
    sw      a3, 0x0034($sp)            
    jal     func_8008A194              
    lw      a0, 0x002C($sp)            
    lw      t6, 0x0038($sp)            
    lw      a0, 0x0028($sp)            
    lw      a1, 0x002C($sp)            
    bne     t6, $zero, lbl_809C7C30    
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    $at, $f12                  # $f12 = 1.00
    beq     $zero, $zero, lbl_809C7C44 
    cvt.s.w $f2, $f4                   
lbl_809C7C30:
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $at, $f12                  # $f12 = -1.00
    cvt.s.w $f0, $f6                   
lbl_809C7C44:
    lbu     t7, 0x0033($sp)            
    lwc1    $f8, 0x0034($sp)           
    mfc1    a2, $f12                   
    mfc1    a3, $f0                    
    swc1    $f2, 0x0010($sp)           
    sw      t7, 0x0014($sp)            
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809C7C74:
    sw      a1, 0x0004($sp)            
    lui     $at, %hi(var_809CA3E0)     # $at = 809D0000
    lwc1    $f6, %lo(var_809CA3E0)($at) 
    lwc1    $f4, 0x00BC(a0)            # 000000BC
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x00BC(a0)            # 000000BC
    jr      $ra                        
    nop


func_809C7C94:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0DE8             # a1 = 06000DE8
    lw      a0, 0x0020($sp)            
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_809C7BE4              
    sw      $zero, 0x0010($sp)         
    lui     $at, %hi(var_809CA3E4)     # $at = 809D0000
    lwc1    $f4, %lo(var_809CA3E4)($at) 
    lw      t6, 0x0020($sp)            
    swc1    $f4, 0x00BC(t6)            # 000000BC
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_809C7CDC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    or      a2, a1, $zero              # a2 = 00000000
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a0, 0x0038($sp)            
    lwc1    $f0, 0x0024(a1)            # 00000024
    lwc1    $f2, 0x0028(a1)            # 00000028
    lwc1    $f12, 0x002C(a1)           # 0000002C
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    addiu   a3, $zero, 0x005D          # a3 = 0000005D
    swc1    $f0, 0x0010($sp)           
    swc1    $f2, 0x0014($sp)           
    jal     func_800253F0              
    swc1    $f12, 0x0018($sp)          
    lw      $ra, 0x0034($sp)           
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_809C7D38:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    or      a2, a1, $zero              # a2 = 00000000
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a0, 0x0038($sp)            
    lw      v0, 0x1C44(a2)             # 00001C44
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    lwc1    $f4, 0x0028(v0)            # 00000028
    lwc1    $f0, 0x0024(v0)            # 00000024
    lwc1    $f12, 0x002C(v0)           # 0000002C
    add.s   $f2, $f4, $f6              
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    sw      t6, 0x0028($sp)            
    sw      a2, 0x003C($sp)            
    swc1    $f2, 0x0014($sp)           
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    addiu   a3, $zero, 0x008B          # a3 = 0000008B
    swc1    $f0, 0x0010($sp)           
    jal     func_800253F0              
    swc1    $f12, 0x0018($sp)          
    lw      a0, 0x003C($sp)            
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x0068          # a1 = 00000068
    lw      $ra, 0x0034($sp)           
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_809C7DB4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lbu     t6, 0x1415(v0)             # 8011B9E5
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t6, $at, lbl_809C7E44      
    lw      $ra, 0x0014($sp)           
    lw      t7, 0x1360(v0)             # 8011B930
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lw      t9, 0x0028($sp)            
    slti    $at, t7, 0x0004            
    beq     $at, $zero, lbl_809C7E40   
    lui     t0, %hi(var_809C93B8)      # t0 = 809D0000
    lw      v1, 0x1C44(a2)             # 00001C44
    sw      t8, 0x0298(t9)             # 00000298
    addiu   t0, t0, %lo(var_809C93B8)  # t0 = 809C93B8
    sw      t0, 0x1D68(a2)             # 00001D68
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sb      t1, 0x1414(v0)             # 8011B9E4
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0068          # a1 = 00000068
    jal     func_8006FDCC              
    sw      v1, 0x001C($sp)            
    lw      t2, 0x0028($sp)            
    ori     $at, $zero, 0x8000         # $at = 00008000
    lw      v1, 0x001C($sp)            
    lh      v0, 0x0032(t2)             # 00000032
    addu    v0, v0, $at                
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    sh      v0, 0x00B6(v1)             # 000000B6
    sh      v0, 0x0032(v1)             # 00000032
lbl_809C7E40:
    lw      $ra, 0x0014($sp)           
lbl_809C7E44:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809C7E50:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_809C7E94    
    lw      $ra, 0x0014($sp)           
    lw      v0, 0x1D98(a1)             # 00001D98
    beql    v0, $zero, lbl_809C7E94    
    lw      $ra, 0x0014($sp)           
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    bnel    v1, t7, lbl_809C7E94       
    lw      $ra, 0x0014($sp)           
    sw      v1, 0x0298(a0)             # 00000298
    jal     func_809C7CDC              
    sw      t8, 0x029C(a0)             # 0000029C
    lw      $ra, 0x0014($sp)           
lbl_809C7E94:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C7EA0:
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    lwc1    $f4, 0x00BC(a0)            # 000000BC
    c.le.s  $f0, $f4                   
    nop
    bc1f    lbl_809C7EC4               
    nop
    sw      t6, 0x0298(a0)             # 00000298
    swc1    $f0, 0x00BC(a0)            # 000000BC
lbl_809C7EC4:
    jr      $ra                        
    nop


func_809C7ECC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_809C7F54    
    lw      $ra, 0x0024($sp)           
    lw      v0, 0x1D98(a1)             # 00001D98
    beql    v0, $zero, lbl_809C7F54    
    lw      $ra, 0x0024($sp)           
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     a0, 0x0601                 # a0 = 06010000
    bnel    t7, $at, lbl_809C7F54      
    lw      $ra, 0x0024($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0xD3DC             # a0 = 0600D3DC
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    mfc1    a3, $f0                    
    sw      t8, 0x0014($sp)            
    addiu   a1, a1, 0xD3DC             # a1 = 0600D3DC
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t0, 0x0028($sp)            
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    sw      t9, 0x0298(t0)             # 00000298
    lw      $ra, 0x0024($sp)           
lbl_809C7F54:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809C7F60:
    beq     a1, $zero, lbl_809C7F6C    
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x0298(a0)             # 00000298
lbl_809C7F6C:
    jr      $ra                        
    nop


func_809C7F74:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_809C7FB4    
    lw      $ra, 0x0014($sp)           
    lw      v0, 0x1DA4(a1)             # 00001DA4
    beql    v0, $zero, lbl_809C7FB4    
    lw      $ra, 0x0014($sp)           
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    bnel    t7, $at, lbl_809C7FB4      
    lw      $ra, 0x0014($sp)           
    jal     func_809C7D38              
    sw      t8, 0x0298(a0)             # 00000298
    lw      $ra, 0x0014($sp)           
lbl_809C7FB4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C7FC0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_809C7DB4              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C7FE0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_809C7E50              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C8000:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_809C7C74              
    lw      a0, 0x0018($sp)            
    jal     func_809C7A80              
    lw      a0, 0x0018($sp)            
    jal     func_809C798C              
    lw      a0, 0x0018($sp)            
    jal     func_809C7EA0              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C803C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809C7A38              
    lw      a1, 0x001C($sp)            
    jal     func_809C7A80              
    lw      a0, 0x0018($sp)            
    jal     func_809C798C              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809C7ECC              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C8084:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    jal     func_809C7A38              
    lw      a0, 0x0020($sp)            
    jal     func_809C7A80              
    lw      a0, 0x0020($sp)            
    sw      v0, 0x001C($sp)            
    jal     func_809C798C              
    lw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_809C7F60              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809C80C8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809C7A38              
    lw      a1, 0x001C($sp)            
    jal     func_809C7A80              
    lw      a0, 0x0018($sp)            
    jal     func_809C798C              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809C7F74              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C8110:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_809C7A38              
    lw      a0, 0x0018($sp)            
    jal     func_809C7A80              
    lw      a0, 0x0018($sp)            
    jal     func_809C798C              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C8144:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x04CC             # a1 = 060004CC
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_809C7BE4              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    sw      t6, 0x0298(a0)             # 00000298
    sb      $zero, 0x00C8(a0)          # 000000C8
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_809C8188:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_80064738              
    addiu   a0, $zero, 0x4834          # a0 = 00004834
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C81A8:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    or      a2, a1, $zero              # a2 = 00000000
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a0, 0x0038($sp)            
    lwc1    $f4, 0x0024(a1)            # 00000024
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    swc1    $f4, 0x0010($sp)           
    lui     $at, 0x41C0                # $at = 41C00000
    lh      t7, 0x147A(t6)             # 8012147A
    mtc1    $at, $f10                  # $f10 = 24.00
    lwc1    $f18, 0x0028(a1)           # 00000028
    mtc1    t7, $f6                    # $f6 = 0.00
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    cvt.s.w $f8, $f6                   
    addiu   a3, $zero, 0x00F5          # a3 = 000000F5
    add.s   $f16, $f8, $f10            
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0014($sp)           
    lwc1    $f6, 0x002C(a1)            # 0000002C
    sw      t8, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    jal     func_800253F0              
    swc1    $f6, 0x0018($sp)           
    lw      $ra, 0x0034($sp)           
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_809C8228:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    jal     func_809C7ACC              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_809C826C    
    lw      a0, 0x0018($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t6, 0x0298(a0)             # 00000298
    sw      t7, 0x029C(a0)             # 0000029C
    sw      $zero, 0x02A4(a0)          # 000002A4
    sb      $zero, 0x00C8(a0)          # 000000C8
    jal     func_809C8188              
    swc1    $f4, 0x02A0(a0)            # 000002A0
lbl_809C826C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C827C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    jal     func_809C7ACC              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_809C832C    
    lw      a0, 0x0018($sp)            
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   v0, a0, 0x02A0             # v0 = 000002A0
    lwc1    $f4, 0x0000(v0)            # 000002A0
    mtc1    $at, $f6                   # $f6 = 1.00
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xBA00             # a1 = 8011BA00
    add.s   $f8, $f4, $f6              
    addiu   t8, $zero, 0x0009          # t8 = 00000009
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    swc1    $f8, 0x0000(v0)            # 000002A0
    lw      t6, 0x0000(a1)             # 8011BA00
    lwc1    $f0, 0x0000(v0)            # 000002A0
    lh      t7, 0x145E(t6)             # 0000145E
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    add.s   $f18, $f16, $f2            
    c.le.s  $f18, $f0                  
    nop
    bc1f    lbl_809C8374               
    nop
    sw      t8, 0x0298(a0)             # 00000298
    sw      t9, 0x029C(a0)             # 0000029C
    lw      t0, 0x0000(a1)             # 8011BA00
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    lh      t1, 0x145E(t0)             # 0000145E
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    add.s   $f8, $f6, $f2              
    swc1    $f8, 0x0000(v0)            # 000002A0
    sw      v1, 0x02A4(a0)             # 000002A4
    beq     $zero, $zero, lbl_809C83C0 
    sb      v1, 0x00C8(a0)             # 000000C8
lbl_809C832C:
    addiu   v0, a0, 0x02A0             # v0 = 000002A0
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lwc1    $f10, 0x0000(v0)           # 000002A0
    mtc1    $zero, $f2                 # $f2 = 0.00
    sub.s   $f18, $f10, $f16           
    swc1    $f18, 0x0000(v0)           # 000002A0
    lwc1    $f0, 0x0000(v0)            # 000002A0
    c.le.s  $f0, $f2                   
    nop
    bc1f    lbl_809C8374               
    addiu   t2, $zero, 0x0007          # t2 = 00000007
    sw      t2, 0x0298(a0)             # 00000298
    sw      $zero, 0x029C(a0)          # 0000029C
    swc1    $f2, 0x0000(v0)            # 000002A0
    sw      $zero, 0x02A4(a0)          # 000002A4
    beq     $zero, $zero, lbl_809C83C0 
    sb      $zero, 0x00C8(a0)          # 000000C8
lbl_809C8374:
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xBA00             # a1 = 8011BA00
    lw      t3, 0x0000(a1)             # 8011BA00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    lh      t4, 0x145E(t3)             # 0000145E
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f16                  # $f16 = 255.00
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    add.s   $f8, $f6, $f2              
    div.s   $f10, $f0, $f8             
    mul.s   $f18, $f10, $f16           
    trunc.w.s $f4, $f18                  
    mfc1    v0, $f4                    
    nop
    sw      v0, 0x02A4(a0)             # 000002A4
    sb      v0, 0x00C8(a0)             # 000000C8
lbl_809C83C0:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C83D0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      a1, 0x001C($sp)            
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    jal     func_809C7B18              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_809C845C    
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t6, 0x0298(a0)             # 00000298
    sw      t7, 0x029C(a0)             # 0000029C
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, -0x4600(t8)            # 8011BA00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    lh      t9, 0x145E(t8)             # 8012145E
    lw      t1, 0x02A8(a0)             # 000002A8
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    mtc1    t9, $f4                    # $f4 = 0.00
    sw      t0, 0x02A4(a0)             # 000002A4
    cvt.s.w $f6, $f4                   
    add.s   $f10, $f6, $f8             
    bne     t1, $zero, lbl_809C8454    
    swc1    $f10, 0x02A0(a0)           # 000002A0
    lw      a1, 0x001C($sp)            
    jal     func_809C81A8              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x02A8(a0)             # 000002A8
lbl_809C8454:
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    sb      t3, 0x00C8(a0)             # 000000C8
lbl_809C845C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C846C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_809C8228              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C848C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809C7A38              
    lw      a1, 0x001C($sp)            
    jal     func_809C7A80              
    lw      a0, 0x0018($sp)            
    jal     func_809C798C              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809C827C              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C84D4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809C7A38              
    lw      a1, 0x001C($sp)            
    jal     func_809C7A80              
    lw      a0, 0x0018($sp)            
    jal     func_809C798C              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809C83D0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C851C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0040($sp)            
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0040($sp)            
    lui     t1, %hi(var_809C93AC)      # t1 = 809D0000
    lw      t8, 0x0044($sp)            
    lh      v0, 0x0294(t6)             # 00000294
    sll     t7, v0,  2                 
    addu    t1, t1, t7                 
    lw      t1, %lo(var_809C93AC)(t1)  
    lw      a0, 0x0000(t8)             # 00000000
    sw      t1, 0x0030($sp)            
    jal     func_8007E2C0              
    sw      a0, 0x0028($sp)            
    lw      v1, 0x0028($sp)            
    lw      t1, 0x0030($sp)            
    lui     t2, 0x8000                 # t2 = 80000000
    lw      t3, 0x0040($sp)            
    lw      v0, 0x02D0(v1)             # 000002D0
    sll     t5, t1,  4                 
    srl     t6, t5, 28                 
    lui     t4, 0xDB06                 # t4 = DB060000
    lui     t8, 0x8012                 # t8 = 80120000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v1)             # 000002D0
    addiu   t8, t8, 0x0C38             # t8 = 80120C38
    ori     t4, t4, 0x0020             # t4 = DB060020
    sll     t7, t6,  2                 
    addu    a1, t7, t8                 
    sw      t4, 0x0000(v0)             # 00000000
    lw      t9, 0x0000(a1)             # 00000000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     a2, t1, $at                
    addu    t4, t9, a2                 
    addu    t5, t4, t2                 
    sw      t5, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0024             # t7 = DB060024
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    sw      t7, 0x0000(v0)             # 00000000
    lw      t8, 0x0000(a1)             # 00000000
    addiu   t0, t3, 0x013C             # t0 = 0000013C
    addu    t9, t8, a2                 
    addu    t4, t9, t2                 
    sw      t4, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t6, 0xFB00                 # t6 = FB000000
    lui     t4, 0xDB06                 # t4 = DB060000
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(v1)             # 000002D0
    sw      t6, 0x0000(v0)             # 00000000
    lw      t7, 0x02A4(t3)             # 000002A4
    ori     t4, t4, 0x0030             # t4 = DB060030
    andi    t8, t7, 0x00FF             # t8 = 00000024
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x8510             # t5 = 800E8510
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v1)             # 000002D0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lw      a1, 0x0004(t0)             # 00000140
    lw      a2, 0x0020(t0)             # 0000015C
    lbu     a3, 0x0002(t0)             # 0000013E
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0010($sp)         
    lw      t6, 0x02D0(v1)             # 000002D0
    sw      v1, 0x0028($sp)            
    lw      a0, 0x0044($sp)            
    jal     func_8008A88C              
    sw      t6, 0x001C($sp)            
    lw      v1, 0x0028($sp)            
    sw      v0, 0x02D0(v1)             # 000002D0
    lw      $ra, 0x0024($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_809C8664:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xE630             # a1 = 0600E630
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_809C7BE4              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    sw      t6, 0x0298(a0)             # 00000298
    sw      $zero, 0x029C(a0)          # 0000029C
    sb      $zero, 0x00C8(a0)          # 000000C8
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_809C86AC:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x02A0(a0)            # 000002A0
    lui     t6, 0x8012                 # t6 = 80120000
    lui     $at, 0x4120                # $at = 41200000
    add.s   $f8, $f4, $f6              
    mtc1    $at, $f18                  # $f18 = 10.00
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    swc1    $f8, 0x02A0(a0)            # 000002A0
    lw      t6, -0x4600(t6)            # 8011BA00
    lwc1    $f4, 0x02A0(a0)            # 000002A0
    lh      t7, 0x1476(t6)             # 80121476
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    add.s   $f0, $f16, $f18            
    c.le.s  $f0, $f4                   
    nop
    bc1fl   lbl_809C870C               
    lwc1    $f6, 0x02A0(a0)            # 000002A0
    sw      v0, 0x02A4(a0)             # 000002A4
    jr      $ra                        
    sb      v0, 0x00C8(a0)             # 000000C8
lbl_809C8708:
    lwc1    $f6, 0x02A0(a0)            # 000002A0
lbl_809C870C:
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f10                  # $f10 = 255.00
    div.s   $f8, $f6, $f0              
    mul.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    v0, $f18                   
    nop
    sw      v0, 0x02A4(a0)             # 000002A4
    sb      v0, 0x00C8(a0)             # 000000C8
    jr      $ra                        
    nop


func_809C8738:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_809C7B64              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x000B          # t6 = 0000000B
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t6, 0x0298(a0)             # 00000298
    sw      t7, 0x029C(a0)             # 0000029C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C8770:
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lh      t7, 0x1476(t6)             # 80121476
    lwc1    $f4, 0x02A0(a0)            # 000002A0
    addiu   t8, $zero, 0x000C          # t8 = 0000000C
    mtc1    t7, $f6                    # $f6 = 0.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    cvt.s.w $f8, $f6                   
    add.s   $f16, $f8, $f10            
    c.le.s  $f16, $f4                  
    nop
    bc1f    lbl_809C87B4               
    nop
    sw      t8, 0x0298(a0)             # 00000298
    sw      t9, 0x029C(a0)             # 0000029C
lbl_809C87B4:
    jr      $ra                        
    nop


func_809C87BC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xDCAC             # a1 = 0600DCAC
    lw      a0, 0x0020($sp)            
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_809C7BE4              
    sw      $zero, 0x0010($sp)         
    lw      t7, 0x0020($sp)            
    addiu   t6, $zero, 0x000D          # t6 = 0000000D
    sw      t6, 0x0298(t7)             # 00000298
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_809C87FC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    beq     a1, $zero, lbl_809C8820    
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xF03C             # a1 = 0600F03C
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_809C7BE4              
    sw      $zero, 0x0010($sp)         
lbl_809C8820:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809C8830:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_809C7AA4              
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    beq     v0, $zero, lbl_809C88AC    
    lw      a0, 0x0020($sp)            
    lhu     a2, 0x0000(v0)             # 00000000
    lw      v1, 0x02AC(a0)             # 000002AC
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beql    a2, v1, lbl_809C88B0       
    lw      $ra, 0x0014($sp)           
    beq     a2, $at, lbl_809C8884      
    lw      a1, 0x0024($sp)            
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     a2, $at, lbl_809C8898      
    nop
    beq     $zero, $zero, lbl_809C88AC 
    sw      a2, 0x02AC(a0)             # 000002AC
lbl_809C8884:
    jal     func_809C8738              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    beq     $zero, $zero, lbl_809C88A8 
    lw      a0, 0x0020($sp)            
lbl_809C8898:
    jal     func_809C87BC              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lw      a0, 0x0020($sp)            
lbl_809C88A8:
    sw      a2, 0x02AC(a0)             # 000002AC
lbl_809C88AC:
    lw      $ra, 0x0014($sp)           
lbl_809C88B0:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809C88BC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_809C8830              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C88DC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    jal     func_809C7A38              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C7A80              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C798C              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C86AC              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C8770              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809C8928:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809C7A38              
    lw      a1, 0x001C($sp)            
    jal     func_809C7A80              
    lw      a0, 0x0018($sp)            
    jal     func_809C798C              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809C8830              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C8970:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    jal     func_809C7A38              
    lw      a0, 0x0020($sp)            
    jal     func_809C7A80              
    lw      a0, 0x0020($sp)            
    sw      v0, 0x001C($sp)            
    jal     func_809C798C              
    lw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_809C87FC              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809C89B4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_809C7A14              
    nop
    lw      a0, 0x001C($sp)            
    jal     func_800204D0              
    or      a1, v0, $zero              # a1 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C89E4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_809C7A14              
    nop
    lw      a0, 0x001C($sp)            
    jal     func_8002049C              
    or      a1, v0, $zero              # a1 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C8A14:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    jal     func_809C89E4              
    sw      a0, 0x0020($sp)            
    beq     v0, $zero, lbl_809C8A3C    
    lw      a0, 0x0020($sp)            
    jal     func_80020EB4              
    nop
    beq     $zero, $zero, lbl_809C8A70 
    lw      $ra, 0x001C($sp)           
lbl_809C8A3C:
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0DE8             # a1 = 06000DE8
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_809C7BE4              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t6, $zero, 0x000E          # t6 = 0000000E
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t6, 0x0298(a0)             # 00000298
    sw      t7, 0x029C(a0)             # 0000029C
    lw      $ra, 0x001C($sp)           
lbl_809C8A70:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809C8A7C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_800C69A0              
    addiu   a0, $zero, 0x0051          # a0 = 00000051
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C8A9C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lhu     t6, 0x02B0(s0)             # 000002B0
    lui     t8, 0x8012                 # t8 = 80120000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x02B0(s0)             # 000002B0
    lw      t8, -0x4600(t8)            # 8011BA00
    andi    a2, t7, 0xFFFF             # a2 = 00000001
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    lh      a0, 0x1458(t8)             # 80121458
    sw      $zero, 0x0010($sp)         
    addiu   a0, a0, 0x0096             # a0 = 00000096
    jal     func_8005C714              
    andi    a0, a0, 0xFFFF             # a0 = 00000096
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f6                   # $f6 = 300.00
    lwc1    $f4, 0x000C(s0)            # 0000000C
    mul.s   $f8, $f6, $f0              
    add.s   $f10, $f4, $f8             
    swc1    $f10, 0x0028(s0)           # 00000028
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_809C8B08:
    lw      v0, 0x1C44(a1)             # 00001C44
    lwc1    $f0, 0x0024(a0)            # 00000024
    lui     $at, 0xC34A                # $at = C34A0000
    lwc1    $f2, 0x0024(v0)            # 00000024
    mtc1    $at, $f6                   # $f6 = -202.00
    or      v0, $zero, $zero           # v0 = 00000000
    sub.s   $f4, $f2, $f0              
    c.le.s  $f6, $f4                   
    nop
    bc1f    lbl_809C8B3C               
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809C8B3C:
    jr      $ra                        
    nop


func_809C8B44:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_809C8B08              
    lw      a1, 0x0024($sp)            
    beql    v0, $zero, lbl_809C8B98    
    lw      $ra, 0x001C($sp)           
    jal     func_8009CB08              
    lw      a0, 0x0024($sp)            
    bne     v0, $zero, lbl_809C8B94    
    lw      a3, 0x0020($sp)            
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    sw      t6, 0x0298(a3)             # 00000298
    sw      $zero, 0x0010($sp)         
    lw      a0, 0x0024($sp)            
    addiu   a1, $zero, 0x0C3A          # a1 = 00000C3A
    jal     func_8006B6FC              
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
lbl_809C8B94:
    lw      $ra, 0x001C($sp)           
lbl_809C8B98:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809C8BA4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    sw      t6, 0x0298(a3)             # 00000298
    sw      $zero, 0x0010($sp)         
    lw      a0, 0x0024($sp)            
    addiu   a1, $zero, 0x0C3A          # a1 = 00000C3A
    jal     func_8006B6FC              
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809C8BE0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x02B4(a3)            # 000002B4
    lui     v0, 0x8012                 # v0 = 80120000
    lui     $at, 0x4220                # $at = 42200000
    add.s   $f8, $f4, $f6              
    mtc1    $at, $f4                   # $f4 = 40.00
    swc1    $f8, 0x02B4(a3)            # 000002B4
    lw      v0, -0x4600(v0)            # 8011BA00
    lwc1    $f10, 0x02B4(a3)           # 000002B4
    lh      t6, 0x1460(v0)             # 80121460
    mtc1    t6, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    add.s   $f6, $f18, $f4             
    c.eq.s  $f10, $f6                  
    nop
    bc1fl   lbl_809C8C50               
    lh      t7, 0x145C(v0)             # 8012145C
    jal     func_809C8A7C              
    nop
    beq     $zero, $zero, lbl_809C8CA4 
    lw      $ra, 0x0014($sp)           
    lh      t7, 0x145C(v0)             # 0000145C
lbl_809C8C50:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f18                  # $f18 = 50.00
    mtc1    t7, $f8                    # $f8 = 0.00
    lwc1    $f10, 0x02B4(a3)           # 000002B4
    addiu   t8, $zero, 0x403E          # t8 = 0000403E
    cvt.s.w $f16, $f8                  
    andi    a1, t8, 0xFFFF             # a1 = 0000403E
    or      a2, $zero, $zero           # a2 = 00000000
    add.s   $f4, $f16, $f18            
    c.lt.s  $f4, $f10                  
    nop
    bc1fl   lbl_809C8CA4               
    lw      $ra, 0x0014($sp)           
    sh      t8, 0x010E(a3)             # 0000010E
    sw      a3, 0x0018($sp)            
    jal     func_800DCE14              
    lw      a0, 0x001C($sp)            
    lw      a3, 0x0018($sp)            
    addiu   t9, $zero, 0x0011          # t9 = 00000011
    sw      t9, 0x0298(a3)             # 00000298
    lw      $ra, 0x0014($sp)           
lbl_809C8CA4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C8CB0:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    jal     func_800DD464              
    sw      a0, 0x0024($sp)            
    addiu   v1, $zero, 0x0003          # v1 = 00000003
    bne     v1, v0, lbl_809C8D58       
    andi    a1, v0, 0x00FF             # a1 = 00000000
    lbu     t6, 0x02B3(s1)             # 000002B3
    beql    v1, t6, lbl_809C8D5C       
    sb      a1, 0x02B3(s1)             # 000002B3
    lbu     t7, 0x02B2(s1)             # 000002B2
    addiu   $at, $zero, 0x0006         # $at = 00000006
    addiu   t8, t7, 0x0001             # t8 = 00000001
    andi    t9, t8, 0x00FF             # t9 = 00000001
    div     $zero, t9, $at             
    mfhi    t0                         
    sb      t8, 0x02B2(s1)             # 000002B2
    bnel    v1, t0, lbl_809C8D5C       
    sb      a1, 0x02B3(s1)             # 000002B3
    lh      t1, 0x07A0(s0)             # 000007A0
    lw      v1, 0x1C44(s0)             # 00001C44
    sll     t2, t1,  2                 
    addu    t3, s0, t2                 
    lw      a0, 0x0790(t3)             # 00000790
    sb      a1, 0x0033($sp)            
    jal     func_80049DB4              
    sw      v1, 0x002C($sp)            
    lui     $at, 0x444D                # $at = 444D0000
    lw      v1, 0x002C($sp)            
    mtc1    $at, $f4                   # $f4 = 820.00
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $at, $f8                   # $f8 = 180.00
    lbu     a1, 0x0033($sp)            
    swc1    $f4, 0x0024(v1)            # 00000024
    swc1    $f6, 0x0028(v1)            # 00000028
    swc1    $f8, 0x002C(v1)            # 0000002C
lbl_809C8D58:
    sb      a1, 0x02B3(s1)             # 000002B3
lbl_809C8D5C:
    jal     func_800DD464              
    lw      a0, 0x0024($sp)            
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_809C8D88      
    addiu   t4, $zero, 0x0012          # t4 = 00000012
    sw      t4, 0x0298(s1)             # 00000298
    lh      t5, 0x07A0(s0)             # 000007A0
    sll     t6, t5,  2                 
    addu    t7, s0, t6                 
    jal     func_80049DB4              
    lw      a0, 0x0790(t7)             # 00000790
lbl_809C8D88:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_809C8D9C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x02B4(a0)            # 000002B4
    lui     t6, 0x8012                 # t6 = 80120000
    lui     $at, 0x42C8                # $at = 42C80000
    add.s   $f8, $f4, $f6              
    mtc1    $at, $f18                  # $f18 = 100.00
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xF8B8             # a1 = 0600F8B8
    swc1    $f8, 0x02B4(a0)            # 000002B4
    lw      t6, -0x4600(t6)            # 8011BA00
    lwc1    $f6, 0x02B4(a0)            # 000002B4
    or      a2, $zero, $zero           # a2 = 00000000
    lh      t7, 0x145E(t6)             # 8012145E
    lui     a3, 0xC140                 # a3 = C1400000
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    add.s   $f4, $f16, $f18            
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_809C8E28               
    lw      $ra, 0x001C($sp)           
    sw      $zero, 0x0010($sp)         
    jal     func_809C7BE4              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t8, $zero, 0x0013          # t8 = 00000013
    sw      t8, 0x0298(a0)             # 00000298
    jal     func_809C89B4              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
lbl_809C8E28:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809C8E34:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lhu     t4, 0x02B0(a0)             # 000002B0
    lh      t6, 0x1458(v0)             # 80121458
    lh      t9, 0x145A(v0)             # 8012145A
    addiu   t8, t6, 0x0096             # t8 = 00000096
    addiu   t1, t9, 0x0028             # t1 = 00000028
    addu    t2, t8, t1                 
    andi    t3, t2, 0xFFFF             # t3 = 00000000
    slt     $at, t3, t4                
    beql    $at, $zero, lbl_809C8E7C   
    lw      $ra, 0x0014($sp)           
    jal     func_80020EB4              
    nop
    lw      $ra, 0x0014($sp)           
lbl_809C8E7C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C8E88:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809C8B44              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80020F04              
    lui     a1, 0x4248                 # a1 = 42480000
    lw      a0, 0x0018($sp)            
    jal     func_809C791C              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C8ECC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C7A38              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C791C              
    lw      a1, 0x0024($sp)            
    jal     func_809C7A80              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C798C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    lui     a1, 0x4248                 # a1 = 42480000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C8BA4              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809C8F34:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C7A38              
    lw      a1, 0x0024($sp)            
    jal     func_809C7A80              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C798C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    lui     a1, 0x4248                 # a1 = 42480000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C8BE0              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809C8F90:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C7A38              
    lw      a1, 0x0024($sp)            
    jal     func_809C7A80              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C798C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    lui     a1, 0x4248                 # a1 = 42480000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C8CB0              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809C8FEC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C7A38              
    lw      a1, 0x0024($sp)            
    jal     func_809C7A80              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C798C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    lui     a1, 0x4248                 # a1 = 42480000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C8D9C              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809C9048:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_809C8A9C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C7A38              
    lw      a1, 0x0024($sp)            
    jal     func_809C7A80              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C798C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    lui     a1, 0x4248                 # a1 = 42480000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C8E34              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809C90AC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x0298(a0)             # 00000298
    bltz    v0, lbl_809C90E4           
    slti    $at, v0, 0x0014            
    beq     $at, $zero, lbl_809C90E4   
    sll     t6, v0,  2                 
    lui     v1, %hi(var_809CA358)      # v1 = 809D0000
    addu    v1, v1, t6                 
    lw      v1, %lo(var_809CA358)(v1)  
    beql    v1, $zero, lbl_809C90E8    
    lw      $ra, 0x0014($sp)           
    jalr    $ra, v1                    
    nop
lbl_809C90E4:
    lw      $ra, 0x0014($sp)           
lbl_809C90E8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C90F4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 # a3 = 41F00000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809C78D0              
    or      a1, s1, $zero              # a1 = 00000000
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   t6, s0, 0x0180             # t6 = 00000180
    addiu   t7, s0, 0x020A             # t7 = 0000020A
    addiu   t8, $zero, 0x0017          # t8 = 00000017
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a2, a2, 0xC700             # a2 = 0600C700
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    jal     func_8008C788              
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_809C7A28              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_809C9194      
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_809C91A4      
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_809C91B4      
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809C91C4 
    or      a0, s0, $zero              # a0 = 00000000
lbl_809C9194:
    jal     func_809C8144              
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_809C91D0 
    addiu   t9, $zero, 0x0003          # t9 = 00000003
lbl_809C91A4:
    jal     func_809C8664              
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_809C91D0 
    addiu   t9, $zero, 0x0003          # t9 = 00000003
lbl_809C91B4:
    jal     func_809C8A14              
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_809C91D0 
    addiu   t9, $zero, 0x0003          # t9 = 00000003
lbl_809C91C4:
    jal     func_809C7C94              
    or      a1, s1, $zero              # a1 = 00000000
    addiu   t9, $zero, 0x0003          # t9 = 00000003
lbl_809C91D0:
    sb      $zero, 0x02B2(s0)          # 000002B2
    sb      t9, 0x02B3(s0)             # 000002B3
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_809C91EC:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_809C91FC:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0040($sp)            
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0040($sp)            
    lui     t1, %hi(var_809C93AC)      # t1 = 809D0000
    lw      t8, 0x0044($sp)            
    lh      v0, 0x0294(t6)             # 00000294
    sll     t7, v0,  2                 
    addu    t1, t1, t7                 
    lw      t1, %lo(var_809C93AC)(t1)  
    lw      a0, 0x0000(t8)             # 00000000
    sw      t1, 0x0030($sp)            
    jal     func_8007E298              
    sw      a0, 0x0028($sp)            
    lw      v1, 0x0028($sp)            
    lw      t1, 0x0030($sp)            
    lui     t3, 0x8000                 # t3 = 80000000
    lw      t4, 0x0040($sp)            
    lw      v0, 0x02C0(v1)             # 000002C0
    sll     t6, t1,  4                 
    srl     t7, t6, 28                 
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    lui     t9, 0x8012                 # t9 = 80120000
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0020             # t5 = DB060020
    addiu   t9, t9, 0x0C38             # t9 = 80120C38
    sll     t8, t7,  2                 
    addu    a1, t8, t9                 
    sw      t5, 0x0000(v0)             # 00000000
    lw      t5, 0x0000(a1)             # 00000000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     a2, t1, $at                
    addu    t6, t5, a2                 
    addu    t7, t6, t3                 
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      t9, 0x0000(v0)             # 00000000
    lw      t5, 0x0000(a1)             # 00000000
    addiu   t0, t4, 0x013C             # t0 = 0000013C
    addu    t6, t5, a2                 
    addu    t7, t6, t3                 
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    addiu   t8, t8, 0x8520             # t8 = 800E8520
    ori     t7, t7, 0x0030             # t7 = DB060030
    sw      t7, 0x0000(v0)             # 00000000
    sw      t8, 0x0004(v0)             # 00000004
    lw      a1, 0x0004(t0)             # 00000140
    lw      a2, 0x0020(t0)             # 0000015C
    lbu     a3, 0x0002(t0)             # 0000013E
    sw      t4, 0x0018($sp)            
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0010($sp)         
    jal     func_80089D8C              
    lw      a0, 0x0044($sp)            
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_809C9330:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x029C(a0)             # 0000029C
    bltz    v0, lbl_809C9368           
    slti    $at, v0, 0x0003            
    beq     $at, $zero, lbl_809C9368   
    sll     t6, v0,  2                 
    lui     v1, %hi(var_809CA3A8)      # v1 = 809D0000
    addu    v1, v1, t6                 
    lw      v1, %lo(var_809CA3A8)(v1)  
    beql    v1, $zero, lbl_809C936C    
    lw      $ra, 0x0014($sp)           
    jalr    $ra, v1                    
    nop
lbl_809C9368:
    lw      $ra, 0x0014($sp)           
lbl_809C936C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_809C9380: .word \
0x0A000900, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000080, 0x00000000, 0x00010000, \
0x001E0064, 0x00000000, 0x00000000
var_809C93AC: .word 0x06000F20, 0x060022E0, 0x06002AE0
var_809C93B8: .word \
0x00000023, 0x00000D0A, 0x00000020, 0x00000001, \
0x00010000, 0x0BB80000, 0x00000000, 0x00000000, \
0xFFFFFFFC, 0x00000002, 0x00000000, 0xFFFFFFFC, \
0x00000002, 0x00000000, 0x00000000, 0x00000000, \
0x0000001F, 0x00000005, 0x00010000, 0x033D0000, \
0x00000000, 0x00000000, 0x000000D8, 0x00000000, \
0x00000000, 0x000000D8, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0002033D, 0x033E0000, \
0x00000000, 0x00000000, 0x000000D8, 0x00000000, \
0x00000000, 0x000000D8, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0004033E, 0x03820000, \
0x00000000, 0x00000000, 0x000000D8, 0x00000000, \
0x00000000, 0x000000D8, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00020382, 0x03B40000, \
0x00000000, 0x00000000, 0x000000D8, 0x00000000, \
0x00000000, 0x00000052, 0x00000000, 0x00000000, \
0xC02B851F, 0x00000000, 0x000303B4, 0x0D0A0000, \
0x00000000, 0x00000000, 0x00000052, 0x00000000, \
0x00000000, 0x00000052, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0000000A, 0x00000005, \
0x000D0000, 0x00F00000, 0x00000000, 0x00000000, \
0x00000006, 0x00000000, 0x00000000, 0x00000006, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x000500F0, 0x02080000, 0x40000000, 0x00000000, \
0x00000006, 0x00000000, 0x00000000, 0x00000006, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00030208, 0x02260000, 0x40000000, 0x00000000, \
0x00000006, 0x00000000, 0x00000000, 0x00000006, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00050226, 0x03210000, 0x40000000, 0x00000000, \
0x00000006, 0x00000000, 0x00000000, 0x00000006, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00130321, 0x07A40000, 0xC0000000, 0x00000000, \
0x00000006, 0x00000000, 0x00000000, 0x00000006, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000031, 0x00000001, 0x00010000, 0x0BB80000, \
0x00000000, 0x00000000, 0xFFFFFFF0, 0xFFFFFF87, \
0x00000000, 0xFFFFFFF0, 0xFFFFFF87, 0x00000000, \
0x00000000, 0x00000000, 0x00000004, 0x00000005, \
0x00050000, 0x01800000, 0x00000000, 0xFFFFFFA1, \
0x00000000, 0x00000058, 0xFFFFFFA1, 0x00000000, \
0x00000058, 0x00000000, 0x00000000, 0x00000000, \
0x00060180, 0x01C60000, 0x00000000, 0xFFFFFFA1, \
0x00000000, 0x00000058, 0xFFFFFFA1, 0x00000000, \
0x00000058, 0x00000000, 0x00000000, 0x00000000, \
0x000501C6, 0x022A0000, 0x00000000, 0xFFFFFFA1, \
0x00000000, 0x00000058, 0xFFFFFFA1, 0x00000000, \
0x00000058, 0x00000000, 0x00000000, 0x00000000, \
0x0006022A, 0x02700000, 0x00000000, 0xFFFFFFA1, \
0x00000000, 0x00000058, 0xFFFFFFA1, 0x00000000, \
0x00000058, 0x00000000, 0x00000000, 0x00000000, \
0x00050270, 0x0BB90000, 0x00000000, 0xFFFFFFA1, \
0x00000000, 0x00000058, 0xFFFFFFA1, 0x00000000, \
0x00000058, 0x00000000, 0x00000000, 0x00000000, \
0x00000027, 0x00000001, 0x00010000, 0x0BB80000, \
0x00000000, 0x00000000, 0x00000000, 0xFFFFFFFE, \
0x00000000, 0x00000000, 0xFFFFFFFE, 0x00000000, \
0x00000000, 0x00000000, 0x0000002A, 0x00000003, \
0x00010000, 0x00920000, 0x00000000, 0x000000C3, \
0x00000006, 0x00000000, 0x000000C3, 0x00000006, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00020092, 0x02F20000, 0x00000000, 0x000000C3, \
0x00000006, 0x00000000, 0x000000C3, 0x00000006, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x000302F2, 0x0A440000, 0x00000000, 0x000000C3, \
0x00000006, 0x00000000, 0x000000C3, 0x00000006, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0000002D, 0x00000001, 0x0001032A, 0x03370337, \
0x0000002D, 0x00000001, 0x00050339, 0x03570357, \
0x0000002D, 0x00000001, 0x00010442, 0x04610461, \
0x00000001, 0x00010000, 0x012D0000, 0x00000000, \
0x432F65F8, 0xFD97001E, 0x00470000, 0x00000000, \
0x432F65F8, 0xFD97001E, 0x00471FBC, 0x00000000, \
0x432F65F8, 0xFD97001E, 0x0047D5E0, 0x00000000, \
0x432F65F8, 0xFD97001E, 0x00470000, 0x00000000, \
0x432F65F8, 0xFD97001E, 0x00471F98, 0x00000000, \
0x432F65F8, 0xFD97001E, 0x00470000, 0x00000000, \
0x4311CC7C, 0xFE38006B, 0x00380000, 0x00000000, \
0x42726667, 0xFFB40036, 0x00470164, 0x00000000, \
0x42726667, 0x00740036, 0x00602100, 0x00000000, \
0x42726667, 0x00EC000B, 0x00400049, 0x00000000, \
0x42726667, 0x00EC000B, 0x0040204C, 0x00000000, \
0x42726667, 0x00EC000B, 0x0040E990, 0xFF000000, \
0x42726667, 0x00EC000B, 0x00400000, 0x00000001, \
0x00010107, 0x05CC0000, 0x00000000, 0x4228E87B, \
0x00A10035, 0x001A0000, 0x00000000, 0x4228E87B, \
0x00A10035, 0x001A1FBC, 0x00000000, 0x4228E87B, \
0x00A10035, 0x001AD5E0, 0x00000000, 0x4228E87B, \
0x00820009, 0x00600000, 0x00000000, 0x4228E87B, \
0x00820009, 0x00601F98, 0x00000000, 0x4228E87B, \
0x00820009, 0x00600000, 0x00000000, 0x4228E87B, \
0x00820009, 0x00600000, 0xFF000000, 0x4228E87B, \
0x00820009, 0x00600164, 0x00000001, 0x0001017F, \
0x05C20000, 0x00000000, 0x428C743C, 0x00CF002D, \
0x00220000, 0x00000000, 0x428C743C, 0x00CF002D, \
0x00221FBC, 0x00000000, 0x428C743C, 0x00CF002D, \
0x0022D5E0, 0x00000000, 0x428C743C, 0x00CF002D, \
0x00220000, 0xFF000000, 0x428C743C, 0x00CF002D, \
0x00221F98, 0x00000001, 0x000101C5, 0x06080000, \
0x00000000, 0x42341BB1, 0xFFC6005A, 0x00460000, \
0x00000000, 0x42341BB1, 0xFFC6005A, 0x00461FBC, \
0x00000000, 0x42341BB1, 0xFFC6005A, 0x0046D5E0, \
0x00000000, 0x42341BB1, 0xFFC6005A, 0x00460000, \
0xFF000000, 0x42341BB1, 0xFFC6005A, 0x00461F98, \
0x00000001, 0x00010229, 0x066C0000, 0x00000000, \
0x428C743C, 0x00CF002D, 0x00220000, 0x00000000, \
0x428C743C, 0x00CF002D, 0x00221FBC, 0x00000000, \
0x428C743C, 0x00CF002D, 0x0022D5E0, 0x00000000, \
0x428C743C, 0x00CF002D, 0x00220000, 0xFF000000, \
0x428C743C, 0x00CF002D, 0x00221F98, 0x00000001, \
0x0001026F, 0x06B20000, 0x00000000, 0x4271B55A, \
0x00A1003B, 0x00000000, 0x00000000, 0x4271B55A, \
0x00A1003B, 0x00001FBC, 0x00000000, 0x4271B55A, \
0x00A1003B, 0x0000D5E0, 0x00000000, 0x4271B55A, \
0x00A1003B, 0x00000000, 0xFF000000, 0x4271B55A, \
0x00A1003B, 0x00001F98, 0x00000001, 0x000102B5, \
0x06F80000, 0x00000000, 0x4271B55A, 0x00970052, \
0x00230000, 0x00000000, 0x4271B55A, 0x00970052, \
0x00231FBC, 0x00000000, 0x4271B55A, 0x00970052, \
0x0023D5E0, 0x00000000, 0x4271B55A, 0x00970052, \
0x00230000, 0xFF000000, 0x4271B55A, 0x00970052, \
0x00231F98, 0x00000001, 0x000102FB, 0x03B00000, \
0x00000000, 0x4271B55A, 0x00E60007, 0x00180000, \
0x00000000, 0x4271B55A, 0x00E60007, 0x00181FBC, \
0x00000000, 0x4271B55A, 0x00E60007, 0x0018D5E0, \
0x00000000, 0x4271B55A, 0x00CF003E, 0x000F0000, \
0x00000000, 0x428CDAA2, 0x00E600F0, 0x00181F98, \
0x00000000, 0x428CDAA2, 0x00E600F0, 0x00180000, \
0x00000000, 0x428CDAA2, 0x00E600F0, 0x00180000, \
0xFF000000, 0x428CDAA2, 0x00E600F0, 0x00180164, \
0x00000001, 0x00010337, 0x048D0000, 0x00000000, \
0x42700000, 0x000D0356, 0x00020000, 0x00000000, \
0x42700000, 0x00090355, 0x00051FBC, 0x00000000, \
0x42700000, 0xFFFD0355, 0x0005D5E0, 0x00000000, \
0x42700000, 0xFFF70355, 0xFFFA0000, 0x00000000, \
0x42700000, 0xFFFE0354, 0xFFEF1F98, 0x00000000, \
0x42700000, 0x00090354, 0xFFEF0000, 0x00000000, \
0x42700000, 0x00100354, 0xFFFA0000, 0x00000000, \
0x42700000, 0x00090354, 0x00050164, 0xFF000000, \
0x42700000, 0xFFFD0353, 0x00052100, 0x00000005, \
0x00010383, 0x08200000, 0x00000000, 0x4289332C, \
0x00000021, 0xFFE50000, 0x00000000, 0x4289332C, \
0x00000021, 0xFFE51FBC, 0x00000000, 0x4289332C, \
0x00000044, 0xFFE6D5E0, 0x00000000, 0x4289332C, \
0x00000067, 0xFFE60000, 0x00000000, 0x4289332C, \
0x00000067, 0xFFE61F98, 0x00000000, 0x4289332C, \
0x00000067, 0xFFE60000, 0x00000000, 0x4289332C, \
0x00000067, 0xFFE60000, 0xFF000000, 0x4289332C, \
0x00000067, 0xFFE60164, 0x00000002, 0x00010000, \
0x014A0000, 0x001E0014, 0x432F65F8, 0xFD77FFB5, \
0x00650000, 0x00E20014, 0x432F65F8, 0xFD74FFB5, \
0x00621FBC, 0x001E0014, 0x432F65F8, 0xFD6EFFB5, \
0x0057D5E0, 0x00E20014, 0x432F65F8, 0xFD5A007F, \
0x00470000, 0x00000014, 0x432F65F8, 0xFD290000, \
0x00471F98, 0x00000014, 0x4311CC7C, 0xFDFF0000, \
0x002B0000, 0x0000001E, 0x42726667, 0xFEA30059, \
0x002F0000, 0x0000001E, 0x42726667, 0x0006003D, \
0x00010164, 0x0000001E, 0x42726667, 0x00210042, \
0x001C2100, 0x0000001E, 0x42726667, 0x009E002A, \
0x00010049, 0x0000001E, 0x42726667, 0x009E002A, \
0x0001204C, 0x0000001E, 0x42726667, 0x009E002A, \
0x0001E990, 0xFF00001E, 0x42726667, 0x009E002A, \
0x00010000, 0x00000002, 0x00010107, 0x05E90000, \
0x0000001E, 0x4228E87B, 0x0142003E, 0xFF860000, \
0x0000001E, 0x4228E87B, 0x0142003E, 0xFF861FBC, \
0x00000032, 0x4228E87B, 0x0142003E, 0xFF86D5E0, \
0x00000032, 0x4228E87B, 0x00E8003F, 0xFFAD0000, \
0x0000001E, 0x4228E87B, 0x00E8003F, 0xFFAD1F98, \
0x000003E8, 0x4228E87B, 0x00E8003F, 0xFFAD0000, \
0x0000001E, 0x4228E87B, 0x00E8003F, 0xFFAD0000, \
0xFF00001E, 0x4228E87B, 0x00E8003F, 0xFFAD0164, \
0x00000002, 0x0001017F, 0x05DF0000, 0x0000001E, \
0x428C743C, 0x0033003E, 0xFF970000, 0x0000001E, \
0x428C743C, 0x0033003E, 0xFF971FBC, 0x000003E8, \
0x428C743C, 0x0033003E, 0xFF97D5E0, 0x0000001E, \
0x428C743C, 0x0033003E, 0xFF970000, 0xFF00001E, \
0x428C743C, 0x0033003E, 0xFF971F98, 0x00000002, \
0x000101C5, 0x06250000, 0x0000001E, 0x42341BB1, \
0x00660016, 0xFFE10000, 0x0000001E, 0x42341BB1, \
0x00660016, 0xFFE11FBC, 0x000003E8, 0x42341BB1, \
0x00660016, 0xFFE1D5E0, 0x0000001E, 0x42341BB1, \
0x00660016, 0xFFE10000, 0xFF00001E, 0x42341BB1, \
0x00660016, 0xFFE11F98, 0x00000002, 0x00010229, \
0x06890000, 0x0000001E, 0x428C743C, 0x0033003E, \
0xFF970000, 0x0000001E, 0x428C743C, 0x0033003E, \
0xFF971FBC, 0x000003E8, 0x428C743C, 0x0033003E, \
0xFF97D5E0, 0x0000001E, 0x428C743C, 0x0033003E, \
0xFF970000, 0xFF00001E, 0x428C743C, 0x0033003E, \
0xFF971F98, 0x00000002, 0x0001026F, 0x06CF0000, \
0x0000001E, 0x4271B55A, 0x015B0016, 0x00000000, \
0x0000001E, 0x4271B55A, 0x015B0016, 0x00001FBC, \
0x000003E8, 0x4271B55A, 0x015B0016, 0x0000D5E0, \
0x0000001E, 0x4271B55A, 0x015B0016, 0x00000000, \
0xFF00001E, 0x4271B55A, 0x015B0016, 0x00001F98, \
0x00000002, 0x000102B5, 0x07150000, 0x0000001E, \
0x4271B55A, 0x0102FFE2, 0xFFCA0000, 0x0000001E, \
0x4271B55A, 0x0102FFE2, 0xFFCA1FBC, 0x000003E8, \
0x4271B55A, 0x0102FFE2, 0xFFCAD5E0, 0x0000001E, \
0x4271B55A, 0x0102FFE2, 0xFFCA0000, 0xFF00001E, \
0x4271B55A, 0x0102FFE2, 0xFFCA1F98, 0x00000002, \
0x000102FB, 0x03CD0000, 0x0000001E, 0x4271B55A, \
0x00600069, 0xFFE30000, 0x00000028, 0x4271B55A, \
0x00600069, 0xFFE31FBC, 0x0000000F, 0x4271B55A, \
0x00600069, 0xFFE3D5E0, 0x0000000F, 0x42701BC0, \
0x006E00C4, 0xFFE60000, 0x00000014, 0x428CDAA2, \
0x00B9018F, 0x00061F98, 0x0000001E, 0x428CDAA2, \
0x00B9018F, 0x00060000, 0x0000001E, 0x428CDAA2, \
0x00B9018F, 0x00060000, 0xFF00001E, 0x428CDAA2, \
0x00B9018F, 0x00060164, 0x00000002, 0x00010337, \
0x04BE0000, 0x00000032, 0x42700000, 0x00030006, \
0xFFFA0000, 0x00000028, 0x42700000, 0x00030006, \
0xFFFA1FBC, 0x0000001E, 0x424BFFF7, 0x00030006, \
0xFFFAD5E0, 0x00000014, 0x41A4CC7E, 0x00030006, \
0xFFFA0000, 0x00000033, 0x412CCC23, 0x00030006, \
0xFFFA1F98, 0x00000032, 0x412665BD, 0x00030006, \
0xFFFA0000, 0x00000032, 0x412665BD, 0x00030006, \
0xFFFA0000, 0x00000032, 0x4123328A, 0x00030006, \
0xFFFA0164, 0xFF000032, 0x412FFF56, 0x00030006, \
0xFFFA2100, 0x00000006, 0x00010383, 0x083D0000, \
0x0000001E, 0x4289332C, 0x00000064, 0x00050000, \
0x0000001E, 0x4289332C, 0x00000065, 0x00061FBC, \
0x0000001E, 0x4289332C, 0x00010063, 0x0029D5E0, \
0x0000001E, 0x4289332C, 0x0000002A, 0x00100000, \
0x0000001E, 0x4289332C, 0x0000002A, 0x00101F98, \
0x000003E8, 0x4289332C, 0x0000002A, 0x00100000, \
0x0000001E, 0x4289332C, 0x0000002A, 0x00100000, \
0xFF00001E, 0x4289332C, 0x0000002A, 0x00100164, \
0x0000003E, 0x00000001, 0x00040000, 0x0BB8C10F, \
0x00000000, 0x0000004D, 0x00000050, 0xFFFFFFFE, \
0x00000000, 0x00000050, 0x00000000, 0xBCD242E7, \
0x00000000, 0x3CD242E7, 0x00000013, 0x0000000E, \
0xFFFF0000, 0x018AFFFF, 0xFFFFFFFF, 0x4041018A, \
0x01BC0000, 0x00000000, 0xFFFF01BC, 0x01D0FFFF, \
0xFFFFFFFF, 0x404601D0, 0x021F0000, 0x00000000, \
0xFFFF021F, 0x0234FFFF, 0xFFFFFFFF, 0x40490234, \
0x02650000, 0x00000000, 0xFFFF0265, 0x027AFFFF, \
0xFFFFFFFF, 0x4047027A, 0x02AC0000, 0x00000000, \
0xFFFF02AC, 0x02C0FFFF, 0xFFFFFFFF, 0x404A02C0, \
0x02EE0000, 0x00000000, 0xFFFF02EE, 0x043DFFFF, \
0xFFFFFFFF, 0x003D043D, 0x04420000, 0x00000000, \
0xFFFF0442, 0x047EFFFF, 0xFFFFFFFF, 0x4042047E, \
0x04880000, 0x00000000, 0x000003E8, 0x00000001, \
0x001504A6, 0x04BD04BD, 0x00000056, 0x00000001, \
0x00440384, 0x03850000, 0x00000000, 0x00000000, \
0xFFFFFFC7, 0x00000034, 0x00000000, 0xFFFFFFC7, \
0x00000034, 0x00000000, 0x00000000, 0x00000000, \
0x0000007C, 0x00000001, 0x00040320, 0x03520000, \
0x00000000, 0x00000000, 0xFFFFFFC6, 0x00000030, \
0x00000000, 0xFFFFFFC6, 0x00000030, 0x00000000, \
0x00000000, 0x00000000, 0xFFFFFFFF, 0x00000000
var_809CA358: .word func_809C7FC0
.word func_809C7FE0
.word func_809C8000
.word func_809C803C
.word func_809C8084
.word func_809C80C8
.word func_809C8110
.word func_809C846C
.word func_809C848C
.word func_809C84D4
.word func_809C88BC
.word func_809C88DC
.word func_809C8928
.word func_809C8970
.word func_809C8E88
.word func_809C8ECC
.word func_809C8F34
.word func_809C8F90
.word func_809C8FEC
.word func_809C9048
var_809CA3A8: .word func_809C91EC
.word func_809C91FC
.word func_809C851C
var_809CA3B4: .word 0x00D20400, 0x00000010, 0x00CA0000, 0x00000304
.word func_809C90F4
.word func_809C7960
.word func_809C90AC
.word func_809C9330
.word 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_809CA3E0: .word 0x42A6AAAB
var_809CA3E4: .word 0xC61C4000, 0x00000000, 0x00000000

