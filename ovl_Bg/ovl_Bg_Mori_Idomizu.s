.section .text
func_809EEA00:
    sw      a1, 0x013C(a0)             # 0000013C
    jr      $ra                        
    nop


func_809EEA0C:
    sw      a1, 0x0004($sp)            
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    lw      t6, 0x07C0(a0)             # 000007C0
    lw      v0, 0x0028(t6)             # 00000028
    sh      a1, 0x0022(v0)             # 00000022
    sh      a1, 0x0032(v0)             # 00000032
    sh      a1, 0x0042(v0)             # 00000042
    jr      $ra                        
    nop


func_809EEA34:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     t6, %hi(var_809EEF70)      # t6 = 809F0000
    lh      t6, %lo(var_809EEF70)(t6)  
    lui     $at, 0x3F80                # $at = 3F800000
    beql    t6, $zero, lbl_809EEA70    
    mtc1    $at, $f0                   # $f0 = 1.00
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809EEB48 
    lw      $ra, 0x001C($sp)           
    mtc1    $at, $f0                   # $f0 = 0.00
lbl_809EEA70:
    lui     $at, %hi(var_809EEFA0)     # $at = 809F0000
    lwc1    $f4, %lo(var_809EEFA0)($at) 
    lui     $at, 0x42EE                # $at = 42EE0000
    mtc1    $at, $f6                   # $f6 = 119.00
    lui     $at, %hi(var_809EEFA4)     # $at = 809F0000
    swc1    $f0, 0x0054(s0)            # 00000054
    swc1    $f0, 0x0058(s0)            # 00000058
    swc1    $f4, 0x0050(s0)            # 00000050
    swc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f8, %lo(var_809EEFA4)($at) 
    lh      a1, 0x001C(s0)             # 0000001C
    swc1    $f8, 0x002C(s0)            # 0000002C
    lw      a0, 0x0024($sp)            
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_809EEAD4    
    sw      v0, 0x0144(s0)             # 00000144
    lui     $at, 0xC38D                # $at = C38D0000
    mtc1    $at, $f10                  # $f10 = -282.00
    addiu   a1, $zero, 0xFEE6          # a1 = FFFFFEE6
    swc1    $f10, 0x0028(s0)           # 00000028
    jal     func_809EEA0C              
    lw      a0, 0x0024($sp)            
    beq     $zero, $zero, lbl_809EEAF0 
    lw      a0, 0x0024($sp)            
lbl_809EEAD4:
    lui     $at, 0x4338                # $at = 43380000
    mtc1    $at, $f16                  # $f16 = 184.00
    addiu   a1, $zero, 0x00B8          # a1 = 000000B8
    swc1    $f16, 0x0028(s0)           # 00000028
    jal     func_809EEA0C              
    lw      a0, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
lbl_809EEAF0:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addiu   a1, $zero, 0x0073          # a1 = 00000073
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at                
    sb      v0, 0x014C(s0)             # 0000014C
    lb      t7, 0x014C(s0)             # 0000014C
    bgez    t7, lbl_809EEB24           
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809EEB48 
    lw      $ra, 0x001C($sp)           
lbl_809EEB24:
    jal     func_809EEB78              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lui     $at, %hi(var_809EEF70)     # $at = 809F0000
    sh      v0, %lo(var_809EEF70)($at) 
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    sh      v0, 0x0148(s0)             # 00000148
    sb      t8, 0x0003(s0)             # 00000003
    lw      $ra, 0x001C($sp)           
lbl_809EEB48:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809EEB58:
    sw      a1, 0x0004($sp)            
    lh      t6, 0x0148(a0)             # 00000148
    lui     $at, %hi(var_809EEF70)     # $at = 809F0000
    beq     t6, $zero, lbl_809EEB70    
    nop
    sh      $zero, %lo(var_809EEF70)($at) 
lbl_809EEB70:
    jr      $ra                        
    nop


