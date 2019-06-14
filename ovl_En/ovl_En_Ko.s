#include <mips.h>
.set noreorder
.set noat

.section .text
func_80AD1C20:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    lh      t6, 0x001C(a2)             ## 0000001C
    lui     t9, %hi(var_80AD5310)      ## t9 = 80AD0000
    addiu   t9, t9, %lo(var_80AD5310)  ## t9 = 80AD5310
    andi    t7, t6, 0x00FF             ## t7 = 00000000
    sll     t8, t7,  2                 
    subu    t8, t8, t7                 
    sll     t8, t8,  2                 
    subu    t8, t8, t7                 
    addu    v0, t8, t9                 
    lbu     v1, 0x0006(v0)             ## 00000006
    lui     $at, 0x0001                ## $at = 00010000
    lbu     t0, 0x0000(v0)             ## 00000000
    lbu     t1, 0x0001(v0)             ## 00000001
    ori     $at, $at, 0x17A4           ## $at = 000117A4
    lui     a1, %hi(var_80AD4F8C)      ## a1 = 80AD0000
    sll     t2, v1,  3                 
    addu    a1, a1, t2                 
    addu    a0, a3, $at                
    sw      a0, 0x0018($sp)            
    lh      a1, %lo(var_80AD4F8C)(a1)  
    sw      a2, 0x0020($sp)            
    sb      t0, 0x001F($sp)            
    jal     func_80081628              ## ObjectIndex
    sb      t1, 0x001E($sp)            
    lw      a2, 0x0020($sp)            
    lui     a1, %hi(var_80AD4F8C)      ## a1 = 80AD0000
    sb      v0, 0x0186(a2)             ## 00000186
    lb      t3, 0x0186(a2)             ## 00000186
    lbu     t4, 0x001E($sp)            
    lw      a0, 0x0018($sp)            
    bgez    t3, lbl_80AD1CB8           
    sll     t5, t4,  3                 
    beq     $zero, $zero, lbl_80AD1D28 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD1CB8:
    addu    a1, a1, t5                 
    lh      a1, %lo(var_80AD4F8C)(a1)  
    jal     func_80081628              ## ObjectIndex
    sw      a2, 0x0020($sp)            
    lw      a2, 0x0020($sp)            
    lui     a1, %hi(var_80AD4F68)      ## a1 = 80AD0000
    sb      v0, 0x0185(a2)             ## 00000185
    lb      t6, 0x0185(a2)             ## 00000185
    lbu     t7, 0x001F($sp)            
    lw      a0, 0x0018($sp)            
    bgez    t6, lbl_80AD1CF0           
    sll     t8, t7,  2                 
    beq     $zero, $zero, lbl_80AD1D28 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD1CF0:
    subu    t8, t8, t7                 
    sll     t8, t8,  2                 
    addu    a1, a1, t8                 
    lh      a1, %lo(var_80AD4F68)(a1)  
    jal     func_80081628              ## ObjectIndex
    sw      a2, 0x0020($sp)            
    lw      a2, 0x0020($sp)            
    sb      v0, 0x0184(a2)             ## 00000184
    lb      t9, 0x0184(a2)             ## 00000184
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    bgez    t9, lbl_80AD1D28           
    nop
    beq     $zero, $zero, lbl_80AD1D28 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD1D28:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD1D38:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    or      a2, a1, $zero              ## a2 = 00000000
    lw      t6, 0x0020($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x17A4           ## $at = 000117A4
    addu    a0, a2, $at                
    lb      a1, 0x0186(t6)             ## 00000186
    jal     func_80081688              
    sw      a0, 0x001C($sp)            
    bne     v0, $zero, lbl_80AD1D74    
    lw      t7, 0x0020($sp)            
    beq     $zero, $zero, lbl_80AD1DB0 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD1D74:
    lw      a0, 0x001C($sp)            
    jal     func_80081688              
    lb      a1, 0x0185(t7)             ## 00000185
    bne     v0, $zero, lbl_80AD1D90    
    lw      t8, 0x0020($sp)            
    beq     $zero, $zero, lbl_80AD1DB0 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD1D90:
    lw      a0, 0x001C($sp)            
    jal     func_80081688              
    lb      a1, 0x0184(t8)             ## 00000184
    bnel    v0, $zero, lbl_80AD1DB0    
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    beq     $zero, $zero, lbl_80AD1DB0 
    or      v0, $zero, $zero           ## v0 = 00000000
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AD1DB0:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD1DC0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              ## a2 = 00000000
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x17A4           ## $at = 000117A4
    addu    a0, a2, $at                
    jal     func_80081628              ## ObjectIndex
    addiu   a1, $zero, 0x00C5          ## a1 = 000000C5
    lw      v1, 0x0018($sp)            
    sb      v0, 0x0187(v1)             ## 00000187
    lb      t6, 0x0187(v1)             ## 00000187
    lw      $ra, 0x0014($sp)           
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    bgez    t6, lbl_80AD1E08           
    nop
    beq     $zero, $zero, lbl_80AD1E08 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD1E08:
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_80AD1E10:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              ## a3 = 00000000
    or      a2, a1, $zero              ## a2 = 00000000
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x17A4           ## $at = 000117A4
    addu    a0, a2, $at                
    jal     func_80081688              
    lb      a1, 0x0187(a3)             ## 00000187
    bne     v0, $zero, lbl_80AD1E44    
    lw      $ra, 0x0014($sp)           
    beq     $zero, $zero, lbl_80AD1E48 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD1E44:
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AD1E48:
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_80AD1E50:
    sw      a0, 0x0000($sp)            
    lh      t6, 0x001C(a1)             ## 0000001C
    or      v0, $zero, $zero           ## v0 = 00000000
    andi    t7, t6, 0x00FF             ## t7 = 00000000
    sltiu   $at, t7, 0x000D            
    beq     $at, $zero, lbl_80AD21B0   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_80AD5590)     ## $at = 80AD0000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80AD5590)($at) 
    jr      t7                         
    nop
var_80AD1E80:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t8, 0x0EDC(v0)             ## 8011B4AC
    lui     t0, 0x8010                 ## t0 = 80100000
    andi    t9, t8, 0x0001             ## t9 = 00000000
    beq     t9, $zero, lbl_80AD1EA4    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x10DA          ## v0 = 000010DA
lbl_80AD1EA4:
    lw      t0, -0x73C8(t0)            ## 800F8C38
    lw      t1, 0x00A4(v0)             ## 0000117E
    and     t2, t0, t1                 
    beql    t2, $zero, lbl_80AD1EC4    
    lhu     t3, 0x0F0E(v0)             ## 00001FE8
    jr      $ra                        
    addiu   v0, $zero, 0x10D9          ## v0 = 000010D9
lbl_80AD1EC0:
    lhu     t3, 0x0F0E(v0)             ## 00001FE7
lbl_80AD1EC4:
    addiu   v1, $zero, 0x10D7          ## v1 = 000010D7
    andi    t4, t3, 0x0080             ## t4 = 00000000
    beq     t4, $zero, lbl_80AD1EE0    
    nop
    addiu   v1, $zero, 0x10D8          ## v1 = 000010D8
    jr      $ra                        
    andi    v0, v1, 0xFFFF             ## v0 = 000010D8
lbl_80AD1EE0:
    jr      $ra                        
    andi    v0, v1, 0xFFFF             ## v0 = 000010D8


func_80AD1EE8:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t5, 0x0EDC(v0)             ## 8011B4AC
    lui     t7, 0x8010                 ## t7 = 80100000
    andi    t6, t5, 0x0001             ## t6 = 00000000
    beq     t6, $zero, lbl_80AD1F0C    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x1025          ## v0 = 00001025
lbl_80AD1F0C:
    lw      t7, -0x73C8(t7)            ## 800F8C38
    lw      t8, 0x00A4(v0)             ## 000010C9
    and     t9, t7, t8                 
    beq     t9, $zero, lbl_80AD1F28    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x1042          ## v0 = 00001042
lbl_80AD1F28:
    jr      $ra                        
    addiu   v0, $zero, 0x1004          ## v0 = 00001004


func_80AD1F30:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t0, 0x0EDC(v0)             ## 8011B4AC
    lui     t2, 0x8010                 ## t2 = 80100000
    andi    t1, t0, 0x0001             ## t1 = 00000000
    beq     t1, $zero, lbl_80AD1F54    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x1023          ## v0 = 00001023
lbl_80AD1F54:
    lw      t2, -0x73C8(t2)            ## 800F8C38
    lw      t3, 0x00A4(v0)             ## 000010C7
    and     t4, t2, t3                 
    beql    t4, $zero, lbl_80AD1F74    
    lhu     t5, 0x0EFA(v0)             ## 00001F1D
    jr      $ra                        
    addiu   v0, $zero, 0x1043          ## v0 = 00001043
lbl_80AD1F70:
    lhu     t5, 0x0EFA(v0)             ## 00001F3D
lbl_80AD1F74:
    andi    t6, t5, 0x4000             ## t6 = 00000000
    beq     t6, $zero, lbl_80AD1F88    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x1006          ## v0 = 00001006
lbl_80AD1F88:
    jr      $ra                        
    addiu   v0, $zero, 0x1005          ## v0 = 00001005


func_80AD1F90:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t7, 0x0EDC(v0)             ## 8011B4AC
    andi    t8, t7, 0x0001             ## t8 = 00000000
    beq     t8, $zero, lbl_80AD1FB0    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x1022          ## v0 = 00001022
lbl_80AD1FB0:
    jr      $ra                        
    addiu   v0, $zero, 0x1007          ## v0 = 00001007


func_80AD1FB8:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t9, 0x0EDC(v0)             ## 8011B4AC
    lui     t1, 0x8010                 ## t1 = 80100000
    andi    t0, t9, 0x0001             ## t0 = 00000000
    beq     t0, $zero, lbl_80AD1FDC    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x1021          ## v0 = 00001021
lbl_80AD1FDC:
    lw      t1, -0x73C8(t1)            ## 800F8C38
    lw      t2, 0x00A4(v0)             ## 000010C5
    and     t3, t1, t2                 
    beql    t3, $zero, lbl_80AD1FFC    
    lhu     t4, 0x0EFC(v0)             ## 00001F1D
    jr      $ra                        
    addiu   v0, $zero, 0x1044          ## v0 = 00001044
lbl_80AD1FF8:
    lhu     t4, 0x0EFC(v0)             ## 00001F40
lbl_80AD1FFC:
    andi    t5, t4, 0x0004             ## t5 = 00000000
    beq     t5, $zero, lbl_80AD2010    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x1009          ## v0 = 00001009
lbl_80AD2010:
    jr      $ra                        
    addiu   v0, $zero, 0x1008          ## v0 = 00001008


func_80AD2018:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t6, 0x0EDC(v0)             ## 8011B4AC
    lui     t8, 0x8010                 ## t8 = 80100000
    andi    t7, t6, 0x0001             ## t7 = 00000000
    beq     t7, $zero, lbl_80AD203C    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x1097          ## v0 = 00001097
lbl_80AD203C:
    lw      t8, -0x73C8(t8)            ## 800F8C38
    lw      t9, 0x00A4(v0)             ## 0000113B
    and     t0, t8, t9                 
    beql    t0, $zero, lbl_80AD205C    
    lhu     t1, 0x0EFC(v0)             ## 00001F93
    jr      $ra                        
    addiu   v0, $zero, 0x1042          ## v0 = 00001042
lbl_80AD2058:
    lhu     t1, 0x0EFC(v0)             ## 00001F3E
lbl_80AD205C:
    andi    t2, t1, 0x0010             ## t2 = 00000000
    beq     t2, $zero, lbl_80AD2070    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x100B          ## v0 = 0000100B
lbl_80AD2070:
    jr      $ra                        
    addiu   v0, $zero, 0x100A          ## v0 = 0000100A


func_80AD2078:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t3, 0x0EDC(v0)             ## 8011B4AC
    lui     t5, 0x8010                 ## t5 = 80100000
    andi    t4, t3, 0x0001             ## t4 = 00000000
    beq     t4, $zero, lbl_80AD209C    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x10B0          ## v0 = 000010B0
lbl_80AD209C:
    lw      t5, -0x73C8(t5)            ## 800F8C38
    lw      t6, 0x00A4(v0)             ## 00001154
    and     t7, t5, t6                 
    beql    t7, $zero, lbl_80AD20BC    
    lhu     t8, 0x0EFC(v0)             ## 00001FAC
    jr      $ra                        
    addiu   v0, $zero, 0x1043          ## v0 = 00001043
lbl_80AD20B8:
    lhu     t8, 0x0EFC(v0)             ## 00001F3F
lbl_80AD20BC:
    andi    t9, t8, 0x0040             ## t9 = 00000000
    beq     t9, $zero, lbl_80AD20D0    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x100D          ## v0 = 0000100D
lbl_80AD20D0:
    jr      $ra                        
    addiu   v0, $zero, 0x100C          ## v0 = 0000100C


func_80AD20D8:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t0, 0x0EDC(v0)             ## 8011B4AC
    lui     t2, 0x8010                 ## t2 = 80100000
    andi    t1, t0, 0x0001             ## t1 = 00000000
    beq     t1, $zero, lbl_80AD20FC    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x10B5          ## v0 = 000010B5
lbl_80AD20FC:
    lw      t2, -0x73C8(t2)            ## 800F8C38
    lw      t3, 0x00A4(v0)             ## 00001159
    and     t4, t2, t3                 
    beql    t4, $zero, lbl_80AD211C    
    lhu     t5, 0x0EFC(v0)             ## 00001FB1
    jr      $ra                        
    addiu   v0, $zero, 0x1043          ## v0 = 00001043
lbl_80AD2118:
    lhu     t5, 0x0EFC(v0)             ## 00001F3F
lbl_80AD211C:
    andi    t6, t5, 0x0100             ## t6 = 00000000
    beq     t6, $zero, lbl_80AD2130    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x1019          ## v0 = 00001019
lbl_80AD2130:
    jr      $ra                        
    addiu   v0, $zero, 0x100E          ## v0 = 0000100E
var_80AD2138:
    jr      $ra                        
    addiu   v0, $zero, 0x1035          ## v0 = 00001035
var_80AD2140:
    jr      $ra                        
    addiu   v0, $zero, 0x1038          ## v0 = 00001038


func_80AD2148:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lui     t7, 0x8010                 ## t7 = 80100000
    lw      t7, -0x73C8(t7)            ## 800F8C38
    lw      t8, 0x00A4(v0)             ## 8011A674
    and     t9, t7, t8                 
    beq     t9, $zero, lbl_80AD2170    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x104B          ## v0 = 0000104B
lbl_80AD2170:
    jr      $ra                        
    addiu   v0, $zero, 0x103C          ## v0 = 0000103C


func_80AD2178:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lui     t0, 0x8010                 ## t0 = 80100000
    lw      t0, -0x73C8(t0)            ## 800F8C38
    lw      t1, 0x00A4(v0)             ## 8011A674
    and     t2, t0, t1                 
    beq     t2, $zero, lbl_80AD21A0    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x104C          ## v0 = 0000104C
lbl_80AD21A0:
    jr      $ra                        
    addiu   v0, $zero, 0x103D          ## v0 = 0000103D
var_80AD21A8:
    jr      $ra                        
    addiu   v0, $zero, 0x103E          ## v0 = 0000103E
lbl_80AD21B0:
    jr      $ra                        
    nop


func_80AD21B8:
    lh      t6, 0x001C(a1)             ## 0000001C
    lw      v1, 0x1C44(a0)             ## 00001C44
    or      v0, $zero, $zero           ## v0 = 00000000
    andi    t7, t6, 0x00FF             ## t7 = 00000000
    sltiu   $at, t7, 0x000D            
    beq     $at, $zero, lbl_80AD2488   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_80AD55C4)     ## $at = 80AD0000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80AD55C4)($at) 
    jr      t7                         
    nop
var_80AD21E8:
    addiu   t8, $zero, 0x0009          ## t8 = 00000009
    sb      t8, 0x0683(v1)             ## 00000683
    jr      $ra                        
    addiu   v0, $zero, 0x10B9          ## v0 = 000010B9


func_80AD21F8:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lui     t9, 0x8010                 ## t9 = 80100000
    lw      t9, -0x7410(t9)            ## 800F8BF0
    lw      t0, 0x00A4(v0)             ## 8011A674
    and     t1, t9, t0                 
    beql    t1, $zero, lbl_80AD2224    
    lhu     t2, 0x0F00(v0)             ## 8011B4D0
    jr      $ra                        
    addiu   v0, $zero, 0x1072          ## v0 = 00001072
lbl_80AD2220:
    lhu     t2, 0x0F00(v0)             ## 00001F72
lbl_80AD2224:
    andi    t3, t2, 0x0002             ## t3 = 00000000
    beq     t3, $zero, lbl_80AD2238    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x1056          ## v0 = 00001056
lbl_80AD2238:
    jr      $ra                        
    addiu   v0, $zero, 0x1055          ## v0 = 00001055


func_80AD2240:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lui     t4, 0x8010                 ## t4 = 80100000
    lw      t4, -0x7410(t4)            ## 800F8BF0
    lw      t5, 0x00A4(v0)             ## 8011A674
    and     t6, t4, t5                 
    beq     t6, $zero, lbl_80AD2268    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x1073          ## v0 = 00001073
lbl_80AD2268:
    jr      $ra                        
    addiu   v0, $zero, 0x105A          ## v0 = 0000105A


func_80AD2270:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lui     t7, 0x8010                 ## t7 = 80100000
    lw      t7, -0x7410(t7)            ## 800F8BF0
    lw      t8, 0x00A4(v0)             ## 8011A674
    and     t9, t7, t8                 
    beql    t9, $zero, lbl_80AD229C    
    lhu     t0, 0x0F00(v0)             ## 8011B4D0
    jr      $ra                        
    addiu   v0, $zero, 0x1074          ## v0 = 00001074
lbl_80AD2298:
    lhu     t0, 0x0F00(v0)             ## 00001F74
lbl_80AD229C:
    andi    t1, t0, 0x0080             ## t1 = 00000000
    beq     t1, $zero, lbl_80AD22B0    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x105E          ## v0 = 0000105E
lbl_80AD22B0:
    jr      $ra                        
    addiu   v0, $zero, 0x105D          ## v0 = 0000105D


func_80AD22B8:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lui     t2, 0x8010                 ## t2 = 80100000
    lw      t2, -0x7410(t2)            ## 800F8BF0
    lw      t3, 0x00A4(v0)             ## 8011A674
    and     t4, t2, t3                 
    beq     t4, $zero, lbl_80AD22E0    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x1075          ## v0 = 00001075
lbl_80AD22E0:
    jr      $ra                        
    addiu   v0, $zero, 0x105B          ## v0 = 0000105B


