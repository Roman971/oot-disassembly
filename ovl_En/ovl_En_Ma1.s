#include <mips.h>
.set noreorder
.set noat

.section .text
func_809F0A20:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_800597C0              
    addiu   a1, $zero, 0x0017          # a1 = 00000017
    beq     v0, $zero, lbl_809F0A44    
    andi    v1, v0, 0xFFFF             # v1 = 00000000
    beq     $zero, $zero, lbl_809F0AF8 
    or      v0, v1, $zero              # v0 = 00000000
lbl_809F0A44:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     t6, 0x8010                 # t6 = 80100000
    lw      t6, -0x73DC(t6)            # 800F8C24
    lw      t7, 0x00A4(v1)             # 8011A674
    and     t8, t6, t7                 
    beql    t8, $zero, lbl_809F0A70    
    lhu     v0, 0x0ED6(v1)             # 8011B4A6
    beq     $zero, $zero, lbl_809F0AF8 
    addiu   v0, $zero, 0x204A          # v0 = 0000204A
    lhu     v0, 0x0ED6(v1)             # 8011B4A6
lbl_809F0A70:
    andi    t9, v0, 0x0040             # t9 = 00000040
    beq     t9, $zero, lbl_809F0A84    
    andi    t0, v0, 0x0020             # t0 = 00000000
    beq     $zero, $zero, lbl_809F0AF8 
    addiu   v0, $zero, 0x2049          # v0 = 00002049
lbl_809F0A84:
    beq     t0, $zero, lbl_809F0AAC    
    andi    t3, v0, 0x0010             # t3 = 00000000
    lhu     t1, 0x0F08(v1)             # 8011B4D8
    andi    t2, t1, 0x0020             # t2 = 00000000
    beq     t2, $zero, lbl_809F0AA4    
    nop
    beq     $zero, $zero, lbl_809F0AF8 
    addiu   v0, $zero, 0x2049          # v0 = 00002049
lbl_809F0AA4:
    beq     $zero, $zero, lbl_809F0AF8 
    addiu   v0, $zero, 0x2048          # v0 = 00002048
lbl_809F0AAC:
    beq     t3, $zero, lbl_809F0ABC    
    andi    t4, v0, 0x0004             # t4 = 00000000
    beq     $zero, $zero, lbl_809F0AF8 
    addiu   v0, $zero, 0x2047          # v0 = 00002047
lbl_809F0ABC:
    beql    t4, $zero, lbl_809F0AD0    
    lhu     v0, 0x0F08(v1)             # 8011B4D8
    beq     $zero, $zero, lbl_809F0AF8 
    addiu   v0, $zero, 0x2044          # v0 = 00002044
    lhu     v0, 0x0F08(v1)             # 8011B4D8
lbl_809F0AD0:
    andi    t5, v0, 0x0010             # t5 = 00000000
    beq     t5, $zero, lbl_809F0AF4    
    andi    t6, v0, 0x0800             # t6 = 00000000
    beq     t6, $zero, lbl_809F0AEC    
    nop
    beq     $zero, $zero, lbl_809F0AF8 
    addiu   v0, $zero, 0x2043          # v0 = 00002043
lbl_809F0AEC:
    beq     $zero, $zero, lbl_809F0AF8 
    addiu   v0, $zero, 0x2042          # v0 = 00002042
lbl_809F0AF4:
    addiu   v0, $zero, 0x2041          # v0 = 00002041
lbl_809F0AF8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809F0B08:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sh      v1, 0x001E($sp)            
    addiu   a0, a2, 0x20D8             # a0 = 000020D8
    jal     func_800DD464              
    sw      a2, 0x0020($sp)            
    sltiu   $at, v0, 0x000A            
    lh      v1, 0x001E($sp)            
    beq     $at, $zero, lbl_809F0C40   
    lw      a2, 0x0020($sp)            
    sll     t6, v0,  2                 
    lui     $at, %hi(var_809F1A70)     # $at = 809F0000
    addu    $at, $at, t6               
    lw      t6, %lo(var_809F1A70)($at) 
    jr      t6                         
    nop
var_809F0B54:
    lw      t7, 0x0024($sp)            
    lhu     t8, 0x010E(t7)             # 0000010E
    addiu   t9, t8, 0xDFBF             # t9 = FFFFDFBF
    sltiu   $at, t9, 0x0021            
    beq     $at, $zero, lbl_809F0C04   
    sll     t9, t9,  2                 
    lui     $at, %hi(var_809F1A98)     # $at = 809F0000
    addu    $at, $at, t9               
    lw      t9, %lo(var_809F1A98)($at) 
    jr      t9                         
    nop
var_809F0B80:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t0, 0x0F08(v0)             # 8011B4D8
    lhu     t2, 0x0ED6(v0)             # 8011B4A6
    or      v1, $zero, $zero           # v1 = 00000000
    ori     t1, t0, 0x0010             # t1 = 00000010
    ori     t3, t2, 0x0001             # t3 = 00000001
    sh      t1, 0x0F08(v0)             # 8011B4D8
    beq     $zero, $zero, lbl_809F0C40 
    sh      t3, 0x0ED6(v0)             # 8011B4A6
