#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B2BC30:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     a1, 0x3DCC                 ## a1 = 3DCC0000
    ori     a1, a1, 0xCCCD             ## a1 = 3DCCCCCD
    jal     func_80020F88              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lw      v0, 0x001C($sp)            
    sh      $zero, 0x013C(a0)          ## 0000013C
    lh      t6, 0x07A0(v0)             ## 000007A0
    sll     t7, t6,  2                 
    addu    t8, v0, t7                 
    lw      t9, 0x0790(t8)             ## 00000790
    lw      t1, 0x005C(t9)             ## 0000005C
    sw      t1, 0x0024(a0)             ## 00000024
    lw      t0, 0x0060(t9)             ## 00000060
    sw      t0, 0x0028(a0)             ## 00000028
    lw      t1, 0x0064(t9)             ## 00000064
    sw      t1, 0x002C(a0)             ## 0000002C
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_80B2BC8C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    lw      v0, 0x1C44(a1)             ## 00001C44
    or      a0, a1, $zero              ## a0 = 00000000
    jal     func_80072548              
    sw      v0, 0x0018($sp)            
    lui     t6, 0x8012                 ## t6 = 80120000
    lh      t6, -0x4668(t6)            ## 8011B998
    lw      v0, 0x0018($sp)            
    beql    t6, $zero, lbl_80B2BCCC    
    lw      $ra, 0x0014($sp)           
    lbu     t7, 0x0682(v0)             ## 00000682
    ori     t8, t7, 0x0040             ## t8 = 00000040
    sb      t8, 0x0682(v0)             ## 00000682
    lw      $ra, 0x0014($sp)           
lbl_80B2BCCC:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B2BCD8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x07A0(a1)             ## 000007A0
    lh      v0, 0x013C(a0)             ## 0000013C
    sll     t7, t6,  2                 
    addu    t8, a1, t7                 
    lw      t9, 0x0790(t8)             ## 00000790
    slti    $at, v0, 0x0064            
    addiu   t2, v0, 0x0001             ## t2 = 00000001
    lw      t1, 0x005C(t9)             ## 0000005C
    sw      t1, 0x0024(a0)             ## 00000024
    lw      t0, 0x0060(t9)             ## 00000060
    sw      t0, 0x0028(a0)             ## 00000028
    lw      t1, 0x0064(t9)             ## 00000064
    beq     $at, $zero, lbl_80B2BD20   
    sw      t1, 0x002C(a0)             ## 0000002C
    beq     $zero, $zero, lbl_80B2BD28 
    sh      t2, 0x013C(a0)             ## 0000013C
lbl_80B2BD20:
    jal     func_80020EB4              
    nop
lbl_80B2BD28:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B2BD38:
    addiu   $sp, $sp, 0xFF50           ## $sp = FFFFFF50
    sw      s2, 0x0040($sp)            
    sw      s1, 0x003C($sp)            
    or      s1, a1, $zero              ## s1 = 00000000
    or      s2, a0, $zero              ## s2 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s0, 0x0038($sp)            
    lw      t6, 0x009C(s1)             ## 0000009C
    addiu   t8, $sp, 0x008C            ## t8 = FFFFFFDC
    addiu   a0, $sp, 0x007C            ## a0 = FFFFFFCC
    andi    t7, t6, 0x00FF             ## t7 = 00000000
    sw      t7, 0x00AC($sp)            
    lh      t9, 0x07A0(s1)             ## 000007A0
    sll     t2, t9,  2                 
    addu    t3, s1, t2                 
    lw      t4, 0x0790(t3)             ## 00000790
    lw      t6, 0x005C(t4)             ## 0000005C
    sw      t6, 0x0000(t8)             ## FFFFFFDC
    lw      t5, 0x0060(t4)             ## 00000060
    sw      t5, 0x0004(t8)             ## FFFFFFE0
    lw      t6, 0x0064(t4)             ## 00000064
    sw      t6, 0x0008(t8)             ## FFFFFFE4
    lh      t7, 0x07A0(s1)             ## 000007A0
    sll     t9, t7,  2                 
    addu    t2, s1, t9                 
    jal     func_80049D34              
    lw      a1, 0x0790(t2)             ## 00000790
    lh      v1, 0x013C(s2)             ## 0000013C
    lw      s0, 0x0000(s1)             ## 00000000
    slti    $at, v1, 0x0020            
    beq     $at, $zero, lbl_80B2BDE0   
    or      a0, v1, $zero              ## a0 = 00000000
    sll     a0, a0, 25                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    lui     $at, 0x44AF                ## $at = 44AF0000
    mtc1    $at, $f4                   ## $f4 = 1400.00
    nop
    mul.s   $f6, $f0, $f4              
    swc1    $f6, 0x00A4($sp)           
    beq     $zero, $zero, lbl_80B2BDF0 
    lh      v1, 0x013C(s2)             ## 0000013C