func_809EEB78:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     a1, %hi(func_809EEB9C)     # a1 = 809F0000
    jal     func_809EEA00              
    addiu   a1, a1, %lo(func_809EEB9C) # a1 = 809EEB9C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809EEB9C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x0018($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a2, $at                
    jal     func_80081688              
    lb      a1, 0x014C(t6)             # 0000014C
    beql    v0, $zero, lbl_809EEBE8    
    lw      $ra, 0x0014($sp)           
    jal     func_809EEBF4              
    lw      a0, 0x0018($sp)            
    lw      t8, 0x0018($sp)            
    lui     t7, %hi(func_809EEE08)     # t7 = 809F0000
    addiu   t7, t7, %lo(func_809EEE08) # t7 = 809EEE08
    sw      t7, 0x0134(t8)             # 00000134
    lw      $ra, 0x0014($sp)           
lbl_809EEBE8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809EEBF4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     a1, %hi(func_809EEC18)     # a1 = 809F0000
    jal     func_809EEA00              
    addiu   a1, a1, %lo(func_809EEC18) # a1 = 809EEC18
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809EEC18:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a2                 
    lb      t6, 0x1CBC(t6)             # 00011CBC
    or      a0, a2, $zero              # a0 = 00000000
    sb      t6, 0x0037($sp)            
    lh      a1, 0x001C(s0)             # 0000001C
    sw      a2, 0x003C($sp)            
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_809EEC68    
    sw      v0, 0x002C($sp)            
    lui     $at, 0xC38D                # $at = C38D0000
    mtc1    $at, $f4                   # $f4 = -282.00
    beq     $zero, $zero, lbl_809EEC78 
    swc1    $f4, 0x0140(s0)            # 00000140
lbl_809EEC68:
    lui     $at, 0x4338                # $at = 43380000
    mtc1    $at, $f6                   # $f6 = 184.00
    nop
    swc1    $f6, 0x0140(s0)            # 00000140
lbl_809EEC78:
    beq     v0, $zero, lbl_809EECAC    
    nop
    lw      t7, 0x0144(s0)             # 00000144
    lw      a0, 0x003C($sp)            
    addiu   a1, $zero, 0x0CA8          # a1 = 00000CA8
    bne     t7, $zero, lbl_809EECAC    
    addiu   a2, $zero, 0x0046          # a2 = 00000046
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC              
    sw      $zero, 0x0010($sp)         
    addiu   t8, $zero, 0x005A          # t8 = 0000005A
    beq     $zero, $zero, lbl_809EECE4 
    sh      t8, 0x014A(s0)             # 0000014A
lbl_809EECAC:
    bnel    v0, $zero, lbl_809EECE8    
    lh      t1, 0x014A(s0)             # 0000014A
    lw      t9, 0x0144(s0)             # 00000144
    lw      a0, 0x003C($sp)            
    addiu   a1, $zero, 0x0CA8          # a1 = 00000CA8
    beq     t9, $zero, lbl_809EECE4    
    addiu   a2, $zero, 0x0046          # a2 = 00000046
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC              
    sw      $zero, 0x0010($sp)         
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   t0, $zero, 0x005A          # t0 = 0000005A
    sh      t0, 0x014A(s0)             # 0000014A
    swc1    $f8, 0x0028(s0)            # 00000028
lbl_809EECE4:
    lh      t1, 0x014A(s0)             # 0000014A
lbl_809EECE8:
    lb      v0, 0x0037($sp)            
    addiu   $at, $zero, 0x0007         # $at = 00000007
    addiu   t2, t1, 0xFFFF             # t2 = FFFFFFFF
    beq     v0, $at, lbl_809EED10      
    sh      t2, 0x014A(s0)             # 0000014A
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v0, $at, lbl_809EED10      
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bnel    v0, $at, lbl_809EED8C      
    lwc1    $f18, 0x0140(s0)           # 00000140