var_809F0BA8:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t4, 0x0ED6(v0)             # 8011B4A6
    or      v1, $zero, $zero           # v1 = 00000000
    ori     t5, t4, 0x0020             # t5 = 00000020
    beq     $zero, $zero, lbl_809F0C40 
    sh      t5, 0x0ED6(v0)             # 8011B4A6
var_809F0BC4:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t6, 0x0F08(v0)             # 8011B4D8
    or      v1, $zero, $zero           # v1 = 00000000
    ori     t7, t6, 0x0020             # t7 = 00000020
    beq     $zero, $zero, lbl_809F0C40 
    sh      t7, 0x0F08(v0)             # 8011B4D8
var_809F0BE0:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0ED6(v0)             # 8011B4A6
    or      v1, $zero, $zero           # v1 = 00000000
    ori     t9, t8, 0x0040             # t9 = 00000040
    beq     $zero, $zero, lbl_809F0C40 
    sh      t9, 0x0ED6(v0)             # 8011B4A6
var_809F0BFC:
    beq     $zero, $zero, lbl_809F0C40 
    addiu   v1, $zero, 0x0002          # v1 = 00000002
lbl_809F0C04:
    beq     $zero, $zero, lbl_809F0C40 
    or      v1, $zero, $zero           # v1 = 00000000
var_809F0C0C:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800D6110              
    sh      v1, 0x001E($sp)            
    beq     v0, $zero, lbl_809F0C40    
    lh      v1, 0x001E($sp)            
    beq     $zero, $zero, lbl_809F0C40 
    addiu   v1, $zero, 0x0002          # v1 = 00000002
var_809F0C28:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800D6110              
    sh      v1, 0x001E($sp)            
    beq     v0, $zero, lbl_809F0C40    
    lh      v1, 0x001E($sp)            
    addiu   v1, $zero, 0x0003          # v1 = 00000003
lbl_809F0C40:
    or      v0, v1, $zero              # v0 = 00000003
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809F0C54:
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lh      v0, 0x00B8(a0)             # 000000B8
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    bne     a2, v0, lbl_809F0C84       
    nop
    lw      t6, 0x1360(a0)             # 8011B930
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     t6, $at, lbl_809F0C84      
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809F0C84:
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    lw      t7, 0x0004(a0)             # 8011A5D4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    beql    a3, t7, lbl_809F0CA8       
    lh      v1, 0x00A4(a1)             # 000000A4
    jr      $ra                        
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809F0CA4:
    lh      v1, 0x00A4(a1)             # 000000A4
lbl_809F0CA8:
    addiu   $at, $zero, 0x0021         # $at = 00000021
    beq     v1, $at, lbl_809F0CBC      
    addiu   $at, $zero, 0x0020         # $at = 00000020
    bnel    v1, $at, lbl_809F0CE8      
    addiu   $at, $zero, 0x005F         # $at = 0000005F
lbl_809F0CBC:
    lhu     t8, 0x0ED6(a0)             # 8011B4A6
    andi    t9, t8, 0x0010             # t9 = 00000000
    bnel    t9, $zero, lbl_809F0CE8    
    addiu   $at, $zero, 0x005F         # $at = 0000005F
    lhu     t0, 0x0F08(a0)             # 8011B4D8
    andi    t1, t0, 0x0800             # t1 = 00000000
    bnel    t1, $zero, lbl_809F0CE8    
    addiu   $at, $zero, 0x005F         # $at = 0000005F
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809F0CE4:
    addiu   $at, $zero, 0x005F         # $at = 0000005F
lbl_809F0CE8:
    bnel    v1, $at, lbl_809F0D28      
    addiu   $at, $zero, 0x004C         # $at = 0000004C
    lhu     t2, 0x0ED6(a0)             # 8011B4A6
    andi    t3, t2, 0x0010             # t3 = 00000000
    bnel    t3, $zero, lbl_809F0D28    
    addiu   $at, $zero, 0x004C         # $at = 0000004C
    lhu     v1, 0x0F08(a0)             # 8011B4D8
    or      v0, $zero, $zero           # v0 = 00000000
    andi    t4, v1, 0x0800             # t4 = 00000000
    beq     t4, $zero, lbl_809F0D1C    
    ori     t5, v1, 0x0800             # t5 = 00000800
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809F0D1C:
    jr      $ra                        
    sh      t5, 0x0F08(a0)             # 8011B4D8
lbl_809F0D24:
    addiu   $at, $zero, 0x004C         # $at = 0000004C
lbl_809F0D28:
    bnel    v1, $at, lbl_809F0D58      
    addiu   $at, $zero, 0x0063         # $at = 00000063
    lw      t6, 0x0010(a0)             # 8011A5E0
    bnel    a3, t6, lbl_809F0D58       
    addiu   $at, $zero, 0x0063         # $at = 00000063
    lhu     t7, 0x0ED6(a0)             # 8011B4A6
    andi    t8, t7, 0x0010             # t8 = 00000000
    beql    t8, $zero, lbl_809F0D58    
    addiu   $at, $zero, 0x0063         # $at = 00000063
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809F0D54:
    addiu   $at, $zero, 0x0063         # $at = 00000063