func_80AD22E8:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lui     t5, 0x8010                 ## t5 = 80100000
    lw      t5, -0x7410(t5)            ## 800F8BF0
    lw      t6, 0x00A4(v0)             ## 8011A674
    and     t7, t5, t6                 
    beq     t7, $zero, lbl_80AD2310    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x1076          ## v0 = 00001076
lbl_80AD2310:
    jr      $ra                        
    addiu   v0, $zero, 0x105F          ## v0 = 0000105F
var_80AD2318:
    jr      $ra                        
    addiu   v0, $zero, 0x1057          ## v0 = 00001057


func_80AD2320:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lui     t8, 0x8010                 ## t8 = 80100000
    lw      t8, -0x7410(t8)            ## 800F8BF0
    lw      t9, 0x00A4(v0)             ## 8011A674
    and     t0, t8, t9                 
    beql    t0, $zero, lbl_80AD234C    
    lhu     t1, 0x0F02(v0)             ## 8011B4D2
    jr      $ra                        
    addiu   v0, $zero, 0x1077          ## v0 = 00001077
lbl_80AD2348:
    lhu     t1, 0x0F02(v0)             ## 00001F79
lbl_80AD234C:
    andi    t2, t1, 0x0002             ## t2 = 00000000
    beq     t2, $zero, lbl_80AD2360    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x1059          ## v0 = 00001059
lbl_80AD2360:
    jr      $ra                        
    addiu   v0, $zero, 0x1058          ## v0 = 00001058


func_80AD2368:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lui     t3, 0x8010                 ## t3 = 80100000
    lw      t3, -0x7410(t3)            ## 800F8BF0
    lw      t4, 0x00A4(v0)             ## 8011A674
    and     t5, t3, t4                 
    beq     t5, $zero, lbl_80AD2390    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x1079          ## v0 = 00001079
lbl_80AD2390:
    jr      $ra                        
    addiu   v0, $zero, 0x104E          ## v0 = 0000104E


func_80AD2398:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lui     t6, 0x8010                 ## t6 = 80100000
    lw      t6, -0x7410(t6)            ## 800F8BF0
    lw      t7, 0x00A4(v0)             ## 8011A674
    and     t8, t6, t7                 
    beql    t8, $zero, lbl_80AD23C4    
    lhu     t9, 0x0F02(v0)             ## 8011B4D2
    jr      $ra                        
    addiu   v0, $zero, 0x107A          ## v0 = 0000107A
lbl_80AD23C0:
    lhu     t9, 0x0F02(v0)             ## 00001F7C
lbl_80AD23C4:
    andi    t0, t9, 0x0200             ## t0 = 00000000
    beq     t0, $zero, lbl_80AD23D8    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x1050          ## v0 = 00001050
lbl_80AD23D8:
    jr      $ra                        
    addiu   v0, $zero, 0x104F          ## v0 = 0000104F


func_80AD23E0:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lui     t1, 0x8010                 ## t1 = 80100000
    lw      t1, -0x7410(t1)            ## 800F8BF0
    lw      t2, 0x00A4(v0)             ## 8011A674
    and     t3, t1, t2                 
    beq     t3, $zero, lbl_80AD2408    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x107B          ## v0 = 0000107B
lbl_80AD2408:
    jr      $ra                        
    addiu   v0, $zero, 0x1051          ## v0 = 00001051


func_80AD2410:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lui     t4, 0x8010                 ## t4 = 80100000
    lw      t4, -0x7410(t4)            ## 800F8BF0
    lw      t5, 0x00A4(v0)             ## 8011A674
    and     t6, t4, t5                 
    beq     t6, $zero, lbl_80AD2438    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x107C          ## v0 = 0000107C
lbl_80AD2438:
    jr      $ra                        
    addiu   v0, $zero, 0x1052          ## v0 = 00001052


func_80AD2440:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lui     t7, 0x8010                 ## t7 = 80100000
    lw      t7, -0x7410(t7)            ## 800F8BF0
    lw      t8, 0x00A4(v0)             ## 8011A674
    and     t9, t7, t8                 
    beql    t9, $zero, lbl_80AD246C    
    lhu     t0, 0x0F04(v0)             ## 8011B4D4
    jr      $ra                        
    addiu   v0, $zero, 0x107C          ## v0 = 0000107C
lbl_80AD2468:
    lhu     t0, 0x0F04(v0)             ## 00001F80
lbl_80AD246C:
    andi    t1, t0, 0x0002             ## t1 = 00000000
    beq     t1, $zero, lbl_80AD2480    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x1054          ## v0 = 00001054
lbl_80AD2480:
    jr      $ra                        
    addiu   v0, $zero, 0x1053          ## v0 = 00001053
lbl_80AD2488:
    jr      $ra                        
    nop


func_80AD2490:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    or      a2, a1, $zero              ## a2 = 00000000
    lh      v1, 0x001C(a2)             ## 0000001C
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    lw      a0, 0x0020($sp)            
    andi    v1, v1, 0x00FF             ## v1 = 00000000
    beq     v1, $zero, lbl_80AD24E8    
    addiu   a1, $zero, 0x0013          ## a1 = 00000013
    beq     v1, $at, lbl_80AD24E8      
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    beq     v1, $at, lbl_80AD24E8      
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    beq     v1, $at, lbl_80AD24E8      
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    beq     v1, $at, lbl_80AD24E8      
    addiu   $at, $zero, 0x0008         ## $at = 00000008
    beq     v1, $at, lbl_80AD24E8      
    addiu   $at, $zero, 0x000B         ## $at = 0000000B
    bnel    v1, $at, lbl_80AD2504      
    addiu   $at, $zero, 0x0001         ## $at = 00000001
lbl_80AD24E8:
    jal     func_800597C0              
    sw      a2, 0x0024($sp)            
    lw      a2, 0x0024($sp)            
    lh      v1, 0x001C(a2)             ## 0000001C
    sh      v0, 0x001E($sp)            
    andi    v1, v1, 0x00FF             ## v1 = 00000000
    addiu   $at, $zero, 0x0001         ## $at = 00000001
lbl_80AD2504:
    beq     v1, $at, lbl_80AD2530      
    lhu     a0, 0x001E($sp)            
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    beq     v1, $at, lbl_80AD2530      
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    beq     v1, $at, lbl_80AD2530      
    addiu   $at, $zero, 0x0009         ## $at = 00000009
    beq     v1, $at, lbl_80AD2530      
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    bnel    v1, $at, lbl_80AD2554      
    addiu   $at, $zero, 0x000C         ## $at = 0000000C
lbl_80AD2530:
    lw      a0, 0x0020($sp)            
    addiu   a1, $zero, 0x0014          ## a1 = 00000014
    jal     func_800597C0              
    sw      a2, 0x0024($sp)            
    lw      a2, 0x0024($sp)            
    andi    a0, v0, 0xFFFF             ## a0 = 00000000
    lh      v1, 0x001C(a2)             ## 0000001C
    andi    v1, v1, 0x00FF             ## v1 = 00000000
    addiu   $at, $zero, 0x000C         ## $at = 0000000C
lbl_80AD2554:
    bne     v1, $at, lbl_80AD2570      
    addiu   a1, $zero, 0x0012          ## a1 = 00000012
    lw      a0, 0x0020($sp)            
    jal     func_800597C0              
    sw      a2, 0x0024($sp)            
    lw      a2, 0x0024($sp)            
    andi    a0, v0, 0xFFFF             ## a0 = 00000000
lbl_80AD2570:
    beq     a0, $zero, lbl_80AD2580    
    lui     t6, 0x8012                 ## t6 = 80120000
    beq     $zero, $zero, lbl_80AD25AC 
    or      v0, a0, $zero              ## v0 = 00000000
lbl_80AD2580:
    lw      t6, -0x5A2C(t6)            ## 8011A5D4
    or      a1, a2, $zero              ## a1 = 00000000
    lw      a0, 0x0020($sp)            
    bne     t6, $zero, lbl_80AD25A4    
    nop
    jal     func_80AD21B8              
    lw      a0, 0x0020($sp)            
    beq     $zero, $zero, lbl_80AD25B0 
    lw      $ra, 0x0014($sp)           
lbl_80AD25A4:
    jal     func_80AD1E50              
    or      a1, a2, $zero              ## a1 = 00000000
lbl_80AD25AC:
    lw      $ra, 0x0014($sp)           
lbl_80AD25B0:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD25BC:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    addiu   a0, a2, 0x20D8             ## a0 = 000020D8
    jal     func_800DD464              
    sw      a2, 0x0020($sp)            
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    lw      a2, 0x0020($sp)            
    beq     v0, $at, lbl_80AD2610      
    lw      t0, 0x0024($sp)            
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    beq     v0, $at, lbl_80AD27C0      
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    beq     v0, $at, lbl_80AD2820      
    or      a0, a2, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    beq     v0, $at, lbl_80AD2990      
    nop
    beq     $zero, $zero, lbl_80AD29AC 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AD2610:
    lhu     v1, 0x010E(t0)             ## 0000010E
    slti    $at, v1, 0x105E            
    bne     $at, $zero, lbl_80AD2638   
    addiu   $at, $zero, 0x10BA         ## $at = 000010BA
    beq     v1, $at, lbl_80AD27B8      
    addiu   $at, $zero, 0x10D7         ## $at = 000010D7
    beq     v1, $at, lbl_80AD27A0      
    lui     v0, 0x8012                 ## v0 = 80120000
    beq     $zero, $zero, lbl_80AD29AC 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD2638:
    slti    $at, v1, 0x100F            
    bne     $at, $zero, lbl_80AD2668   
    addiu   t7, v1, 0xEFFB             ## t7 = FFFFEFFB
    addiu   t6, v1, 0xEFB1             ## t6 = FFFFEFB1
    sltiu   $at, t6, 0x000F            
    beq     $at, $zero, lbl_80AD269C   
    sll     t6, t6,  2                 
    lui     $at, %hi(var_80AD55F8)     ## $at = 80AD0000
    addu    $at, $at, t6               
    lw      t6, %lo(var_80AD55F8)($at) 
    jr      t6                         
    nop
lbl_80AD2668:
    sltiu   $at, t7, 0x000A            
    beq     $at, $zero, lbl_80AD269C   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_80AD5634)     ## $at = 80AD0000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80AD5634)($at) 
    jr      t7                         
    nop
var_80AD2688:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t8, 0x0EFA(v0)             ## 8011B4CA
    ori     t9, t8, 0x4000             ## t9 = 00004000
    sh      t9, 0x0EFA(v0)             ## 8011B4CA
lbl_80AD269C:
    beq     $zero, $zero, lbl_80AD29AC 
    or      v0, $zero, $zero           ## v0 = 00000000
var_80AD26A4:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t1, 0x0EFC(v0)             ## 8011B4CC
    ori     t2, t1, 0x0004             ## t2 = 00000004
    sh      t2, 0x0EFC(v0)             ## 8011B4CC
    beq     $zero, $zero, lbl_80AD29AC 
    or      v0, $zero, $zero           ## v0 = 00000000
var_80AD26C0:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t3, 0x0EFC(v0)             ## 8011B4CC
    ori     t4, t3, 0x0010             ## t4 = 00000010
    sh      t4, 0x0EFC(v0)             ## 8011B4CC
    beq     $zero, $zero, lbl_80AD29AC 
    or      v0, $zero, $zero           ## v0 = 00000000
var_80AD26DC:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t5, 0x0EFC(v0)             ## 8011B4CC
    ori     t6, t5, 0x0040             ## t6 = 00000040
    sh      t6, 0x0EFC(v0)             ## 8011B4CC
    beq     $zero, $zero, lbl_80AD29AC 
    or      v0, $zero, $zero           ## v0 = 00000000
var_80AD26F8:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t7, 0x0EFC(v0)             ## 8011B4CC
    ori     t8, t7, 0x0100             ## t8 = FFFFEFFB
    sh      t8, 0x0EFC(v0)             ## 8011B4CC
    beq     $zero, $zero, lbl_80AD29AC 
    or      v0, $zero, $zero           ## v0 = 00000000
var_80AD2714:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t9, 0x0F02(v0)             ## 8011B4D2
    ori     t1, t9, 0x0200             ## t1 = 00004200
    sh      t1, 0x0F02(v0)             ## 8011B4D2
    beq     $zero, $zero, lbl_80AD29AC 
    or      v0, $zero, $zero           ## v0 = 00000000
var_80AD2730:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t2, 0x0F04(v0)             ## 8011B4D4
    ori     t3, t2, 0x0002             ## t3 = 00000006
    sh      t3, 0x0F04(v0)             ## 8011B4D4
    beq     $zero, $zero, lbl_80AD29AC 
    or      v0, $zero, $zero           ## v0 = 00000000
var_80AD274C:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t4, 0x0F00(v0)             ## 8011B4D0
    ori     t5, t4, 0x0002             ## t5 = 00000012
    sh      t5, 0x0F00(v0)             ## 8011B4D0
    beq     $zero, $zero, lbl_80AD29AC 
    or      v0, $zero, $zero           ## v0 = 00000000
var_80AD2768:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t6, 0x0F02(v0)             ## 8011B4D2
    ori     t7, t6, 0x0002             ## t7 = 00000042
    sh      t7, 0x0F02(v0)             ## 8011B4D2
    beq     $zero, $zero, lbl_80AD29AC 
    or      v0, $zero, $zero           ## v0 = 00000000
var_80AD2784:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t8, 0x0F00(v0)             ## 8011B4D0
    ori     t9, t8, 0x0080             ## t9 = FFFFEFFB
    sh      t9, 0x0F00(v0)             ## 8011B4D0
    beq     $zero, $zero, lbl_80AD29AC 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD27A0:
    addiu   v0, v0, 0xA5D0             ## v0 = FFFFA5D0
    lhu     t1, 0x0F0E(v0)             ## FFFFB4DE
    ori     t2, t1, 0x0080             ## t2 = 00004280
    sh      t2, 0x0F0E(v0)             ## FFFFB4DE
    beq     $zero, $zero, lbl_80AD29AC 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD27B8:
    beq     $zero, $zero, lbl_80AD29AC 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AD27C0:
    lhu     v1, 0x010E(t0)             ## 0000010E
    addiu   $at, $zero, 0x10B7         ## $at = 000010B7
    beq     v1, $at, lbl_80AD27D8      
    addiu   $at, $zero, 0x10B8         ## $at = 000010B8
    bne     v1, $at, lbl_80AD2818      
    nop
lbl_80AD27D8:
    lbu     t3, 0x0200(t0)             ## 00000200
    lui     a3, 0x8010                 ## a3 = 80100000
    addiu   a3, a3, 0x43A0             ## a3 = 801043A0
    bne     t3, $zero, lbl_80AD2818    
    addiu   a0, $zero, 0x4807          ## a0 = 00004807
    lui     t4, 0x8010                 ## t4 = 80100000
    addiu   t4, t4, 0x43A8             ## t4 = 801043A8
    lui     a1, 0x8010                 ## a1 = 80100000
    addiu   a1, a1, 0x4394             ## a1 = 80104394
    sw      t4, 0x0014($sp)            
    addiu   a2, $zero, 0x0004          ## a2 = 00000004
    jal     func_800C806C              
    sw      a3, 0x0010($sp)            
    lw      t0, 0x0024($sp)            
    addiu   t5, $zero, 0x0001          ## t5 = 00000001
    sb      t5, 0x0200(t0)             ## 00000200
lbl_80AD2818:
    beq     $zero, $zero, lbl_80AD29AC 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AD2820:
    jal     func_800D6110              
    sw      a2, 0x0020($sp)            
    lw      a2, 0x0020($sp)            
    beq     v0, $zero, lbl_80AD29A8    
    lw      t0, 0x0024($sp)            
    lhu     v1, 0x010E(t0)             ## 0000010E
    addiu   $at, $zero, 0x1035         ## $at = 00001035
    lui     t6, 0x0001                 ## t6 = 00010000
    beq     v1, $at, lbl_80AD2880      
    addu    t6, t6, a2                 
    addiu   $at, $zero, 0x1038         ## $at = 00001038
    beq     v1, $at, lbl_80AD28B0      
    lui     v0, 0x0001                 ## v0 = 00010000
    addiu   $at, $zero, 0x103E         ## $at = 0000103E
    beq     v1, $at, lbl_80AD28F4      
    lui     t1, 0x0001                 ## t1 = 00010000
    addiu   $at, $zero, 0x10B7         ## $at = 000010B7
    beq     v1, $at, lbl_80AD2928      
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   $at, $zero, 0x10B8         ## $at = 000010B8
    beql    v1, $at, lbl_80AD293C      
    lui     $at, 0x0001                ## $at = 00010000
    beq     $zero, $zero, lbl_80AD29AC 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AD2880:
    lbu     t6, 0x04BD(t6)             ## 000104BD
    addiu   t8, $zero, 0x1037          ## t8 = 00001037
    addiu   t7, $zero, 0x1036          ## t7 = 00001036
    bne     t6, $zero, lbl_80AD289C    
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AD28A0 
    sh      t7, 0x010E(t0)             ## 0000010E
lbl_80AD289C:
    sh      t8, 0x010E(t0)             ## 0000010E
lbl_80AD28A0:
    jal     func_800DCE80              
    lhu     a1, 0x010E(t0)             ## 0000010E
    beq     $zero, $zero, lbl_80AD29AC 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AD28B0:
    addu    v0, v0, a2                 
    lbu     v0, 0x04BD(v0)             ## 000004BE
    addiu   t9, $zero, 0x1039          ## t9 = 00001039
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    beq     v0, $zero, lbl_80AD28E0    
    or      a0, a2, $zero              ## a0 = 00000000
    bne     v0, $at, lbl_80AD28D8      
    addiu   v1, $zero, 0x103B          ## v1 = 0000103B
    beq     $zero, $zero, lbl_80AD28D8 
    addiu   v1, $zero, 0x103A          ## v1 = 0000103A
lbl_80AD28D8:
    beq     $zero, $zero, lbl_80AD28E4 
    sh      v1, 0x010E(t0)             ## 0000010E
lbl_80AD28E0:
    sh      t9, 0x010E(t0)             ## 0000010E
lbl_80AD28E4:
    jal     func_800DCE80              
    lhu     a1, 0x010E(t0)             ## 0000010E
    beq     $zero, $zero, lbl_80AD29AC 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AD28F4:
    addu    t1, t1, a2                 
    lbu     t1, 0x04BD(t1)             ## 000004BD
    addiu   t3, $zero, 0x1040          ## t3 = 00001040
    addiu   t2, $zero, 0x103F          ## t2 = 0000103F
    bne     t1, $zero, lbl_80AD2914    
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AD2918 
    sh      t2, 0x010E(t0)             ## 0000010E
lbl_80AD2914:
    sh      t3, 0x010E(t0)             ## 0000010E