lbl_80B2BDE0:
    lui     $at, 0x44AF                ## $at = 44AF0000
    mtc1    $at, $f8                   ## $f8 = 1400.00
    nop
    swc1    $f8, 0x00A4($sp)           
lbl_80B2BDF0:
    slti    $at, v1, 0x0050            
    bne     $at, $zero, lbl_80B2BE30   
    lui     v1, %hi(var_80B2C520)      ## v1 = 80B30000
    sb      $zero, 0x009C($sp)         
    lh      t3, 0x013C(s2)             ## 0000013C
    addiu   v0, $zero, 0x0064          ## v0 = 00000064
    subu    t8, v0, t3                 
    sll     t4, t8,  3                 
    sb      t4, 0x009D($sp)            
    lh      t5, 0x013C(s2)             ## 0000013C
    subu    t6, v0, t5                 
    sll     t7, t6,  2                 
    subu    t7, t7, t6                 
    sll     t7, t7,  2                 
    beq     $zero, $zero, lbl_80B2BE44 
    sb      t7, 0x009E($sp)            
lbl_80B2BE30:
    addiu   t9, $zero, 0x00A0          ## t9 = 000000A0
    addiu   t2, $zero, 0x00FF          ## t2 = 000000FF
    sb      $zero, 0x009C($sp)         
    sb      t9, 0x009D($sp)            
    sb      t2, 0x009E($sp)            
lbl_80B2BE44:
    lui     a0, %hi(var_80B2C8E0)      ## a0 = 80B30000
    lui     t1, %hi(var_80B2C8F4)      ## t1 = 80B30000
    addiu   t1, t1, %lo(var_80B2C8F4)  ## t1 = 80B2C8F4
    addiu   a0, a0, %lo(var_80B2C8E0)  ## a0 = 80B2C8E0
    addiu   v1, v1, %lo(var_80B2C520)  ## v1 = 80B2C520
    addiu   v0, $sp, 0x009C            ## v0 = FFFFFFEC
