#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B7AE70:
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


func_80B7AECC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_80072548              
    or      a0, a1, $zero              ## a0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B7AEF0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x07A0(a1)             ## 000007A0
    lh      v0, 0x013C(a0)             ## 0000013C
    sll     t7, t6,  2                 
    addu    t8, a1, t7                 
    lw      t9, 0x0790(t8)             ## 00000790
    slti    $at, v0, 0x0032            
    addiu   t2, v0, 0x0001             ## t2 = 00000001
    lw      t1, 0x005C(t9)             ## 0000005C
    sw      t1, 0x0024(a0)             ## 00000024
    lw      t0, 0x0060(t9)             ## 00000060
    sw      t0, 0x0028(a0)             ## 00000028
    lw      t1, 0x0064(t9)             ## 00000064
    beq     $at, $zero, lbl_80B7AF38   
    sw      t1, 0x002C(a0)             ## 0000002C
    beq     $zero, $zero, lbl_80B7AF40 
    sh      t2, 0x013C(a0)             ## 0000013C
lbl_80B7AF38:
    jal     func_80020EB4              
    nop
lbl_80B7AF40:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B7AF50:
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
    andi    t7, t6, 0x0FFF             ## t7 = 00000000
    sw      t7, 0x00AC($sp)            
    lh      t9, 0x07A0(s1)             ## 000007A0
    sll     t3, t9,  2                 
    addu    t4, s1, t3                 
    lw      t5, 0x0790(t4)             ## 00000790
    lw      t7, 0x005C(t5)             ## 0000005C
    sw      t7, 0x0000(t8)             ## FFFFFFDC
    lw      t6, 0x0060(t5)             ## 00000060
    sw      t6, 0x0004(t8)             ## FFFFFFE0
    lw      t7, 0x0064(t5)             ## 00000064
    sw      t7, 0x0008(t8)             ## FFFFFFE4
    lh      t9, 0x07A0(s1)             ## 000007A0
    sll     t3, t9,  2                 
    addu    t4, s1, t3                 
    jal     func_80049D34              
    lw      a1, 0x0790(t4)             ## 00000790
    lh      s0, 0x013C(s2)             ## 0000013C
    slti    $at, s0, 0x0010            
    beq     $at, $zero, lbl_80B7AFF0   
    or      a0, s0, $zero              ## a0 = 00000000
    sll     a0, a0, 26                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_80B7BD70)     ## $at = 80B80000
    lwc1    $f4, %lo(var_80B7BD70)($at) 
    mul.s   $f6, $f0, $f4              
    swc1    $f6, 0x00A4($sp)           
    beq     $zero, $zero, lbl_80B7AFFC 
    lh      s0, 0x013C(s2)             ## 0000013C
lbl_80B7AFF0:
    lui     $at, %hi(var_80B7BD74)     ## $at = 80B80000
    lwc1    $f8, %lo(var_80B7BD74)($at) 
    swc1    $f8, 0x00A4($sp)           
lbl_80B7AFFC:
    slti    $at, s0, 0x001E            
    bne     $at, $zero, lbl_80B7B028   
    lui     v0, %hi(var_80B7BBDF)      ## v0 = 80B80000
    subu    v1, $zero, s0              
    addu    $at, v1, $zero             
    sll     v1, v1,  2                 
    subu    v1, v1, $at                
    sll     v1, v1,  2                 
    addiu   v1, v1, 0x0258             ## v1 = 00000258
    beq     $zero, $zero, lbl_80B7B02C 
    andi    v1, v1, 0x00FF             ## v1 = 00000058
lbl_80B7B028:
    addiu   v1, $zero, 0x00FF          ## v1 = 000000FF