lbl_80AD2918:
    jal     func_800DCE80              
    lhu     a1, 0x010E(t0)             ## 0000010E
    beq     $zero, $zero, lbl_80AD29AC 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AD2928:
    addiu   v0, v0, 0xA5D0             ## v0 = FFFFA5D1
    lhu     t4, 0x0F0E(v0)             ## FFFFB4DF
    ori     t5, t4, 0x0040             ## t5 = 00000040
    sh      t5, 0x0F0E(v0)             ## FFFFB4DF
    lui     $at, 0x0001                ## $at = 00010000
lbl_80AD293C:
    addu    v0, a2, $at                
    lbu     t6, 0x04BD(v0)             ## FFFFAA8E
    addiu   t8, $zero, 0x10B9          ## t8 = 000010B9
    addiu   t7, $zero, 0x10BA          ## t7 = 000010BA
    bne     t6, $zero, lbl_80AD295C    
    addiu   v1, $zero, 0x0001          ## v1 = 00000001
    beq     $zero, $zero, lbl_80AD2960 
    sh      t7, 0x010E(t0)             ## 0000010E
lbl_80AD295C:
    sh      t8, 0x010E(t0)             ## 0000010E
lbl_80AD2960:
    lbu     t9, 0x04BD(v0)             ## FFFFAA8E
    sll     v0, v1, 16                 
    bne     t9, $zero, lbl_80AD2980    
    nop
    addiu   v1, $zero, 0x0002          ## v1 = 00000002
    sll     v0, v1, 16                 
    beq     $zero, $zero, lbl_80AD29AC 
    sra     v0, v0, 16                 
lbl_80AD2980:
    beq     $zero, $zero, lbl_80AD29AC 
    sra     v0, v0, 16                 
    beq     $zero, $zero, lbl_80AD29AC 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AD2990:
    jal     func_800D6110              
    or      a0, a2, $zero              ## a0 = 00000000
    beql    v0, $zero, lbl_80AD29AC    
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    beq     $zero, $zero, lbl_80AD29AC 
    addiu   v0, $zero, 0x0003          ## v0 = 00000003
lbl_80AD29A8:
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AD29AC:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD29BC:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    sw      a0, 0x0000($sp)            
    lw      t6, 0x0004(v0)             ## 8011A5D4
    lui     t2, 0x8010                 ## t2 = 80100000
    beq     t6, $zero, lbl_80AD2A18    
    nop
    lhu     t7, 0x0EDC(v0)             ## 8011B4AC
    lui     t9, 0x8010                 ## t9 = 80100000
    andi    t8, t7, 0x0001             ## t8 = 00000000
    beq     t8, $zero, lbl_80AD29F4    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x0002          ## v0 = 00000002
lbl_80AD29F4:
    lw      t9, -0x73C8(t9)            ## 800F8C38
    lw      t0, 0x00A4(v0)             ## 000000A6
    and     t1, t9, t0                 
    beq     t1, $zero, lbl_80AD2A10    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AD2A10:
    jr      $ra                        
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD2A18:
    lw      t2, -0x7410(t2)            ## 800F8BF0
    lw      t3, 0x00A4(v0)             ## 000000A4
    addiu   v1, $zero, 0x0003          ## v1 = 00000003
    and     t4, t2, t3                 
    beq     t4, $zero, lbl_80AD2A38    
    nop
    beq     $zero, $zero, lbl_80AD2A38 
    addiu   v1, $zero, 0x0004          ## v1 = 00000004
lbl_80AD2A38:
    or      v0, v1, $zero              ## v0 = 00000004
    jr      $ra                        
    nop


func_80AD2A44:
    addiu   $sp, $sp, 0xFEE0           ## $sp = FFFFFEE0
    sw      $ra, 0x0014($sp)           
    lui     t7, %hi(var_80AD543C)      ## t7 = 80AD0000
    addiu   t7, t7, %lo(var_80AD543C)  ## t7 = 80AD543C
    addiu   t0, t7, 0x00FC             ## t0 = 80AD5538
    addiu   t6, $sp, 0x001C            ## t6 = FFFFFEFC
lbl_80AD2A5C:
    lw      t9, 0x0000(t7)             ## 80AD543C
    addiu   t7, t7, 0x000C             ## t7 = 80AD5448
    addiu   t6, t6, 0x000C             ## t6 = FFFFFF08
    sw      t9, -0x000C(t6)            ## FFFFFEFC
    lw      t8, -0x0008(t7)            ## 80AD5440
    sw      t8, -0x0008(t6)            ## FFFFFF00
    lw      t9, -0x0004(t7)            ## 80AD5444
    bne     t7, t0, lbl_80AD2A5C       
    sw      t9, -0x0004(t6)            ## FFFFFF04
    lw      t9, 0x0000(t7)             ## 80AD5448
    lw      t8, 0x0004(t7)             ## 80AD544C
    lui     t1, 0x8012                 ## t1 = 80120000
    sw      t9, 0x0000(t6)             ## FFFFFF08
    sw      t8, 0x0004(t6)             ## FFFFFF0C
    lw      t1, -0x5A2C(t1)            ## 8011A5D4
    bne     t1, $zero, lbl_80AD2AC0    
    nop
    lh      t2, 0x001C(a0)             ## 0000001C
    addiu   $at, $zero, 0x000C         ## $at = 0000000C
    andi    t3, t2, 0x00FF             ## t3 = 00000000
    bne     t3, $at, lbl_80AD2AC0      
    lui     $at, 0xC1A0                ## $at = C1A00000
    mtc1    $at, $f0                   ## $f0 = -20.00
    beq     $zero, $zero, lbl_80AD2AF4 
    lw      $ra, 0x0014($sp)           
lbl_80AD2AC0:
    jal     func_80AD29BC              
    sw      a0, 0x0120($sp)            
    lw      a0, 0x0120($sp)            
    sll     t7, v0,  2                 
    lh      t4, 0x001C(a0)             ## 0000001C
    andi    t5, t4, 0x00FF             ## t5 = 00000000
    sll     t0, t5,  2                 
    addu    t0, t0, t5                 
    sll     t0, t0,  2                 
    addu    t6, t0, t7                 
    addu    t8, $sp, t6                
    lwc1    $f0, 0x001C(t8)            ## 0000001C
    lw      $ra, 0x0014($sp)           
lbl_80AD2AF4:
    addiu   $sp, $sp, 0x0120           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD2B00:
    addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0060($sp)            
    lui     t7, %hi(var_80AD5540)      ## t7 = 80AD0000
    addiu   t7, t7, %lo(var_80AD5540)  ## t7 = 80AD5540
    addiu   t0, t7, 0x003C             ## t0 = 80AD557C
    addiu   t6, $sp, 0x001C            ## t6 = FFFFFFBC
lbl_80AD2B1C:
    lw      t9, 0x0000(t7)             ## 80AD5540
    addiu   t7, t7, 0x000C             ## t7 = 80AD554C
    addiu   t6, t6, 0x000C             ## t6 = FFFFFFC8
    sw      t9, -0x000C(t6)            ## FFFFFFBC
    lw      t8, -0x0008(t7)            ## 80AD5544
    sw      t8, -0x0008(t6)            ## FFFFFFC0
    lw      t9, -0x0004(t7)            ## 80AD5548
    bne     t7, t0, lbl_80AD2B1C       
    sw      t9, -0x0004(t6)            ## FFFFFFC4
    lw      t9, 0x0000(t7)             ## 80AD554C
    sw      t9, 0x0000(t6)             ## FFFFFFC8
    lbu     t9, 0x0004(t7)             ## 80AD5550
    sb      t9, 0x0004(t6)             ## FFFFFFCC
    jal     func_80AD29BC              
    lw      a0, 0x0060($sp)            
    lw      t1, 0x0060($sp)            
    lw      $ra, 0x0014($sp)           
    lh      t2, 0x001C(t1)             ## 0000001C
    andi    t3, t2, 0x00FF             ## t3 = 00000000
    sll     t4, t3,  2                 
    addu    t4, t4, t3                 
    addu    t5, t4, v0                 
    addu    v0, $sp, t5                
    lbu     v0, 0x001C(v0)             ## 0000001C
    jr      $ra                        
    addiu   $sp, $sp, 0x0060           ## $sp = 00000000


func_80AD2B84:
    lh      t6, 0x008A(a0)             ## 0000008A
    lh      t7, 0x00B6(a0)             ## 000000B6
    mtc1    t6, $f4                    ## $f4 = 0.00
    mtc1    t7, $f8                    ## $f8 = 0.00
    cvt.s.w $f6, $f4                   
    cvt.s.w $f10, $f8                  
    sub.s   $f16, $f6, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    v0, $f18                   
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80AD2BC8           
    subu    v1, $zero, v0              
    sll     v1, v0, 16                 
    beq     $zero, $zero, lbl_80AD2BD0 
    sra     v1, v1, 16                 
lbl_80AD2BC8:
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
lbl_80AD2BD0:
    slti    $at, v1, 0x3FFC            
    beq     $at, $zero, lbl_80AD2BE4   
    or      v1, $zero, $zero           ## v1 = 00000000
    beq     $zero, $zero, lbl_80AD2BE4 
    addiu   v1, $zero, 0x0001          ## v1 = 00000001
lbl_80AD2BE4:
    or      v0, v1, $zero              ## v0 = 00000001
    jr      $ra                        
    nop


func_80AD2BF0:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      t6, 0x01D8(s0)             ## 000001D8
    beql    t6, $zero, lbl_80AD2C48    
    lw      t0, 0x0144(s0)             ## 00000144
    lw      t7, 0x0144(s0)             ## 00000144
    lui     t8, 0x0600                 ## t8 = 06000000
    addiu   t8, t8, 0x6A60             ## t8 = 06006A60
    xor     t9, t8, t7                 
    sltiu   t9, t9, 0x0001             
    bne     t9, $zero, lbl_80AD2C3C    
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a1, %hi(var_80AD4F9C)      ## a1 = 80AD0000
    addiu   a1, a1, %lo(var_80AD4F9C)  ## a1 = 80AD4F9C
    jal     func_80027C98              
    addiu   a2, $zero, 0x0020          ## a2 = 00000020
lbl_80AD2C3C:
    beq     $zero, $zero, lbl_80AD2C74 
    addiu   a3, $zero, 0x0002          ## a3 = 00000002
    lw      t0, 0x0144(s0)             ## 00000144
lbl_80AD2C48:
    lui     t1, 0x0600                 ## t1 = 06000000
    addiu   t1, t1, 0x7830             ## t1 = 06007830
    xor     t2, t1, t0                 
    sltiu   t2, t2, 0x0001             
    bne     t2, $zero, lbl_80AD2C70    
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a1, %hi(var_80AD4F9C)      ## a1 = 80AD0000
    addiu   a1, a1, %lo(var_80AD4F9C)  ## a1 = 80AD4F9C
    jal     func_80027C98              
    addiu   a2, $zero, 0x0021          ## a2 = 00000021
lbl_80AD2C70:
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
lbl_80AD2C74:
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x01D8             ## a1 = 000001D8
    jal     func_80027854              
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    jal     func_80AD2B84              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD2CA0:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    addiu   a1, s0, 0x02D4             ## a1 = 000002D4
    addiu   a2, s0, 0x02F4             ## a2 = 000002F4
    jal     func_80027D30              
    addiu   a3, $zero, 0x0010          ## a3 = 00000010
    jal     func_80AD2B84              
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bne     v0, $at, lbl_80AD2CE4      
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AD2CE8 
    addiu   a3, $zero, 0x0002          ## a3 = 00000002
lbl_80AD2CE4:
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
lbl_80AD2CE8:
    lh      t6, 0x01D8(s0)             ## 000001D8
    addiu   a1, s0, 0x01D8             ## a1 = 000001D8
    beql    t6, $zero, lbl_80AD2D04    
    lwc1    $f4, 0x020C(s0)            ## 0000020C
    beq     $zero, $zero, lbl_80AD2D1C 
    addiu   a3, $zero, 0x0004          ## a3 = 00000004
    lwc1    $f4, 0x020C(s0)            ## 0000020C
lbl_80AD2D04:
    lwc1    $f6, 0x0090(s0)            ## 00000090
    c.lt.s  $f4, $f6                   
    nop
    bc1f    lbl_80AD2D1C               
    nop
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
lbl_80AD2D1C:
    jal     func_80027854              
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD2D3C:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lw      a0, 0x002C($sp)            
    addiu   a1, s0, 0x02D4             ## a1 = 000002D4
    addiu   a2, s0, 0x02F4             ## a2 = 000002F4
    jal     func_80027D30              
    addiu   a3, $zero, 0x0010          ## a3 = 00000010
    jal     func_80AD2B84              
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bne     v0, $at, lbl_80AD2D80      
    or      v1, v0, $zero              ## v1 = 00000000
    beq     $zero, $zero, lbl_80AD2D84 
    addiu   a3, $zero, 0x0002          ## a3 = 00000002
lbl_80AD2D80:
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
lbl_80AD2D84:
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x01D8             ## a1 = 000001D8
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    jal     func_80027854              
    sw      v1, 0x0020($sp)            
    lw      v0, 0x0020($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD2DB0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      t6, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    addiu   a3, $zero, 0x0010          ## a3 = 00000010
    addiu   a1, t6, 0x02D4             ## a1 = 000002D4
    jal     func_80027D30              
    addiu   a2, t6, 0x02F4             ## a2 = 000002F4
    lw      a0, 0x0018($sp)            
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    addiu   a3, $zero, 0x0004          ## a3 = 00000004
    jal     func_80027854              
    addiu   a1, a0, 0x01D8             ## a1 = 000001D8
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD2E00:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      t6, 0x01D8(s0)             ## 000001D8
    beql    t6, $zero, lbl_80AD2E6C    
    lw      t0, 0x0144(s0)             ## 00000144
    lw      t7, 0x0144(s0)             ## 00000144
    lui     t8, 0x0601                 ## t8 = 06010000
    addiu   t8, t8, 0x8F6C             ## t8 = 06008F6C
    xor     t9, t8, t7                 
    sltiu   t9, t9, 0x0001             
    bne     t9, $zero, lbl_80AD2E4C    
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a1, %hi(var_80AD4F9C)      ## a1 = 80AD0000
    addiu   a1, a1, %lo(var_80AD4F9C)  ## a1 = 80AD4F9C
    jal     func_80027C98              
    addiu   a2, $zero, 0x001D          ## a2 = 0000001D
lbl_80AD2E4C:
    lw      a0, 0x0024($sp)            
    addiu   a1, s0, 0x02D4             ## a1 = 000002D4
    addiu   a2, s0, 0x02F4             ## a2 = 000002F4
    jal     func_80027D30              
    addiu   a3, $zero, 0x0010          ## a3 = 00000010
    beq     $zero, $zero, lbl_80AD2E98 
    addiu   a3, $zero, 0x0002          ## a3 = 00000002
    lw      t0, 0x0144(s0)             ## 00000144
lbl_80AD2E6C:
    lui     t1, 0x0600                 ## t1 = 06000000
    addiu   t1, t1, 0x7D94             ## t1 = 06007D94
    xor     t2, t1, t0                 
    sltiu   t2, t2, 0x0001             
    bne     t2, $zero, lbl_80AD2E94    
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a1, %hi(var_80AD4F9C)      ## a1 = 80AD0000
    addiu   a1, a1, %lo(var_80AD4F9C)  ## a1 = 80AD4F9C
    jal     func_80027C98              
    addiu   a2, $zero, 0x001E          ## a2 = 0000001E
lbl_80AD2E94:
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
lbl_80AD2E98:
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x01D8             ## a1 = 000001D8
    jal     func_80027854              
    addiu   a2, $zero, 0x0005          ## a2 = 00000005
    jal     func_80AD2B84              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD2EC4:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lh      t6, 0x01D8(s0)             ## 000001D8
    beql    t6, $zero, lbl_80AD2F4C    
    lw      t0, 0x0144(s0)             ## 00000144
    lw      t7, 0x0144(s0)             ## 00000144
    lui     t8, 0x0601                 ## t8 = 06010000
    addiu   t8, t8, 0x8F6C             ## t8 = 06008F6C
    xor     t9, t8, t7                 
    sltiu   t9, t9, 0x0001             
    bne     t9, $zero, lbl_80AD2F10    
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a1, %hi(var_80AD4F9C)      ## a1 = 80AD0000
    addiu   a1, a1, %lo(var_80AD4F9C)  ## a1 = 80AD4F9C
    jal     func_80027C98              
    addiu   a2, $zero, 0x001D          ## a2 = 0000001D
lbl_80AD2F10:
    lw      a0, 0x002C($sp)            
    addiu   a1, s0, 0x02D4             ## a1 = 000002D4
    addiu   a2, s0, 0x02F4             ## a2 = 000002F4
    jal     func_80027D30              
    addiu   a3, $zero, 0x0010          ## a3 = 00000010
    jal     func_80AD2B84              
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bne     v0, $at, lbl_80AD2F40      
    or      v1, v0, $zero              ## v1 = 00000000
    beq     $zero, $zero, lbl_80AD2F8C 
    addiu   a3, $zero, 0x0002          ## a3 = 00000002
lbl_80AD2F40:
    beq     $zero, $zero, lbl_80AD2F8C 
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    lw      t0, 0x0144(s0)             ## 00000144
lbl_80AD2F4C:
    lui     t1, 0x0601                 ## t1 = 06010000
    addiu   t1, t1, 0x879C             ## t1 = 0600879C
    xor     t2, t1, t0                 
    sltiu   t2, t2, 0x0001             
    bne     t2, $zero, lbl_80AD2F74    
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a1, %hi(var_80AD4F9C)      ## a1 = 80AD0000
    addiu   a1, a1, %lo(var_80AD4F9C)  ## a1 = 80AD4F9C
    jal     func_80027C98              
    addiu   a2, $zero, 0x001F          ## a2 = 0000001F
lbl_80AD2F74:
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    sh      a3, 0x0026($sp)            
    jal     func_80AD2B84              
    or      a0, s0, $zero              ## a0 = 00000000
    lh      a3, 0x0026($sp)            
    or      v1, v0, $zero              ## v1 = 00000000
lbl_80AD2F8C:
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x01D8             ## a1 = 000001D8
    addiu   a2, $zero, 0x0005          ## a2 = 00000005
    jal     func_80027854              
    sw      v1, 0x0020($sp)            
    lw      v0, 0x0020($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD2FB8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      t6, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    addiu   a3, $zero, 0x0010          ## a3 = 00000010
    addiu   a1, t6, 0x02D4             ## a1 = 000002D4
    jal     func_80027D30              
    addiu   a2, t6, 0x02F4             ## a2 = 000002F4
    lw      a0, 0x0018($sp)            
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    addiu   a3, $zero, 0x0004          ## a3 = 00000004
    jal     func_80027854              
    addiu   a1, a0, 0x01D8             ## a1 = 000001D8
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD3008:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      t6, 0x01D8(s0)             ## 000001D8
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     $at, 0x3F80                ## $at = 3F800000
    beql    t6, $zero, lbl_80AD3058    
    mtc1    $at, $f2                   ## $f2 = 1.00
    jal     func_8008D6A8              
    lui     a1, 0x4190                 ## a1 = 41900000
    beq     v0, $zero, lbl_80AD304C    
    nop
    mtc1    $zero, $f4                 ## $f4 = 0.00
    nop
    swc1    $f4, 0x0158(s0)            ## 00000158
lbl_80AD304C:
    beq     $zero, $zero, lbl_80AD3074 
    lwc1    $f0, 0x0158(s0)            ## 00000158
    mtc1    $at, $f2                   ## $f2 = 0.00
lbl_80AD3058:
    lwc1    $f0, 0x0158(s0)            ## 00000158
    c.eq.s  $f2, $f0                   
    nop
    bc1tl   lbl_80AD3078               
    mtc1    $zero, $f6                 ## $f6 = 0.00
    swc1    $f2, 0x0158(s0)            ## 00000158
    lwc1    $f0, 0x0158(s0)            ## 00000158
lbl_80AD3074:
    mtc1    $zero, $f6                 ## $f6 = 0.00
lbl_80AD3078:
    lw      a0, 0x0024($sp)            
    addiu   a1, s0, 0x02D4             ## a1 = 000002D4
    c.eq.s  $f6, $f0                   
    addiu   a2, s0, 0x02F4             ## a2 = 000002F4
    bc1fl   lbl_80AD30A0               
    mtc1    $zero, $f8                 ## $f8 = 0.00
    jal     func_80027D30              
    addiu   a3, $zero, 0x0010          ## a3 = 00000010
    lwc1    $f0, 0x0158(s0)            ## 00000158
    mtc1    $zero, $f8                 ## $f8 = 0.00
lbl_80AD30A0:
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x01D8             ## a1 = 000001D8
    c.eq.s  $f8, $f0                   
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    bc1f    lbl_80AD30C4               
    nop
    beq     $zero, $zero, lbl_80AD30C4 
    addiu   v0, $zero, 0x0002          ## v0 = 00000002
lbl_80AD30C4:
    sll     a3, v0, 16                 
    jal     func_80027854              
    sra     a3, a3, 16                 
    jal     func_80AD2B84              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD30EC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x001C(a0)             ## 0000001C
    andi    t7, t6, 0x00FF             ## t7 = 00000000
    sltiu   $at, t7, 0x000D            
    beq     $at, $zero, lbl_80AD31E4   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_80AD565C)     ## $at = 80AD0000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80AD565C)($at) 
    jr      t7                         
    nop
var_80AD311C:
    jal     func_80AD2BF0              
    nop
    beq     $zero, $zero, lbl_80AD31E8 
    lw      $ra, 0x0014($sp)           
var_80AD312C:
    jal     func_80AD2CA0              
    nop
    beq     $zero, $zero, lbl_80AD31E8 
    lw      $ra, 0x0014($sp)           
var_80AD313C:
    jal     func_80AD2EC4              
    nop
    beq     $zero, $zero, lbl_80AD31E8 
    lw      $ra, 0x0014($sp)           
var_80AD314C:
    jal     func_80AD2CA0              
    nop
    beq     $zero, $zero, lbl_80AD31E8 
    lw      $ra, 0x0014($sp)           
var_80AD315C:
    jal     func_80AD2E00              
    nop
    beq     $zero, $zero, lbl_80AD31E8 
    lw      $ra, 0x0014($sp)           
var_80AD316C:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD31E8 
    lw      $ra, 0x0014($sp)           
var_80AD317C:
    jal     func_80AD2DB0              
    nop
    beq     $zero, $zero, lbl_80AD31E8 
    lw      $ra, 0x0014($sp)           
var_80AD318C:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD31E8 
    lw      $ra, 0x0014($sp)           
var_80AD319C:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD31E8 
    lw      $ra, 0x0014($sp)           
var_80AD31AC:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD31E8 
    lw      $ra, 0x0014($sp)           
var_80AD31BC:
    jal     func_80AD2CA0              
    nop
    beq     $zero, $zero, lbl_80AD31E8 
    lw      $ra, 0x0014($sp)           
var_80AD31CC:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD31E8 
    lw      $ra, 0x0014($sp)           
var_80AD31DC:
    jal     func_80AD2CA0              
    nop
lbl_80AD31E4:
    lw      $ra, 0x0014($sp)           
lbl_80AD31E8:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD31F4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x001C(a0)             ## 0000001C
    andi    t7, t6, 0x00FF             ## t7 = 00000000
    sltiu   $at, t7, 0x000D            
    beq     $at, $zero, lbl_80AD32EC   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_80AD5690)     ## $at = 80AD0000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80AD5690)($at) 
    jr      t7                         
    nop