lbl_809F0D58:
    beq     v1, $at, lbl_809F0D68      
    nop
    jr      $ra                        
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809F0D68:
    bnel    a2, v0, lbl_809F0D98       
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t9, 0x0010(a0)             # 8011A5E0
    bnel    t9, $zero, lbl_809F0D98    
    or      v0, $zero, $zero           # v0 = 00000000
    lhu     t0, 0x0ED6(a0)             # 8011B4A6
    andi    t1, t0, 0x0010             # t1 = 00000000
    beql    t1, $zero, lbl_809F0D98    
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809F0D94:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809F0D98:
    jr      $ra                        
    nop


func_809F0DA0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lh      v0, 0x01D2(a2)             # 000001D2
    bne     v0, $zero, lbl_809F0DC0    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_809F0DC8 
    or      v1, $zero, $zero           # v1 = 00000000
lbl_809F0DC0:
    sh      t6, 0x01D2(a2)             # 000001D2
    lh      v1, 0x01D2(a2)             # 000001D2
lbl_809F0DC8:
    bnel    v1, $zero, lbl_809F0E0C    
    lw      $ra, 0x0014($sp)           
    lh      t7, 0x01D4(a2)             # 000001D4
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x01D4(a2)             # 000001D4
    lh      t9, 0x01D4(a2)             # 000001D4
    slti    $at, t9, 0x0003            
    bnel    $at, $zero, lbl_809F0E0C   
    lw      $ra, 0x0014($sp)           
    jal     func_80063BF0              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    sh      v0, 0x01D2(a2)             # 000001D2
    sh      $zero, 0x01D4(a2)          # 000001D4
    lw      $ra, 0x0014($sp)           
lbl_809F0E0C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809F0E18:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0030($sp)            
    lui     t7, %hi(var_809F1A08)      # t7 = 809F0000
    addiu   t7, t7, %lo(var_809F1A08)  # t7 = 809F1A08
    sll     t6, a1,  4                 
    addu    v1, t6, t7                 
    lw      a0, 0x0000(v1)             # 00000000
    jal     func_8008A194              
    sw      v1, 0x0028($sp)            
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      v1, 0x0028($sp)            
    lw      a0, 0x0030($sp)            
    cvt.s.w $f6, $f4                   
    lbu     t8, 0x0008(v1)             # 00000008
    lwc1    $f8, 0x000C(v1)            # 0000000C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    lw      a1, 0x0000(v1)             # 00000000
    swc1    $f6, 0x0010($sp)           
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    sw      t8, 0x0014($sp)            
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_809F0E88:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x01D8(a0)             # 000001D8
    lw      v0, 0x1C44(a1)             # 00001C44
    or      a3, $zero, $zero           # a3 = 00000000
    bne     t6, $zero, lbl_809F0EC0    
    nop
    lw      t8, 0x0144(a0)             # 00000144
    lui     t7, 0x0601                 # t7 = 06010000
    addiu   t7, t7, 0x8D64             # t7 = 06008D64
    bne     t7, t8, lbl_809F0EC0       
    nop
    beq     $zero, $zero, lbl_809F0EC0 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_809F0EC0:
    lw      t0, 0x0024(v0)             # 00000024
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f6                   # $f6 = -10.00
    sw      t0, 0x01F0(a0)             # 000001F0
    lw      t9, 0x0028(v0)             # 00000028
    addiu   a1, a0, 0x01D8             # a1 = 000001D8
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t9, 0x01F4(a0)             # 000001F4
    lwc1    $f4, 0x01F4(a0)            # 000001F4
    lw      t0, 0x002C(v0)             # 0000002C
    sub.s   $f8, $f4, $f6              
    sw      t0, 0x01F8(a0)             # 000001F8
    jal     func_80027854              
    swc1    $f8, 0x01F4(a0)            # 000001F4
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809F0F08:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              # a1 = 00000000
    lw      t7, 0x0144(a1)             # 00000144
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0x8D64             # t6 = 06008D64
    bnel    t6, t7, lbl_809F0F74       
    lw      $ra, 0x0014($sp)           
    lh      t8, 0x01D8(a1)             # 000001D8
    bnel    t8, $zero, lbl_809F0F58    
    lh      t0, 0x01D0(a1)             # 000001D0
    lh      t9, 0x01D0(a1)             # 000001D0
    or      a0, $zero, $zero           # a0 = 00000000
    beql    t9, $zero, lbl_809F0F74    
    lw      $ra, 0x0014($sp)           
    jal     func_800C72A4              
    sh      $zero, 0x01D0(a1)          # 000001D0
    beq     $zero, $zero, lbl_809F0F74 
    lw      $ra, 0x0014($sp)           
    lh      t0, 0x01D0(a1)             # 000001D0