lbl_80B2BE5C:
    lbu     a1, 0x0000(a0)             ## 80B2C8E0
    lbu     a2, 0x0001(a0)             ## 80B2C8E1
    lbu     a3, 0x0002(a0)             ## 80B2C8E2
    andi    t3, a1, 0x00F0             ## t3 = 00000000
    sra     t8, t3,  4                 
    andi    t6, a1, 0x000F             ## t6 = 00000000
    addu    t4, v0, t8                 
    addu    t7, v0, t6                 
    lbu     t5, 0x0000(t4)             ## 00000000
    lbu     t9, 0x0000(t7)             ## 00000000
    andi    t2, a2, 0x00F0             ## t2 = 00000000
    sra     t3, t2,  4                 
    sb      t5, 0x000F(v1)             ## 80B2C52F
    sb      t9, 0x001F(v1)             ## 80B2C53F
    addu    t8, v0, t3                 
    andi    t5, a2, 0x000F             ## t5 = 00000000
    andi    t9, a3, 0x00F0             ## t9 = 00000000
    lbu     t4, 0x0000(t8)             ## 00000000
    sra     t2, t9,  4                 
    addu    t6, v0, t5                 
    lbu     t7, 0x0000(t6)             ## 00000000
    addu    t3, v0, t2                 
    lbu     t8, 0x0000(t3)             ## 00000000
    lbu     t0, 0x0003(a0)             ## 80B2C8E3
    sb      t4, 0x002F(v1)             ## 80B2C54F
    andi    t4, a3, 0x000F             ## t4 = 00000000
    sb      t7, 0x003F(v1)             ## 80B2C55F
    addu    t5, v0, t4                 
    sb      t8, 0x004F(v1)             ## 80B2C56F
    andi    t7, t0, 0x00F0             ## t7 = 00000000
    sra     t9, t7,  4                 
    andi    t8, t0, 0x000F             ## t8 = 00000000
    lbu     t6, 0x0000(t5)             ## 00000000
    addu    t4, v0, t8                 
    addu    t2, v0, t9                 
    lbu     t3, 0x0000(t2)             ## 00000000
    lbu     t5, 0x0000(t4)             ## 00000000
    addiu   a0, a0, 0x0004             ## a0 = 80B2C8E4
    addiu   v1, v1, 0x0080             ## v1 = 80B2C5A0
    sb      t6, -0x0021(v1)            ## 80B2C57F
    sb      t3, -0x0011(v1)            ## 80B2C58F
    bne     a0, t1, lbl_80B2BE5C       
    sb      t5, -0x0001(v1)            ## 80B2C59F
    jal     func_8007E2C0              
    lw      a0, 0x0000(s1)             ## 00000000
    lwc1    $f10, 0x008C($sp)          
    lwc1    $f16, 0x007C($sp)          
    lwc1    $f6, 0x0094($sp)           
    lwc1    $f8, 0x0084($sp)           
    add.s   $f12, $f10, $f16           
    lwc1    $f18, 0x0090($sp)          
    lwc1    $f4, 0x0080($sp)           
    add.s   $f10, $f6, $f8             
    or      a3, $zero, $zero           ## a3 = 00000000
    add.s   $f14, $f18, $f4            
    mfc1    a2, $f10                   
    jal     func_800AA7F4              
    nop
    lui     $at, %hi(var_80B2C900)     ## $at = 80B30000
    lwc1    $f12, %lo(var_80B2C900)($at) 
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1DA0           ## $at = 00011DA0
    jal     func_800ABE54              
    addu    a0, s1, $at                
    lwc1    $f16, 0x00A4($sp)          
    mtc1    $zero, $f12                ## $f12 = 0.00
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    neg.s   $f18, $f16                 
    mov.s   $f14, $f12                 
    mfc1    a2, $f18                   
    jal     func_800AA7F4              
    nop
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t7, 0xDA38                 ## t7 = DA380000
    ori     t7, t7, 0x0003             ## t7 = DA380003
    addiu   t6, v1, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(s0)             ## 000002D0
    sw      t7, 0x0000(v1)             ## 00000000
    lw      a0, 0x0000(s1)             ## 00000000
    jal     func_800AB900              
    sw      v1, 0x0070($sp)            
    lw      a1, 0x0070($sp)            
    lui     t3, 0xFA00                 ## t3 = FA000000
    lui     t8, 0xFB00                 ## t8 = FB000000
    sw      v0, 0x0004(a1)             ## 00000004
    lh      t9, 0x001C(s2)             ## 0000001C
    lui     t5, 0xFB00                 ## t5 = FB000000
    lui     s2, 0xDE00                 ## s2 = DE000000
    beq     t9, $zero, lbl_80B2C014    
    or      a1, $zero, $zero           ## a1 = 00000000
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t8, 0xAAFF                 ## t8 = AAFF0000
    ori     t8, t8, 0xFFFF             ## t8 = AAFFFFFF
    addiu   t2, v1, 0x0008             ## t2 = 00000008
    sw      t2, 0x02D0(s0)             ## 000002D0
    sw      t8, 0x0004(v1)             ## 00000004
    sw      t3, 0x0000(v1)             ## 00000000
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t6, 0x0096                 ## t6 = 00960000
    ori     t6, t6, 0xFF80             ## t6 = 0096FF80
    addiu   t4, v1, 0x0008             ## t4 = 00000008
    sw      t4, 0x02D0(s0)             ## 000002D0
    sw      t6, 0x0004(v1)             ## 00000004
    sw      t5, 0x0000(v1)             ## 00000000
    beq     $zero, $zero, lbl_80B2C050 
    lw      t1, 0x00AC($sp)            