lbl_80B7B02C:
    lui     $at, %hi(var_80B7BBDF)     ## $at = 80B80000
    sb      v1, %lo(var_80B7BBDF)($at) 
    lbu     v0, %lo(var_80B7BBDF)(v0)  
    lui     $at, %hi(var_80B7BBBF)     ## $at = 80B80000
    sb      v0, %lo(var_80B7BBBF)($at) 
    lui     $at, %hi(var_80B7BB9F)     ## $at = 80B80000
    sb      v0, %lo(var_80B7BB9F)($at) 
    lui     $at, %hi(var_80B7BB7F)     ## $at = 80B80000
    sb      v0, %lo(var_80B7BB7F)($at) 
    lui     $at, %hi(var_80B7BB5F)     ## $at = 80B80000
    sb      v0, %lo(var_80B7BB5F)($at) 
    lui     $at, %hi(var_80B7BB3F)     ## $at = 80B80000
    sb      v0, %lo(var_80B7BB3F)($at) 
    lui     $at, %hi(var_80B7BB1F)     ## $at = 80B80000
    sb      v0, %lo(var_80B7BB1F)($at) 
    lui     $at, %hi(var_80B7BAFF)     ## $at = 80B80000
    sb      v0, %lo(var_80B7BAFF)($at) 
    lui     $at, %hi(var_80B7BADF)     ## $at = 80B80000
    sb      v0, %lo(var_80B7BADF)($at) 
    lui     $at, %hi(var_80B7BABF)     ## $at = 80B80000
    sb      v0, %lo(var_80B7BABF)($at) 
    lui     $at, %hi(var_80B7BA9F)     ## $at = 80B80000
    sb      v0, %lo(var_80B7BA9F)($at) 
    lw      a0, 0x0000(s1)             ## 00000000
    jal     func_8007E2C0              
    or      s0, a0, $zero              ## s0 = 00000000
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
    lui     $at, %hi(var_80B7BD78)     ## $at = 80B80000
    lwc1    $f12, %lo(var_80B7BD78)($at) 
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
    lui     t5, 0xDA38                 ## t5 = DA380000
    ori     t5, t5, 0x0003             ## t5 = DA380003
    addiu   t8, v1, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s0)             ## 000002D0
    sw      t5, 0x0000(v1)             ## 00000000
    lw      a0, 0x0000(s1)             ## 00000000
    jal     func_800AB900              
    sw      v1, 0x0070($sp)            
    lw      a1, 0x0070($sp)            
    lui     t1, 0xDE00                 ## t1 = DE000000
    sw      v0, 0x0004(a1)             ## 00000004
    lh      t6, 0x001C(s2)             ## 0000001C
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    or      a1, $zero, $zero           ## a1 = 00000000
    bne     t6, $at, lbl_80B7B17C      
    nop
    lui     t1, 0xDE00                 ## t1 = DE000000
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t9, %hi(var_80B7BC48)      ## t9 = 80B80000
    addiu   t9, t9, %lo(var_80B7BC48)  ## t9 = 80B7BC48
    addiu   t7, v1, 0x0008             ## t7 = 00000008
    sw      t7, 0x02D0(s0)             ## 000002D0
    sw      t9, 0x0004(v1)             ## 00000004
    sw      t1, 0x0000(v1)             ## 00000000
    beq     $zero, $zero, lbl_80B7B19C 
    lw      t2, 0x00AC($sp)            
lbl_80B7B17C:
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t4, %hi(var_80B7BBE0)      ## t4 = 80B80000
    addiu   t4, t4, %lo(var_80B7BBE0)  ## t4 = 80B7BBE0
    addiu   t3, v1, 0x0008             ## t3 = 00000008
    sw      t3, 0x02D0(s0)             ## 000002D0
    sw      t4, 0x0004(v1)             ## 00000004
    sw      t1, 0x0000(v1)             ## 00000000
    lw      t2, 0x00AC($sp)            