var_80AD3224:
    jal     func_80AD2FB8              
    nop
    beq     $zero, $zero, lbl_80AD32F0 
    lw      $ra, 0x0014($sp)           
var_80AD3234:
    jal     func_80AD2FB8              
    nop
    beq     $zero, $zero, lbl_80AD32F0 
    lw      $ra, 0x0014($sp)           
var_80AD3244:
    jal     func_80AD2EC4              
    nop
    beq     $zero, $zero, lbl_80AD32F0 
    lw      $ra, 0x0014($sp)           
var_80AD3254:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD32F0 
    lw      $ra, 0x0014($sp)           
var_80AD3264:
    jal     func_80AD2E00              
    nop
    beq     $zero, $zero, lbl_80AD32F0 
    lw      $ra, 0x0014($sp)           
var_80AD3274:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD32F0 
    lw      $ra, 0x0014($sp)           
var_80AD3284:
    jal     func_80AD2DB0              
    nop
    beq     $zero, $zero, lbl_80AD32F0 
    lw      $ra, 0x0014($sp)           
var_80AD3294:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD32F0 
    lw      $ra, 0x0014($sp)           
var_80AD32A4:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD32F0 
    lw      $ra, 0x0014($sp)           
var_80AD32B4:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD32F0 
    lw      $ra, 0x0014($sp)           
var_80AD32C4:
    jal     func_80AD2CA0              
    nop
    beq     $zero, $zero, lbl_80AD32F0 
    lw      $ra, 0x0014($sp)           
var_80AD32D4:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD32F0 
    lw      $ra, 0x0014($sp)           
var_80AD32E4:
    jal     func_80AD2CA0              
    nop
lbl_80AD32EC:
    lw      $ra, 0x0014($sp)           
lbl_80AD32F0:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD32FC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x001C(a0)             ## 0000001C
    andi    t7, t6, 0x00FF             ## t7 = 00000000
    sltiu   $at, t7, 0x000D            
    beq     $at, $zero, lbl_80AD33F4   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_80AD56C4)     ## $at = 80AD0000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80AD56C4)($at) 
    jr      t7                         
    nop
var_80AD332C:
    jal     func_80AD2FB8              
    nop
    beq     $zero, $zero, lbl_80AD33F8 
    lw      $ra, 0x0014($sp)           
var_80AD333C:
    jal     func_80AD2FB8              
    nop
    beq     $zero, $zero, lbl_80AD33F8 
    lw      $ra, 0x0014($sp)           
var_80AD334C:
    jal     func_80AD2EC4              
    nop
    beq     $zero, $zero, lbl_80AD33F8 
    lw      $ra, 0x0014($sp)           
var_80AD335C:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD33F8 
    lw      $ra, 0x0014($sp)           
var_80AD336C:
    jal     func_80AD3008              
    nop
    beq     $zero, $zero, lbl_80AD33F8 
    lw      $ra, 0x0014($sp)           
var_80AD337C:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD33F8 
    lw      $ra, 0x0014($sp)           
var_80AD338C:
    jal     func_80AD2DB0              
    nop
    beq     $zero, $zero, lbl_80AD33F8 
    lw      $ra, 0x0014($sp)           
var_80AD339C:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD33F8 
    lw      $ra, 0x0014($sp)           
var_80AD33AC:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD33F8 
    lw      $ra, 0x0014($sp)           
var_80AD33BC:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD33F8 
    lw      $ra, 0x0014($sp)           
var_80AD33CC:
    jal     func_80AD2CA0              
    nop
    beq     $zero, $zero, lbl_80AD33F8 
    lw      $ra, 0x0014($sp)           
var_80AD33DC:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD33F8 
    lw      $ra, 0x0014($sp)           
var_80AD33EC:
    jal     func_80AD2CA0              
    nop
lbl_80AD33F4:
    lw      $ra, 0x0014($sp)           
lbl_80AD33F8:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD3404:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x001C(a0)             ## 0000001C
    andi    t7, t6, 0x00FF             ## t7 = 00000000
    sltiu   $at, t7, 0x000D            
    beq     $at, $zero, lbl_80AD34FC   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_80AD56F8)     ## $at = 80AD0000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80AD56F8)($at) 
    jr      t7                         
    nop
var_80AD3434:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD3500 
    lw      $ra, 0x0014($sp)           
var_80AD3444:
    jal     func_80AD2FB8              
    nop
    beq     $zero, $zero, lbl_80AD3500 
    lw      $ra, 0x0014($sp)           
var_80AD3454:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD3500 
    lw      $ra, 0x0014($sp)           
var_80AD3464:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD3500 
    lw      $ra, 0x0014($sp)           
var_80AD3474:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD3500 
    lw      $ra, 0x0014($sp)           
var_80AD3484:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD3500 
    lw      $ra, 0x0014($sp)           
var_80AD3494:
    jal     func_80AD2DB0              
    nop
    beq     $zero, $zero, lbl_80AD3500 
    lw      $ra, 0x0014($sp)           
var_80AD34A4:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD3500 
    lw      $ra, 0x0014($sp)           
var_80AD34B4:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD3500 
    lw      $ra, 0x0014($sp)           
var_80AD34C4:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD3500 
    lw      $ra, 0x0014($sp)           
var_80AD34D4:
    jal     func_80AD2CA0              
    nop
    beq     $zero, $zero, lbl_80AD3500 
    lw      $ra, 0x0014($sp)           
var_80AD34E4:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD3500 
    lw      $ra, 0x0014($sp)           
var_80AD34F4:
    jal     func_80AD2CA0              
    nop
lbl_80AD34FC:
    lw      $ra, 0x0014($sp)           
lbl_80AD3500:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD350C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x001C(a0)             ## 0000001C
    andi    t7, t6, 0x00FF             ## t7 = 00000000
    sltiu   $at, t7, 0x000D            
    beq     $at, $zero, lbl_80AD3604   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_80AD572C)     ## $at = 80AD0000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80AD572C)($at) 
    jr      t7                         
    nop
var_80AD353C:
    jal     func_80AD2EC4              
    nop
    beq     $zero, $zero, lbl_80AD3608 
    lw      $ra, 0x0014($sp)           
var_80AD354C:
    jal     func_80AD2CA0              
    nop
    beq     $zero, $zero, lbl_80AD3608 
    lw      $ra, 0x0014($sp)           
var_80AD355C:
    jal     func_80AD2CA0              
    nop
    beq     $zero, $zero, lbl_80AD3608 
    lw      $ra, 0x0014($sp)           
var_80AD356C:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD3608 
    lw      $ra, 0x0014($sp)           
var_80AD357C:
    jal     func_80AD2CA0              
    nop
    beq     $zero, $zero, lbl_80AD3608 
    lw      $ra, 0x0014($sp)           
var_80AD358C:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD3608 
    lw      $ra, 0x0014($sp)           
var_80AD359C:
    jal     func_80AD2DB0              
    nop
    beq     $zero, $zero, lbl_80AD3608 
    lw      $ra, 0x0014($sp)           
var_80AD35AC:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD3608 
    lw      $ra, 0x0014($sp)           
var_80AD35BC:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD3608 
    lw      $ra, 0x0014($sp)           
var_80AD35CC:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD3608 
    lw      $ra, 0x0014($sp)           
var_80AD35DC:
    jal     func_80AD2CA0              
    nop
    beq     $zero, $zero, lbl_80AD3608 
    lw      $ra, 0x0014($sp)           
var_80AD35EC:
    jal     func_80AD2D3C              
    nop
    beq     $zero, $zero, lbl_80AD3608 
    lw      $ra, 0x0014($sp)           
var_80AD35FC:
    jal     func_80AD2CA0              
    nop
lbl_80AD3604:
    lw      $ra, 0x0014($sp)           
lbl_80AD3608:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD3614:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    lui     t9, 0x800F                 ## t9 = 800F0000
    lw      t0, 0x0034($sp)            
    lw      t7, 0x1C44(t6)             ## 00001C44
    sw      t7, 0x002C($sp)            
    lbu     t8, 0x1D6C(t6)             ## 00001D6C
    bnel    t8, $zero, lbl_80AD365C    
    lw      t2, 0x00E0(t0)             ## 000000E0
    lw      t9, -0x0E60(t9)            ## 800EF1A0
    lw      t5, 0x002C($sp)            
    beql    t9, $zero, lbl_80AD36A8    
    lw      t6, 0x0024(t5)             ## 00000024
    lw      t2, 0x00E0(t0)             ## 000000E0
lbl_80AD365C:
    lh      t3, 0x001C(s0)             ## 0000001C
    lui     $at, 0x4220                ## $at = 42200000
    sw      t2, 0x01F0(s0)             ## 000001F0
    lw      t1, 0x00E4(t0)             ## 000000E4
    mtc1    $at, $f4                   ## $f4 = 40.00
    andi    t4, t3, 0x00FF             ## t4 = 00000000
    sw      t1, 0x01F4(s0)             ## 000001F4
    lw      t2, 0x00E8(t0)             ## 000000E8
    swc1    $f4, 0x01EC(s0)            ## 000001EC
    beq     t4, $zero, lbl_80AD36E4    
    sw      t2, 0x01F8(s0)             ## 000001F8
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x01D8             ## a1 = 000001D8
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    jal     func_80027854              
    addiu   a3, $zero, 0x0002          ## a3 = 00000002
    beq     $zero, $zero, lbl_80AD36E4 
    nop
    lw      t6, 0x0024(t5)             ## 00000024
lbl_80AD36A8:
    or      a0, s0, $zero              ## a0 = 00000000
    sw      t6, 0x01F0(s0)             ## 000001F0
    lw      t7, 0x0028(t5)             ## 00000028
    sw      t7, 0x01F4(s0)             ## 000001F4
    lw      t6, 0x002C(t5)             ## 0000002C
    jal     func_80AD2A44              
    sw      t6, 0x01F8(s0)             ## 000001F8
    swc1    $f0, 0x01EC(s0)            ## 000001EC
    lw      a1, 0x0034($sp)            
    jal     func_80AD3D70              
    or      a0, s0, $zero              ## a0 = 00000000
    bne     v0, $zero, lbl_80AD36E4    
    nop
    lh      t8, 0x01D8(s0)             ## 000001D8
    beq     t8, $zero, lbl_80AD37BC    