lbl_80B2C014:
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t9, 0xFA00                 ## t9 = FA000000
    addiu   t2, $zero, 0xC8FF          ## t2 = FFFFC8FF
    addiu   t7, v1, 0x0008             ## t7 = 00000008
    sw      t7, 0x02D0(s0)             ## 000002D0
    sw      t2, 0x0004(v1)             ## 00000004
    sw      t9, 0x0000(v1)             ## 00000000
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t4, 0x6400                 ## t4 = 64000000
    ori     t4, t4, 0xFF80             ## t4 = 6400FF80
    addiu   t3, v1, 0x0008             ## t3 = 00000008
    sw      t3, 0x02D0(s0)             ## 000002D0
    sw      t4, 0x0004(v1)             ## 00000004
    sw      t8, 0x0000(v1)             ## 00000000
    lw      t1, 0x00AC($sp)            
lbl_80B2C050:
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t6, %hi(var_80B2C7A0)      ## t6 = 80B30000
    addiu   t6, t6, %lo(var_80B2C7A0)  ## t6 = 80B2C7A0
    addiu   t5, v1, 0x0008             ## t5 = 00000008
    sw      t5, 0x02D0(s0)             ## 000002D0
    sw      t6, 0x0004(v1)             ## 00000004
    sw      s2, 0x0000(v1)             ## 00000000
    lw      v1, 0x02D0(s0)             ## 000002D0
    subu    $at, $zero, t1             
    sll     a3, $at,  1                
    addiu   t7, v1, 0x0008             ## t7 = 00000008
    sw      t7, 0x02D0(s0)             ## 000002D0
    sw      s2, 0x0000(v1)             ## 00000000
    lw      a0, 0x0000(s1)             ## 00000000
    subu    a2, $zero, t1              
    addiu   t9, $zero, 0x0020          ## t9 = 00000020
    addiu   t2, $zero, 0x0020          ## t2 = 00000020
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    addiu   t8, $zero, 0x0020          ## t8 = 00000020
    addiu   t4, $zero, 0x0020          ## t4 = 00000020
    sw      t4, 0x0028($sp)            
    sw      t8, 0x0024($sp)            
    sw      t3, 0x0018($sp)            
    sw      t2, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    sw      a2, 0x001C($sp)            
    sw      a3, 0x0020($sp)            
    jal     func_8007EB84              
    sw      v1, 0x0058($sp)            
    lw      t0, 0x0058($sp)            
    sw      v0, 0x0004(t0)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t6, %hi(var_80B2C828)      ## t6 = 80B30000
    addiu   t6, t6, %lo(var_80B2C828)  ## t6 = 80B2C828
    addiu   t5, v1, 0x0008             ## t5 = 00000008
    sw      t5, 0x02D0(s0)             ## 000002D0
    sw      t6, 0x0004(v1)             ## 00000004
    sw      s2, 0x0000(v1)             ## 00000000
    lw      $ra, 0x0044($sp)           
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00B0           ## $sp = 00000000

.section .data