lbl_809EED10:
    lh      t3, 0x014A(s0)             # 0000014A
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x4060                 # a2 = 40600000
    slti    $at, t3, 0x0046            
    beql    $at, $zero, lbl_809EEDC4   
    lw      t8, 0x002C($sp)            
    jal     func_8006385C              
    lw      a1, 0x0140(s0)             # 00000140
    lwc1    $f10, 0x0028(s0)           # 00000028
    lw      a0, 0x003C($sp)            
    trunc.w.s $f16, $f10                 
    mfc1    a1, $f16                   
    nop
    sll     a1, a1, 16                 
    jal     func_809EEA0C              
    sra     a1, a1, 16                 
    lh      t5, 0x014A(s0)             # 0000014A
    lw      t6, 0x002C($sp)            
    blezl   t5, lbl_809EEDC4           
    lw      t8, 0x002C($sp)            
    beq     t6, $zero, lbl_809EED78    
    nop
    jal     func_80064738              
    addiu   a0, $zero, 0x205E          # a0 = 0000205E
    beq     $zero, $zero, lbl_809EEDC4 
    lw      t8, 0x002C($sp)            
lbl_809EED78:
    jal     func_80064738              
    addiu   a0, $zero, 0x205E          # a0 = 0000205E
    beq     $zero, $zero, lbl_809EEDC4 
    lw      t8, 0x002C($sp)            
    lwc1    $f18, 0x0140(s0)           # 00000140
lbl_809EED8C:
    swc1    $f18, 0x0028(s0)           # 00000028
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      a0, 0x003C($sp)            
    trunc.w.s $f6, $f4                   
    mfc1    a1, $f6                    
    nop
    sll     a1, a1, 16                 
    jal     func_809EEA0C              
    sra     a1, a1, 16                 
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809EEDCC 
    lw      $ra, 0x0024($sp)           
    lw      t8, 0x002C($sp)            
lbl_809EEDC4:
    sw      t8, 0x0144(s0)             # 00000144
    lw      $ra, 0x0024($sp)           
lbl_809EEDCC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_809EEDDC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x013C(a0)             # 0000013C
    beql    v0, $zero, lbl_809EEDFC    
    lw      $ra, 0x0014($sp)           
    jalr    $ra, v0                    
    nop
    lw      $ra, 0x0014($sp)           
lbl_809EEDFC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809EEE08:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s1, 0x0038($sp)            
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s0, 0x0034($sp)            
    sw      a0, 0x0068($sp)            
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, s1                 
    lw      t6, 0x1DE4(t6)             # 00011DE4
    sw      t6, 0x005C($sp)            
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E2C0              
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0050($sp)            
    lw      t3, 0x0050($sp)            
    lw      t5, 0x005C($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    sw      v0, 0x0004(t3)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t7, 0x0068($sp)            
    andi    t2, t5, 0x007F             # t2 = 00000000
    andi    a3, t5, 0x007F             # a3 = 00000000
    lb      t8, 0x014C(t7)             # 0000014C
    lui     t7, 0x0001                 # t7 = 00010000
    sll     t9, t8,  4                 
    addu    t9, t9, t8                 
    sll     t9, t9,  2                 
    addu    t6, s1, t9                 
    addu    t7, t7, t6                 
    lw      t7, 0x17B4(t7)             # 000117B4
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   t6, $zero, 0x0080          # t6 = 00000080
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t9, $zero, 0x007F          # t9 = 0000007F
    subu    a2, t9, t2                 
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sw      t6, 0x0010($sp)            
    sw      t6, 0x0028($sp)            
    sw      t7, 0x0014($sp)            
    sw      t8, 0x0018($sp)            
    sw      t9, 0x0024($sp)            
    sw      a3, 0x0020($sp)            
    sw      t2, 0x001C($sp)            
    jal     func_8007EB84              
    sw      v1, 0x0044($sp)            
    lw      t4, 0x0044($sp)            
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      v0, 0x0004(t4)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x49D0             # t9 = 060049D0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0068           # $sp = 00000000
    nop
    nop

.section .data

var_809EEF70: .word 0x00000000
var_809EEF74: .word 0x00E40100, 0x00000030, 0x00720000, 0x00000150
.word func_809EEA34
.word func_809EEB58
.word func_809EEDDC
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_809EEFA0: .word 0x3F8CCCCD
var_809EEFA4: .word 0xC4E38000, 0x00000000, 0x00000000