lbl_80B7B19C:
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t5, %hi(var_80B7BCB0)      ## t5 = 80B80000
    addiu   t5, t5, %lo(var_80B7BCB0)  ## t5 = 80B7BCB0
    addiu   t8, v1, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s0)             ## 000002D0
    sw      t5, 0x0004(v1)             ## 00000004
    sw      t1, 0x0000(v1)             ## 00000000
    lw      v1, 0x02D0(s0)             ## 000002D0
    subu    $at, $zero, t2             
    addiu   t7, $zero, 0x0020          ## t7 = 00000020
    addiu   t6, v1, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(s0)             ## 000002D0
    sw      t1, 0x0000(v1)             ## 00000000
    lw      a0, 0x0000(s1)             ## 00000000
    addiu   t9, $zero, 0x0040          ## t9 = 00000040
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    subu    t4, $zero, t2              
    addiu   t8, $zero, 0x0020          ## t8 = 00000020
    addiu   t5, $zero, 0x0020          ## t5 = 00000020
    sw      t5, 0x0028($sp)            
    sw      t8, 0x0024($sp)            
    sw      t4, 0x001C($sp)            
    sw      t3, 0x0018($sp)            
    sw      t9, 0x0014($sp)            
    sw      t2, 0x0020($sp)            
    sw      t7, 0x0010($sp)            
    sll     a3, $at,  1                
    sll     a2, t2,  1                 
    jal     func_8007EB84              
    sw      v1, 0x0060($sp)            
    lw      t0, 0x0060($sp)            
    lui     t1, 0xDE00                 ## t1 = DE000000
    sw      v0, 0x0004(t0)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t7, %hi(var_80B7BD08)      ## t7 = 80B80000
    addiu   t7, t7, %lo(var_80B7BD08)  ## t7 = 80B7BD08
    addiu   t6, v1, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(s0)             ## 000002D0
    sw      t7, 0x0004(v1)             ## 00000004
    sw      t1, 0x0000(v1)             ## 00000000
    lw      $ra, 0x0044($sp)           
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00B0           ## $sp = 00000000
    nop
    nop
    nop

.section .data