var_80B2C100: .word 0x018A0700, 0x02000010, 0x00010000, 0x00000140
.word func_80B2BC30
.word func_80B2BC8C
.word func_80B2BCD8
.word func_80B2BD38
var_80B2C120: .word \
0x354D5AAC, 0xA5561C01, 0x124688B5, 0x74583231, \
0x313D71D6, 0x9F5B3507, 0x104089AD, 0x748F440C, \
0x408176AC, 0xB4661301, 0x2261C0BE, 0x49392533, \
0x2C497FC4, 0x80451D06, 0x2466BBD0, 0x9CB85411, \
0x40A09DA3, 0xB37F210B, 0x3D8AEAC7, 0x3F241930, \
0x2F5591A7, 0x6441080F, 0x4191E8DB, 0xB7A76B18, \
0x4094BAA0, 0x76532D22, 0x60BAFEE8, 0x8253545F, \
0x6078A896, 0x73540723, 0x66C2FEBB, 0x87888723, \
0x4B87C79E, 0x33123048, 0x88E3FFFC, 0xD39F7E72, \
0x8DA2AE80, 0xA77B1940, 0x90EBFFA9, 0x6289973E, \
0x6F9ACD83, 0x2D104B7F, 0xAEEBFDF3, 0xD8B26772, \
0xA7C7AD77, 0xB1B34A61, 0xB0F8FFD5, 0x9496986B, \
0x9EC6D25D, 0x503E85B3, 0xC0C1E1EE, 0xBD9B618E, \
0xBFE4A975, 0x86E18B86, 0xABCFF7F2, 0xBC837E69, \
0xB5EFE465, 0x5B66BACB, 0xC794AADC, 0xAC8982AE, \
0xD3F59754, 0x65E2AAAD, 0x8C85D0E1, 0xAF634D39, \
0xC7E2EDA3, 0x527ECACF, 0xBF777FC0, 0xA284A5A5, \
0xE3FE8A2F, 0x60CCAFBE, 0x7164B8BA, 0x97553A2B, \
0xE8BCBCDA, 0x76A1BBBA, 0x844D83BD, 0x9C6B875B, \
0xD9FFAA3F, 0x6AC9B59B, 0x6592BD94, 0x956D3D3B, \
0xFFA773D3, 0xB5B9AB90, 0x4033A0BC, 0x873E3E1D, \
0xB5FFE48D, 0x8CC9A761, 0x62CBAF79, 0x98883457, \
0xF3766FAF, 0xD5B2A26B, 0x44549D8B, 0x56232221, \
0x7DFFF2DD, 0xC6B68840, 0x4ECCA267, 0x696D296E, \
0xA8328AAD, 0xD3998447, 0x5E7D8C5B, 0x391F1E35, \
0x4EF6CDD3, 0xDD9B6C2D, 0x27A09571, 0x37443656, \
0x4C1265C9, 0xCA91612E, 0x3B5A7A65, 0x2F4F3421, \
0x36EAC380, 0xB6814A1B, 0x0C607075, 0x5860803B, \
0x27102CCD, 0xC9A87A47, 0x16204B80, 0x44B3860F, \
0x28DAE042, 0x7F773710, 0x0235616D, 0xA089BE60, \
0x34161EBC, 0xBBAAA972, 0x172A3B91, 0x96F6C319, \
0x21B7F02A, 0x618F662A, 0x02327A8C, 0x97577B5C, \
0x48171FB3, 0xA090AF87, 0x1F65609D, 0xD8FFD41E, \
0x177CC522, 0x69A8A462, 0x0D3A93B6, 0x4F0C1821, \
0x39151CA7, 0x928EAA9A, 0x33919BAF, 0xEBFBDA23, \
0x093B6937, 0x80AEA66C, 0x304491C7, 0x3A031710, \
0x16162197, 0x9B9FB5BA, 0x4C95CED8, 0xF8F0D425, \
0x05144066, 0x84B17F5A, 0x725E8DCD, 0x5D376910, \
0x19183886, 0xA3A1C4C6, 0x6584D1F1, 0xFFFABF12, \
0x0E123F77, 0x88AF6881, 0xB97F98BB, 0x879BBC23, \
0x4A20557C, 0x9BA5D0BB, 0x7583C6E0, 0xFEFFB322, \
0x34283976, 0x95B06EB8, 0xE29B999F, 0xBDE9E582, \
0x814C5C82, 0xA1C0ECBE, 0x789ED6B2, 0xF4FFD78F, \
0x73324087, 0xA0C26FAB, 0xE0B1A5B9, 0xF2FFFADE, \
0xAC906A89, 0xB3DDFFCB, 0x86B8CD75, 0xDFFFF1D7, \
0x8F31579C, 0xAFDE7B87, 0xC8BAB4EB, 0xF0F2FFE4, \
0xB29B798B, 0xC3F4FFD2, 0xA0A17C32, 0xA9FFE8BD, \
0x784D7A91, 0xC7F5AB9B, 0xBEBB86D9, 0xB0BCF9D4, \
0x835C4C70, 0xD8FFFFD7, 0xA2682907, 0x68FFE29F, \
0x61707B7A, 0xE5FFE7C8, 0xCCC33C8E, 0x768CE0C7, \
0x51281940, 0xCBFFFFCB, 0x87450C00, 0x4BF3D58E, \
0x6D767B92, 0xFAFFFFC8, 0xC7BF175B, 0x708BBA9A, \
0x3A161542, 0xB4FFF5A9, 0x6D39090C, 0x50D8BC86, \
0x897AA1C8, 0xFFFFF4A1, 0x8C880B50, 0x91A49762, \
0x2D0C1E78, 0xD4FFD97F, 0x58351E23, 0x6BB49283, \
0x9B95C9EE, 0xFFFFD377, 0x4336075E, 0xBFB27641, \
0x1B0224B5, 0xFCF7AC55, 0x41384344, 0x8FA06468, \
0x9FB5DBFD, 0xFFF1A553, 0x190B1275, 0xCCA75D3A, \
0x0C042ED9, 0xFFD97C33, 0x28405669, 0xB0914C3A, \
0x9199C6FF, 0xFECF7835, 0x080C308B, 0xB38F6D47, \
0x0A0D3DDB, 0xF3A75519, 0x1341558E, 0xBE7B4321, \
0x6B4D94F8, 0xE4AC591A, 0x02175096, 0x8E7A9145, \
0x1D224BBF, 0xC1723508, 0x0D3E5FA5, 0xA568351E, \
0x422B6EE0, 0xBB85480B, 0x04256799, 0x716D6D21
var_80B2C520: .word \
0xFF5B00E3, 0x00000000, 0x04CD0400, 0xFFFFFF00, \
0xFF32011B, 0x012C0000, 0x04CD0200, 0xFFFFFFA0, \
0x0000015E, 0x012C0000, 0x04000200, 0xFFFFFFA0, \
0x00000118, 0x00000000, 0x04000400, 0xFFFFFF00, \
0xFEDA0195, 0x03E80000, 0x04CD0000, 0xFFFFFFFF, \
0x000001F4, 0x03E80000, 0x04000000, 0xFFFFFFFF, \
0xFEF60057, 0x00000000, 0x059A0400, 0xFFFFFF00, \
0xFEB3006C, 0x012C0000, 0x059A0200, 0xFFFFFFA0, \
0xFE24009B, 0x03E80000, 0x059A0000, 0xFFFFFFFF, \
0xFEF6FFA9, 0x00000000, 0x06660400, 0xFFFFFF00, \
0xFEB3FF94, 0x012C0000, 0x06660200, 0xFFFFFFA0, \
0xFE24FF65, 0x03E80000, 0x06660000, 0xFFFFFFFF, \
0xFF5BFF1D, 0x00000000, 0x07330400, 0xFFFFFF00, \
0xFF32FEE5, 0x012C0000, 0x07330200, 0xFFFFFFA0, \
0xFEDAFE6B, 0x03E80000, 0x07330000, 0xFFFFFFFF, \
0x0000FEE8, 0x00000000, 0x08000400, 0xFFFFFF00, \
0x0000FEA2, 0x012C0000, 0x08000200, 0xFFFFFFA0, \
0x0000FE0C, 0x03E80000, 0x08000000, 0xFFFFFFFF, \
0x00A5FF1D, 0x00000000, 0x00CD0400, 0xFFFFFF00, \
0x00CEFEE5, 0x012C0000, 0x00CD0200, 0xFFFFFFA0, \
0x0000FEA2, 0x012C0000, 0x00000200, 0xFFFFFFA0, \
0x0000FEE8, 0x00000000, 0x00000400, 0xFFFFFF00, \
0x0126FE6B, 0x03E80000, 0x00CD0000, 0xFFFFFFFF, \
0x0000FE0C, 0x03E80000, 0x00000000, 0xFFFFFFFF, \
0x010AFFA9, 0x00000000, 0x019A0400, 0xFFFFFF00, \
0x014DFF94, 0x012C0000, 0x019A0200, 0xFFFFFFA0, \
0x01DCFF65, 0x03E80000, 0x019A0000, 0xFFFFFFFF, \
0x010A0057, 0x00000000, 0x02660400, 0xFFFFFF00, \
0x014D006C, 0x012C0000, 0x02660200, 0xFFFFFFA0, \
0x01DC009B, 0x03E80000, 0x02660000, 0xFFFFFFFF, \
0x00A500E3, 0x00000000, 0x03330400, 0xFFFFFF00, \
0x00CE011B, 0x012C0000, 0x03330200, 0xFFFFFFA0
var_80B2C720: .word \
0x00CE011B, 0x012C0000, 0x03330200, 0xFFFFFFA0, \
0x01260195, 0x03E80000, 0x03330000, 0xFFFFFFFF, \
0x01DC009B, 0x03E80000, 0x02660000, 0xFFFFFFFF, \
0x014D006C, 0x012C0000, 0x02660200, 0xFFFFFFA0, \
0x00000118, 0x00000000, 0x04000400, 0xFFFFFF00, \
0x0000015E, 0x012C0000, 0x04000200, 0xFFFFFFA0, \
0x00A500E3, 0x00000000, 0x03330400, 0xFFFFFF00, \
0x000001F4, 0x03E80000, 0x04000000, 0xFFFFFFFF
var_80B2C7A0: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80B2C120
.word \
0xF5900000, 0x07014051, 0xE6000000, 0x00000000, \
0xF3000000, 0x071FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x00014051, 0xF2000000, 0x0007C07C, \
0xE8000000, 0x00000000, 0xF5880800, 0x01017C50, \
0xF2000000, 0x0107C07C, 0xFC262A60, 0x3510937F, \
0xE200001C, 0x0C1841C8, 0xD9F0FBFF, 0x00000000, \
0xDF000000, 0x00000000
var_80B2C828: .word 0x01020040
.word var_80B2C520
.word \
0x06000204, 0x00000406, 0x0602080A, 0x00020A04, \
0x060C0E02, 0x000C0200, 0x060E1008, 0x000E0802, \
0x0612140E, 0x00120E0C, 0x06141610, 0x0014100E, \
0x06181A14, 0x00181412, 0x061A1C16, 0x001A1614, \
0x061E201A, 0x001E1A18, 0x0620221C, 0x00201C1A, \
0x06242628, 0x0024282A, 0x06262C2E, 0x00262E28, \
0x06303226, 0x00302624, 0x0632342C, 0x00322C26, \
0x06363832, 0x00363230, 0x06383A34, 0x00383432, \
0x063C3E38, 0x003C3836, 0x01008010
.word var_80B2C720
.word \
0x06000204, 0x00000406, 0x06080A00, 0x0008000C, \
0x060A0E02, 0x000A0200, 0xDF000000, 0x00000000
var_80B2C8E0: .word \
0x01102201, 0x20120120, 0x12011022, 0x01201201, \
0x12210102
var_80B2C8F4: .word 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80B2C900: .word 0x3DCCCCCD, 0x00000000, 0x00000000, 0x00000000