lbl_809F0F58:
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    bnel    t0, $zero, lbl_809F0F74    
    lw      $ra, 0x0014($sp)           
    jal     func_800C72A4              
    sh      t1, 0x01D0(a1)             # 000001D0
    lw      $ra, 0x0014($sp)           
lbl_809F0F74:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809F0F80:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x4190                 # a3 = 41900000
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   a2, a2, 0x8460             # a2 = 06008460
    lw      a0, 0x0044($sp)            
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8008C788              
    sw      $zero, 0x0018($sp)         
    addiu   a1, s0, 0x0184             # a1 = 00000184
    sw      a1, 0x0030($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x0044($sp)            
    lui     a3, %hi(var_809F19D0)      # a3 = 809F0000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_809F19D0)  # a3 = 809F19D0
    lw      a0, 0x0044($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_80049E10              
    addiu   a0, $zero, 0x0016          # a0 = 00000016
    lui     a2, %hi(var_809F19FC)      # a2 = 809F0000
    addiu   a2, a2, %lo(var_809F19FC)  # a2 = 809F19FC
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050370              
    or      a1, v0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809F0C54              
    lw      a1, 0x0044($sp)            
    bne     v0, $zero, lbl_809F1038    
    lw      a0, 0x0044($sp)            
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809F10D8 
    lw      $ra, 0x002C($sp)           
lbl_809F1038:
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      t6, 0x0014($sp)            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sb      t7, 0x001F(s0)             # 0000001F
    sh      $zero, 0x01D8(s0)          # 000001D8
    lhu     t8, 0x0ED6(v0)             # 8011B4A6
    lui     t3, %hi(func_809F1128)     # t3 = 809F0000
    lui     t0, 0x8010                 # t0 = 80100000
    andi    t9, t8, 0x0010             # t9 = 00000000
    beq     t9, $zero, lbl_809F10B0    
    addiu   t3, t3, %lo(func_809F1128) # t3 = 809F1128
    lw      t0, -0x73DC(t0)            # 800F8C24
    lw      t1, 0x00A4(v0)             # 8011A674
    lui     t4, %hi(func_809F12E8)     # t4 = 809F0000
    addiu   t4, t4, %lo(func_809F12E8) # t4 = 809F12E8
    and     t2, t0, t1                 
    beq     t2, $zero, lbl_809F10C8    
    or      a0, s0, $zero              # a0 = 00000000
lbl_809F10B0:
    sw      t3, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809F0E18              
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    beq     $zero, $zero, lbl_809F10D8 
    lw      $ra, 0x002C($sp)           
lbl_809F10C8:
    sw      t4, 0x0180(s0)             # 00000180
    jal     func_809F0E18              
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lw      $ra, 0x002C($sp)           
lbl_809F10D8:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_809F10E8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_8008D6D0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x0184             # a1 = 00000184
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809F1128:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    lh      t6, 0x01D8(a0)             # 000001D8
    beql    t6, $zero, lbl_809F1170    
    lw      t0, 0x0144(a0)             # 00000144
    lw      t8, 0x0144(a0)             # 00000144
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x0820             # t7 = 06000820
    beq     t7, t8, lbl_809F1194       
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sw      a0, 0x0018($sp)            
    jal     func_809F0E18              
    sw      a2, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    beq     $zero, $zero, lbl_809F1194 
    lw      a2, 0x001C($sp)            
    lw      t0, 0x0144(a0)             # 00000144
lbl_809F1170:
    lui     t9, 0x0601                 # t9 = 06010000
    addiu   t9, t9, 0x8D64             # t9 = 06008D64
    beq     t9, t0, lbl_809F1194       
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sw      a0, 0x0018($sp)            
    jal     func_809F0E18              
    sw      a2, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    lw      a2, 0x001C($sp)            
lbl_809F1194:
    lh      t1, 0x00A4(a2)             # 000000A4
    addiu   $at, $zero, 0x005F         # $at = 0000005F
    lui     v0, 0x8012                 # v0 = 80120000
    bne     t1, $at, lbl_809F11C8      
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t2, 0x0ED6(v0)             # 8011B4A6
    andi    t3, t2, 0x0010             # t3 = 00000000
    beq     t3, $zero, lbl_809F11C8    
    nop
    jal     func_80020EB4              
    nop
    beq     $zero, $zero, lbl_809F1234 
    lw      $ra, 0x0014($sp)           
lbl_809F11C8:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t4, 0x0ED6(v0)             # 8011B4A6
    lui     t6, 0x8010                 # t6 = 80100000
    andi    t5, t4, 0x0010             # t5 = 00000000
    beql    t5, $zero, lbl_809F11FC    
    lh      t9, 0x01D8(a0)             # 000001D8
    lw      t6, -0x73DC(t6)            # 800F8C24
    lw      t7, 0x00A4(v0)             # 8011A674
    and     t8, t6, t7                 
    beql    t8, $zero, lbl_809F1234    
    lw      $ra, 0x0014($sp)           
    lh      t9, 0x01D8(a0)             # 000001D8
lbl_809F11FC:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t0, %hi(func_809F1240)     # t0 = 809F0000
    bne     t9, $at, lbl_809F1230      
    addiu   t0, t0, %lo(func_809F1240) # t0 = 809F1240
    lui     $at, 0x0001                # $at = 00010000
    sw      t0, 0x0180(a0)             # 00000180
    addu    $at, $at, a2               
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    sb      t1, 0x04BF($at)            # 000104BF
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a2               
    addiu   t2, $zero, 0x0036          # t2 = 00000036
    sb      t2, 0x03DC($at)            # 000103DC
lbl_809F1230:
    lw      $ra, 0x0014($sp)           
lbl_809F1234:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809F1240:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_80022BB0              
    sw      a0, 0x0020($sp)            
    beq     v0, $zero, lbl_809F1274    
    lw      a0, 0x0020($sp)            
    lui     t6, %hi(func_809F12A0)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809F12A0) # t6 = 809F12A0
    sw      $zero, 0x0118(a0)          # 00000118
    beq     $zero, $zero, lbl_809F1290 
    sw      t6, 0x0180(a0)             # 00000180
lbl_809F1274:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lw      a1, 0x0024($sp)            
    addiu   a2, $zero, 0x0047          # a2 = 00000047
    lui     a3, 0x42F0                 # a3 = 42F00000
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
lbl_809F1290:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809F12A0:
    lh      t6, 0x01D8(a0)             # 000001D8
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     v0, 0x8012                 # v0 = 80120000
    bne     t6, $at, lbl_809F12E0      
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lui     t7, %hi(func_809F1128)     # t7 = 809F0000
    addiu   t7, t7, %lo(func_809F1128) # t7 = 809F1128
    sh      $zero, 0x01D8(a0)          # 000001D8
    sw      t7, 0x0180(a0)             # 00000180
    lhu     t8, 0x0ED6(v0)             # 8011B4A6
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1               
    ori     t9, t8, 0x0004             # t9 = 00000004
    sh      t9, 0x0ED6(v0)             # 8011B4A6
    addiu   t0, $zero, 0x0036          # t0 = 00000036
    sb      t0, 0x03DC($at)            # 000103DC
lbl_809F12E0:
    jr      $ra                        
    nop


func_809F12E8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lh      t7, 0x01D8(s0)             # 000001D8
    lw      t6, 0x002C($sp)            
    beq     t7, $zero, lbl_809F1334    
    lw      v1, 0x1C44(t6)             # 00001C44
    lw      t9, 0x0144(s0)             # 00000144
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x0820             # t8 = 06000820
    beq     t8, t9, lbl_809F1358       
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_809F0E18              
    sw      v1, 0x0024($sp)            
    beq     $zero, $zero, lbl_809F1358 
    lw      v1, 0x0024($sp)            
lbl_809F1334:
    lw      t1, 0x0144(s0)             # 00000144
    lui     t0, 0x0601                 # t0 = 06010000
    addiu   t0, t0, 0x8D64             # t0 = 06008D64
    beq     t0, t1, lbl_809F1358       
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    jal     func_809F0E18              
    sw      v1, 0x0024($sp)            
    lw      v1, 0x0024($sp)            
lbl_809F1358:
    lui     t2, 0x8012                 # t2 = 80120000
    lhu     t2, -0x4B5A(t2)            # 8011B4A6
    andi    t3, t2, 0x0040             # t3 = 00000000
    beql    t3, $zero, lbl_809F1404    
    lw      $ra, 0x001C($sp)           
    lw      v0, 0x0670(v1)             # 00000670
    lui     $at, 0x0200                # $at = 02000000
    addiu   t6, $zero, 0x2061          # t6 = 00002061
    sll     t4, v0,  7                 
    bgez    t4, lbl_809F13C8           
    or      t5, v0, $at                # t5 = 02000000
    sw      t5, 0x0670(v1)             # 00000670
    sw      s0, 0x0698(v1)             # 00000698
    sh      t6, 0x010E(s0)             # 0000010E
    lw      a0, 0x002C($sp)            
    andi    a1, t6, 0xFFFF             # a1 = 00002061
    jal     func_800DCE14              
    or      a2, $zero, $zero           # a2 = 00000000
    lw      t8, 0x0004(s0)             # 00000004
    lui     $at, 0x0001                # $at = 00010000
    lui     t0, %hi(func_809F1414)     # t0 = 809F0000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t0, t0, %lo(func_809F1414) # t0 = 809F1414
    or      t9, t8, $at                # t9 = 00010000
    sh      t7, 0x01D8(s0)             # 000001D8
    sw      t9, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_809F1400 
    sw      t0, 0x0180(s0)             # 00000180
lbl_809F13C8:
    lh      t1, 0x01C4(s0)             # 000001C4
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    mtc1    t1, $f8                    # $f8 = 0.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    lui     $at, 0x0080                # $at = 00800000
    cvt.s.w $f10, $f8                  
    or      t2, v0, $at                # t2 = 00800000
    add.s   $f16, $f6, $f10            
    c.lt.s  $f4, $f16                  
    nop
    bc1fl   lbl_809F1404               
    lw      $ra, 0x001C($sp)           
    sw      t2, 0x0670(v1)             # 00000670
lbl_809F1400:
    lw      $ra, 0x001C($sp)           
lbl_809F1404:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809F1414:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lw      v0, 0x1C44(a3)             # 00001C44
    lui     $at, 0x0080                # $at = 00800000
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    lw      t6, 0x0670(v0)             # 00000670
    or      t7, t6, $at                # t7 = 00800000
    sw      t7, 0x0670(v0)             # 00000670
    lh      t8, 0x01D8(a2)             # 000001D8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t8, $at, lbl_809F148C      
    lw      $ra, 0x0014($sp)           
    sw      a2, 0x0018($sp)            
    jal     func_800C2C90              
    sw      a3, 0x001C($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_800DD400              
    addiu   a1, $zero, 0x0009          # a1 = 00000009
    lw      a2, 0x0018($sp)            
    lui     $at, 0xFFFE                # $at = FFFE0000
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    lw      t9, 0x0004(a2)             # 00000004
    lui     t1, %hi(func_809F1498)     # t1 = 809F0000
    addiu   t1, t1, %lo(func_809F1498) # t1 = 809F1498
    and     t0, t9, $at                
    sw      t0, 0x0004(a2)             # 00000004
    sw      t1, 0x0180(a2)             # 00000180
    lw      $ra, 0x0014($sp)           
lbl_809F148C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809F1498:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lw      v0, 0x1C44(a2)             # 00001C44
    lui     $at, 0x0080                # $at = 00800000
    addiu   a0, a2, 0x20D8             # a0 = 000020D8
    lw      t6, 0x0670(v0)             # 00000670
    or      t7, t6, $at                # t7 = 00800000
    sw      t7, 0x0670(v0)             # 00000670
    jal     func_800DD464              
    sw      a2, 0x001C($sp)            
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     v0, $at, lbl_809F14F0      
    lw      a2, 0x001C($sp)            
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800DD400              
    addiu   a1, $zero, 0x0016          # a1 = 00000016
    lw      t9, 0x0018($sp)            
    lui     t8, %hi(func_809F1500)     # t8 = 809F0000
    addiu   t8, t8, %lo(func_809F1500) # t8 = 809F1500
    sw      t8, 0x0180(t9)             # 00000180
lbl_809F14F0:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809F1500:
    lw      v0, 0x1C44(a1)             # 00001C44
    lui     $at, 0x0080                # $at = 00800000
    lui     t8, 0x0001                 # t8 = 00010000
    lw      t6, 0x0670(v0)             # 00000670
    addu    t8, t8, a1                 
    addiu   t9, $zero, 0x0157          # t9 = 00000157
    or      t7, t6, $at                # t7 = 00800000
    sw      t7, 0x0670(v0)             # 00000670
    lhu     t8, 0x04C6(t8)             # 000104C6
    addiu   $at, $zero, 0x0003         # $at = 00000003
    ori     t0, $zero, 0xFFF1          # t0 = 0000FFF1
    bne     t8, $at, lbl_809F1570      
    addiu   t1, $zero, 0x002A          # t1 = 0000002A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1               
    sh      t9, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x8012                # $at = 80120000
    sh      t0, -0x461E($at)           # 8011B9E2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1               
    sb      t1, 0x1E5E($at)            # 00011E5E
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1               
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    lui     t3, %hi(func_809F1578)     # t3 = 809F0000
    sb      t2, 0x1E15($at)            # 00011E15
    addiu   t3, t3, %lo(func_809F1578) # t3 = 809F1578
    sw      t3, 0x0180(a0)             # 00000180
lbl_809F1570:
    jr      $ra                        
    nop


func_809F1578:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_809F1588:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    addiu   a2, s0, 0x0184             # a2 = 00000184
    or      a1, a2, $zero              # a1 = 00000184
    sw      a2, 0x002C($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x002C($sp)            
    addu    a1, s1, $at                
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_809F0DA0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lw      t7, 0x0180(s0)             # 00000180
    lui     t6, %hi(func_809F1578)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809F1578) # t6 = 809F1578
    beq     t6, t7, lbl_809F164C       
    nop
    lh      t8, 0x01C4(s0)             # 000001C4
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    mtc1    t8, $f4                    # $f4 = 0.00
    lui     t0, %hi(func_809F0A20)     # t0 = 809F0000
    lui     t1, %hi(func_809F0B08)     # t1 = 809F0000
    cvt.s.w $f6, $f4                   
    addiu   t1, t1, %lo(func_809F0B08) # t1 = 809F0B08
    addiu   t0, t0, %lo(func_809F0A20) # t0 = 809F0A20
    sw      t0, 0x0010($sp)            
    sw      t1, 0x0014($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    add.s   $f10, $f6, $f8             
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x01D8             # a2 = 000001D8
    mfc1    a3, $f10                   
    jal     func_800271FC              
    nop
lbl_809F164C:
    jal     func_809F0F08              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809F0E88              
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_809F1674:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    sw      a3, 0x0034($sp)            
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     a1, $at, lbl_809F169C      
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    a1, $at, lbl_809F16A4      
    addiu   $at, $zero, 0x000F         # $at = 0000000F
lbl_809F169C:
    sw      $zero, 0x0000(a2)          # 00000000
    addiu   $at, $zero, 0x000F         # $at = 0000000F
lbl_809F16A4:
    bnel    a1, $at, lbl_809F1764      
    addiu   $at, $zero, 0x0008         # $at = 00000008
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0x44AF                # $at = 44AF0000
    mtc1    $at, $f12                  # $f12 = 1400.00
    mfc1    a2, $f14                   
    jal     func_800AA7F4              
    sw      a1, 0x002C($sp)            
    lw      t7, 0x003C($sp)            
    addiu   t6, $sp, 0x001C            # t6 = FFFFFFF4
    lui     $at, 0x4700                # $at = 47000000
    lwl     t9, 0x01E0(t7)             # 000001E0
    lwr     t9, 0x01E3(t7)             # 000001E3
    mtc1    $at, $f8                   # $f8 = 32768.00
    lui     $at, %hi(var_809F1B1C)     # $at = 809F0000
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lhu     t9, 0x01E4(t7)             # 000001E4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sh      t9, 0x0004(t6)             # FFFFFFF8
    lh      t0, 0x001E($sp)            
    lwc1    $f16, %lo(var_809F1B1C)($at) 
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    div.s   $f10, $f6, $f8             
    mul.s   $f12, $f10, $f16           
    jal     func_800AA9E0              
    nop
    lh      t1, 0x001C($sp)            
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f6                   # $f6 = 32768.00
    mtc1    t1, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_809F1B20)     # $at = 809F0000
    lwc1    $f10, %lo(var_809F1B20)($at) 
    cvt.s.w $f4, $f18                  
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f8, $f4, $f6              
    mul.s   $f12, $f8, $f10            
    jal     func_800AAD4C              
    nop
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0xC4AF                # $at = C4AF0000
    mtc1    $at, $f12                  # $f12 = -1400.00
    mfc1    a2, $f14                   
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      a1, 0x002C($sp)            
    addiu   $at, $zero, 0x0008         # $at = 00000008
lbl_809F1764:
    bne     a1, $at, lbl_809F17F0      
    lw      t3, 0x003C($sp)            
    lwl     t5, 0x01E6(t3)             # 000001E6
    lwr     t5, 0x01E9(t3)             # 000001E9
    addiu   t2, $sp, 0x001C            # t2 = FFFFFFF4
    lui     $at, 0x4700                # $at = 47000000
    sw      t5, 0x0000(t2)             # FFFFFFF4
    lhu     t5, 0x01EA(t3)             # 000001EA
    mtc1    $at, $f4                   # $f4 = 32768.00
    lui     $at, %hi(var_809F1B24)     # $at = 809F0000
    sh      t5, 0x0004(t2)             # FFFFFFF8
    lh      t6, 0x001E($sp)            
    lwc1    $f8, %lo(var_809F1B24)($at) 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    subu    t7, $zero, t6              
    mtc1    t7, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    div.s   $f6, $f18, $f4             
    mul.s   $f12, $f6, $f8             
    jal     func_800AA9E0              
    nop
    lh      t8, 0x001C($sp)            
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f18                  # $f18 = 32768.00
    subu    t9, $zero, t8              
    mtc1    t9, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_809F1B28)     # $at = 809F0000
    lwc1    $f6, %lo(var_809F1B28)($at) 
    cvt.s.w $f16, $f10                 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f4, $f16, $f18            
    mul.s   $f12, $f4, $f6             
    jal     func_800AAD4C              
    nop
lbl_809F17F0:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809F1804:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      a0, 0x0028($sp)            
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFF0
    sw      $ra, 0x0014($sp)           
    sw      a2, 0x0030($sp)            
    sw      a3, 0x0034($sp)            
    lui     t6, %hi(var_809F1A48)      # t6 = 809F0000
    addiu   t6, t6, %lo(var_809F1A48)  # t6 = 809F1A48
    lw      t8, 0x0000(t6)             # 809F1A48
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    sw      t8, 0x0000(a0)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 809F1A4C
    sw      t7, 0x0004(a0)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 809F1A50
    bne     a1, $at, lbl_809F1850      
    sw      t8, 0x0008(a0)             # FFFFFFF8
    lw      a1, 0x0038($sp)            
    jal     func_800AB958              
    addiu   a1, a1, 0x0038             # a1 = 00000038
lbl_809F1850:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809F1860:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lh      t6, 0x07A0(s1)             # 000007A0
    lw      t3, 0x0000(s1)             # 00000000
    addiu   a0, s0, 0x0024             # a0 = 00000024
    sll     t7, t6,  2                 
    addu    t8, s1, t7                 
    lw      v0, 0x0790(t8)             # 00000790
    sw      t3, 0x0034($sp)            
    jal     func_80063EB8              
    addiu   a1, v0, 0x005C             # a1 = 0000005C
    mov.s   $f12, $f0                  
    jal     func_800C6F9C              
    addiu   a1, $zero, 0x002F          # a1 = 0000002F
    jal     func_8007E298              
    lw      a0, 0x0000(s1)             # 00000000
    lui     t4, 0x00FF                 # t4 = 00FF0000
    lui     t5, 0x8012                 # t5 = 80120000
    addiu   t5, t5, 0x0C38             # t5 = 80120C38
    ori     t4, t4, 0xFFFF             # t4 = 00FFFFFF
    lw      t3, 0x0034($sp)            
    lui     $ra, 0x8000                # $ra = 80000000
    lw      v0, 0x02C0(t3)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0024             # t6 = DB060024
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t3)             # 000002C0
    sw      t6, 0x0000(v0)             # 00000000
    lh      t7, 0x01D6(s0)             # 000001D6
    lui     t1, %hi(var_809F1A54)      # t1 = 809F0000
    or      a0, s1, $zero              # a0 = 00000000
    sll     t8, t7,  2                 
    addu    t1, t1, t8                 
    lw      t1, %lo(var_809F1A54)(t1)  
    sll     t6, t1,  4                 
    srl     t7, t6, 28                 
    sll     t8, t7,  2                 
    addu    t6, t5, t8                 
    lw      t7, 0x0000(t6)             # DB060024
    and     t9, t1, t4                 
    addu    t8, t9, t7                 
    addu    t6, t8, $ra                
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(t3)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t3)             # 000002C0
    sw      t7, 0x0000(v0)             # 00000000
    lh      t8, 0x01D4(s0)             # 000001D4
    lui     t2, %hi(var_809F1A60)      # t2 = 809F0000
    sll     t6, t8,  2                 
    addu    t2, t2, t6                 
    lw      t2, %lo(var_809F1A60)(t2)  
    sll     t7, t2,  4                 
    srl     t8, t7, 28                 
    sll     t6, t8,  2                 
    addu    t7, t5, t6                 
    lw      t8, 0x0000(t7)             # DB060020
    and     t9, t2, t4                 
    addu    t6, t9, t8                 
    addu    t7, t6, $ra                
    sw      t7, 0x0004(v0)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t9, %hi(func_809F1674)     # t9 = 809F0000
    lui     t8, %hi(func_809F1804)     # t8 = 809F0000
    addiu   t8, t8, %lo(func_809F1804) # t8 = 809F1804
    addiu   t9, t9, %lo(func_809F1674) # t9 = 809F1674
    sw      t9, 0x0010($sp)            
    sw      t8, 0x0014($sp)            
    jal     func_80089D8C              
    sw      s0, 0x0018($sp)            
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    nop