var_80B7B260: .word 0x01CB0700, 0x02000010, 0x00010000, 0x00000140
.word func_80B7AE70
.word func_80B7AECC
.word func_80B7AEF0
.word func_80B7AF50
var_80B7B280: .word \
0x00061507, 0x00000000, 0x295A2B08, 0x10030F03, \
0x0D070006, 0x00031625, 0x3F230012, 0x79590000, \
0x00102C2A, 0x254A1B0E, 0xAFF66600, 0x00467E29, \
0x08020000, 0x03383E0B, 0x0501000A, 0x31211C05, \
0x00031C27, 0x4CA92F13, 0xB2EF5500, 0x057EBF37, \
0x00000000, 0x0E493F13, 0x00000002, 0x335C3E03, \
0x00000E07, 0x3C761200, 0x447E2200, 0x00426710, \
0x00000000, 0x071C2208, 0x00000168, 0xE18F0F00, \
0x00060E00, 0x0A100000, 0x0514022D, 0x1B020400, \
0x00000000, 0x093A3F0A, 0x050010AE, 0xDA360000, \
0x00070500, 0x00000000, 0x00001461, 0x3E050024, \
0x24000000, 0x184E3755, 0x9132043C, 0x2F000000, \
0x12020A54, 0x3C000200, 0x00000F3E, 0x2B041159, \
0x2C000000, 0x030B22CE, 0xF9420000, 0x00000301, \
0x371160EF, 0xAC6D2B00, 0x00000008, 0x05000D27, \
0x06000000, 0x00001A91, 0x760B0000, 0x000B030A, \
0x747DB0BD, 0xBDA31D00, 0x00000000, 0x00000000, \
0x00000511, 0x01000209, 0x03020015, 0x583A0010, \
0xC1E0892D, 0x532D0000, 0x03160600, 0x00050001, \
0x15142E4E, 0x07000500, 0x100D004C, 0xB65C001B, \
0xB2DF9417, 0x00000020, 0x57420400, 0x45882F00, \
0x18093B3E, 0x01182F0D, 0x1405003F, 0xB75B001E, \
0x5DC2E14F, 0x00000161, 0xBC4A005A, 0xECF84A00, \
0x0011330F, 0x0044591C, 0x01001C7C, 0xB122001F, \
0x5DE4FF71, 0x00000177, 0xBA3218D9, 0xFFC41700, \
0x1E7B5A1C, 0x2B769635, 0x0044D5FA, 0x9E000530, \
0xC7FFCE35, 0x00000035, 0x663441CF, 0xC9380000, \
0x3D733C28, 0x3E709726, 0x0086FAF1, 0x9B170D4C, \
0xC9812700, 0x000E1A02, 0x4C642544, 0x2B000000, \
0x0D0E0508, 0x0A252F03, 0x00335297, 0xC75B014E, \
0x77470600, 0x00160F00, 0x3A350016, 0x29070000, \
0x0C3A3911, 0x00000003, 0x0100004B, 0x8F4B051C, \
0x7F6C1C00, 0x00000000, 0x00000437, 0x2E030001, \
0x2A6E6B2C, 0x0604000E, 0x0B000004, 0x19350814, \
0x3E63813D, 0x13000000, 0x00000117, 0x06000000, \
0x14362911, 0x312E021F, 0x13000000, 0x010C000C, \
0x10B9EF72, 0x2D010000, 0x040C0C10, 0x02000000, \
0x33410306, 0x3B30071D, 0x07000000, 0x00000000, \
0x1BC2A129, 0x0D000000, 0x050E1112, 0x0100002E, \
0xD2C22E00, 0x21593403, 0x00000000, 0x01010000, \
0x0E451B00, 0x00000000, 0x0000060D, 0x00000061, \
0xFFEA2E00, 0x3DA04200, 0x00000000, 0x06140B00, \
0x00040200, 0x00000000, 0x00061B0C, 0x00000037, \
0x8D620500, 0x2A8F5801, 0x00000000, 0x082E3404, \
0x00000000, 0x00000003, 0x0A201B02, 0x00000000, \
0x06000000, 0x11826503, 0x00060400, 0x07303402, \
0x07010007, 0x2F1E0B0A, 0x09080000, 0x03000000, \
0x00000000, 0x07452500, 0x0E361100, 0x000B0A00, \
0x06000018, 0x3E170600, 0x00060F0D, 0x3E190000, \
0x00000000, 0x00000000, 0x21360700, 0x00000000, \
0x00000007, 0x09000000, 0x0A857124, 0x703C0000, \
0x01000000, 0x00000000, 0x08050000, 0x00000000, \
0x00000000, 0x00000000, 0x32D97112, 0x4A1B0001, \
0x02050000, 0x00000000, 0x021A0A00, 0x00000613, \
0x07000000, 0x00000000, 0x1E5D1700, 0x04000000, \
0x37550400, 0x00000000, 0x14300600, 0x00003E5B, \
0x08000000, 0x00000000, 0x2F2F0000, 0x00000007, \
0x90840300, 0x0F070000, 0x06070000, 0x00055A62, \
0x00000000, 0x00000020, 0xA77B0700, 0x0106000F, \
0x612D0006, 0x1B030000, 0x00000001, 0x0000211A, \
0x00000000, 0x0000002E, 0x944A0103, 0x3B390200, \
0x04000011, 0x14000005, 0x302F0D10, 0x01000000, \
0x00000000, 0x00000009, 0x10000015, 0x5D290000, \
0x00000015, 0x09000027, 0x73510F09, 0x37410700, \
0x00061408, 0x00000000, 0x25582D09, 0x12020E03, \
0x0C070007, 0x00031627, 0x41240011, 0x795B0000, \
0x00102D29, 0x244B1C0D, 0xB0F76600, 0x00467C28, \
0x08020000, 0x02383E0B, 0x0401000A, 0x32231C04, \
0x00031B28, 0x4CA83112, 0xB2EF5500, 0x057EBE38, \
0x00000000, 0x0D493D13, 0x00000002, 0x325C3F03, \
0x00000E08, 0x3D761200, 0x457F2200, 0x0043660F, \
0x00000000, 0x071D2208, 0x00000168, 0xE1901000, \
0x00070E00, 0x09110000, 0x0515022D, 0x1B020400, \
0x00000000, 0x093B3E09, 0x050011AE, 0xD9370000, \
0x00070500, 0x00000000, 0x00001462, 0x3E050024, \
0x25000000, 0x184E3554, 0x9431043C, 0x2E000000, \
0x12010955, 0x3C000300, 0x0000103E, 0x2B04115A, \
0x2D000000, 0x030B22CE, 0xF9420000, 0x00000301, \
0x361161EF, 0xAC6B2B00, 0x00000008, 0x05000D27, \
0x07000000, 0x00001A8F, 0x760B0000, 0x000B030A, \
0x727DB1BD, 0xBCA21C00, 0x00000000, 0x00000000, \
0x00000610, 0x00000208, 0x03030016, 0x57390010, \
0xC1E1892E, 0x522C0000, 0x03160600, 0x00060001, \
0x14142F4E, 0x07000500, 0x100E004B, 0xB55C001B, \
0xB0DD9416, 0x0000001F, 0x57430500, 0x468A3000, \
0x16093B3E, 0x01192F0D, 0x1405003E, 0xB65B001D, \
0x5CC1E04E, 0x0000005E, 0xBC4B0058, 0xEBFA4B00, \
0x0011340E, 0x0045591C, 0x02001C7C, 0xB223001E, \
0x5CE5FF71, 0x00000176, 0xB93216D8, 0xFFC21700, \
0x1D7B5B1C, 0x2B759636, 0x0041D4FC, 0x9D000530, \
0xC7FFCE36, 0x00000036, 0x663540CE, 0xC6360000, \
0x3C743E29, 0x3E719827, 0x0085FAF0, 0x9B160D4E, \
0xC9812600, 0x000F1A03, 0x4B642646, 0x2B000000, \
0x0D0E0608, 0x0A253002, 0x00345299, 0xC85B014E, \
0x75470600, 0x00160F00, 0x39350015, 0x29070000, \
0x0C3A3911, 0x00000003, 0x0100004B, 0x914B051E, \
0x7D6C1C01, 0x00000000, 0x00000437, 0x2E030001, \
0x2A6F6A2A, 0x0604000E, 0x0B000003, 0x1A350814, \
0x3E63813E, 0x13000000, 0x00000118, 0x07000000, \
0x13382911, 0x302E0320, 0x14000000, 0x010D000C, \
0x0FB9EE73, 0x2F000000, 0x040B0C11, 0x02000000, \
0x36440307, 0x3B30071D, 0x07000000, 0x00000000, \
0x1ABF9F29, 0x0E000000, 0x050F1112, 0x0100002D, \
0xD3C42B00, 0x22593404, 0x00000000, 0x01010000, \
0x0E451B00, 0x00000000, 0x0000070C, 0x00000061, \
0xFFED2F00, 0x3EA04300, 0x00000000, 0x05140B00, \
0x00030200, 0x00000000, 0x00061C0B, 0x00000037, \
0x8F640500, 0x2A8F5901, 0x00000000, 0x082D3504, \
0x00000000, 0x00010003, 0x0A201B02, 0x00000000, \
0x07000000, 0x11826503, 0x00050400, 0x072F3503, \
0x07010007, 0x2F1E0C0B, 0x09080000, 0x03000000, \
0x00000000, 0x07462500, 0x0E361100, 0x000B0900, \
0x04000018, 0x3E160600, 0x00060F0B, 0x3D190000, \
0x00000000, 0x00000000, 0x21370600, 0x00000000, \
0x00000007, 0x09000000, 0x0B866F22, 0x713C0000, \
0x02000000, 0x00000000, 0x08060000, 0x00000000, \
0x00000000, 0x00000000, 0x30D76F12, 0x4B1A0001, \
0x02050000, 0x00000000, 0x021A0A00, 0x00000714, \
0x08000000, 0x00000000, 0x1E5C1700, 0x03000000, \
0x36560400, 0x00000000, 0x15300600, 0x00003F5D, \
0x07000000, 0x00000000, 0x2E2F0000, 0x00000008, \
0x8F840300, 0x0F060000, 0x06070000, 0x00065B61, \
0x00000000, 0x00000020, 0xA67C0700, 0x0006000E, \
0x612D0006, 0x1B030000, 0x00000001, 0x0001211B, \
0x00000000, 0x0000002F, 0x93490103, 0x3B390200, \
0x04000011, 0x13000005, 0x2F2E0C11, 0x02000000, \
0x00000000, 0x00000008, 0x14030015, 0x5D2C0000, \
0x00000115, 0x08000027, 0x724F0F0A, 0x353D0600
var_80B7BA80: .byte \
0x00, 0x58, 0x00, 0x79, 0x00, 0x00, 0x00, 0x00, 0x03, 0x33, 0x04, 0x00, 0xFF, 0xFF, 0xFF, 0x00, \
0x00, 0xF3, 0x00, 0xB0, 0x03, 0xE8, 0x00, 0x00, 0x02, 0xCD, 0x00, 0x00, 0xFF, 0xFF, 0xFF
var_80B7BA9F: .word \
0xFF008F00, 0x2E000000, 0x00026604, 0x00FFFFFF, \
0x00012C00, 0x0003E800, 0x00020000, 0x00FFFFFF
var_80B7BABF: .word \
0xFF000000, 0x96000000, 0x00040004, 0x00FFFFFF, \
0x00005D01, 0x1D03E800, 0x00039A00, 0x00FFFFFF
var_80B7BADF: .word \
0xFFFFA800, 0x79000000, 0x0004CD04, 0x00FFFFFF, \
0x00FFA301, 0x1D03E800, 0x00046600, 0x00FFFFFF
var_80B7BAFF: .word \
0xFFFF7100, 0x2E000000, 0x00059A04, 0x00FFFFFF, \
0x00FF0D00, 0xB003E800, 0x00053300, 0x00FFFFFF
var_80B7BB1F: .word \
0xFFFF71FF, 0xD2000000, 0x00066604, 0x00FFFFFF, \
0x00FED400, 0x0003E800, 0x00060000, 0x00FFFFFF
var_80B7BB3F: .word \
0xFFFFA8FF, 0x87000000, 0x00073304, 0x00FFFFFF, \
0x00FF0DFF, 0x5003E800, 0x0006CD00, 0x00FFFFFF
var_80B7BB5F: .word \
0xFF0000FF, 0x6A000000, 0x00080004, 0x00FFFFFF, \
0x00FFA3FE, 0xE303E800, 0x00079A00, 0x00FFFFFF
var_80B7BB7F: .word \
0xFF0058FF, 0x87000000, 0x0000CD04, 0x00FFFFFF, \
0x00005DFE, 0xE303E800, 0x00006600, 0x00FFFFFF
var_80B7BB9F: .word \
0xFF0000FF, 0x6A000000, 0x00000004, 0x00FFFFFF, \
0x00005DFE, 0xE303E800, 0x00086600, 0x00FFFFFF
var_80B7BBBF: .word \
0xFF008FFF, 0xD2000000, 0x00019A04, 0x00FFFFFF, \
0x0000F3FF, 0x5003E800, 0x00013300, 0x00FFFFFF
var_80B7BBDF: .byte 0xFF
var_80B7BBE0: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000, 0x04033130, \
0xF5900100, 0x07017C51, 0xE6000000, 0x00000000, \
0xF3000000, 0x071FF200, 0xE7000000, 0x00000000, \
0xF5880900, 0x01017C51, 0xF2000000, 0x0107C07C, \
0xFA000000, 0xAAFFFFFF, 0xFB000000, 0x00960080, \
0xDF000000, 0x00000000
var_80B7BC48: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000, 0x04033130, \
0xF5900100, 0x07014051, 0xE6000000, 0x00000000, \
0xF3000000, 0x071FF200, 0xE7000000, 0x00000000, \
0xF5880900, 0x01014051, 0xF2000000, 0x0107C07C, \
0xFA000000, 0xFFAAFFFF, 0xFB000000, 0x78006480, \
0xDF000000, 0x00000000
var_80B7BCB0: .word 0xE7000000, 0x00000000, 0xFD900000
.word var_80B7B280
.word \
0xF5900000, 0x0701845E, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x0001845E, 0xF2000000, 0x0007C0FC, \
0xFC161A60, 0x3511757F, 0xE200001C, 0x0C1841C8, \
0xD9F0FBFF, 0x00000000
var_80B7BD08: .word 0x0101602C
.word var_80B7BA80
.word \
0x06000204, 0x00020604, 0x06080A00, 0x000A0200, \
0x060C0E08, 0x000E0A08, 0x0610120C, 0x00120E0C, \
0x06141610, 0x00161210, 0x06181A14, 0x001A1614, \
0x061C1E18, 0x001E1A18, 0x06202224, 0x00261E1C, \
0x06282A20, 0x002A2220, 0x06040628, 0x00062A28, \
0xDF000000, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80B7BD70: .word 0x44A64000
var_80B7BD74: .word 0x44A64000
var_80B7BD78: .word 0x3DCCCCCD, 0x00000000

