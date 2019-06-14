#include <mips.h>
.set noreorder
.set noat

.section .text
func_80AFB7D0:
    sw      a1, 0x18B8(a0)             # 000018B8
    jr      $ra                        
    nop


func_80AFB7DC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, %hi(func_80AFB858)     # a1 = 80B00000
    addiu   a1, a1, %lo(func_80AFB858) # a1 = 80AFB858
    jal     func_80AFB7D0              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88              
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_80AFC1C8              
    addiu   a0, s0, 0x0148             # a0 = 00000148
    sh      $zero, 0x0140(s0)          # 00000140
    lh      v0, 0x0140(s0)             # 00000140
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    addiu   t7, $zero, 0xFF9C          # t7 = FFFFFF9C
    sh      t6, 0x0142(s0)             # 00000142
    sh      t7, 0x0144(s0)             # 00000144
    sh      v0, 0x013E(s0)             # 0000013E
    sh      v0, 0x013C(s0)             # 0000013C
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80AFB848:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80AFB858:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s1, 0x003C($sp)            
    sw      s0, 0x0038($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s2, 0x0040($sp)            
    sdc1    $f24, 0x0030($sp)          
    sdc1    $f22, 0x0028($sp)          
    sdc1    $f20, 0x0020($sp)          
    lbu     a2, 0x1D6C(s0)             # 00001D6C
    beq     a2, $zero, lbl_80AFB92C    
    nop
    lw      v0, 0x1D90(s0)             # 00001D90
    beq     v0, $zero, lbl_80AFB92C    
    nop
    lhu     t6, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t6, $at, lbl_80AFB918      
    lh      v0, 0x0144(s1)             # 00000144
    lh      v1, 0x0140(s1)             # 00000140
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bnel    v1, $at, lbl_80AFB8C8      
    slti    $at, v1, 0x0041            
    jal     func_80064738              
    addiu   a0, $zero, 0x1845          # a0 = 00001845
    lh      v1, 0x0140(s1)             # 00000140
    slti    $at, v1, 0x0041            
lbl_80AFB8C8:
    beql    $at, $zero, lbl_80AFB8F0   
    lh      v0, 0x0144(s1)             # 00000144
    lh      v0, 0x0144(s1)             # 00000144
    slti    $at, v0, 0x00C8            
    beq     $at, $zero, lbl_80AFB904   
    addiu   t7, v0, 0x000A             # t7 = 0000000A
    sh      t7, 0x0144(s1)             # 00000144
    beq     $zero, $zero, lbl_80AFB904 
    lh      v1, 0x0140(s1)             # 00000140
    lh      v0, 0x0144(s1)             # 00000144
lbl_80AFB8F0:
    slti    $at, v0, 0xFF9D            
    bne     $at, $zero, lbl_80AFB904   
    addiu   t8, v0, 0xFFF6             # t8 = FFFFFFF6
    sh      t8, 0x0144(s1)             # 00000144
    lh      v1, 0x0140(s1)             # 00000140
lbl_80AFB904:
    addiu   t9, v1, 0x0001             # t9 = 00000001
    sh      t9, 0x0140(s1)             # 00000140
    beq     $zero, $zero, lbl_80AFB92C 
    lbu     a2, 0x1D6C(s0)             # 00001D6C
    lh      v0, 0x0144(s1)             # 00000144
lbl_80AFB918:
    slti    $at, v0, 0xFF9D            
    bne     $at, $zero, lbl_80AFB92C   
    addiu   t0, v0, 0xFFF6             # t0 = FFFFFFF6
    sh      t0, 0x0144(s1)             # 00000144
    lbu     a2, 0x1D6C(s0)             # 00001D6C
lbl_80AFB92C:
    beql    a2, $zero, lbl_80AFB9AC    
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      v0, 0x1D94(s0)             # 00001D94
    beql    v0, $zero, lbl_80AFB9AC    
    mtc1    $zero, $f0                 # $f0 = 0.00
    lhu     v1, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $at, lbl_80AFB960      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v1, $at, lbl_80AFB998      
    addiu   t4, $zero, 0x001E          # t4 = 0000001E
    beq     $zero, $zero, lbl_80AFB9A0 
    lh      t5, 0x013C(s1)             # 0000013C
lbl_80AFB960:
    lh      v0, 0x013E(s1)             # 0000013E
    bnel    v0, $zero, lbl_80AFB990    
    addiu   t3, v0, 0x0001             # t3 = 00000001
    jal     func_800C4C84              
    addiu   a0, $zero, 0x0006          # a0 = 00000006
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t1, 0x0ED8(v1)             # 8011B4A8
    ori     t2, t1, 0x8000             # t2 = 00008000
    sh      t2, 0x0ED8(v1)             # 8011B4A8
    lh      v0, 0x013E(s1)             # 0000013E
    addiu   t3, v0, 0x0001             # t3 = 00000001
lbl_80AFB990:
    beq     $zero, $zero, lbl_80AFB99C 
    sh      t3, 0x013E(s1)             # 0000013E
lbl_80AFB998:
    sh      t4, 0x013E(s1)             # 0000013E
lbl_80AFB99C:
    lh      t5, 0x013C(s1)             # 0000013C
lbl_80AFB9A0:
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sh      t6, 0x013C(s1)             # 0000013C
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80AFB9AC:
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f6                   # $f6 = 300.00
    swc1    $f0, 0x0064($sp)           
    swc1    $f0, 0x005C($sp)           
    lwc1    $f4, 0x0028(s1)            # 00000028
    lui     $at, 0x42A0                # $at = 42A00000
    or      s0, $zero, $zero           # s0 = 00000000
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0078($sp)           
    lh      t7, 0x0142(s1)             # 00000142
    blezl   t7, lbl_80AFBA84           
    lw      $ra, 0x0044($sp)           
    mtc1    $at, $f24                  # $f24 = 80.00
    lui     $at, %hi(var_80AFC230)     # $at = 80B00000
    lwc1    $f22, %lo(var_80AFC230)($at) 
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f20                  # $f20 = 100.00
    addiu   s2, s1, 0x0148             # s2 = 00000148
lbl_80AFB9F4:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    lwc1    $f10, 0x0024(s1)           # 00000024
    mov.s   $f12, $f20                 
    add.s   $f16, $f0, $f10            
    jal     func_80026D90              
    swc1    $f16, 0x0074($sp)          
    lwc1    $f18, 0x002C(s1)           # 0000002C
    mov.s   $f12, $f20                 
    add.s   $f4, $f0, $f18             
    jal     func_80026D90              
    swc1    $f4, 0x007C($sp)           
    swc1    $f0, 0x0068($sp)           
    jal     func_80026D64              
    mov.s   $f12, $f20                 
    swc1    $f0, 0x006C($sp)           
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    swc1    $f0, 0x0070($sp)           
    lh      t8, 0x0144(s1)             # 00000144
    swc1    $f24, 0x0010($sp)          
    or      a0, s2, $zero              # a0 = 00000148
    mtc1    t8, $f6                    # $f6 = 0.00
    addiu   a1, $sp, 0x0074            # a1 = FFFFFFF4
    addiu   a2, $sp, 0x0068            # a2 = FFFFFFE8
    cvt.s.w $f8, $f6                   
    addiu   a3, $sp, 0x005C            # a3 = FFFFFFDC
    mul.s   $f10, $f8, $f22            
    jal     func_80AFC0FC              
    swc1    $f10, 0x0060($sp)          
    lh      t9, 0x0142(s1)             # 00000142
    addiu   s0, s0, 0x0001             # s0 = 00000001
    slt     $at, s0, t9                
    bne     $at, $zero, lbl_80AFB9F4   
    nop
    lw      $ra, 0x0044($sp)           
lbl_80AFBA84:
    ldc1    $f20, 0x0020($sp)          
    ldc1    $f22, 0x0028($sp)          
    ldc1    $f24, 0x0030($sp)          
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0080           # $sp = 00000000


func_80AFBAA4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    sw      a0, 0x0018($sp)            
    lw      t9, 0x18B8(a0)             # 000018B8
    lw      a1, 0x001C($sp)            
    jalr    $ra, t9                    
    nop
    lw      a0, 0x0018($sp)            
    jal     func_80AFBFD8              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AFBAE0:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s1, 0x0038($sp)            
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s0, 0x0034($sp)            
    sw      a0, 0x0068($sp)            
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E2C0              
    or      s0, a0, $zero              # s0 = 00000000
    lw      t2, 0x0068($sp)            
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lh      v0, 0x013C(t2)             # 0000013C
    lh      t0, 0x013E(t2)             # 0000013E
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    subu    $at, $zero, t0             
    sll     t5, $at,  2                
    addu    t5, t5, $at                
    sll     t5, t5,  2                 
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sll     t4, v0,  2                 
    sw      t4, 0x001C($sp)            
    sw      t3, 0x0018($sp)            
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    sw      t6, 0x0024($sp)            
    sw      t5, 0x0020($sp)            
    sll     a3, $at,  2                
    sw      t7, 0x0028($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    sw      v1, 0x0054($sp)            
    jal     func_8007EB84              
    or      a2, v0, $zero              # a2 = 00000000
    lw      t1, 0x0054($sp)            
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t4, $zero, 0x0010          # t4 = 00000010
    addiu   t5, $zero, 0x0080          # t5 = 00000080
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t3, 0x0068($sp)            
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    lh      t0, 0x0140(t3)             # 00000140
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sll     t7, t0,  2                 
    subu    t7, t7, t0                 
    sll     t7, t7,  2                 
    subu    $at, $zero, t0             
    sll     a3, $at,  2                
    sw      t7, 0x0020($sp)            
    sw      t6, 0x0018($sp)            
    sw      t8, 0x0024($sp)            
    sw      t9, 0x0028($sp)            
    sw      $zero, 0x001C($sp)         
    sw      t5, 0x0014($sp)            
    sw      t4, 0x0010($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84              
    sw      v1, 0x0050($sp)            
    lw      t2, 0x0050($sp)            
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0028             # t4 = DB060028
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    addiu   t7, $zero, 0x0080          # t7 = 00000080
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t5, 0x0068($sp)            
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    lh      t0, 0x0140(t5)             # 00000140
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sll     t9, t0,  2                 
    subu    t9, t9, t0                 
    sll     t9, t9,  2                 
    subu    $at, $zero, t0             
    sll     a3, $at,  2                
    sw      t9, 0x0020($sp)            
    sw      t8, 0x0018($sp)            
    sw      t3, 0x0024($sp)            
    sw      t4, 0x0028($sp)            
    sw      $zero, 0x001C($sp)         
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84              
    sw      v1, 0x004C($sp)            
    lw      t1, 0x004C($sp)            
    sw      v0, 0x0004(t1)             # 00000004
    jal     func_800AA6EC              
    nop
    lui     $at, %hi(var_80AFC234)     # $at = 80B00000
    lwc1    $f12, %lo(var_80AFC234)($at) 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0048($sp)            
    lw      a1, 0x0048($sp)            
    sw      v0, 0x0004(a1)             # 00000004
    lbu     t7, 0x1D6C(s1)             # 00001D6C
    beq     t7, $zero, lbl_80AFBD20    
    nop
    lw      v0, 0x1D90(s1)             # 00001D90
    beq     v0, $zero, lbl_80AFBD20    
    nop
    lhu     t8, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t3, 0xDE00                 # t3 = DE000000
    bne     t8, $at, lbl_80AFBD20      
    nop
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x2570             # t4 = 06002570
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
lbl_80AFBD20:
    jal     func_800AA724              
    nop
    lui     $at, %hi(var_80AFC238)     # $at = 80B00000
    lwc1    $f12, %lo(var_80AFC238)($at) 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0040($sp)            
    lw      a1, 0x0040($sp)            
    sw      v0, 0x0004(a1)             # 00000004
    lbu     t7, 0x1D6C(s1)             # 00001D6C
    beql    t7, $zero, lbl_80AFBE00    
    lw      a0, 0x0068($sp)            
    lw      v1, 0x1D94(s1)             # 00001D94
    beql    v1, $zero, lbl_80AFBE00    
    lw      a0, 0x0068($sp)            
    lhu     v0, 0x0000(v1)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t9, 0xFA00                 # t9 = FA000000
    beq     v0, $at, lbl_80AFBDA4      
    lui     t5, 0xFB00                 # t5 = FB000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    v0, $at, lbl_80AFBE00      
    lw      a0, 0x0068($sp)            
lbl_80AFBDA4:
    lw      v1, 0x02D0(s0)             # 000002D0
    ori     t9, t9, 0x8080             # t9 = FA008080
    addiu   t3, $zero, 0xC8FF          # t3 = FFFFC8FF
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0x6400                 # t6 = 64000000
    ori     t6, t6, 0x00FF             # t6 = 640000FF
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x1720             # t9 = 06001720
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      t8, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    lw      a0, 0x0068($sp)            
lbl_80AFBE00:
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80AFBE20              
    addiu   a0, a0, 0x0148             # a0 = 00000148
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_80AFBE20:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s8, 0x0040($sp)            
    sw      s2, 0x0028($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    or      s8, a1, $zero              # s8 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s7, 0x003C($sp)            
    sw      s6, 0x0038($sp)            
    sw      s5, 0x0034($sp)            
    sw      s4, 0x0030($sp)            
    sw      s3, 0x002C($sp)            
    sw      s1, 0x0024($sp)            
    sw      s0, 0x0020($sp)            
    sdc1    $f20, 0x0018($sp)          
    lw      s1, 0x0000(s8)             # 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    or      s5, $zero, $zero           # s5 = 00000000
    lui     s7, 0xDE00                 # s7 = DE000000
lbl_80AFBE6C:
    lbu     t6, 0x0024(s2)             # 00000024
    lui     s3, 0x0600                 # s3 = 06000000
    addiu   s3, s3, 0x2760             # s3 = 06002760
    beq     t6, $zero, lbl_80AFBF8C    
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    lui     s6, 0x0600                 # s6 = 06000000
    addiu   s6, s6, 0x27D8             # s6 = 060027D8
    addu    s4, s8, $at                
    jal     func_8007E2C0              
    lw      a0, 0x0000(s8)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      s3, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xFA00                 # t9 = FA000000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lbu     t1, 0x0026(s2)             # 00000026
    lbu     t4, 0x0027(s2)             # 00000027
    lbu     t8, 0x0028(s2)             # 00000028
    sll     t2, t1, 24                 
    lh      t1, 0x002A(s2)             # 0000002A
    sll     t5, t4, 16                 
    or      t6, t2, t5                 # t6 = 00000000
    sll     t9, t8,  8                 
    or      t0, t6, t9                 # t0 = FA000000
    andi    t3, t1, 0x00FF             # t3 = 00000000
    or      t4, t0, t3                 # t4 = FA000000
    sw      t4, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0xFB00                 # t5 = FB000000
    lui     t7, 0x9600                 # t7 = 96000000
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0004(s0)             # 00000004
    sw      t5, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xE700                 # t6 = E7000000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    lwc1    $f12, 0x0000(s2)           # 00000000
    lwc1    $f14, 0x0004(s2)           # 00000004
    jal     func_800AA7F4              
    lw      a2, 0x0008(s2)             # 00000008
    jal     func_800ABE54              
    or      a0, s4, $zero              # a0 = 00000000
    lwc1    $f12, 0x0030(s2)           # 00000030
    mfc1    a2, $f20                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s3, 0x02D0(s1)             # 000002D0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t9, s3, 0x0008             # t9 = 06002768
    sw      t9, 0x02D0(s1)             # 000002D0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      t1, 0x0000(s3)             # 06002760
    sw      v0, 0x0004(s3)             # 06002764
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s1)             # 000002D0
    sw      s6, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
lbl_80AFBF8C:
    addiu   s5, s5, 0x0001             # s5 = 00000001
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x0064            
    bne     $at, $zero, lbl_80AFBE6C   
    addiu   s2, s2, 0x003C             # s2 = 0000003C
    lw      $ra, 0x0044($sp)           
    ldc1    $f20, 0x0018($sp)          
    lw      s0, 0x0020($sp)            
    lw      s1, 0x0024($sp)            
    lw      s2, 0x0028($sp)            
    lw      s3, 0x002C($sp)            
    lw      s4, 0x0030($sp)            
    lw      s5, 0x0034($sp)            
    lw      s6, 0x0038($sp)            
    lw      s7, 0x003C($sp)            
    lw      s8, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80AFBFD8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    addiu   a2, $sp, 0x0008            # a2 = FFFFFFF0
    lui     t6, %hi(var_80AFC21C)      # t6 = 80B00000
    addiu   t6, t6, %lo(var_80AFC21C)  # t6 = 80AFC21C
    lw      t8, 0x0000(t6)             # 80AFC21C
    addiu   v0, a0, 0x0148             # v0 = 00000148
    or      v1, $zero, $zero           # v1 = 00000000
    sw      t8, 0x0000(a2)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 80AFC220
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    sw      t7, 0x0004(a2)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 80AFC224
    sw      t8, 0x0008(a2)             # FFFFFFF8
lbl_80AFC010:
    lbu     t9, 0x0024(v0)             # 0000016C
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16                 
    beq     t9, $zero, lbl_80AFC0E8    
    sra     v1, v1, 16                 
    lbu     t0, 0x0025(v0)             # 0000016D
    lwc1    $f0, 0x000C(v0)            # 00000154
    lwc1    $f4, 0x0000(v0)            # 00000148
    addiu   t1, t0, 0x0001             # t1 = 00000001
    andi    a0, t1, 0x00FF             # a0 = 00000001
    lwc1    $f2, 0x0010(v0)            # 00000158
    lwc1    $f8, 0x0004(v0)            # 0000014C
    lwc1    $f12, 0x0014(v0)           # 0000015C
    lwc1    $f16, 0x0008(v0)           # 00000150
    add.s   $f6, $f4, $f0              
    lwc1    $f4, 0x0018(v0)            # 00000160
    sb      t1, 0x0025(v0)             # 0000016D
    add.s   $f10, $f8, $f2             
    lwc1    $f8, 0x001C(v0)            # 00000164
    swc1    $f6, 0x0000(v0)            # 00000148
    add.s   $f18, $f16, $f12           
    lwc1    $f16, 0x0020(v0)           # 00000168
    swc1    $f10, 0x0004(v0)           # 0000014C
    add.s   $f6, $f0, $f4              
    swc1    $f18, 0x0008(v0)           # 00000150
    lh      t6, 0x002A(v0)             # 00000172
    add.s   $f10, $f2, $f8             
    swc1    $f6, 0x000C(v0)            # 00000154
    addiu   t7, t6, 0xFFEC             # t7 = 80AFC208
    add.s   $f18, $f12, $f16           
    swc1    $f10, 0x0010(v0)           # 00000158
    swc1    $f18, 0x0014(v0)           # 0000015C
    bgez    a0, lbl_80AFC0A4           
    andi    a0, a0, 0x0003             # a0 = 00000001
    beq     a0, $zero, lbl_80AFC0A4    
    nop
    addiu   a0, a0, 0xFFFC             # a0 = FFFFFFFD
lbl_80AFC0A4:
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    multu   a0, a3                     
    mflo    t2                         
    addu    a1, a2, t2                 
    lbu     t3, 0x0000(a1)             # 00000000
    sb      t3, 0x0026(v0)             # 0000016E
    lbu     t4, 0x0001(a1)             # 00000001
    sb      t4, 0x0027(v0)             # 0000016F
    lbu     t5, 0x0002(a1)             # 00000002
    sh      t7, 0x002A(v0)             # 00000172
    lh      t8, 0x002A(v0)             # 00000172
    sb      t5, 0x0028(v0)             # 00000170
    bgtzl   t8, lbl_80AFC0EC           
    slti    $at, v1, 0x0064            
    sh      $zero, 0x002A(v0)          # 00000172
    sb      $zero, 0x0024(v0)          # 0000016C
lbl_80AFC0E8:
    slti    $at, v1, 0x0064            
lbl_80AFC0EC:
    bne     $at, $zero, lbl_80AFC010   
    addiu   v0, v0, 0x003C             # v0 = 00000184
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80AFC0FC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AFC108:
    lbu     t6, 0x0024(a0)             # 00000024
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t6, $zero, lbl_80AFC1AC    
    sra     v0, v0, 16                 
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x0024(a0)             # 00000024
    lw      t9, 0x0000(a1)             # 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    sw      t9, 0x0000(a0)             # 00000000
    lw      t8, 0x0004(a1)             # 00000004
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    lui     $at, 0x4120                # $at = 41200000
    sw      t8, 0x0004(a0)             # 00000004
    lw      t9, 0x0008(a1)             # 00000008
    mtc1    $at, $f12                  # $f12 = 10.00
    sw      t9, 0x0008(a0)             # 00000008
    lw      t1, 0x0000(a2)             # 00000000
    sw      t1, 0x000C(a0)             # 0000000C
    lw      t0, 0x0004(a2)             # 00000004
    sw      t0, 0x0010(a0)             # 00000010
    lw      t1, 0x0008(a2)             # 00000008
    sw      t1, 0x0014(a0)             # 00000014
    lw      t3, 0x0000(a3)             # 00000000
    sw      t3, 0x0018(a0)             # 00000018
    lw      t2, 0x0004(a3)             # 00000004
    sw      t2, 0x001C(a0)             # 0000001C
    lw      t3, 0x0008(a3)             # 00000008
    sw      t3, 0x0020(a0)             # 00000020
    lwc1    $f4, 0x0028($sp)           
    sh      t4, 0x002A(a0)             # 0000002A
    div.s   $f8, $f4, $f6              
    swc1    $f8, 0x0030(a0)            # 00000030
    jal     func_80026D64              
    sw      a0, 0x0018($sp)            
    trunc.w.s $f10, $f0                  
    lw      a0, 0x0018($sp)            
    mfc1    t8, $f10                   
    beq     $zero, $zero, lbl_80AFC1B8 
    sb      t8, 0x0025(a0)             # 00000025
lbl_80AFC1AC:
    slti    $at, v0, 0x0064            
    bne     $at, $zero, lbl_80AFC108   
    addiu   a0, a0, 0x003C             # a0 = 0000003C
lbl_80AFC1B8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AFC1C8:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AFC1CC:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    slti    $at, v0, 0x0064            
    addiu   a0, a0, 0x003C             # a0 = 0000003C
    bne     $at, $zero, lbl_80AFC1CC   
    sb      $zero, -0x0018(a0)         # 00000024
    jr      $ra                        
    nop

.section .data

var_80AFC1F0: .word 0x01760700, 0x00000030, 0x014D0000, 0x000018BC
.word func_80AFB7DC
.word func_80AFB848
.word func_80AFBAA4
.word func_80AFBAE0
.word 0xFF8000FF, 0x0000FFFF, 0x00FF0000
var_80AFC21C: .word \
0xFF8000FF, 0x00000000, 0x00640000, 0x00000000, \
0x00000000

.section .rodata

var_80AFC230: .word 0x3DCCCCCD
var_80AFC234: .word 0x3F4CCCCD
var_80AFC238: .word 0x4059999A, 0x00000000