.section .data

var_809F19B0: .word 0x00E70400, 0x02000039, 0x00E00000, 0x00000200
.word func_809F0F80
.word func_809F10E8
.word func_809F1588
.word func_809F1860
var_809F19D0: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x0012002E, 0x00000000, 0x00000000
var_809F19FC: .word 0x00000000, 0x00000000, 0xFF000000
var_809F1A08: .word \
0x06000820, 0x3F800000, 0x00000000, 0x00000000, \
0x06000820, 0x3F800000, 0x00000000, 0xC1200000, \
0x06008D64, 0x3F800000, 0x00000000, 0x00000000, \
0x06008D64, 0x3F800000, 0x00000000, 0xC1200000
var_809F1A48: .word 0x44480000, 0x00000000, 0x00000000
var_809F1A54: .word 0x06001F18, 0x06002B18, 0x06002F18
var_809F1A60: .word 0x06001B18, 0x06002318, 0x06002718, 0x00000000

.section .rodata

var_809F1A70: .word lbl_809F0C40
.word lbl_809F0C40
.word var_809F0B54
.word lbl_809F0C40
.word var_809F0C0C
.word var_809F0C0C
.word var_809F0C28
.word lbl_809F0C40
.word lbl_809F0C40
.word lbl_809F0C40
var_809F1A98: .word var_809F0B80
.word lbl_809F0C04
.word lbl_809F0C40
.word lbl_809F0C04
.word lbl_809F0C04
.word lbl_809F0C04
.word var_809F0BA8
.word var_809F0BC4
.word var_809F0BE0
.word lbl_809F0C04
.word lbl_809F0C04
.word lbl_809F0C04
.word lbl_809F0C04
.word lbl_809F0C04
.word lbl_809F0C04
.word lbl_809F0C04
.word lbl_809F0C04
.word lbl_809F0C04
.word lbl_809F0C04
.word lbl_809F0C04
.word lbl_809F0C04
.word lbl_809F0C04
.word lbl_809F0C04
.word lbl_809F0C04
.word lbl_809F0C04
.word lbl_809F0C04
.word lbl_809F0C04
.word lbl_809F0C04
.word lbl_809F0C04
.word lbl_809F0C04
.word lbl_809F0C04
.word lbl_809F0C04
.word var_809F0BFC
var_809F1B1C: .word 0x40490FDB
var_809F1B20: .word 0x40490FDB
var_809F1B24: .word 0x40490FDB
var_809F1B28: .word 0x40490FDB, 0x00000000