lbl_80AD36E4:
    lui     t9, %hi(func_80AD2490)     ## t9 = 80AD0000
    lui     t0, %hi(func_80AD25BC)     ## t0 = 80AD0000
    addiu   t0, t0, %lo(func_80AD25BC) ## t0 = 80AD25BC
    addiu   t9, t9, %lo(func_80AD2490) ## t9 = 80AD2490
    lw      a3, 0x020C(s0)             ## 0000020C
    sw      t0, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    lw      a0, 0x0034($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_800271FC              
    addiu   a2, s0, 0x01D8             ## a2 = 000001D8
    beql    v0, $zero, lbl_80AD37C0    
    lw      $ra, 0x0024($sp)           
    lh      t1, 0x001C(s0)             ## 0000001C
    addiu   $at, $zero, 0x000C         ## $at = 0000000C
    lw      t3, 0x0034($sp)            
    andi    t2, t1, 0x00FF             ## t2 = 00000000
    bnel    t2, $at, lbl_80AD37C0      
    lw      $ra, 0x0024($sp)           
    lh      t4, 0x00A4(t3)             ## 000000A4
    addiu   $at, $zero, 0x005B         ## $at = 0000005B
    lui     t5, 0x8010                 ## t5 = 80100000
    bnel    t4, $at, lbl_80AD37C0      
    lw      $ra, 0x0024($sp)           
    lbu     t5, -0x709F(t5)            ## 800F8F61
    lui     t7, 0x8012                 ## t7 = 80120000
    addiu   t8, $zero, 0x10DF          ## t8 = 000010DF
    addu    t7, t7, t5                 
    lbu     t7, -0x59BC(t7)            ## 8011A644
    addiu   t6, $zero, 0x10B9          ## t6 = 000010B9
    slti    $at, t7, 0x0032            
    bnel    $at, $zero, lbl_80AD3774   
    sh      t8, 0x010E(s0)             ## 0000010E
    beq     $zero, $zero, lbl_80AD3774 
    sh      t6, 0x010E(s0)             ## 0000010E
    sh      t8, 0x010E(s0)             ## 0000010E
lbl_80AD3774:
    jal     func_80022B04              
    lw      a0, 0x0034($sp)            
    addiu   $at, $zero, 0x0009         ## $at = 00000009
    bne     v0, $at, lbl_80AD37B0      
    lui     t9, 0x8012                 ## t9 = 80120000
    lhu     t9, -0x4B22(t9)            ## 8011B4DE
    addiu   t2, $zero, 0x10B7          ## t2 = 000010B7
    addiu   t1, $zero, 0x10B8          ## t1 = 000010B8
    andi    t0, t9, 0x0040             ## t0 = 00000000
    beql    t0, $zero, lbl_80AD37AC    
    sh      t2, 0x010E(s0)             ## 0000010E
    beq     $zero, $zero, lbl_80AD37AC 
    sh      t1, 0x010E(s0)             ## 0000010E
    sh      t2, 0x010E(s0)             ## 0000010E
lbl_80AD37AC:
    sb      $zero, 0x0200(s0)          ## 00000200
lbl_80AD37B0:
    lhu     t3, 0x010E(s0)             ## 0000010E
    lw      t4, 0x002C($sp)            
    sh      t3, 0x010E(t4)             ## 0000010E
lbl_80AD37BC:
    lw      $ra, 0x0024($sp)           
lbl_80AD37C0:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD37D0:
    lh      v1, 0x00A4(a1)             ## 000000A4
    slti    $at, v1, 0x0056            
    bne     $at, $zero, lbl_80AD37F0   
    addiu   $at, $zero, 0x005B         ## $at = 0000005B
    beq     v1, $at, lbl_80AD3A74      
    lui     t3, 0x8010                 ## t3 = 80100000
    beq     $zero, $zero, lbl_80AD3AAC 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD37F0:
    slti    $at, v1, 0x002E            
    bne     $at, $zero, lbl_80AD3810   
    addiu   t6, v1, 0xFFDA             ## t6 = FFFFFFDA
    addiu   $at, $zero, 0x0055         ## $at = 00000055
    beql    v1, $at, lbl_80AD3834      
    lh      v0, 0x001C(a0)             ## 0000001C
    beq     $zero, $zero, lbl_80AD3AAC 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD3810:
    sltiu   $at, t6, 0x0008            
    beq     $at, $zero, lbl_80AD3AA8   
    sll     t6, t6,  2                 
    lui     $at, %hi(var_80AD5760)     ## $at = 80AD0000
    addu    $at, $at, t6               
    lw      t6, %lo(var_80AD5760)($at) 
    jr      t6                         
    nop
    lh      v0, 0x001C(a0)             ## 0000001C
lbl_80AD3834:
    lui     t7, 0x8010                 ## t7 = 80100000
    andi    v0, v0, 0x00FF             ## v0 = 00000000
    slti    $at, v0, 0x0007            
    bne     $at, $zero, lbl_80AD3858   
    addiu   $at, $zero, 0x000C         ## $at = 0000000C
    beq     v0, $at, lbl_80AD3858      
    nop
    jr      $ra                        
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD3858:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lw      t8, 0x00A4(v0)             ## 8011A674
    lw      t7, -0x7410(t7)            ## 800F8BF0
    and     t9, t7, t8                 
    bne     t9, $zero, lbl_80AD3888    
    nop
    lw      t0, 0x0004(v0)             ## 8011A5D4
    bne     t0, $zero, lbl_80AD3888    
    nop
    jr      $ra                        
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD3888:
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001


func_80AD3890:
    lh      v0, 0x001C(a0)             ## 0000001C
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    andi    v0, v0, 0x00FF             ## v0 = 00000000
    beq     v0, $at, lbl_80AD38BC      
    addiu   $at, $zero, 0x0008         ## $at = 00000008
    beq     v0, $at, lbl_80AD38BC      
    addiu   $at, $zero, 0x000B         ## $at = 0000000B
    beq     v0, $at, lbl_80AD38BC      
    nop
    jr      $ra                        
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD38BC:
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001


func_80AD38C4:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lw      t1, 0x0004(v0)             ## 8011A5D4
    lui     t2, 0x8010                 ## t2 = 80100000
    bnel    t1, $zero, lbl_80AD3920    
    lh      t5, 0x001C(a0)             ## 0000001C
    lw      t2, -0x7410(t2)            ## 800F8BF0
    lw      t3, 0x00A4(v0)             ## 8011A674
    and     t4, t2, t3                 
    bnel    t4, $zero, lbl_80AD3920    
    lh      t5, 0x001C(a0)             ## 0000001C
    lh      v0, 0x001C(a0)             ## 0000001C
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    andi    v0, v0, 0x00FF             ## v0 = 000000D0
    beq     v0, $at, lbl_80AD3914      
    addiu   $at, $zero, 0x0009         ## $at = 00000009
    beq     v0, $at, lbl_80AD3914      
    nop
    jr      $ra                        
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD3914:
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AD391C:
    lh      t5, 0x001C(a0)             ## 0000001C
lbl_80AD3920:
    addiu   $at, $zero, 0x0009         ## $at = 00000009
    andi    t6, t5, 0x00FF             ## t6 = 00000000
    beq     t6, $at, lbl_80AD3938      
    nop
    jr      $ra                        
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD3938:
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001


func_80AD3940:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lw      t7, 0x0004(v0)             ## 8011A5D4
    lui     t8, 0x8010                 ## t8 = 80100000
    bne     t7, $zero, lbl_80AD3998    
    nop
    lw      t8, -0x7410(t8)            ## 800F8BF0
    lw      t9, 0x00A4(v0)             ## 8011A674
    and     t0, t8, t9                 
    bne     t0, $zero, lbl_80AD3998    
    nop
    lh      v0, 0x001C(a0)             ## 0000001C
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    andi    v0, v0, 0x00FF             ## v0 = 000000D0
    beq     v0, $zero, lbl_80AD3990    
    nop
    beq     v0, $at, lbl_80AD3990      
    nop
    jr      $ra                        
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD3990:
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AD3998:
    jr      $ra                        
    or      v0, $zero, $zero           ## v0 = 00000000


func_80AD39A0:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lw      t1, 0x0004(v0)             ## 8011A5D4
    lui     t2, 0x8010                 ## t2 = 80100000
    bne     t1, $zero, lbl_80AD39F0    
    nop
    lw      t2, -0x7410(t2)            ## 800F8BF0
    lw      t3, 0x00A4(v0)             ## 8011A674
    and     t4, t2, t3                 
    bne     t4, $zero, lbl_80AD39F0    
    nop
    lh      t5, 0x001C(a0)             ## 0000001C
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    andi    t6, t5, 0x00FF             ## t6 = 00000000
    beq     t6, $at, lbl_80AD39E8      
    nop
    jr      $ra                        
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD39E8:
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AD39F0:
    jr      $ra                        
    or      v0, $zero, $zero           ## v0 = 00000000


func_80AD39F8:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lw      t7, 0x0004(v0)             ## 8011A5D4
    lui     t8, 0x8010                 ## t8 = 80100000
    bnel    t7, $zero, lbl_80AD3A54    
    lh      t1, 0x001C(a0)             ## 0000001C
    lw      t8, -0x7410(t8)            ## 800F8BF0
    lw      t9, 0x00A4(v0)             ## 8011A674
    and     t0, t8, t9                 
    bnel    t0, $zero, lbl_80AD3A54    
    lh      t1, 0x001C(a0)             ## 0000001C
    lh      v0, 0x001C(a0)             ## 0000001C
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    andi    v0, v0, 0x00FF             ## v0 = 000000D0
    beq     v0, $at, lbl_80AD3A48      
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    beq     v0, $at, lbl_80AD3A48      
    nop
    jr      $ra                        
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD3A48:
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AD3A50:
    lh      t1, 0x001C(a0)             ## 0000001C
lbl_80AD3A54:
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    andi    t2, t1, 0x00FF             ## t2 = 00000000
    beq     t2, $at, lbl_80AD3A6C      
    nop
    jr      $ra                        
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD3A6C:
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AD3A74:
    lbu     t3, -0x709F(t3)            ## FFFF8F61
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    addu    t4, v0, t3                 
    lbu     t5, 0x0074(t4)             ## 00000074
    addiu   $at, $zero, 0x0031         ## $at = 00000031
    or      v1, $zero, $zero           ## v1 = 00000000
    bne     t5, $at, lbl_80AD3AA0      
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AD3AA0:
    jr      $ra                        
    or      v0, v1, $zero              ## v0 = 00000000
lbl_80AD3AA8:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD3AAC:
    jr      $ra                        
    nop


func_80AD3AB4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lh      v0, 0x0204(a2)             ## 00000204
    bne     v0, $zero, lbl_80AD3AD4    
    addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80AD3ADC 
    or      v1, $zero, $zero           ## v1 = 00000000
lbl_80AD3AD4:
    sh      t6, 0x0204(a2)             ## 00000204
    lh      v1, 0x0204(a2)             ## 00000204
lbl_80AD3ADC:
    bne     v1, $zero, lbl_80AD3B64    
    lui     v0, %hi(var_80AD5310)      ## v0 = 80AD0000
    lh      t7, 0x001C(a2)             ## 0000001C
    lh      t0, 0x0206(a2)             ## 00000206
    lui     v1, %hi(var_80AD4F70)      ## v1 = 80AD0000
    andi    t8, t7, 0x00FF             ## t8 = 00000000
    sll     t9, t8,  2                 
    subu    t9, t9, t8                 
    sll     t9, t9,  2                 
    subu    t9, t9, t8                 
    addu    v0, v0, t9                 
    lbu     v0, %lo(var_80AD5310)(v0)  
    addiu   t1, t0, 0x0001             ## t1 = 00000001
    sh      t1, 0x0206(a2)             ## 00000206
    sll     t2, v0,  2                 
    subu    t2, t2, v0                 
    sll     t2, t2,  2                 
    addu    v1, v1, t2                 
    lw      v1, %lo(var_80AD4F70)(v1)  
    beql    v1, $zero, lbl_80AD3B68    
    lw      $ra, 0x0014($sp)           
    lh      t3, 0x0206(a2)             ## 00000206
    addiu   a0, $zero, 0x001E          ## a0 = 0000001E
    addiu   a1, $zero, 0x001E          ## a1 = 0000001E
    sll     t4, t3,  2                 
    addu    t5, v1, t4                 
    lw      t6, 0x0000(t5)             ## 00000000
    bnel    t6, $zero, lbl_80AD3B68    
    lw      $ra, 0x0014($sp)           
    jal     func_80063BF0              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    sh      v0, 0x0204(a2)             ## 00000204
    sh      $zero, 0x0206(a2)          ## 00000206
lbl_80AD3B64:
    lw      $ra, 0x0014($sp)           
lbl_80AD3B68:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD3B74:
    lh      v0, 0x001C(a0)             ## 0000001C
    lui     t7, %hi(var_80AD53A0)      ## t7 = 80AD0000
    addiu   t7, t7, %lo(var_80AD53A0)  ## t7 = 80AD53A0
    andi    v0, v0, 0x00FF             ## v0 = 00000000
    sll     t6, v0,  2                 
    subu    t6, t6, v0                 
    sll     t6, t6,  2                 
    lh      t9, 0x01C8(a0)             ## 000001C8
    addu    v1, t6, t7                 
    lb      t8, 0x0000(v1)             ## 00000000
    mtc1    t9, $f8                    ## $f8 = 0.00
    sb      t8, 0x001F(a0)             ## 0000001F
    lwc1    $f4, 0x0004(v1)            ## 00000004
    cvt.s.w $f10, $f8                  
    swc1    $f4, 0x020C(a0)            ## 0000020C
    lwc1    $f6, 0x020C(a0)            ## 0000020C
    add.s   $f16, $f6, $f10            
    swc1    $f16, 0x020C(a0)           ## 0000020C
    lwc1    $f18, 0x0008(v1)           ## 00000008
    swc1    $f18, 0x0208(a0)           ## 00000208
    jr      $ra                        
    nop


func_80AD3BCC:
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    sw      a0, 0x0000($sp)            
    lw      t6, 0x0004(v0)             ## 8011A5D4
    lui     t7, 0x8010                 ## t7 = 80100000
    lui     t0, 0x8010                 ## t0 = 80100000
    bne     t6, $zero, lbl_80AD3C14    
    nop
    lw      t7, -0x7410(t7)            ## 800F8BF0
    lw      t8, 0x00A4(v0)             ## 8011A674
    addiu   v1, $zero, 0x0003          ## v1 = 00000003
    and     t9, t7, t8                 
    beq     t9, $zero, lbl_80AD3C0C    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x0004          ## v0 = 00000004
lbl_80AD3C0C:
    jr      $ra                        
    or      v0, v1, $zero              ## v0 = 00000003
lbl_80AD3C14:
    lw      t0, -0x73C8(t0)            ## 800F8C38
    lw      t1, 0x00A4(v0)             ## 000000A7
    and     t2, t0, t1                 
    beql    t2, $zero, lbl_80AD3C50    
    or      v0, $zero, $zero           ## v0 = 00000000
    lhu     t3, 0x0EDC(v0)             ## 00000EDC
    addiu   v1, $zero, 0x0001          ## v1 = 00000001
    andi    t4, t3, 0x0001             ## t4 = 00000000
    beq     t4, $zero, lbl_80AD3C44    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x0002          ## v0 = 00000002
lbl_80AD3C44:
    jr      $ra                        
    or      v0, v1, $zero              ## v0 = 00000001
lbl_80AD3C4C:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD3C50:
    jr      $ra                        
    nop


func_80AD3C58:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    or      a2, a1, $zero              ## a2 = 00000000
    lh      v0, 0x00A4(a2)             ## 000000A4
    addiu   $at, $zero, 0x005B         ## $at = 0000005B
    beq     v0, $at, lbl_80AD3C90      
    addiu   $at, $zero, 0x0055         ## $at = 00000055
    beq     v0, $at, lbl_80AD3C90      
    lui     $at, 0x437F                ## $at = 437F0000
    mtc1    $at, $f4                   ## $f4 = 255.00
    beq     $zero, $zero, lbl_80AD3D5C 
    swc1    $f4, 0x0210(s0)            ## 00000210
lbl_80AD3C90:
    lbu     t6, 0x1D6C(a2)             ## 00001D6C
    lui     t7, 0x800F                 ## t7 = 800F0000
    addiu   a0, s0, 0x0024             ## a0 = 00000024
    bne     t6, $zero, lbl_80AD3CB0    
    nop
    lw      t7, -0x0E60(t7)            ## 800EF1A0
    beql    t7, $zero, lbl_80AD3CD4    
    lwc1    $f2, 0x0090(s0)            ## 00000090
lbl_80AD3CB0:
    jal     func_80063E18              
    addiu   a1, a2, 0x00E0             ## a1 = 000000E0
    lui     $at, 0x3E80                ## $at = 3E800000
    mtc1    $at, $f6                   ## $f6 = 0.25
    nop
    mul.s   $f2, $f0, $f6              
    beq     $zero, $zero, lbl_80AD3CD8 
    lwc1    $f8, 0x0208(s0)            ## 00000208
    lwc1    $f2, 0x0090(s0)            ## 00000090
lbl_80AD3CD4:
    lwc1    $f8, 0x0208(s0)            ## 00000208
lbl_80AD3CD8:
    lui     a2, 0x3E99                 ## a2 = 3E990000
    ori     a2, a2, 0x999A             ## a2 = 3E99999A
    c.lt.s  $f8, $f2                   
    addiu   a0, s0, 0x0210             ## a0 = 00000210
    lui     a3, 0x4220                 ## a3 = 42200000
    lui     $at, 0x437F                ## $at = 437F0000
    bc1fl   lbl_80AD3D08               
    mtc1    $at, $f0                   ## $f0 = 255.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    beq     $zero, $zero, lbl_80AD3D10 
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f0                   ## $f0 = 1.00
lbl_80AD3D08:
    nop
    lui     $at, 0x3F80                ## $at = 3F800000
lbl_80AD3D10:
    mtc1    $at, $f10                  ## $f10 = 1.00
    mfc1    a1, $f0                    
    jal     func_80064178              
    swc1    $f10, 0x0010($sp)          
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f18                  ## $f18 = 10.00
    lwc1    $f16, 0x0210(s0)           ## 00000210
    c.lt.s  $f16, $f18                 
    nop
    bc1fl   lbl_80AD3D54               
    lw      t0, 0x0004(s0)             ## 00000004
    lw      t8, 0x0004(s0)             ## 00000004
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    and     t9, t8, $at                
    beq     $zero, $zero, lbl_80AD3D5C 
    sw      t9, 0x0004(s0)             ## 00000004
    lw      t0, 0x0004(s0)             ## 00000004
lbl_80AD3D54:
    ori     t1, t0, 0x0001             ## t1 = 00000001
    sw      t1, 0x0004(s0)             ## 00000004
lbl_80AD3D5C:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD3D70:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x00A4(a1)             ## 000000A4
    addiu   $at, $zero, 0x005B         ## $at = 0000005B
    bnel    t6, $at, lbl_80AD3DB0      
    sw      a0, 0x0018($sp)            
    lh      t7, 0x001C(a0)             ## 0000001C
    addiu   $at, $zero, 0x000C         ## $at = 0000000C
    andi    t8, t7, 0x00FF             ## t8 = 00000000
    bnel    t8, $at, lbl_80AD3DB0      
    sw      a0, 0x0018($sp)            
    jal     func_80AD2CA0              
    nop
    beq     $zero, $zero, lbl_80AD3E2C 
    lw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
lbl_80AD3DB0:
    jal     func_80AD29BC              
    sw      a1, 0x001C($sp)            
    sltiu   $at, v0, 0x0005            
    lw      a0, 0x0018($sp)            
    beq     $at, $zero, lbl_80AD3E28   
    lw      a1, 0x001C($sp)            
    sll     t9, v0,  2                 
    lui     $at, %hi(var_80AD5780)     ## $at = 80AD0000
    addu    $at, $at, t9               
    lw      t9, %lo(var_80AD5780)($at) 
    jr      t9                         
    nop
var_80AD3DE0:
    jal     func_80AD30EC              
    nop
    beq     $zero, $zero, lbl_80AD3E2C 
    lw      $ra, 0x0014($sp)           
var_80AD3DF0:
    jal     func_80AD31F4              
    nop
    beq     $zero, $zero, lbl_80AD3E2C 
    lw      $ra, 0x0014($sp)           
var_80AD3E00:
    jal     func_80AD32FC              
    nop
    beq     $zero, $zero, lbl_80AD3E2C 
    lw      $ra, 0x0014($sp)           
var_80AD3E10:
    jal     func_80AD3404              
    nop
    beq     $zero, $zero, lbl_80AD3E2C 
    lw      $ra, 0x0014($sp)           
var_80AD3E20:
    jal     func_80AD350C              
    nop
lbl_80AD3E28:
    lw      $ra, 0x0014($sp)           
lbl_80AD3E2C:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD3E38:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      t6, 0x001C(s0)             ## 0000001C
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t7, t6, 0x00FF             ## t7 = 00000000
    slti    $at, t7, 0x000D            
    beq     $at, $zero, lbl_80AD3E84   
    nop
    jal     func_80AD1DC0              
    lw      a1, 0x0024($sp)            
    beq     v0, $zero, lbl_80AD3E84    
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80AD1C20              
    lw      a1, 0x0024($sp)            
    bnel    v0, $zero, lbl_80AD3E90    
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80AD3E84:
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80AD3E90:
    jal     func_80AD37D0              
    lw      a1, 0x0024($sp)            
    bne     v0, $zero, lbl_80AD3EA8    
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80AD3EA8:
    lui     t8, %hi(func_80AD3EF4)     ## t8 = 80AD0000
    addiu   t8, t8, %lo(func_80AD3EF4) ## t8 = 80AD3EF4
    sw      t8, 0x0180(s0)             ## 00000180
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD3EC8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    or      a0, a3, $zero              ## a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x0188             ## a1 = 00000188
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD3EF4:
    addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
    sw      s1, 0x0038($sp)            
    sw      s0, 0x0034($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x003C($sp)           
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80AD1E10              
    or      a1, s1, $zero              ## a1 = 00000000
    beq     v0, $zero, lbl_80AD4210    
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80AD1D38              
    or      a1, s1, $zero              ## a1 = 00000000
    beq     v0, $zero, lbl_80AD4210    
    addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
    lb      t8, 0x0186(s0)             ## 00000186
    lw      t6, 0x0004(s0)             ## 00000004
    lui     t2, 0x0001                 ## t2 = 00010000
    sb      t8, 0x001E(s0)             ## 0000001E
    lb      t9, 0x001E(s0)             ## 0000001E
    and     t7, t6, $at                
    sw      t7, 0x0004(s0)             ## 00000004
    sll     t0, t9,  4                 
    addu    t0, t0, t9                 
    sll     t0, t0,  2                 
    addu    t1, s1, t0                 
    addu    t2, t2, t1                 
    lw      t2, 0x17B4(t2)             ## 000117B4
    lui     $at, 0x8000                ## $at = 80000000
    lui     t7, %hi(var_80AD5316)      ## t7 = 80AD0000
    addu    t3, t2, $at                
    lui     $at, 0x8012                ## $at = 80120000
    sw      t3, 0x0C50($at)            ## 80120C50
    lh      t4, 0x001C(s0)             ## 0000001C
    lui     a2, %hi(var_80AD4F90)      ## a2 = 80AD0000
    addiu   t1, $zero, 0x0010          ## t1 = 00000010
    andi    t5, t4, 0x00FF             ## t5 = 00000000
    sll     t6, t5,  2                 
    subu    t6, t6, t5                 
    sll     t6, t6,  2                 
    subu    t6, t6, t5                 
    addu    t7, t7, t6                 
    lbu     t7, %lo(var_80AD5316)(t7)  
    addiu   t0, s0, 0x0274             ## t0 = 00000274
    addiu   t9, s0, 0x0214             ## t9 = 00000214
    sll     t8, t7,  3                 
    addu    a2, a2, t8                 
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    sw      a1, 0x0044($sp)            
    lw      a2, %lo(var_80AD4F90)(a2)  
    sw      t9, 0x0010($sp)            
    sw      t0, 0x0014($sp)            
    sw      t1, 0x0018($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8008C788              
    or      a3, $zero, $zero           ## a3 = 00000000
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x4190                 ## a3 = 41900000
    lb      t2, 0x0187(s0)             ## 00000187
    lui     t5, 0x0001                 ## t5 = 00010000
    lui     $at, 0x8000                ## $at = 80000000
    sll     t3, t2,  4                 
    addu    t3, t3, t2                 
    sll     t3, t3,  2                 
    addu    t4, s1, t3                 
    addu    t5, t5, t4                 
    lw      t5, 0x17B4(t5)             ## 000117B4
    addiu   a1, s0, 0x0188             ## a1 = 00000188
    sw      a1, 0x0040($sp)            
    addu    t6, t5, $at                
    lui     $at, 0x8012                ## $at = 80120000
    sw      t6, 0x0C50($at)            ## 80120C50
    jal     func_8004AB7C              
    or      a0, s1, $zero              ## a0 = 00000000
    lui     a3, %hi(var_80AD4F10)      ## a3 = 80AD0000
    lw      a1, 0x0040($sp)            
    addiu   a3, a3, %lo(var_80AD4F10)  ## a3 = 80AD4F10
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              ## a2 = 00000000
    lui     a2, %hi(var_80AD4F3C)      ## a2 = 80AD0000
    addiu   a2, a2, %lo(var_80AD4F3C)  ## a2 = 80AD4F3C
    addiu   a0, s0, 0x0098             ## a0 = 00000098
    jal     func_80050370              
    or      a1, $zero, $zero           ## a1 = 00000000
    lh      v0, 0x001C(s0)             ## 0000001C
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    lui     t7, 0x8012                 ## t7 = 80120000
    andi    v0, v0, 0x00FF             ## v0 = 00000000
    bnel    v0, $at, lbl_80AD40D8      
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    lw      t7, -0x5A2C(t7)            ## 8011A5D4
    lui     t8, 0x8010                 ## t8 = 80100000
    lui     t9, 0x8012                 ## t9 = 80120000
    bnel    t7, $zero, lbl_80AD40BC    
    lh      t2, 0x00B8(s0)             ## 000000B8
    lw      t8, -0x7410(t8)            ## 800F8BF0
    lw      t9, -0x598C(t9)            ## 8011A674
    and     t0, t8, t9                 
    bnel    t0, $zero, lbl_80AD40BC    
    lh      t2, 0x00B8(s0)             ## 000000B8
    lh      t1, 0x00B8(s0)             ## 000000B8
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    beql    t1, $at, lbl_80AD40D8      
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AD4214 
    lw      $ra, 0x003C($sp)           
    lh      t2, 0x00B8(s0)             ## 000000B8
lbl_80AD40BC:
    beql    t2, $zero, lbl_80AD40D8    
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AD4214 
    lw      $ra, 0x003C($sp)           
    addiu   $at, $zero, 0x0005         ## $at = 00000005
lbl_80AD40D8:
    bne     v0, $at, lbl_80AD40EC      
    nop
    lbu     t3, 0x019A(s0)             ## 0000019A
    ori     t4, t3, 0x0040             ## t4 = 00000040
    sb      t4, 0x019A(s0)             ## 0000019A
lbl_80AD40EC:
    jal     func_80AD3BCC              
    or      a0, s0, $zero              ## a0 = 00000000
    lh      t5, 0x001C(s0)             ## 0000001C
    sh      v0, 0x0202(s0)             ## 00000202
    lh      t8, 0x0202(s0)             ## 00000202
    andi    t6, t5, 0x00FF             ## t6 = 00000000
    sll     t7, t6,  2                 
    addu    t7, t7, t6                 
    lui     a2, %hi(var_80AD52CC)      ## a2 = 80AD0000
    addu    t9, t7, t8                 
    addu    a2, a2, t9                 
    lui     a1, %hi(var_80AD4F9C)      ## a1 = 80AD0000
    addiu   a1, a1, %lo(var_80AD4F9C)  ## a1 = 80AD4F9C
    lbu     a2, %lo(var_80AD52CC)(a2)  
    jal     func_80027C98              
    lw      a0, 0x0044($sp)            
    lui     a1, 0x3C23                 ## a1 = 3C230000
    ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80AD3B74              
    or      a0, s0, $zero              ## a0 = 00000000
    lh      a1, 0x001C(s0)             ## 0000001C
    mtc1    $zero, $f4                 ## $f4 = 0.00
    or      a0, s1, $zero              ## a0 = 00000000
    andi    a1, a1, 0xFF00             ## a1 = 00000000
    sra     a1, a1,  8                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
    jal     func_80078F80              
    swc1    $f4, 0x0210(s0)            ## 00000210
    lwc1    $f6, 0x0024(s0)            ## 00000024
    sw      v0, 0x01D4(s0)             ## 000001D4
    addiu   t0, $zero, 0x0003          ## t0 = 00000003
    swc1    $f6, 0x0010($sp)           
    lwc1    $f8, 0x0028(s0)            ## 00000028
    addiu   a0, s1, 0x1C24             ## a0 = 00001C24
    or      a1, s0, $zero              ## a1 = 00000000
    swc1    $f8, 0x0014($sp)           
    lwc1    $f10, 0x002C(s0)           ## 0000002C
    sw      t0, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    or      a2, s1, $zero              ## a2 = 00000000
    addiu   a3, $zero, 0x0018          ## a3 = 00000018
    jal     func_800253F0              
    swc1    $f10, 0x0018($sp)          
    lh      t1, 0x001C(s0)             ## 0000001C
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    lui     t3, 0x8010                 ## t3 = 80100000
    andi    t2, t1, 0x00FF             ## t2 = 00000000
    bne     t2, $at, lbl_80AD4204      
    lui     t4, 0x8012                 ## t4 = 80120000
    lw      t3, -0x73C8(t3)            ## 800F8C38
    lw      t4, -0x598C(t4)            ## 8011A674
    lui     t8, %hi(func_80AD4474)     ## t8 = 80AD0000
    addiu   a1, s0, 0x0024             ## a1 = 00000024
    and     t5, t3, t4                 
    bne     t5, $zero, lbl_80AD41FC    
    nop
    lh      t6, 0x01CA(s0)             ## 000001CA
    addiu   t8, t8, %lo(func_80AD4474) ## t8 = 80AD4474
    sw      t8, 0x0180(s0)             ## 00000180
    addiu   t7, t6, 0x00C8             ## t7 = 000000C8
    beq     $zero, $zero, lbl_80AD4210 
    sh      t7, 0x01CA(s0)             ## 000001CA
lbl_80AD41FC:
    jal     func_800790B0              
    lw      a0, 0x01D4(s0)             ## 000001D4
lbl_80AD4204:
    lui     t9, %hi(func_80AD4224)     ## t9 = 80AD0000
    addiu   t9, t9, %lo(func_80AD4224) ## t9 = 80AD4224
    sw      t9, 0x0180(s0)             ## 00000180
lbl_80AD4210:
    lw      $ra, 0x003C($sp)           
lbl_80AD4214:
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           ## $sp = 00000000


func_80AD4224:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              ## a3 = 00000000
    addiu   v1, $zero, 0x000C          ## v1 = 0000000C
    lh      v0, 0x001C(a3)             ## 0000001C
    andi    v0, v0, 0x00FF             ## v0 = 00000000
    bne     v1, v0, lbl_80AD4288       
    nop
    lh      t6, 0x01D8(a3)             ## 000001D8
    beq     t6, $zero, lbl_80AD4288    
    nop
    lhu     t7, 0x010E(a3)             ## 0000010E
    addiu   $at, $zero, 0x10B9         ## $at = 000010B9
    addiu   a0, a3, 0x013C             ## a0 = 0000013C
    bne     t7, $at, lbl_80AD4288      
    addiu   a2, $zero, 0x0007          ## a2 = 00000007
    lui     a1, %hi(var_80AD4F9C)      ## a1 = 80AD0000
    addiu   a1, a1, %lo(var_80AD4F9C)  ## a1 = 80AD4F9C
    jal     func_80027C98              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lui     t8, %hi(func_80AD42D8)     ## t8 = 80AD0000
    addiu   t8, t8, %lo(func_80AD42D8) ## t8 = 80AD42D8
    beq     $zero, $zero, lbl_80AD42C8 
    sw      t8, 0x0180(a3)             ## 00000180
lbl_80AD4288:
    bnel    v1, v0, lbl_80AD42CC       
    lw      $ra, 0x0014($sp)           
    lh      t9, 0x01D8(a3)             ## 000001D8
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    lui     t0, %hi(func_80AD43A4)     ## t0 = 80AD0000
    bne     t9, $at, lbl_80AD42C8      
    addiu   t0, t0, %lo(func_80AD43A4) ## t0 = 80AD43A4
    lui     $at, 0x0001                ## $at = 00010000
    sw      t0, 0x0180(a3)             ## 00000180
    addu    $at, $at, a1               
    addiu   t1, $zero, 0x0004          ## t1 = 00000004
    sb      t1, 0x04BF($at)            ## 000104BF
    lui     $at, 0x0001                ## $at = 00010000
    addu    $at, $at, a1               
    addiu   t2, $zero, 0x0036          ## t2 = 00000036
    sb      t2, 0x03DC($at)            ## 000103DC
lbl_80AD42C8:
    lw      $ra, 0x0014($sp)           
lbl_80AD42CC:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD42D8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lh      t6, 0x001C(a3)             ## 0000001C
    addiu   $at, $zero, 0x000C         ## $at = 0000000C
    andi    t7, t6, 0x00FF             ## t7 = 00000000
    bnel    t7, $at, lbl_80AD435C      
    lh      t2, 0x01D8(a3)             ## 000001D8
    lh      t8, 0x01D8(a3)             ## 000001D8
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    addiu   a0, a3, 0x013C             ## a0 = 0000013C
    bne     t8, $at, lbl_80AD4358      
    lui     a1, %hi(var_80AD4F9C)      ## a1 = 80AD0000
    addiu   a1, a1, %lo(var_80AD4F9C)  ## a1 = 80AD4F9C
    addiu   a2, $zero, 0x0006          ## a2 = 00000006
    jal     func_80027C98              
    sw      a3, 0x0018($sp)            
    lw      v0, 0x001C($sp)            
    lw      a3, 0x0018($sp)            
    lui     t9, %hi(func_80AD43A4)     ## t9 = 80AD0000
    addiu   t9, t9, %lo(func_80AD43A4) ## t9 = 80AD43A4
    lui     $at, 0x0001                ## $at = 00010000
    addiu   t0, $zero, 0x0004          ## t0 = 00000004
    addu    $at, $at, v0               
    sw      t9, 0x0180(a3)             ## 00000180
    sb      t0, 0x04BF($at)            ## 000104BF
    lui     $at, 0x0001                ## $at = 00010000
    addiu   t1, $zero, 0x0036          ## t1 = 00000036
    addu    $at, $at, v0               
    beq     $zero, $zero, lbl_80AD4394 
    sb      t1, 0x03DC($at)            ## 000103DC
lbl_80AD4358:
    lh      t2, 0x01D8(a3)             ## 000001D8
lbl_80AD435C:
    lui     a1, %hi(var_80AD4F9C)      ## a1 = 80AD0000
    addiu   a1, a1, %lo(var_80AD4F9C)  ## a1 = 80AD4F9C
    beq     t2, $zero, lbl_80AD4378    
    addiu   a0, a3, 0x013C             ## a0 = 0000013C
    lhu     t3, 0x010E(a3)             ## 0000010E
    addiu   $at, $zero, 0x10B9         ## $at = 000010B9
    beq     t3, $at, lbl_80AD4394      
lbl_80AD4378:
    addiu   a2, $zero, 0x0006          ## a2 = 00000006
    jal     func_80027C98              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lui     t4, %hi(func_80AD4224)     ## t4 = 80AD0000
    addiu   t4, t4, %lo(func_80AD4224) ## t4 = 80AD4224
    sw      t4, 0x0180(a3)             ## 00000180
lbl_80AD4394:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD43A4:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_80022BB0              
    sw      a0, 0x0020($sp)            
    beq     v0, $zero, lbl_80AD43D8    
    lw      a0, 0x0020($sp)            
    lui     t6, %hi(func_80AD4404)     ## t6 = 80AD0000
    addiu   t6, t6, %lo(func_80AD4404) ## t6 = 80AD4404
    sw      $zero, 0x0118(a0)          ## 00000118
    beq     $zero, $zero, lbl_80AD43F4 
    sw      t6, 0x0180(a0)             ## 00000180
lbl_80AD43D8:
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f4                   ## $f4 = 10.00
    lw      a1, 0x0024($sp)            
    addiu   a2, $zero, 0x0021          ## a2 = 00000021
    lui     a3, 0x42F0                 ## a3 = 42F00000
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
lbl_80AD43F4:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD4404:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    lh      t6, 0x01D8(a2)             ## 000001D8
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    addiu   t7, $zero, 0x10B9          ## t7 = 000010B9
    bne     t6, $at, lbl_80AD4464      
    or      a0, a3, $zero              ## a0 = 00000000
    sh      t7, 0x010E(a2)             ## 0000010E
    sw      a2, 0x0018($sp)            
    jal     func_800DCE80              
    andi    a1, t7, 0xFFFF             ## a1 = 000010B9
    lw      a2, 0x0018($sp)            
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    sh      t8, 0x01D8(a2)             ## 000001D8
    lhu     t9, 0x0EF6(v0)             ## 8011B4C6
    lui     t1, %hi(func_80AD4224)     ## t1 = 80AD0000
    addiu   t1, t1, %lo(func_80AD4224) ## t1 = 80AD4224
    ori     t0, t9, 0x0002             ## t0 = 00000002
    sh      t0, 0x0EF6(v0)             ## 8011B4C6
    sw      t1, 0x0180(a2)             ## 00000180
lbl_80AD4464:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD4474:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              ## a2 = 00000000
    lw      v0, 0x1C44(a2)             ## 00001C44
    addiu   a0, s0, 0x0008             ## a0 = 00000008
    jal     func_80063F00              
    addiu   a1, v0, 0x0024             ## a1 = 00000024
    sh      v0, 0x0022($sp)            
    lwc1    $f4, 0x0008(s0)            ## 00000008
    sll     a0, v0, 16                 
    sra     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    swc1    $f4, 0x0024(s0)            ## 00000024
    lui     $at, 0x42A0                ## $at = 42A00000
    mtc1    $at, $f8                   ## $f8 = 80.00
    lwc1    $f6, 0x0024(s0)            ## 00000024
    lwc1    $f18, 0x0010(s0)           ## 00000010
    mul.s   $f10, $f8, $f0             
    swc1    $f18, 0x002C(s0)           ## 0000002C
    add.s   $f16, $f6, $f10            
    swc1    $f16, 0x0024(s0)           ## 00000024
    jal     func_80063684              ## coss?
    lh      a0, 0x0022($sp)            
    lui     $at, 0x42A0                ## $at = 42A00000
    mtc1    $at, $f8                   ## $f8 = 80.00
    lwc1    $f4, 0x002C(s0)            ## 0000002C
    lh      v1, 0x008A(s0)             ## 0000008A
    mul.s   $f6, $f8, $f0              
    lh      t6, 0x01D8(s0)             ## 000001D8
    sh      v1, 0x0032(s0)             ## 00000032
    sh      v1, 0x00B6(s0)             ## 000000B6
    add.s   $f10, $f4, $f6             
    beq     t6, $zero, lbl_80AD4514    
    swc1    $f10, 0x002C(s0)           ## 0000002C
    lbu     t7, 0x010C(s0)             ## 0000010C
    lui     $at, 0x3F80                ## $at = 3F800000
    bnel    t7, $zero, lbl_80AD4594    
    mtc1    $at, $f14                  ## $f14 = 1.00
lbl_80AD4514:
    lh      t8, 0x0022($sp)            
    mtc1    v1, $f16                   ## $f16 = 0.00
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    t8, $f8                    ## $f8 = 0.00
    cvt.s.w $f18, $f16                 
    mtc1    $at, $f12                  ## $f12 = 3.00
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f14                  ## $f14 = 1.00
    lui     $at, %hi(var_80AD5794)     ## $at = 80AD0000
    cvt.s.w $f4, $f8                   
    lwc1    $f6, %lo(var_80AD5794)($at) 
    sub.s   $f0, $f18, $f4             
    abs.s   $f0, $f0                   
    mul.s   $f10, $f0, $f6             
    nop
    mul.s   $f2, $f10, $f12            
    c.lt.s  $f2, $f14                  
    nop
    bc1f    lbl_80AD456C               
    nop
    beq     $zero, $zero, lbl_80AD459C 
    swc1    $f14, 0x0158(s0)           ## 00000158
lbl_80AD456C:
    c.lt.s  $f12, $f2                  
    nop
    bc1fl   lbl_80AD4588               
    mov.s   $f0, $f2                   
    beq     $zero, $zero, lbl_80AD4588 
    mov.s   $f0, $f12                  
    mov.s   $f0, $f2                   
lbl_80AD4588:
    beq     $zero, $zero, lbl_80AD459C 
    swc1    $f0, 0x0158(s0)            ## 00000158
    mtc1    $at, $f14                  ## $f14 = 0.00
lbl_80AD4594:
    nop
    swc1    $f14, 0x0158(s0)           ## 00000158
lbl_80AD459C:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD45B0:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      t7, 0x0180(s0)             ## 00000180
    lui     t6, %hi(func_80AD3EF4)     ## t6 = 80AD0000
    addiu   t6, t6, %lo(func_80AD3EF4) ## t6 = 80AD3EF4
    beql    t6, t7, lbl_80AD4658       
    lh      t5, 0x01D8(s0)             ## 000001D8
    lwc1    $f4, 0x0210(s0)            ## 00000210
    or      a0, s0, $zero              ## a0 = 00000000
    trunc.w.s $f6, $f4                   
    mfc1    t9, $f6                    
    nop
    beq     t9, $zero, lbl_80AD464C    
    nop
    lb      t0, 0x0187(s0)             ## 00000187
    lui     t3, 0x0001                 ## t3 = 00010000
    lui     $at, 0x8000                ## $at = 80000000
    sll     t1, t0,  4                 
    addu    t1, t1, t0                 
    sll     t1, t1,  2                 
    addu    t2, s1, t1                 
    addu    t3, t3, t2                 
    lw      t3, 0x17B4(t3)             ## 000117B4
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    addu    t4, t3, $at                
    lui     $at, 0x8012                ## $at = 80120000
    jal     func_8008C9C0              
    sw      t4, 0x0C50($at)            ## 80120C50
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80AD3C58              
    or      a1, s1, $zero              ## a1 = 00000000
    jal     func_80AD3AB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AD4658 
    lh      t5, 0x01D8(s0)             ## 000001D8
lbl_80AD464C:
    jal     func_80AD3C58              
    or      a1, s1, $zero              ## a1 = 00000000
    lh      t5, 0x01D8(s0)             ## 000001D8
lbl_80AD4658:
    bne     t5, $zero, lbl_80AD4668    
    nop
    jal     func_8002121C              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80AD4668:
    jal     func_80AD2B00              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_80AD46A8    
    or      a0, s1, $zero              ## a0 = 00000000
    mtc1    $zero, $f0                 ## $f0 = 0.00
    addiu   t6, $zero, 0x0004          ## t6 = 00000004
    sw      t6, 0x0014($sp)            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lui     $at, 0xBF80                ## $at = BF800000
    mtc1    $at, $f8                   ## $f8 = -1.00
    beq     $zero, $zero, lbl_80AD46B4 
    swc1    $f8, 0x006C(s0)            ## 0000006C
lbl_80AD46A8:
    mtc1    $zero, $f0                 ## $f0 = 0.00
    nop
    swc1    $f0, 0x006C(s0)            ## 0000006C
lbl_80AD46B4:
    lw      t9, 0x0180(s0)             ## 00000180
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    jalr    $ra, t9                    
    nop
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80AD3614              
    or      a1, s1, $zero              ## a1 = 00000000
    addiu   a2, s0, 0x0188             ## a2 = 00000188
    or      a1, a2, $zero              ## a1 = 00000188
    sw      a2, 0x0028($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    lw      a2, 0x0028($sp)            
    addu    a1, s1, $at                
    jal     func_8004C130              ## CollisionCheck_setOT
    or      a0, s1, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80AD4714:
    addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
    sw      s1, 0x0018($sp)            
    sw      a3, 0x005C($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0014($sp)            
    sw      a0, 0x0050($sp)            
    sw      a2, 0x0058($sp)            
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    bne     s1, $at, lbl_80AD4880      
    lw      a2, 0x0068($sp)            
    addiu   t1, $zero, 0x0044          ## t1 = 00000044
    lui     t2, 0x0001                 ## t2 = 00010000
    lui     t3, 0x8000                 ## t3 = 80000000
    lw      s0, 0x0064($sp)            
    lw      v1, 0x0000(a2)             ## 00000000
    lui     t7, 0xDB06                 ## t7 = DB060000
    ori     t7, t7, 0x0018             ## t7 = DB060018
    addiu   t6, v1, 0x0008             ## t6 = 00000008
    sw      t6, 0x0000(a2)             ## 00000000
    sw      t7, 0x0000(v1)             ## 00000000
    lb      t8, 0x0184(s0)             ## 00000184
    multu   t8, t1                     
    mflo    t9                         
    addu    t4, a3, t9                 
    addu    t5, t4, t2                 
    lw      t6, 0x17B4(t5)             ## 000017B4
    sw      t6, 0x0004(v1)             ## 00000004
    lb      t7, 0x0184(s0)             ## 00000184
    lui     $at, 0x8012                ## $at = 80120000
    lui     a1, %hi(var_80AD5310)      ## a1 = 80AD0000
    multu   t7, t1                     
    mflo    t8                         
    addu    t9, a3, t8                 
    addu    t4, t9, t2                 
    lw      t5, 0x17B4(t4)             ## 000017B4
    addu    t6, t5, t3                 
    sw      t6, 0x0C50($at)            ## 80120C50
    lh      t7, 0x001C(s0)             ## 0000001C
    lui     t5, %hi(var_80AD4F68)      ## t5 = 80AD0000
    addiu   t5, t5, %lo(var_80AD4F68)  ## t5 = 80AD4F68
    andi    t8, t7, 0x00FF             ## t8 = 00000018
    sll     t9, t8,  2                 
    subu    t9, t9, t8                 
    sll     t9, t9,  2                 
    subu    t9, t9, t8                 
    addu    a1, a1, t9                 
    lbu     a1, %lo(var_80AD5310)(a1)  
    lw      t7, 0x0058($sp)            
    lui     $at, 0x00FF                ## $at = 00FF0000
    sll     t4, a1,  2                 
    subu    t4, t4, a1                 
    sll     t4, t4,  2                 
    addu    a0, t4, t5                 
    lw      t6, 0x0004(a0)             ## 00000004
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    sw      t6, 0x0000(t7)             ## DB060018
    lw      t0, 0x0008(a0)             ## 00000008
    lui     t6, 0xDB06                 ## t6 = DB060000
    ori     t6, t6, 0x0028             ## t6 = DB060028
    beql    t0, $zero, lbl_80AD4860    
    lb      t8, 0x0186(s0)             ## 00000186
    lh      t8, 0x0206(s0)             ## 00000206
    sll     t9, t8,  2                 
    addu    t4, t0, t9                 
    lw      v0, 0x0000(t4)             ## 00000000
    lw      v1, 0x0000(a2)             ## 00000000
    sll     t7, v0,  4                 
    srl     t8, t7, 28                 
    addiu   t5, v1, 0x0008             ## t5 = 00000008
    sw      t5, 0x0000(a2)             ## 00000000
    sll     t9, t8,  2                 
    lui     t4, 0x8012                 ## t4 = 80120000
    addu    t4, t4, t9                 
    sw      t6, 0x0000(v1)             ## 00000000
    lw      t4, 0x0C38(t4)             ## 80120C38
    and     t5, v0, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t6, t4, t5                 
    addu    t7, t6, $at                
    sw      t7, 0x0004(v1)             ## 00000004
    lb      t8, 0x0186(s0)             ## 00000186
lbl_80AD4860:
    lui     $at, 0x8012                ## $at = 80120000
    multu   t8, t1                     
    mflo    t9                         
    addu    t4, a3, t9                 
    addu    t5, t4, t2                 
    lw      t6, 0x17B4(t5)             ## 000017BC
    addu    t7, t6, t3                 
    sw      t7, 0x0C50($at)            ## 80120C50
lbl_80AD4880:
    addiu   $at, $zero, 0x0008         ## $at = 00000008
    bne     s1, $at, lbl_80AD490C      
    lw      s0, 0x0064($sp)            
    lwl     t4, 0x01E6(s0)             ## 000001E6
    lwr     t4, 0x01E9(s0)             ## 000001E9
    addiu   t8, $sp, 0x0040            ## t8 = FFFFFFF0
    lui     $at, 0x4700                ## $at = 47000000
    sw      t4, 0x0000(t8)             ## FFFFFFF0
    lhu     t4, 0x01EA(s0)             ## 000001EA
    mtc1    $at, $f8                   ## $f8 = 32768.00
    lui     $at, %hi(var_80AD5798)     ## $at = 80AD0000
    sh      t4, 0x0004(t8)             ## FFFFFFF4
    lh      t5, 0x0042($sp)            
    lwc1    $f16, %lo(var_80AD5798)($at) 
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    subu    t6, $zero, t5              
    mtc1    t6, $f4                    ## $f4 = -37717820000000000.00
    nop
    cvt.s.w $f6, $f4                   
    div.s   $f10, $f6, $f8             
    mul.s   $f12, $f10, $f16           
    jal     func_800AA9E0              
    nop
    lh      t7, 0x0040($sp)            
    lui     $at, 0x4700                ## $at = 47000000
    mtc1    $at, $f6                   ## $f6 = 32768.00
    mtc1    t7, $f18                   ## $f18 = 0.00
    lui     $at, %hi(var_80AD579C)     ## $at = 80AD0000
    lwc1    $f10, %lo(var_80AD579C)($at) 
    cvt.s.w $f4, $f18                  
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    div.s   $f8, $f4, $f6              
    mul.s   $f12, $f8, $f10            
    jal     func_800AAD4C              
    nop
lbl_80AD490C:
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    bnel    s1, $at, lbl_80AD49C8      
    addiu   $at, $zero, 0x0008         ## $at = 00000008
    mtc1    $zero, $f14                ## $f14 = 0.00
    lui     $at, 0x4496                ## $at = 44960000
    mtc1    $at, $f12                  ## $f12 = 1200.00
    mfc1    a2, $f14                   
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    lwl     t4, 0x01E0(s0)             ## 000001E0
    lwr     t4, 0x01E3(s0)             ## 000001E3
    addiu   t8, $sp, 0x0040            ## t8 = FFFFFFF0
    lui     $at, 0x4700                ## $at = 47000000
    sw      t4, 0x0000(t8)             ## FFFFFFF0
    lhu     t4, 0x01E4(s0)             ## 000001E4
    mtc1    $at, $f4                   ## $f4 = 32768.00
    lui     $at, %hi(var_80AD57A0)     ## $at = 80AD0000
    sh      t4, 0x0004(t8)             ## FFFFFFF4
    lh      t5, 0x0042($sp)            
    lwc1    $f8, %lo(var_80AD57A0)($at) 
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    mtc1    t5, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    div.s   $f6, $f18, $f4             
    mul.s   $f12, $f6, $f8             
    jal     func_800AA9E0              
    nop
    lh      t6, 0x0040($sp)            
    lui     $at, 0x4700                ## $at = 47000000
    mtc1    $at, $f18                  ## $f18 = 32768.00
    mtc1    t6, $f10                   ## $f10 = 0.00
    lui     $at, %hi(var_80AD57A4)     ## $at = 80AD0000
    lwc1    $f6, %lo(var_80AD57A4)($at) 
    cvt.s.w $f16, $f10                 
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    div.s   $f4, $f16, $f18            
    mul.s   $f12, $f4, $f6             
    jal     func_800AAD4C              
    nop
    mtc1    $zero, $f14                ## $f14 = 0.00
    lui     $at, 0xC496                ## $at = C4960000
    mtc1    $at, $f12                  ## $f12 = -1200.00
    mfc1    a2, $f14                   
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    addiu   $at, $zero, 0x0008         ## $at = 00000008
lbl_80AD49C8:
    beq     s1, $at, lbl_80AD49E0      
    sll     t7, s1,  1                 
    addiu   $at, $zero, 0x0009         ## $at = 00000009
    beq     s1, $at, lbl_80AD49E0      
    addiu   $at, $zero, 0x000C         ## $at = 0000000C
    bne     s1, $at, lbl_80AD4A64      
lbl_80AD49E0:
    addu    v1, s0, t7                 
    lh      a0, 0x02D4(v1)             ## 000002D4
    jal     func_800636C4              ## sins?
    sw      v1, 0x0028($sp)            
    lw      v0, 0x0060($sp)            
    lui     $at, 0x4348                ## $at = 43480000
    mtc1    $at, $f16                  ## $f16 = 200.00
    lh      t8, 0x0002(v0)             ## 00000002
    lw      v1, 0x0028($sp)            
    mul.s   $f18, $f0, $f16            
    mtc1    t8, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    add.s   $f4, $f10, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t4, $f6                    
    nop
    sh      t4, 0x0002(v0)             ## 00000002
    jal     func_80063684              ## coss?
    lh      a0, 0x02F4(v1)             ## 000002F4
    lw      v0, 0x0060($sp)            
    lui     $at, 0x4348                ## $at = 43480000
    mtc1    $at, $f10                  ## $f10 = 200.00
    lh      t5, 0x0004(v0)             ## 00000004
    mul.s   $f18, $f0, $f10            
    mtc1    t5, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f16, $f8                  
    add.s   $f4, $f16, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t7, $f6                    
    nop
    sh      t7, 0x0004(v0)             ## 00000004
lbl_80AD4A64:
    or      v0, $zero, $zero           ## v0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           ## $sp = 00000000


func_80AD4A7C:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)           
    sw      a2, 0x0040($sp)            
    sw      a3, 0x0044($sp)            
    lui     t7, %hi(var_80AD5584)      ## t7 = 80AD0000
    addiu   t7, t7, %lo(var_80AD5584)  ## t7 = 80AD5584
    lw      t9, 0x0000(t7)             ## 80AD5584
    addiu   t6, $sp, 0x0024            ## t6 = FFFFFFEC
    lw      t8, 0x0004(t7)             ## 80AD5588
    sw      t9, 0x0000(t6)             ## FFFFFFEC
    lw      t9, 0x0008(t7)             ## 80AD558C
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    sw      t8, 0x0004(t6)             ## FFFFFFF0
    bne     a1, $at, lbl_80AD4B24      
    sw      t9, 0x0008(t6)             ## FFFFFFF4
    lw      a2, 0x004C($sp)            
    addiu   a3, $zero, 0x0044          ## a3 = 00000044
    lui     t0, 0x0001                 ## t0 = 00010000
    lw      t1, 0x0048($sp)            
    lw      v1, 0x0000(a2)             ## 00000000
    lui     t3, 0xDB06                 ## t3 = DB060000
    ori     t3, t3, 0x0018             ## t3 = DB060018
    addiu   t2, v1, 0x0008             ## t2 = 00000008
    sw      t2, 0x0000(a2)             ## 00000000
    sw      t3, 0x0000(v1)             ## 00000000
    lb      t4, 0x0185(t1)             ## 00000185
    multu   t4, a3                     
    mflo    t5                         
    addu    t6, a0, t5                 
    addu    t7, t6, t0                 
    lw      t8, 0x17B4(t7)             ## 80AD6D38
    sw      t8, 0x0004(v1)             ## 00000004
    lb      t9, 0x0185(t1)             ## 00000185
    lui     $at, 0x8000                ## $at = 80000000
    multu   t9, a3                     
    mflo    t2                         
    addu    t3, a0, t2                 
    addu    t4, t3, t0                 
    lw      t5, 0x17B4(t4)             ## 000017B4
    addu    t6, t5, $at                
    lui     $at, 0x8012                ## $at = 80120000
    sw      t6, 0x0C50($at)            ## 80120C50
lbl_80AD4B24:
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    bne     a1, $at, lbl_80AD4B3C      
    lw      t1, 0x0048($sp)            
    addiu   a0, $sp, 0x0024            ## a0 = FFFFFFEC
    jal     func_800AB958              
    addiu   a1, t1, 0x0038             ## a1 = 00000038
lbl_80AD4B3C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD4B4C:
    sw      a1, 0x0004($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    andi    a3, a3, 0x00FF             ## a3 = 00000000
    andi    a2, a2, 0x00FF             ## a2 = 00000000
    andi    a1, a1, 0x00FF             ## a1 = 00000000
    lw      v1, 0x02C4(a0)             ## 000002C4
    lui     t6, 0xFB00                 ## t6 = FB000000
    sll     t8, a1, 24                 
    addiu   v1, v1, 0xFFF0             ## v1 = FFFFFFF0
    sw      v1, 0x02C4(a0)             ## 000002C4
    sw      t6, 0x0000(v1)             ## FFFFFFF0
    andi    t9, a2, 0x00FF             ## t9 = 00000000
    lbu     t6, 0x0013($sp)            
    sll     t0, t9, 16                 
    andi    t2, a3, 0x00FF             ## t2 = 00000000
    sll     t3, t2,  8                 
    or      t1, t8, t0                 ## t1 = 00000000
    or      t4, t1, t3                 ## t4 = 00000000
    or      t7, t4, t6                 ## t7 = FB000000
    sw      t7, 0x0004(v1)             ## FFFFFFF4
    lui     t9, 0xDF00                 ## t9 = DF000000
    sw      t9, 0x0008(v1)             ## FFFFFFF8
    sw      $zero, 0x000C(v1)          ## FFFFFFFC
    or      v0, v1, $zero              ## v0 = FFFFFFF0
    jr      $ra                        
    nop


func_80AD4BB8:
    addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    lui     a3, %hi(var_80AD5310)      ## a3 = 80AD0000
    addiu   a3, a3, %lo(var_80AD5310)  ## a3 = 80AD5310
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    addiu   t0, $zero, 0x000B          ## t0 = 0000000B
    lh      t7, 0x001C(s0)             ## 0000001C
    addiu   t6, $sp, 0x0050            ## t6 = FFFFFFF8
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    andi    t8, t7, 0x00FF             ## t8 = 00000000
    multu   t8, t0                     
    addiu   t7, $sp, 0x004C            ## t7 = FFFFFFF4
    lui     $at, 0x4F00                ## $at = 4F000000
    mflo    t9                         
    addu    t3, a3, t9                 
    lwl     t5, 0x0002(t3)             ## 00000002
    lwr     t5, 0x0005(t3)             ## 00000005
    sw      t5, 0x0000(t6)             ## FFFFFFF8
    lh      t8, 0x001C(s0)             ## 0000001C
    andi    t9, t8, 0x00FF             ## t9 = 00000000
    multu   t9, t0                     
    cfc1    t8, $f31                   
    ctc1    v0, $f31                   
    mflo    t6                         
    addu    t3, a3, t6                 
    lwl     t5, 0x0007(t3)             ## 00000007
    lwr     t5, 0x000A(t3)             ## 0000000A
    sw      t5, 0x0000(t7)             ## FFFFFFF4
    lwc1    $f0, 0x0210(s0)            ## 00000210
    lui     t7, 0xDB06                 ## t7 = DB060000
    cvt.w.s $f4, $f0                   
    cfc1    v0, $f31                   
    nop
    andi    v0, v0, 0x0078             ## v0 = 00000000
    beql    v0, $zero, lbl_80AD4C9C    
    mfc1    v0, $f4                    
    mtc1    $at, $f4                   ## $f4 = 2147484000.00
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    sub.s   $f4, $f0, $f4              
    ctc1    v0, $f31                   
    nop
    cvt.w.s $f4, $f4                   
    cfc1    v0, $f31                   
    nop
    andi    v0, v0, 0x0078             ## v0 = 00000000
    bne     v0, $zero, lbl_80AD4C90    
    nop
    mfc1    v0, $f4                    
    lui     $at, 0x8000                ## $at = 80000000
    beq     $zero, $zero, lbl_80AD4CA8 
    or      v0, v0, $at                ## v0 = 80000000
lbl_80AD4C90:
    beq     $zero, $zero, lbl_80AD4CA8 
    addiu   v0, $zero, 0xFFFF          ## v0 = FFFFFFFF
    mfc1    v0, $f4                    
lbl_80AD4C9C:
    nop
    bltz    v0, lbl_80AD4C90           
    nop
lbl_80AD4CA8:
    ctc1    t8, $f31                   
    sb      v0, 0x00C8(s0)             ## 000000C8
    trunc.w.s $f6, $f0                   
    mfc1    a2, $f6                    
    addiu   $at, $zero, 0x00FF         ## $at = 000000FF
    lw      v1, 0x0000(s1)             ## 00000000
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    bne     a2, $at, lbl_80AD4D8C      
    nop
    lw      t0, 0x02C0(v1)             ## 000002C0
    ori     t7, t7, 0x0020             ## t7 = DB060020
    addiu   t3, $zero, 0x00FF          ## t3 = 000000FF
    addiu   t6, t0, 0x0008             ## t6 = 00000013
    sw      t6, 0x02C0(v1)             ## 000002C0
    sw      t7, 0x0000(t0)             ## 0000000B
    lw      a0, 0x0000(s1)             ## 00000000
    sw      v1, 0x0048($sp)            
    sw      t3, 0x0010($sp)            
    lbu     a3, 0x0052($sp)            
    lbu     a2, 0x0051($sp)            
    lbu     a1, 0x0050($sp)            
    jal     func_80AD4B4C              
    sw      t0, 0x0040($sp)            
    lw      t1, 0x0040($sp)            
    lw      v1, 0x0048($sp)            
    lui     t5, 0xDB06                 ## t5 = DB060000
    sw      v0, 0x0004(t1)             ## 00000004
    lw      t0, 0x02C0(v1)             ## 000002C0
    ori     t5, t5, 0x0024             ## t5 = DB060024
    addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
    addiu   t4, t0, 0x0008             ## t4 = 00000008
    sw      t4, 0x02C0(v1)             ## 000002C0
    sw      t5, 0x0000(t0)             ## 00000000
    lw      a0, 0x0000(s1)             ## 00000000
    sw      t8, 0x0010($sp)            
    lbu     a3, 0x004E($sp)            
    lbu     a2, 0x004D($sp)            
    lbu     a1, 0x004C($sp)            
    jal     func_80AD4B4C              
    sw      t0, 0x003C($sp)            
    lw      t2, 0x003C($sp)            
    sw      v0, 0x0004(t2)             ## 00000004
    sw      s0, 0x0010($sp)            
    lwc1    $f8, 0x0210(s0)            ## 00000210
    lui     a2, %hi(func_80AD4714)     ## a2 = 80AD0000
    lui     a3, %hi(func_80AD4A7C)     ## a3 = 80AD0000
    trunc.w.s $f10, $f8                  
    addiu   a3, a3, %lo(func_80AD4A7C) ## a3 = 80AD4A7C
    addiu   a2, a2, %lo(func_80AD4714) ## a2 = 80AD4714
    or      a0, s1, $zero              ## a0 = 00000000
    mfc1    t6, $f10                   
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    jal     func_800279CC              
    sw      t6, 0x0014($sp)            
    beq     $zero, $zero, lbl_80AD4EDC 
    lw      $ra, 0x0024($sp)           
lbl_80AD4D8C:
    beq     a2, $zero, lbl_80AD4ED8    
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    sb      v0, 0x0053($sp)            
    cfc1    t7, $f31                   
    ctc1    t3, $f31                   
    lwc1    $f16, 0x0210(s0)           ## 00000210
    lui     $at, 0x4F00                ## $at = 4F000000
    cvt.w.s $f18, $f16                 
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             ## t3 = 00000000
    beql    t3, $zero, lbl_80AD4E08    
    mfc1    t3, $f18                   
    mtc1    $at, $f18                  ## $f18 = 2147484000.00
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    sub.s   $f18, $f16, $f18           
    ctc1    t3, $f31                   
    nop
    cvt.w.s $f18, $f18                 
    cfc1    t3, $f31                   
    nop
    andi    t3, t3, 0x0078             ## t3 = 00000000
    bne     t3, $zero, lbl_80AD4DFC    
    nop
    mfc1    t3, $f18                   
    lui     $at, 0x8000                ## $at = 80000000
    beq     $zero, $zero, lbl_80AD4E14 
    or      t3, t3, $at                ## t3 = 80000000
lbl_80AD4DFC:
    beq     $zero, $zero, lbl_80AD4E14 
    addiu   t3, $zero, 0xFFFF          ## t3 = FFFFFFFF
    mfc1    t3, $f18                   
lbl_80AD4E08:
    nop
    bltz    t3, lbl_80AD4DFC           
    nop
lbl_80AD4E14:
    ctc1    t7, $f31                   
    sb      t3, 0x004F($sp)            
    nop
    lw      t0, 0x02D0(v1)             ## 000002D0
    lui     t5, 0xDB06                 ## t5 = DB060000
    ori     t5, t5, 0x0020             ## t5 = DB060020
    addiu   t4, t0, 0x0008             ## t4 = 00000008
    sw      t4, 0x02D0(v1)             ## 000002D0
    sw      t5, 0x0000(t0)             ## 00000000
    lbu     t8, 0x0053($sp)            
    lw      a0, 0x0000(s1)             ## 00000000
    sw      v1, 0x0048($sp)            
    lbu     a3, 0x0052($sp)            
    lbu     a2, 0x0051($sp)            
    lbu     a1, 0x0050($sp)            
    sw      t0, 0x0038($sp)            
    jal     func_80AD4B4C              
    sw      t8, 0x0010($sp)            
    lw      t1, 0x0038($sp)            
    lw      v1, 0x0048($sp)            
    sw      v0, 0x0004(t1)             ## 00000004
    lw      t0, 0x02D0(v1)             ## 000002D0
    lui     t6, 0xDB06                 ## t6 = DB060000
    ori     t6, t6, 0x0024             ## t6 = DB060024
    addiu   t9, t0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(v1)             ## 000002D0
    sw      t6, 0x0000(t0)             ## 00000000
    lbu     t7, 0x004F($sp)            
    lw      a0, 0x0000(s1)             ## 00000000
    lbu     a3, 0x004E($sp)            
    lbu     a2, 0x004D($sp)            
    lbu     a1, 0x004C($sp)            
    sw      t0, 0x0034($sp)            
    jal     func_80AD4B4C              
    sw      t7, 0x0010($sp)            
    lw      t2, 0x0034($sp)            
    sw      v0, 0x0004(t2)             ## 00000004
    sw      s0, 0x0010($sp)            
    lwc1    $f4, 0x0210(s0)            ## 00000210
    lui     a2, %hi(func_80AD4714)     ## a2 = 80AD0000
    lui     a3, %hi(func_80AD4A7C)     ## a3 = 80AD0000
    trunc.w.s $f6, $f4                   
    addiu   a3, a3, %lo(func_80AD4A7C) ## a3 = 80AD4A7C
    addiu   a2, a2, %lo(func_80AD4714) ## a2 = 80AD4714
    or      a0, s1, $zero              ## a0 = 00000000
    mfc1    t4, $f6                    
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    jal     func_80027AC4              
    sw      t4, 0x0014($sp)            
lbl_80AD4ED8:
    lw      $ra, 0x0024($sp)           
lbl_80AD4EDC:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           ## $sp = 00000000
    nop

.section .data

var_80AD4EF0: .word 0x01630400, 0x00000019, 0x00010000, 0x00000314
.word func_80AD3E38
.word func_80AD3EC8
.word func_80AD45B0
.word func_80AD4BB8
var_80AD4F10: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x0014002E, 0x00000000, 0x00000000
var_80AD4F3C: .word 0x00000000, 0x00000000, 0xFF000000
var_80AD4F48: .word 0x06000240, 0x06000D40, 0x06001140, 0x00000000
var_80AD4F58: .word 0x06000F4C, 0x06001A0C, 0x06001E0C, 0x00000000
var_80AD4F68: .word 0x00FC0000, 0x06001890
var_80AD4F70: .word 0x00000000, 0x00FD0000, 0x06002C10
.word var_80AD4F58
.word 0x013D0000, 0x06002940
.word var_80AD4F48
var_80AD4F8C: .word 0x00FC0000
var_80AD4F90: .word 0x060000F0, 0x00FD0000, 0x060000F0
var_80AD4F9C: .word \
0x06008F6C, 0x3F800000, 0x40000000, 0x41600000, \
0x04000000, 0x00000000, 0x06008F6C, 0x00000000, \
0x3F800000, 0x3F800000, 0x04000000, 0x00000000, \
0x06009B64, 0x00000000, 0x00000000, 0x00000000, \
0x02000000, 0x00000000, 0x06009B64, 0x00000000, \
0x3F800000, 0x3F800000, 0x02000000, 0x00000000, \
0x06009B64, 0x00000000, 0x40000000, 0x40000000, \
0x02000000, 0x00000000, 0x060062DC, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x060062DC, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xC1200000, 0x06005808, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC1200000, \
0x06007830, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x06008178, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x060065E0, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x0600879C, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x06007FFC, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x060080B4, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x060091AC, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x06006F9C, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x06007064, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x06007120, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x06007F38, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x06007D94, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x06006EE0, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x060098EC, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x060090EC, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x0600982C, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x06009274, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x060099A4, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x06009028, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x06007E64, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x06007454, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x06008F6C, 0x00000000, \
0x3F800000, 0x3F800000, 0x04000000, 0xC1000000, \
0x06007D94, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xC1000000, 0x0600879C, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC1000000, \
0x06006A60, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xC1000000, 0x06007830, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC1000000
var_80AD52CC: .word \
0x0809090E, 0x0B020C02, 0x0D0D0B0B, 0x0B0F0900, \
0x10101112, 0x1313140A, 0x09030303, 0x03030416, \
0x16041718, 0x10101910, 0x1A0F0F1A, 0x0F030303, \
0x1B1B0202, 0x0202160E, 0x0E0E0E0E, 0x05050505, \
0x05000000
var_80AD5310: .byte 0x00, 0x00, 0x00, 0x82, 0x46, 0xFF
var_80AD5316: .byte \
0x00, 0x6E, 0xAA, 0x14, 0xFF, 0x01, 0x01, 0x46, 0xBE, 0x3C, 0xFF, 0x01, 0x64, 0x1E, 0x00, 0xFF, \
0x00, 0x00, 0x00, 0x82, 0x46, 0xFF, 0x00, 0x6E, 0xAA, 0x14, 0xFF, 0x00, 0x00, 0x00, 0x82, 0x46, \
0xFF, 0x00, 0x6E, 0xAA, 0x14, 0xFF, 0x00, 0x00, 0x00, 0x82, 0x46, 0xFF, 0x00, 0x6E, 0xAA, 0x14, \
0xFF, 0x01, 0x01, 0x46, 0xBE, 0x3C, 0xFF, 0x01, 0x64, 0x1E, 0x00, 0xFF, 0x01, 0x01, 0x46, 0xBE, \
0x3C, 0xFF, 0x01, 0x64, 0x1E, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x82, 0x46, 0xFF, 0x00, 0x6E, 0xAA, \
0x14, 0xFF, 0x00, 0x00, 0x00, 0x82, 0x46, 0xFF, 0x00, 0x6E, 0xAA, 0x14, 0xFF, 0x01, 0x01, 0x46, \
0xBE, 0x3C, 0xFF, 0x01, 0x64, 0x1E, 0x00, 0xFF, 0x01, 0x01, 0x46, 0xBE, 0x3C, 0xFF, 0x01, 0x64, \
0x1E, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x82, 0x46, 0xFF, 0x00, 0x6E, 0xAA, 0x14, 0xFF, 0x02, 0x01, \
0x46, 0xBE, 0x3C, 0xFF, 0x01, 0x64, 0x1E, 0x00, 0xFF, 0x00
var_80AD53A0: .word \
0x06000000, 0x41F00000, 0x43340000, 0x06000000, \
0x41F00000, 0x43340000, 0x06000000, 0x41F00000, \
0x43340000, 0x06000000, 0x41F00000, 0x43340000, \
0x06000000, 0x41F00000, 0x43340000, 0x01000000, \
0x41F00000, 0x43700000, 0x06000000, 0x41F00000, \
0x43340000, 0x06000000, 0x41F00000, 0x43340000, \
0x06000000, 0x41F00000, 0x43340000, 0x06000000, \
0x41F00000, 0x43340000, 0x06000000, 0x41F00000, \
0x43340000, 0x06000000, 0x41F00000, 0x43340000, \
0x06000000, 0x41F00000, 0x43340000
var_80AD543C: .word \
0x00000000, 0x00000000, 0x00000000, 0xC1F00000, \
0xC1A00000, 0x00000000, 0x00000000, 0x00000000, \
0xC1A00000, 0xC1200000, 0x00000000, 0x00000000, \
0x00000000, 0xC1F00000, 0xC1A00000, 0xC1200000, \
0x41200000, 0x41200000, 0xC1200000, 0xC1F00000, \
0x00000000, 0x00000000, 0x00000000, 0xC1200000, \
0xC1A00000, 0x00000000, 0x00000000, 0x00000000, \
0xC1A00000, 0xC1A00000, 0x00000000, 0x00000000, \
0x00000000, 0xC1200000, 0xC1A00000, 0x41200000, \
0x41200000, 0x41200000, 0xC2700000, 0xC1A00000, \
0xC1200000, 0xC1200000, 0xC1A00000, 0xC1F00000, \
0xC1F00000, 0xC1200000, 0xC1200000, 0xC1200000, \
0xC2200000, 0xC2200000, 0x00000000, 0x00000000, \
0x00000000, 0xC1200000, 0xC1A00000, 0xC1200000, \
0xC1200000, 0xC1A00000, 0xC1F00000, 0xC1F00000, \
0x00000000, 0x00000000, 0x00000000, 0xC1A00000, \
0xC1A00000
var_80AD5540: .word \
0x01010100, 0x01010101, 0x01010101, 0x01000101, \
0x01010001, 0x01010100, 0x01000000, 0x00000101, \
0x01010101, 0x01010001, 0x00000000, 0x00000000, \
0x00000101, 0x01010100, 0x00000000, 0x01010101, \
0x01000000
var_80AD5584: .word 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80AD5590: .word func_80AD1EE8
.word func_80AD1F30
.word func_80AD1F90
.word func_80AD1FB8
.word func_80AD2018
.word func_80AD2078
.word func_80AD20D8
.word var_80AD2138
.word var_80AD2140
.word func_80AD2148
.word func_80AD2178
.word var_80AD21A8
.word var_80AD1E80
var_80AD55C4: .word func_80AD21F8
.word func_80AD2240
.word func_80AD2270
.word func_80AD22B8
.word func_80AD22E8
.word var_80AD2318
.word func_80AD2320
.word func_80AD2368
.word func_80AD2398
.word func_80AD23E0
.word func_80AD2410
.word func_80AD2440
.word var_80AD21E8
var_80AD55F8: .word var_80AD2714
.word lbl_80AD269C
.word lbl_80AD269C
.word lbl_80AD269C
.word var_80AD2730
.word lbl_80AD269C
.word var_80AD274C
.word lbl_80AD269C
.word lbl_80AD269C
.word var_80AD2768
.word lbl_80AD269C
.word lbl_80AD269C
.word lbl_80AD269C
.word lbl_80AD269C
.word var_80AD2784
var_80AD5634: .word var_80AD2688
.word lbl_80AD269C
.word lbl_80AD269C
.word var_80AD26A4
.word lbl_80AD269C
.word var_80AD26C0
.word lbl_80AD269C
.word var_80AD26DC
.word lbl_80AD269C
.word var_80AD26F8
var_80AD565C: .word var_80AD311C
.word var_80AD312C
.word var_80AD313C
.word var_80AD314C
.word var_80AD315C
.word var_80AD316C
.word var_80AD317C
.word var_80AD318C
.word var_80AD319C
.word var_80AD31AC
.word var_80AD31BC
.word var_80AD31CC
.word var_80AD31DC
var_80AD5690: .word var_80AD3224
.word var_80AD3234
.word var_80AD3244
.word var_80AD3254
.word var_80AD3264
.word var_80AD3274
.word var_80AD3284
.word var_80AD3294
.word var_80AD32A4
.word var_80AD32B4
.word var_80AD32C4
.word var_80AD32D4
.word var_80AD32E4
var_80AD56C4: .word var_80AD332C
.word var_80AD333C
.word var_80AD334C
.word var_80AD335C
.word var_80AD336C
.word var_80AD337C
.word var_80AD338C
.word var_80AD339C
.word var_80AD33AC
.word var_80AD33BC
.word var_80AD33CC
.word var_80AD33DC
.word var_80AD33EC
var_80AD56F8: .word var_80AD3434
.word var_80AD3444
.word var_80AD3454
.word var_80AD3464
.word var_80AD3474
.word var_80AD3484
.word var_80AD3494
.word var_80AD34A4
.word var_80AD34B4
.word var_80AD34C4
.word var_80AD34D4
.word var_80AD34E4
.word var_80AD34F4
var_80AD572C: .word var_80AD353C
.word var_80AD354C
.word var_80AD355C
.word var_80AD356C
.word var_80AD357C
.word var_80AD358C
.word var_80AD359C
.word var_80AD35AC
.word var_80AD35BC
.word var_80AD35CC
.word var_80AD35DC
.word var_80AD35EC
.word var_80AD35FC
var_80AD5760: .word func_80AD3890
.word func_80AD38C4
.word func_80AD3940
.word func_80AD39A0
.word lbl_80AD3AA8
.word lbl_80AD3AA8
.word lbl_80AD3AA8
.word func_80AD39F8
var_80AD5780: .word var_80AD3DE0
.word var_80AD3DF0
.word var_80AD3E00
.word var_80AD3E10
.word var_80AD3E20
var_80AD5794: .word 0x3A83126F
var_80AD5798: .word 0x40490FDB
var_80AD579C: .word 0x40490FDB
var_80AD57A0: .word 0x40490FDB
var_80AD57A4: .word 0x40490FDB, 0x00000000, 0x00000000

