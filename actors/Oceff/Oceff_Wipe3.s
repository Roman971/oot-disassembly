.section .text
func_80B47C30:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_80020F88              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lw      v0, 0x001C($sp)            
    sh      $zero, 0x013C(a0)          # 0000013C
    lh      t6, 0x07A0(v0)             # 000007A0
    sll     t7, t6,  2                 
    addu    t8, v0, t7                 
    lw      t9, 0x0790(t8)             # 00000790
    lw      t1, 0x005C(t9)             # 0000005C
    sw      t1, 0x0024(a0)             # 00000024
    lw      t0, 0x0060(t9)             # 00000060
    sw      t0, 0x0028(a0)             # 00000028
    lw      t1, 0x0064(t9)             # 00000064
    sw      t1, 0x002C(a0)             # 0000002C
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80B47C8C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    lw      v0, 0x1C44(a1)             # 00001C44
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_80072548              
    sw      v0, 0x0018($sp)            
    lui     t6, 0x8012                 # t6 = 80120000
    lh      t6, -0x4668(t6)            # 8011B998
    lw      v0, 0x0018($sp)            
    beql    t6, $zero, lbl_80B47CCC    
    lw      $ra, 0x0014($sp)           
    lbu     t7, 0x0682(v0)             # 00000682
    ori     t8, t7, 0x0040             # t8 = 00000040
    sb      t8, 0x0682(v0)             # 00000682
    lw      $ra, 0x0014($sp)           
lbl_80B47CCC:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B47CD8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x07A0(a1)             # 000007A0
    lh      v0, 0x013C(a0)             # 0000013C
    sll     t7, t6,  2                 
    addu    t8, a1, t7                 
    lw      t9, 0x0790(t8)             # 00000790
    slti    $at, v0, 0x0064            
    addiu   t2, v0, 0x0001             # t2 = 00000001
    lw      t1, 0x005C(t9)             # 0000005C
    sw      t1, 0x0024(a0)             # 00000024
    lw      t0, 0x0060(t9)             # 00000060
    sw      t0, 0x0028(a0)             # 00000028
    lw      t1, 0x0064(t9)             # 00000064
    beq     $at, $zero, lbl_80B47D20   
    sw      t1, 0x002C(a0)             # 0000002C
    beq     $zero, $zero, lbl_80B47D28 
    sh      t2, 0x013C(a0)             # 0000013C
lbl_80B47D20:
    jal     func_80020EB4              
    nop
lbl_80B47D28:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B47D38:
    addiu   $sp, $sp, 0xFF50           # $sp = FFFFFF50
    sw      s1, 0x003C($sp)            
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s2, 0x0040($sp)            
    sw      s0, 0x0038($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lh      t7, 0x07A0(s1)             # 000007A0
    lw      s2, 0x009C(s1)             # 0000009C
    addiu   t6, $sp, 0x008C            # t6 = FFFFFFDC
    sll     t8, t7,  2                 
    addu    t9, s1, t8                 
    lw      t2, 0x0790(t9)             # 00000790
    addiu   a0, $sp, 0x007C            # a0 = FFFFFFCC
    andi    s2, s2, 0x0FFF             # s2 = 00000000
    lw      t4, 0x005C(t2)             # 0000005C
    sw      t4, 0x0000(t6)             # FFFFFFDC
    lw      t3, 0x0060(t2)             # 00000060
    sw      t3, 0x0004(t6)             # FFFFFFE0
    lw      t4, 0x0064(t2)             # 00000064
    sw      t4, 0x0008(t6)             # FFFFFFE4
    lh      t5, 0x07A0(s1)             # 000007A0
    sll     t7, t5,  2                 
    addu    t8, s1, t7                 
    lw      a1, 0x0790(t8)             # 00000790
    jal     func_80049D34              
    sw      a2, 0x00B0($sp)            
    lw      a2, 0x00B0($sp)            
    lh      s0, 0x013C(a2)             # 0000013C
    slti    $at, s0, 0x0020            
    beq     $at, $zero, lbl_80B47DE4   
    or      a0, s0, $zero              # a0 = 00000000
    sll     a0, a0, 25                 
    sra     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sw      a2, 0x00B0($sp)            
    lui     $at, %hi(var_80B492B0)     # $at = 80B50000
    lwc1    $f4, %lo(var_80B492B0)($at) 
    lw      a2, 0x00B0($sp)            
    mul.s   $f6, $f0, $f4              
    swc1    $f6, 0x00A4($sp)           
    beq     $zero, $zero, lbl_80B47DF0 
    lh      s0, 0x013C(a2)             # 0000013C
lbl_80B47DE4:
    lui     $at, %hi(var_80B492B4)     # $at = 80B50000
    lwc1    $f8, %lo(var_80B492B4)($at) 
    swc1    $f8, 0x00A4($sp)           
lbl_80B47DF0:
    slti    $at, s0, 0x0050            
    bne     $at, $zero, lbl_80B47E1C   
    lui     v0, %hi(var_80B491BF)      # v0 = 80B50000
    subu    v1, $zero, s0              
    addu    $at, v1, $zero             
    sll     v1, v1,  2                 
    subu    v1, v1, $at                
    sll     v1, v1,  2                 
    addiu   v1, v1, 0x04B0             # v1 = 000004B0
    beq     $zero, $zero, lbl_80B47E20 
    andi    v1, v1, 0x00FF             # v1 = 000000B0
lbl_80B47E1C:
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
lbl_80B47E20:
    lui     $at, %hi(var_80B491BF)     # $at = 80B50000
    sb      v1, %lo(var_80B491BF)($at) 
    lbu     v0, %lo(var_80B491BF)(v0)  
    lui     $at, %hi(var_80B4919F)     # $at = 80B50000
    sb      v0, %lo(var_80B4919F)($at) 
    lui     $at, %hi(var_80B4917F)     # $at = 80B50000
    sb      v0, %lo(var_80B4917F)($at) 
    lui     $at, %hi(var_80B4915F)     # $at = 80B50000
    sb      v0, %lo(var_80B4915F)($at) 
    lui     $at, %hi(var_80B4913F)     # $at = 80B50000
    sb      v0, %lo(var_80B4913F)($at) 
    lui     $at, %hi(var_80B4911F)     # $at = 80B50000
    sb      v0, %lo(var_80B4911F)($at) 
    lui     $at, %hi(var_80B490FF)     # $at = 80B50000
    sb      v0, %lo(var_80B490FF)($at) 
    lui     $at, %hi(var_80B490DF)     # $at = 80B50000
    sb      v0, %lo(var_80B490DF)($at) 
    lui     $at, %hi(var_80B490BF)     # $at = 80B50000
    sb      v0, %lo(var_80B490BF)($at) 
    lui     $at, %hi(var_80B4909F)     # $at = 80B50000
    sb      v0, %lo(var_80B4909F)($at) 
    lui     $at, %hi(var_80B4907F)     # $at = 80B50000
    sb      v0, %lo(var_80B4907F)($at) 
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E2C0              
    or      s0, a0, $zero              # s0 = 00000000
    lwc1    $f10, 0x008C($sp)          
    lwc1    $f16, 0x007C($sp)          
    lwc1    $f6, 0x0094($sp)           
    lwc1    $f8, 0x0084($sp)           
    add.s   $f12, $f10, $f16           
    lwc1    $f18, 0x0090($sp)          
    lwc1    $f4, 0x0080($sp)           
    add.s   $f10, $f6, $f8             
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f14, $f18, $f4            
    mfc1    a2, $f10                   
    jal     func_800AA7F4              
    nop
    lui     $at, %hi(var_80B492B8)     # $at = 80B50000
    lwc1    $f12, %lo(var_80B492B8)($at) 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    jal     func_800ABE54              
    addu    a0, s1, $at                
    lwc1    $f16, 0x00A4($sp)          
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    neg.s   $f18, $f16                 
    mov.s   $f14, $f12                 
    mfc1    a2, $f18                   
    jal     func_800AA7F4              
    nop
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0070($sp)            
    lw      a3, 0x0070($sp)            
    lui     t1, 0xDE00                 # t1 = DE000000
    lui     t7, 0xFB00                 # t7 = FB000000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xFA00                 # t3 = FA000000
    addiu   t4, $zero, 0xAAFF          # t4 = FFFFAAFF
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0x64C8                 # t8 = 64C80000
    ori     t8, t8, 0x0080             # t8 = 64C80080
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, %hi(var_80B491C0)      # t6 = 80B50000
    addiu   t6, t6, %lo(var_80B491C0)  # t6 = 80B491C0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    subu    $at, $zero, s2             
    sll     a3, $at,  2                
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    sll     a2, s2,  2                 
    subu    a2, a2, s2                 
    subu    a3, a3, $at                
    sll     t8, $at,  3                
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sll     t7, s2,  3                 
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    sw      t6, 0x0028($sp)            
    sw      t9, 0x0024($sp)            
    sw      t7, 0x001C($sp)            
    sw      t5, 0x0018($sp)            
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    sw      t8, 0x0020($sp)            
    sll     a3, a3,  2                 
    sll     a2, a2,  2                 
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84              
    sw      v1, 0x0060($sp)            
    lw      t0, 0x0060($sp)            
    lui     t3, 0xDE00                 # t3 = DE000000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, %hi(var_80B49248)      # t4 = 80B50000
    addiu   t4, t4, %lo(var_80B49248)  # t4 = 80B49248
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      $ra, 0x0044($sp)           
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00B0           # $sp = 00000000

.section .data

var_80B48040: .word 0x01990700, 0x02000010, 0x00010000, 0x00000140
.word func_80B47C30
.word func_80B47C8C
.word func_80B47CD8
.word func_80B47D38
var_80B48060: .word \
0x91A69C82, 0x9CAC7448, 0x4246484B, 0x4D505153, \
0x53545454, 0x54545556, 0x57585859, 0x59595857, \
0x56545350, 0x4F4E4C4C, 0x4C4B4A49, 0x49474544, \
0x42403E3C, 0x3D549BB3, 0xB4B4B3B3, 0xB2AD966F, \
0xAEB3B2A8, 0x98B19B62, 0x4F4B4C4F, 0x51535556, \
0x56565656, 0x56565656, 0x57585859, 0x59595857, \
0x56545350, 0x4F4E4D4C, 0x4C4B4B4A, 0x4A484644, \
0x43403F3C, 0x3B416EA7, 0xB4B4B3AD, 0xA5937E98, \
0xB5B5B6B8, 0xB5B9B3A5, 0x895D5154, 0x56585A5B, \
0x5B5A5A59, 0x58585757, 0x57585859, 0x58585857, \
0x56545351, 0x504E4E4C, 0x4C4C4C4B, 0x4B494846, \
0x4442403E, 0x3C3B4985, 0xADB5B097, 0x818EA5B0, \
0xB6B6B8B9, 0xB2A18A94, 0xA1735859, 0x5B5D5F5F, \
0x5F5E5D5B, 0x5A595857, 0x57575858, 0x58585857, \
0x56545250, 0x504E4E4D, 0x4D4D4D4C, 0x4C4B4A48, \
0x46444240, 0x3E3C3E55, 0x90B0B4AB, 0xAAAEB3B4, \
0xB7B6B2A7, 0x825C5057, 0x686B5B5B, 0x5D606161, \
0x605F5E5C, 0x5A595756, 0x56575758, 0x58585857, \
0x56545250, 0x4F4E4D4D, 0x4D4D4D4D, 0x4C4B4A49, \
0x48464442, 0x413F3E40, 0x5890ADB4, 0xB6B6B6B6, \
0xACA38862, 0x4B44464B, 0x5158595C, 0x5F616262, \
0x615F5E5C, 0x5A585656, 0x56565758, 0x58585857, \
0x5653514F, 0x4E4C4C4C, 0x4C4C4C4D, 0x4C4C4C4A, \
0x4A494846, 0x45444241, 0x43527C9F, 0xACAFAEAE, \
0x6A53463F, 0x3F42464C, 0x4F55585C, 0x5E616161, \
0x605F5D5B, 0x59575656, 0x56565758, 0x58595857, \
0x5552504E, 0x4C4B4A4B, 0x4A4B4C4C, 0x4C4D4C4C, \
0x4C4B4A49, 0x49484645, 0x44434A58, 0x6E797977, \
0x3F3A393B, 0x3E42454B, 0x4F54585C, 0x5E606060, \
0x5F5D5C59, 0x57565556, 0x56575859, 0x59595856, \
0x54514F4C, 0x4B494848, 0x494A4B4C, 0x4C4E4E4E, \
0x4F4F4F4F, 0x4F4E4D4B, 0x49474444, 0x46454342, \
0x3838393B, 0x3D41444A, 0x4E53565A, 0x5C5E5E5E, \
0x5D5C5A58, 0x56555556, 0x5658595A, 0x5A595855, \
0x53504E4B, 0x49484747, 0x48494A4C, 0x4D4E5051, \
0x52535354, 0x54535250, 0x4E4B4845, 0x423E3C3A, \
0x3838393A, 0x3C404449, 0x4D525558, 0x5A5C5C5C, \
0x5B595856, 0x56555556, 0x57595A5A, 0x5A595754, \
0x514E4B48, 0x47454545, 0x46484A4C, 0x4E515355, \
0x56585A5B, 0x5B5A5956, 0x54504D48, 0x45403D3B, \
0x3838383A, 0x3B3F4348, 0x4C505457, 0x58595A5A, \
0x58585656, 0x55565657, 0x585A5B5B, 0x5A585652, \
0x4F4C4946, 0x45444444, 0x46484A4D, 0x4F535658, \
0x5A5D5E5F, 0x605F5E5B, 0x5854504A, 0x46413E3B, \
0x38383839, 0x3A3E4246, 0x4A4F5254, 0x56565656, \
0x56555555, 0x55565758, 0x5A5B5C5B, 0x5A575450, \
0x4D484644, 0x42424244, 0x46484B4F, 0x52575A5E, \
0x60626465, 0x66656460, 0x5D58534D, 0x48423E3B, \
0x38373738, 0x3A3E4146, 0x494E5053, 0x54545454, \
0x54545454, 0x5557585A, 0x5B5C5C5B, 0x5955524E, \
0x4B464442, 0x41414244, 0x46494D52, 0x555A5E62, \
0x64676869, 0x69686763, 0x605A544E, 0x49423E3B, \
0x37363638, 0x3A3D4045, 0x484B4E50, 0x50515252, \
0x52535354, 0x56585A5B, 0x5C5C5C5A, 0x57534F4A, \
0x48444240, 0x40404144, 0x474C4F55, 0x595F6266, \
0x686B6C6C, 0x6C6B6A66, 0x625B564E, 0x49423D3A, \
0x36363637, 0x3A3D4044, 0x464A4C4E, 0x4E4F5050, \
0x51525355, 0x56585A5C, 0x5D5C5B58, 0x56514D48, \
0x4642403F, 0x3F404145, 0x484D5258, 0x5C626669, \
0x6B6C6D6D, 0x6D6C6A66, 0x625B564E, 0x48413C39, \
0x35353537, 0x393C3F42, 0x4548494B, 0x4C4D4E4F, \
0x50525356, 0x575A5B5D, 0x5D5C5A56, 0x534E4B46, \
0x43403F3E, 0x3E404246, 0x4A50555C, 0x6066696C, \
0x6D6E6E6E, 0x6E6D6B66, 0x615A544C, 0x463F3B38, \
0x35353537, 0x393C3E42, 0x44464849, 0x4A4B4C4E, \
0x4F525356, 0x585B5C5D, 0x5C5B5955, 0x524D4944, \
0x42403E3E, 0x3E404348, 0x4C53585E, 0x63686B6D, \
0x6E6E6E6E, 0x6E6D6B66, 0x6059524A, 0x443E3A37, \
0x34353537, 0x393B3D40, 0x42444547, 0x484A4B4D, \
0x4F525457, 0x595C5D5D, 0x5C5A5853, 0x504B4844, \
0x413F3E3E, 0x3F42454A, 0x4F565C62, 0x666A6C6E, \
0x6E6E6E6E, 0x6E6C6963, 0x5E564F47, 0x423C3836, \
0x34343537, 0x383B3D40, 0x41434446, 0x47494A4D, \
0x4F525458, 0x5A5C5D5D, 0x5C5A5753, 0x504B4743, \
0x413E3E3E, 0x3F43464C, 0x51585E64, 0x686C6D6E, \
0x6E6E6E6E, 0x6D6B6761, 0x5B534D45, 0x403B3836, \
0x34343537, 0x383B3C3F, 0x40424345, 0x46494A4E, \
0x50545659, 0x5B5D5E5D, 0x5C5A5753, 0x504B494C, \
0x514C4440, 0x4044484E, 0x545C6167, 0x6A6D6E6E, \
0x6E6E6E6D, 0x6C68645D, 0x574F4942, 0x3D393635, \
0x34343536, 0x383A3C3F, 0x40424245, 0x46494B4E, \
0x5154575A, 0x5C5E5E5E, 0x5D5A5854, 0x504D537B, \
0xA0936C4F, 0x45464A50, 0x565D6268, 0x6C6E6E6E, \
0x6E6E6E6C, 0x6A66615A, 0x544C4640, 0x3C383634, \
0x34343537, 0x393B3D3F, 0x40424346, 0x474A4D50, \
0x53575A5D, 0x5E60605F, 0x5E5C5A56, 0x535775B1, \
0xBDBBAF8C, 0x5F4D4D52, 0x5860656A, 0x6C6E6E6E, \
0x6E6E6D6B, 0x68625D55, 0x4F47423C, 0x39363534, \
0x34353638, 0x3A3C3E40, 0x41434447, 0x494C4E52, \
0x54585B5E, 0x60626261, 0x605E5C58, 0x5B79B1C2, \
0xACB6C0BB, 0xA3705454, 0x5A61666B, 0x6D6E6E6E, \
0x6E6D6C69, 0x655E5952, 0x4C45403B, 0x38353434, \
0x3536373A, 0x3B3E3F42, 0x43454749, 0x4B4F5155, \
0x585C5E61, 0x63646464, 0x6361605E, 0x75B3CDCA, \
0xB69FBFC6, 0xC1AD6E5A, 0x5C63686C, 0x6D6E6E6E, \
0x6E6C6A65, 0x605A544C, 0x47403C38, 0x36343434, \
0x3637393B, 0x3D3F4144, 0x4547494C, 0x4E515358, \
0x5A5E6063, 0x65666666, 0x66646370, 0xAAD0D4D0, \
0xC195BFC6, 0xB7C4A469, 0x5F64686C, 0x6D6E6E6E, \
0x6D6B6862, 0x5D565049, 0x443E3A37, 0x35343434, \
0x38393B3E, 0x40424547, 0x494B4D50, 0x5255575B, \
0x5D616366, 0x686A6A6A, 0x69686E9A, 0xD0DAD4D3, \
0xC8A1C1C0, 0x9FC8C686, 0x66676A6D, 0x6D6E6E6D, \
0x6C68645E, 0x58514C45, 0x403B3936, 0x35353536, \
0x3A3B3E40, 0x4346484A, 0x4C4E5052, 0x54585A5D, \
0x60636668, 0x6A6C6C6C, 0x6B6C83CA, 0xE1DAC3CA, \
0xCBB0B1AA, 0xADD0D3A9, 0x6F686B6E, 0x6E6E6E6C, \
0x6A66625B, 0x554E4942, 0x3E3A3836, 0x36363637, \
0x3E3F4245, 0x474A4C4F, 0x50525456, 0x585C5D60, \
0x6266686A, 0x6C6D6E6E, 0x6D75ABDF, 0xE7E0C7AC, \
0xBDB59F9B, 0xC9DADAC3, 0x766A6C6E, 0x6E6E6D6B, \
0x68625D56, 0x514A453F, 0x3C383736, 0x3637393A, \
0x41424549, 0x4B4E4F52, 0x53555659, 0x5B5E5F62, \
0x6466696B, 0x6C6E6E6E, 0x6F80CCE8, 0xE9E6DECB, \
0xADA086B8, 0xD9DAD4CF, 0x7C6C6D6E, 0x6E6E6C69, \
0x66605A53, 0x4E47433E, 0x3B383837, 0x38393B3D, \
0x46484A4E, 0x50525356, 0x5658595C, 0x5D5F6163, \
0x6567696B, 0x6C6E6E6E, 0x7397DEEC, 0xE9E8E7E1, \
0xD7C5A5D3, 0xDDC6C8D3, 0x846E6E6E, 0x6E6D6B66, \
0x625C5650, 0x4B45413D, 0x3B393939, 0x3A3D3F41, \
0x4A4C4E51, 0x53555658, 0x585A5B5C, 0x5D5F6162, \
0x6466686A, 0x6C6D6E6E, 0x76ABE4E9, 0xD7E2E8E7, \
0xE6D9B6DB, 0xD5B2DADA, 0x896F6E6E, 0x6E6C6964, \
0x605A544E, 0x4944403D, 0x3B3A3A3B, 0x3D404345, \
0x4E505255, 0x56585859, 0x5A5A5B5C, 0x5C5E5F60, \
0x62646568, 0x696B6C6E, 0x77AEE5E5, 0xBDC4DEE8, \
0xEAE0BBD3, 0xBDCAE7DA, 0x826E6E6E, 0x6D6A6762, \
0x5E57524C, 0x4743403E, 0x3D3C3D3F, 0x4245484A, \
0x52535557, 0x58585859, 0x59595A5A, 0x5A5C5C5E, \
0x5F616265, 0x676A6B6D, 0x77ADE5EC, 0xDFC3BED8, \
0xE1DCB3BB, 0xC2E3EACD, 0x7E6E6E6E, 0x6C696660, \
0x5C55514B, 0x4743413F, 0x3E3F4043, 0x45494C4E, \
0x55565758, 0x58575757, 0x57575757, 0x57585859, \
0x5A5C5E61, 0x6367696C, 0x74A5E3EE, 0xEDE5D6BE, \
0xBDC09EB6, 0xE0EDE6B2, 0x786E6E6D, 0x6C68645E, \
0x5A54504A, 0x47444241, 0x42434548, 0x4A4E5152, \
0x57575757, 0x56565655, 0x54545454, 0x54545456, \
0x56595B5E, 0x6064676A, 0x6F8EDBED, 0xEEEEEBE5, \
0xE0CAB4DC, 0xEDEDDA8F, 0x716E6E6C, 0x6A66625D, \
0x59534F4B, 0x48454444, 0x4446484C, 0x4E515355, \
0x57565655, 0x53525250, 0x504F4F4E, 0x4E4E4F50, \
0x5154565A, 0x5C616469, 0x6B7CC0E7, 0xEEEEEEEE, \
0xEAD2C7E7, 0xEEE6B77A, 0x6E6E6D6B, 0x6964615B, \
0x58524F4C, 0x4A484748, 0x494B4D50, 0x53545656, \
0x55555452, 0x504F4E4D, 0x4C4C4B4A, 0x4A4A4B4C, \
0x4E505256, 0x5A5F6367, 0x6A708FD0, 0xEAEEEEEE, \
0xE8CCD3E9, 0xEBD18A70, 0x6E6E6D6A, 0x6763605B, \
0x5753504D, 0x4C4A4A4B, 0x4C4F5154, 0x55565757, \
0x5352504E, 0x4C4A4948, 0x47464544, 0x44454647, \
0x494C4E53, 0x565C6066, 0x696C7396, 0xD1EAEEEE, \
0xE6C3E2EC, 0xDAA0766E, 0x6E6D6B68, 0x66625E5A, \
0x5653504F, 0x4E4E4E50, 0x51545557, 0x58585756, \
0x51504E4B, 0x49474644, 0x44434241, 0x41424244, \
0x46494C51, 0x555B5F64, 0x676B6C75, 0x96D0E7ED, \
0xE7CAE4DA, 0xA57A6F6E, 0x6D6C6A67, 0x64605E59, \
0x56545250, 0x50505153, 0x54565758, 0x58575655, \
0x4E4C4A47, 0x4542413F, 0x3F3E3E3D, 0x3D3E3E40, \
0x43464A4F, 0x53595D62, 0x66696B6D, 0x738EBFDD, \
0xE8E4D5A3, 0x7A6E6D6D, 0x6C6A6865, 0x625E5C58, \
0x56545352, 0x52545456, 0x58595A59, 0x58565452, \
0x4C4A4844, 0x42403E3C, 0x3C3B3B3A, 0x3A3B3C3E, \
0x4144484E, 0x52585C61, 0x64686A6C, 0x6C6F7C9F, \
0xD4DEA579, 0x6D6C6D6C, 0x6B696764, 0x615E5B58, \
0x56545454, 0x54565758, 0x595A5A59, 0x58555250, \
0x4A484441, 0x3F3C3B39, 0x39383838, 0x38393A3C, \
0x3F43464C, 0x50565A60, 0x6366686A, 0x6A6A6B77, \
0xA9D0876D, 0x6C6C6B6A, 0x69666562, 0x5F5C5A57, \
0x56545454, 0x5657585A, 0x5A5A5A58, 0x5754514E, \
0x4846433F, 0x3D3A3A38, 0x37363636, 0x3637393B, \
0x3E42464C, 0x50565A5F, 0x62666768, 0x6868686E, \
0x94C7856C, 0x6A6B6A69, 0x68656360, 0x5E5B5857, \
0x55545455, 0x5658595A, 0x5A5A5A58, 0x56524F4C, \
0x4744413D, 0x3A383736, 0x35343434, 0x3536373A, \
0x3D42454B, 0x4F55595E, 0x61646566, 0x6767686D, \
0x8BA87A6A, 0x6A696866, 0x6563605D, 0x5B585655, \
0x54545454, 0x56585959, 0x5A595856, 0x54514E4B, \
0x4643403C, 0x39373635, 0x34343434, 0x3435373A, \
0x3C41444A, 0x4E54585D, 0x60636466, 0x66676769, \
0x6E736C69, 0x69686865, 0x64605E5B, 0x59565553, \
0x53535354, 0x55565858, 0x59585756, 0x54504D4A, \
0x44423E3A, 0x38353434, 0x33333333, 0x34343639, \
0x3B404449, 0x4E54585C, 0x5F626365, 0x66676768, \
0x68696968, 0x68676563, 0x605D5B58, 0x56535251, \
0x50505152, 0x53555657, 0x57565654, 0x524F4C49, \
0x44413E39, 0x37353433, 0x33333333, 0x33343638, \
0x3B3F4349, 0x4D53565B, 0x5E616265, 0x65676768, \
0x69696968, 0x67656460, 0x5E5B5855, 0x5351504F, \
0x4E4E4F50, 0x52535455, 0x56555553, 0x524E4C49, \
0x42403C38, 0x36343333, 0x33333333, 0x33343537, \
0x3A3E4247, 0x4C51555A, 0x5C606264, 0x65676768, \
0x69696867, 0x6663615D, 0x5B575451, 0x504E4C4C, \
0x4B4B4C4D, 0x4E505253, 0x53545452, 0x514E4B48, \
0x413F3B37, 0x36343333, 0x33333333, 0x33343537, \
0x393D4046, 0x4A505458, 0x5B5F6164, 0x65676868, \
0x69686866, 0x64615F5B, 0x5854524F, 0x4D4B4A49, \
0x4848494A, 0x4C4E4F51, 0x52535352, 0x504D4A47, \
0x403D3A36, 0x35343333, 0x33333333, 0x33343436, \
0x383C3F44, 0x484D5156, 0x5A5E6063, 0x65676868, \
0x68686664, 0x625E5C58, 0x54504E4B, 0x4A474645, \
0x45454647, 0x484B4D4F, 0x50525251, 0x504C4845, \
0x3E3C3936, 0x34333333, 0x33333333, 0x33333436, \
0x373B3E43, 0x464C4F55, 0x585C6063, 0x64666768, \
0x68666562, 0x605C5955, 0x524E4C49, 0x47454443, \
0x43434445, 0x46494B4E, 0x4F515150, 0x4E4B4744, \
0x3D3A3735, 0x34333333, 0x33333333, 0x33333435, \
0x36393C40, 0x44494D52, 0x565A5E61, 0x64666666, \
0x6664625F, 0x5C585652, 0x4F4B4946, 0x44424040, \
0x40404042, 0x4446494C, 0x4E4F4F4E, 0x4D494542, \
0x3B393634, 0x33323333, 0x33333333, 0x33333334, \
0x36383A3F, 0x42474B50, 0x54595C60, 0x62656566, \
0x6462605C, 0x5A56534F, 0x4C494744, 0x42403E3E, \
0x3D3E3F41, 0x4245484A, 0x4C4E4E4D, 0x4B474440, \
0x39383634, 0x33323333, 0x33333333, 0x33333334, \
0x3537393C, 0x4044484E, 0x52575A5E, 0x61636463, \
0x62605D59, 0x5652504C, 0x4A474441, 0x403D3C3B, \
0x3B3C3C3E, 0x40434750, 0x585E5E5D, 0x5952483F, \
0x3C373534, 0x33333333, 0x33333333, 0x33333333, \
0x3436383B, 0x3E43474D, 0x5056595D, 0x60626261, \
0x605D5B57, 0x54504E4A, 0x48454340, 0x3E3C3B3A, \
0x3A3A3B3D, 0x3F4A5E80, 0xA1B2B6B5, 0xAB937350, \
0x553D3533, 0x33333333, 0x33333333, 0x33333333, \
0x3335373A, 0x3D42464B, 0x4F54585C, 0x5E5F605F, \
0x5D5A5854, 0x524E4C49, 0x4643413F, 0x3E3B3A39, \
0x39393A3E, 0x4F7AA5B9, 0xBEB5C1C4, 0xC0B4AC93, \
0x94654033, 0x33333333, 0x33333333, 0x33323233, \
0x3335363A, 0x3C40444A, 0x4E54575B, 0x5D5E5E5D, \
0x5C595653, 0x504D4A48, 0x4643413E, 0x3D3B3A38, \
0x38383C57, 0x8EB0BEC2, 0xBB99A5BD, 0xBA9DA0AE, \
0xAF9F6B3F, 0x34333333, 0x33333333, 0x33333334, \
0x3436373A, 0x3C40444A, 0x4E53565A, 0x5B5C5C5B, \
0x5A575451, 0x4E4B4A47, 0x4542413E, 0x3D3B3A38, \
0x38384691, 0xB2B4B5B5, 0xB7AA87A9, 0xBAAA83A2, \
0xAAB2A06A, 0x3D333332, 0x33333333, 0x33343434, \
0x3536383B, 0x3D41454A, 0x4E53565A, 0x5B5C5C5A, \
0x58565450, 0x4E4B4946, 0x4542413F, 0x3D3C3A39, \
0x38384796, 0xB1958F8C, 0x94A19686, 0xADB39A89, \
0x9BB0B19D, 0x5B373333, 0x34343434, 0x35363637, \
0x38393B3D, 0x4044474C, 0x4F545659, 0x5A5B5B59, \
0x57555350, 0x4D4A4946, 0x45434240, 0x3E3C3B3A, \
0x39384179, 0xAFB2B1AE, 0xA2947E63, 0x92A9A584, \
0x80AAB3AE, 0x8B463434, 0x34353636, 0x3738393A, \
0x3B3C3E40, 0x4346494E, 0x50545659, 0x5A5A5A58, \
0x5754524F, 0x4D4A4947, 0x46444341, 0x3F3E3C3B, \
0x3A3A3C59, 0xA4B8B9B8, 0xB3A78F73, 0x8382928E, \
0x6FA2B2B3, 0xA6693C36, 0x3738393A, 0x3C3D3E40, \
0x40424345, 0x484A4D50, 0x53565759, 0x5A5A5958, \
0x5754524F, 0x4D4B4A48, 0x47464543, 0x42403F3D, \
0x3C3B3A46, 0x83B1B7B5, 0xA58A87A3, 0xABA58E75, \
0x6185A7B2, 0xB08F4738, 0x3A3C3D3F, 0x40424445, \
0x4648484A, 0x4C4E5052, 0x54575859, 0x5A5A5958, \
0x56545250, 0x4E4C4A49, 0x48474645, 0x44424140, \
0x3E3D3B3D, 0x5BA4B6B0, 0x919AA9B3, 0xB4B2A685, \
0x657C88A0, 0xB0A5583D, 0x3C3F4143, 0x4547484A, \
0x4B4C4D4E, 0x4F505254, 0x55585859, 0x5A5A5958, \
0x56545250, 0x4E4C4B4A, 0x49484846, 0x45444241, \
0x3F3E3C3B, 0x4681AFB4, 0xAEB0B3B3, 0xB3B19A68
var_80B49060: .byte \
0x00, 0x58, 0x00, 0x79, 0x00, 0x00, 0x00, 0x00, 0x06, 0x66, 0x08, 0x00, 0xFF, 0xFF, 0xFF, 0x00, \
0x00, 0xF3, 0x00, 0xB0, 0x03, 0xE8, 0x00, 0x00, 0x05, 0x9A, 0x00, 0x00, 0xFF, 0xFF, 0xFF
var_80B4907F: .word \
0xFF008F00, 0x2E000000, 0x0004CD08, 0x00FFFFFF, \
0x00012C00, 0x0003E800, 0x00040000, 0x00FFFFFF
var_80B4909F: .word \
0xFF000000, 0x96000000, 0x00080008, 0x00FFFFFF, \
0x00005D01, 0x1D03E800, 0x00073300, 0x00FFFFFF
var_80B490BF: .word \
0xFFFFA800, 0x79000000, 0x00099A08, 0x00FFFFFF, \
0x00FFA301, 0x1D03E800, 0x0008CD00, 0x00FFFFFF
var_80B490DF: .word \
0xFFFF7100, 0x2E000000, 0x000B3308, 0x00FFFFFF, \
0x00FF0D00, 0xB003E800, 0x000A6600, 0x00FFFFFF
var_80B490FF: .word \
0xFFFF71FF, 0xD2000000, 0x000CCD08, 0x00FFFFFF, \
0x00FED400, 0x0003E800, 0x000C0000, 0x00FFFFFF
var_80B4911F: .word \
0xFFFFA8FF, 0x87000000, 0x000E6608, 0x00FFFFFF, \
0x00FF0DFF, 0x5003E800, 0x000D9A00, 0x00FFFFFF
var_80B4913F: .word \
0xFF0000FF, 0x6A000000, 0x00100008, 0x00FFFFFF, \
0x00FFA3FE, 0xE303E800, 0x000F3300, 0x00FFFFFF
var_80B4915F: .word \
0xFF0058FF, 0x87000000, 0x00019A08, 0x00FFFFFF, \
0x00005DFE, 0xE303E800, 0x0000CD00, 0x00FFFFFF
var_80B4917F: .word \
0xFF0000FF, 0x6A000000, 0x00000008, 0x00FFFFFF, \
0x00005DFE, 0xE303E800, 0x0010CD00, 0x00FFFFFF
var_80B4919F: .word \
0xFF008FFF, 0xD2000000, 0x00033308, 0x00FFFFFF, \
0x0000F3FF, 0x5003E800, 0x00026600, 0x00FFFFFF
var_80B491BF: .byte 0xFF
var_80B491C0: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80B48060
.word \
0xF5900000, 0x0701B86E, 0xE6000000, 0x00000000, \
0xF3000000, 0x077FF100, 0xE7000000, 0x00000000, \
0xF5881000, 0x0001B86E, 0xF2000000, 0x000FC0FC, \
0xE8000000, 0x00000000, 0xF5881000, 0x0101B86E, \
0xF2000000, 0x010FC0FC, 0xFC262A60, 0x3510F37F, \
0xE200001C, 0x0C1841C8, 0xD9F0FBFF, 0x00000000, \
0xDF000000, 0x00000000
var_80B49248: .word 0x0101602C
.word var_80B49060
.word \
0x06000204, 0x00020604, 0x06080A00, 0x000A0200, \
0x060C0E08, 0x000E0A08, 0x0610120C, 0x00120E0C, \
0x06141610, 0x00161210, 0x06181A14, 0x001A1614, \
0x061C1E18, 0x001E1A18, 0x06202224, 0x00261E1C, \
0x06282A20, 0x002A2220, 0x06040628, 0x00062A28, \
0xDF000000, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80B492B0: .word 0x44A64000
var_80B492B4: .word 0x44A64000
var_80B492B8: .word 0x3DCCCCCD, 0x00000000

