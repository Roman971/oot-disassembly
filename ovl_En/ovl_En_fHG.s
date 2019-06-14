#include <mips.h>
.set noreorder
.set noat

.section .text
func_809108A0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, %hi(var_80912EF0)      # a1 = 80910000
    addiu   a1, a1, %lo(var_80912EF0)  # a1 = 80912EF0
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0024($sp)            
    jal     func_800204D0              
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    lui     a1, 0x3C3C                 # a1 = 3C3C0000
    ori     a1, a1, 0x6A7E             # a1 = 3C3C6A7E
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0xC060                # $at = C0600000
    mtc1    $at, $f4                   # $f4 = -3.50
    lui     a1, 0xC522                 # a1 = C5220000
    ori     a1, a1, 0x8000             # a1 = C5228000
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0x41A0                 # a3 = 41A00000
    jal     func_8001EC20              
    swc1    $f4, 0x006C(s0)            # 0000006C
    lw      t6, 0x0028(s0)             # 00000028
    lui     $at, 0x428C                # $at = 428C0000
    lw      t7, 0x0024(s0)             # 00000024
    sw      t6, 0x003C(s0)             # 0000003C
    lwc1    $f8, 0x003C(s0)            # 0000003C
    mtc1    $at, $f10                  # $f10 = 70.00
    sw      t7, 0x0038(s0)             # 00000038
    mtc1    $zero, $f6                 # $f6 = 0.00
    add.s   $f16, $f8, $f10            
    lw      t7, 0x002C(s0)             # 0000002C
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0601                 # a3 = 06010000
    swc1    $f16, 0x003C(s0)           # 0000003C
    swc1    $f6, 0x0068(s0)            # 00000068
    sw      t7, 0x0040(s0)             # 00000040
    lw      a0, 0x0024($sp)            
    addiu   a3, a3, 0xA0C8             # a3 = 0600A0C8
    addiu   a2, a2, 0x9C98             # a2 = 06009C98
    jal     func_8008E4EC              
    addiu   a1, s0, 0x01F4             # a1 = 000001F4
    lh      v0, 0x001C(s0)             # 0000001C
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, v0, 0x000A            
    bne     $at, $zero, lbl_80910984   
    addiu   a2, v0, 0xFFF6             # a2 = FFFFFFF6
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    jal     func_80911C3C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80910990 
    lw      $ra, 0x001C($sp)           
lbl_80910984:
    jal     func_809109CC              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
lbl_80910990:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809109A0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8008E6BC              
    addiu   a1, a3, 0x01F4             # a1 = 000001F4
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809109CC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xD4A0             # a1 = 0600D4A0
    addiu   a0, a2, 0x0240             # a0 = 00000240
    jal     func_8008D2D4              
    sw      a2, 0x0018($sp)            
    lui     $at, 0x4160                # $at = 41600000
    lw      a2, 0x0018($sp)            
    mtc1    $at, $f4                   # $f4 = 14.00
    lui     $at, 0xC396                # $at = C3960000
    mtc1    $at, $f6                   # $f6 = -300.00
    lui     t6, %hi(func_80910A30)     # t6 = 80910000
    addiu   t6, t6, %lo(func_80910A30) # t6 = 80910A30
    lui     $at, %hi(var_80912F10)     # $at = 80910000
    sw      t6, 0x01EC(a2)             # 000001EC
    swc1    $f4, 0x0024(a2)            # 00000024
    swc1    $f6, 0x0028(a2)            # 00000028
    lwc1    $f8, %lo(var_80912F10)($at) 
    swc1    $f8, 0x002C(a2)            # 0000002C
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80910A30:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      a1, 0x006C($sp)            
    lw      t6, 0x006C($sp)            
    lw      t7, 0x0118(s0)             # 00000118
    addiu   $at, $zero, 0x0009         # $at = 00000009
    lw      a3, 0x1C44(t6)             # 00001C44
    sw      t7, 0x005C($sp)            
    lh      v1, 0x01BA(s0)             # 000001BA
    beql    v1, $at, lbl_80910A7C      
    sltiu   $at, v1, 0x0010            
    addiu   a0, s0, 0x0240             # a0 = 00000240
    jal     func_8008C9C0              
    sw      a3, 0x0060($sp)            
    lw      a3, 0x0060($sp)            
    lh      v1, 0x01BA(s0)             # 000001BA
    sltiu   $at, v1, 0x0010            
lbl_80910A7C:
    beq     $at, $zero, lbl_80911C0C   
    sll     t8, v1,  2                 
    lui     $at, %hi(var_80912F14)     # $at = 80910000
    addu    $at, $at, t8               
    lw      t8, %lo(var_80912F14)($at) 
    jr      t8                         
    nop
var_80910A98:
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f2                   # $f2 = 14.00
    lwc1    $f4, 0x0024(a3)            # 00000024
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f12                  # $f12 = 150.00
    sub.s   $f0, $f4, $f2              
    lui     $at, %hi(var_80912F54)     # $at = 80910000
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f12                  
    nop
    bc1fl   lbl_80911C10               
    lh      a1, 0x01BC(s0)             # 000001BC
    lwc1    $f6, 0x002C(a3)            # 0000002C
    lwc1    $f8, %lo(var_80912F54)($at) 
    addiu   t9, $zero, 0x000F          # t9 = 0000000F
    sub.s   $f0, $f6, $f8              
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f12                  
    nop
    bc1fl   lbl_80911C10               
    lh      a1, 0x01BC(s0)             # 000001BC
    beq     $zero, $zero, lbl_80911C0C 
    sh      t9, 0x01BA(s0)             # 000001BA
var_80910AF4:
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f2                   # $f2 = 14.00
    lwc1    $f10, 0x0024(a3)           # 00000024
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    sub.s   $f0, $f10, $f2             
    lui     $at, %hi(var_80912F58)     # $at = 80910000
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f12                  
    nop
    bc1fl   lbl_80911C10               
    lh      a1, 0x01BC(s0)             # 000001BC
    lwc1    $f18, 0x002C(a3)           # 0000002C
    lwc1    $f4, %lo(var_80912F58)($at) 
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lui     t1, 0x8012                 # t1 = 80120000
    sub.s   $f0, $f18, $f4             
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f12                  
    nop
    bc1fl   lbl_80911C10               
    lh      a1, 0x01BC(s0)             # 000001BC
    sh      t0, 0x01BA(s0)             # 000001BA
    lhu     t1, -0x4B4E(t1)            # 8011B4B2
    addiu   t3, $zero, 0x0039          # t3 = 00000039
    andi    t2, t1, 0x0004             # t2 = 00000000
    beql    t2, $zero, lbl_80911C10    
    lh      a1, 0x01BC(s0)             # 000001BC
    beq     $zero, $zero, lbl_80911C0C 
    sh      t3, 0x01C4(s0)             # 000001C4
var_80910B6C:
    lui     t4, 0x8012                 # t4 = 80120000
    lhu     t4, -0x4B4E(t4)            # 8011B4B2
    lw      a0, 0x006C($sp)            
    andi    t5, t4, 0x0004             # t5 = 00000000
    beq     t5, $zero, lbl_80910C48    
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    lh      v1, 0x01C4(s0)             # 000001C4
    lw      a2, 0x006C($sp)            
    addiu   $at, $zero, 0x0037         # $at = 00000037
    bne     v1, $at, lbl_80910BE0      
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f2                   # $f2 = 14.00
    lui     $at, 0xC302                # $at = C3020000
    mtc1    $at, $f6                   # $f6 = -130.00
    lui     $at, %hi(var_80912F5C)     # $at = 80910000
    lwc1    $f8, %lo(var_80912F5C)($at) 
    addiu   t7, $zero, 0x0100          # t7 = 00000100
    sw      t7, 0x0028($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x002E          # a3 = 0000002E
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0024($sp)         
    swc1    $f2, 0x0010($sp)           
    swc1    $f6, 0x0014($sp)           
    jal     func_800253F0              
    swc1    $f8, 0x0018($sp)           
    lh      v1, 0x01C4(s0)             # 000001C4
lbl_80910BE0:
    addiu   $at, $zero, 0x0033         # $at = 00000033
    bne     v1, $at, lbl_80910C00      
    addiu   a1, $zero, 0x283C          # a1 = 0000283C
    jal     func_80022FD0              
    lw      a0, 0x011C(s0)             # 0000011C
    jal     func_800CAA70              
    addiu   a0, $zero, 0x001B          # a0 = 0000001B
    lh      v1, 0x01C4(s0)             # 000001C4
lbl_80910C00:
    bnel    v1, $zero, lbl_80911C10    
    lh      a1, 0x01BC(s0)             # 000001BC
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80912F60)     # $at = 80910000
    lwc1    $f10, %lo(var_80912F60)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x006C($sp)            
    mul.s   $f18, $f0, $f10            
    trunc.w.s $f4, $f18                  
    mfc1    a2, $f4                    
    nop
    sll     a2, a2, 16                 
    jal     func_80911C3C              
    sra     a2, a2, 16                 
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    beq     $zero, $zero, lbl_80911C0C 
    sb      t9, 0x013C(s0)             # 0000013C
lbl_80910C48:
    jal     func_80052328              
    sw      a3, 0x0060($sp)            
    lw      a0, 0x006C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_8009D0F0              
    lw      a0, 0x006C($sp)            
    sh      v0, 0x01BC(s0)             # 000001BC
    lw      a0, 0x006C($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x006C($sp)            
    lh      a1, 0x01BC(s0)             # 000001BC
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     $at, 0xC220                # $at = C2200000
    mtc1    $at, $f6                   # $f6 = -40.00
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    addiu   t2, $zero, 0x003C          # t2 = 0000003C
    lui     a0, 0x1001                 # a0 = 10010000
    sh      t1, 0x01BA(s0)             # 000001BA
    sh      t2, 0x01C4(s0)             # 000001C4
    ori     a0, a0, 0x00FF             # a0 = 100100FF
    jal     func_800CAA70              
    swc1    $f6, 0x0028(s0)            # 00000028
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t3, 0x0EE2(v0)             # 8011B4B2
    lw      a0, 0x006C($sp)            
    addiu   a1, $zero, 0x0023          # a1 = 00000023
    ori     t4, t3, 0x0004             # t4 = 00000004
    jal     func_800204D0              
    sh      t4, 0x0EE2(v0)             # 8011B4B2
    lw      a3, 0x0060($sp)            
var_80910CD8:
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f2                   # $f2 = 14.00
    lui     $at, 0xC1D0                # $at = C1D00000
    mtc1    $at, $f8                   # $f8 = -26.00
    lui     $at, %hi(var_80912F64)     # $at = 80910000
    swc1    $f2, 0x0024(a3)            # 00000024
    swc1    $f8, 0x0028(a3)            # 00000028
    lwc1    $f10, %lo(var_80912F64)($at) 
    sh      $zero, 0x00B6(a3)          # 000000B6
    lh      t5, 0x00B6(a3)             # 000000B6
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f4                   # $f4 = 4.00
    swc1    $f10, 0x002C(a3)           # 0000002C
    sh      t5, 0x0032(a3)             # 00000032
    swc1    $f18, 0x0068(a3)           # 00000068
    lui     $at, %hi(var_80912F68)     # $at = 80910000
    swc1    $f2, 0x0140(s0)            # 00000140
    swc1    $f4, 0x0144(s0)            # 00000144
    lwc1    $f6, %lo(var_80912F68)($at) 
    lui     $at, %hi(var_80912F6C)     # $at = 80910000
    swc1    $f2, 0x014C(s0)            # 0000014C
    swc1    $f2, 0x0150(s0)            # 00000150
    swc1    $f6, 0x0148(s0)            # 00000148
    lwc1    $f8, %lo(var_80912F6C)($at) 
    lh      v1, 0x01C4(s0)             # 000001C4
    addiu   $at, $zero, 0x0019         # $at = 00000019
    swc1    $f8, 0x0154(s0)            # 00000154
    bne     v1, $at, lbl_80910D94      
    lw      a2, 0x006C($sp)            
    lui     $at, 0xC302                # $at = C3020000
    mtc1    $at, $f10                  # $f10 = -130.00
    lui     $at, %hi(var_80912F70)     # $at = 80910000
    lwc1    $f18, %lo(var_80912F70)($at) 
    addiu   t7, $zero, 0x0100          # t7 = 00000100
    sw      t7, 0x0028($sp)            
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x002E          # a3 = 0000002E
    swc1    $f2, 0x0010($sp)           
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0024($sp)         
    swc1    $f10, 0x0014($sp)          
    jal     func_800253F0              
    swc1    $f18, 0x0018($sp)          
    lh      v1, 0x01C4(s0)             # 000001C4
lbl_80910D94:
    addiu   $at, $zero, 0x0015         # $at = 00000015
    bne     v1, $at, lbl_80910DAC      
    addiu   a1, $zero, 0x283C          # a1 = 0000283C
    jal     func_80022FD0              
    lw      a0, 0x011C(s0)             # 0000011C
    lh      v1, 0x01C4(s0)             # 000001C4
lbl_80910DAC:
    bne     v1, $zero, lbl_80911C0C    
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    addiu   t9, $zero, 0x0050          # t9 = 00000050
    sh      t8, 0x01BA(s0)             # 000001BA
    beq     $zero, $zero, lbl_80911C0C 
    sh      t9, 0x01C4(s0)             # 000001C4
var_80910DC4:
    lh      v1, 0x01C4(s0)             # 000001C4
    addiu   $at, $zero, 0x0019         # $at = 00000019
    or      a0, s0, $zero              # a0 = 00000000
    bnel    v1, $at, lbl_80910DE8      
    addiu   $at, $zero, 0x0014         # $at = 00000014
    jal     func_80022FD0              
    addiu   a1, $zero, 0x283E          # a1 = 0000283E
    lh      v1, 0x01C4(s0)             # 000001C4
    addiu   $at, $zero, 0x0014         # $at = 00000014
lbl_80910DE8:
    bne     v1, $at, lbl_80910E00      
    lw      a0, 0x006C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0009          # a2 = 00000009
    lh      v1, 0x01C4(s0)             # 000001C4
lbl_80910E00:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v1, $at, lbl_80910E18      
    lui     $at, 0x41A0                # $at = 41A00000
    jal     func_800CAA70              
    addiu   a0, $zero, 0x0023          # a0 = 00000023
    lui     $at, 0x41A0                # $at = 41A00000
lbl_80910E18:
    mtc1    $at, $f6                   # $f6 = 20.00
    lwc1    $f4, 0x0198(s0)            # 00000198
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    mul.s   $f8, $f4, $f6              
    addiu   a0, s0, 0x0140             # a0 = 00000140
    lui     a1, 0x4258                 # a1 = 42580000
    mfc1    a3, $f8                    
    jal     func_80064280              
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    lwc1    $f10, 0x0198(s0)           # 00000198
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    mul.s   $f4, $f10, $f18            
    addiu   a0, s0, 0x0144             # a0 = 00000144
    lui     a1, 0x4080                 # a1 = 40800000
    mfc1    a3, $f4                    
    jal     func_80064280              
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lwc1    $f6, 0x0198(s0)            # 00000198
    lui     a1, 0xC54A                 # a1 = C54A0000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    mul.s   $f10, $f6, $f8             
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    ori     a1, a1, 0x3000             # a1 = C54A3000
    addiu   a0, s0, 0x0148             # a0 = 00000148
    mfc1    a3, $f10                   
    jal     func_80064280              
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    lwc1    $f18, 0x0198(s0)           # 00000198
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    mul.s   $f6, $f18, $f4             
    addiu   a0, s0, 0x014C             # a0 = 0000014C
    lui     a1, 0xC2AC                 # a1 = C2AC0000
    mfc1    a3, $f6                    
    jal     func_80064280              
    nop
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f2                   # $f2 = 14.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lwc1    $f8, 0x0198(s0)            # 00000198
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    mfc1    a1, $f2                    
    mul.s   $f18, $f8, $f10            
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s0, 0x0150             # a0 = 00000150
    mfc1    a3, $f18                   
    jal     func_80064280              
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    lwc1    $f4, 0x0198(s0)            # 00000198
    lui     a1, 0xC53A                 # a1 = C53A0000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    mul.s   $f8, $f4, $f6              
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    ori     a1, a1, 0x4000             # a1 = C53A4000
    addiu   a0, s0, 0x0154             # a0 = 00000154
    mfc1    a3, $f8                    
    jal     func_80064280              
    nop
    lui     a3, 0x3C23                 # a3 = 3C230000
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    addiu   a0, s0, 0x0198             # a0 = 00000198
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      t0, 0x01C4(s0)             # 000001C4
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    addiu   t2, $zero, 0x0032          # t2 = 00000032
    bnel    t0, $zero, lbl_80911C10    
    lh      a1, 0x01BC(s0)             # 000001BC
    mtc1    $zero, $f10                # $f10 = 0.00
    sh      t1, 0x01BA(s0)             # 000001BA
    sh      t2, 0x01C4(s0)             # 000001C4
    beq     $zero, $zero, lbl_80911C0C 
    swc1    $f10, 0x0198(s0)           # 00000198
var_80910F6C:
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    lwc1    $f18, 0x0198(s0)           # 00000198
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mul.s   $f6, $f18, $f4             
    addiu   a0, s0, 0x0140             # a0 = 00000140
    lui     a1, 0x42A8                 # a1 = 42A80000
    mfc1    a3, $f6                    
    jal     func_80064280              
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lwc1    $f8, 0x0198(s0)            # 00000198
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mul.s   $f18, $f8, $f10            
    addiu   a0, s0, 0x0144             # a0 = 00000144
    lui     a1, 0xC1D0                 # a1 = C1D00000
    mfc1    a3, $f18                   
    jal     func_80064280              
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    lwc1    $f4, 0x0198(s0)            # 00000198
    lui     a1, 0xC542                 # a1 = C5420000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f8, $f4, $f6              
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    ori     a1, a1, 0xB000             # a1 = C542B000
    addiu   a0, s0, 0x0148             # a0 = 00000148
    mfc1    a3, $f8                    
    jal     func_80064280              
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    lwc1    $f10, 0x0198(s0)           # 00000198
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mul.s   $f4, $f10, $f18            
    addiu   a0, s0, 0x014C             # a0 = 0000014C
    lui     a1, 0xC308                 # a1 = C3080000
    mfc1    a3, $f4                    
    jal     func_80064280              
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lwc1    $f6, 0x0198(s0)            # 00000198
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mul.s   $f10, $f6, $f8             
    addiu   a0, s0, 0x0150             # a0 = 00000150
    lui     a1, 0x4294                 # a1 = 42940000
    mfc1    a3, $f10                   
    jal     func_80064280              
    nop
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f4                   # $f4 = 40.00
    lwc1    $f18, 0x0198(s0)           # 00000198
    lui     a1, 0xC553                 # a1 = C5530000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f6, $f18, $f4             
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    ori     a1, a1, 0x4000             # a1 = C5534000
    addiu   a0, s0, 0x0154             # a0 = 00000154
    mfc1    a3, $f6                    
    jal     func_80064280              
    nop
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    addiu   a0, s0, 0x0198             # a0 = 00000198
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      v1, 0x01C4(s0)             # 000001C4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    or      a0, s0, $zero              # a0 = 00000000
    bne     v1, $at, lbl_809110B4      
    nop
    jal     func_80022FD0              
    addiu   a1, $zero, 0x282C          # a1 = 0000282C
    lh      v1, 0x01C4(s0)             # 000001C4
lbl_809110B4:
    bne     v1, $zero, lbl_80911C0C    
    addiu   t3, $zero, 0x0005          # t3 = 00000005
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   t4, $zero, 0x0032          # t4 = 00000032
    sh      t3, 0x01BA(s0)             # 000001BA
    sh      t4, 0x01C4(s0)             # 000001C4
    beq     $zero, $zero, lbl_80911C0C 
    swc1    $f8, 0x0198(s0)            # 00000198
var_809110D4:
    lui     $at, 0x4280                # $at = 42800000
    mtc1    $at, $f2                   # $f2 = 64.00
    lui     $at, 0xC180                # $at = C1800000
    mtc1    $at, $f12                  # $f12 = -16.00
    lui     $at, %hi(var_80912F74)     # $at = 80910000
    lwc1    $f14, %lo(var_80912F74)($at) 
    lui     $at, 0x432E                # $at = 432E0000
    mtc1    $at, $f16                  # $f16 = 174.00
    lui     $at, 0xC308                # $at = C3080000
    mtc1    $at, $f10                  # $f10 = -136.00
    addiu   t5, $zero, 0x0006          # t5 = 00000006
    sh      t5, 0x01BA(s0)             # 000001BA
    lui     $at, %hi(var_80912F78)     # $at = 80910000
    swc1    $f2, 0x0140(s0)            # 00000140
    swc1    $f12, 0x0144(s0)           # 00000144
    swc1    $f14, 0x0148(s0)           # 00000148
    swc1    $f16, 0x0150(s0)           # 00000150
    swc1    $f10, 0x014C(s0)           # 0000014C
    lwc1    $f18, %lo(var_80912F78)($at) 
    lui     $at, 0x4208                # $at = 42080000
    mtc1    $at, $f4                   # $f4 = 34.00
    lui     $at, 0x428A                # $at = 428A0000
    mtc1    $at, $f6                   # $f6 = 69.00
    sub.s   $f0, $f2, $f4              
    lui     $at, %hi(var_80912F7C)     # $at = 80910000
    swc1    $f18, 0x0154(s0)           # 00000154
    lwc1    $f18, 0x0154(s0)           # 00000154
    abs.s   $f0, $f0                   
    addiu   t6, $zero, 0x00FA          # t6 = 000000FA
    swc1    $f0, 0x0158(s0)            # 00000158
    sub.s   $f0, $f12, $f6             
    abs.s   $f0, $f0                   
    swc1    $f0, 0x015C(s0)            # 0000015C
    lwc1    $f8, %lo(var_80912F7C)($at) 
    lui     $at, 0x4324                # $at = 43240000
    mtc1    $at, $f10                  # $f10 = 164.00
    sub.s   $f0, $f14, $f8             
    lui     $at, %hi(var_80912F80)     # $at = 80910000
    abs.s   $f0, $f0                   
    swc1    $f0, 0x0160(s0)            # 00000160
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    abs.s   $f0, $f0                   
    swc1    $f0, 0x0164(s0)            # 00000164
    sub.s   $f0, $f16, $f10            
    abs.s   $f0, $f0                   
    swc1    $f0, 0x0168(s0)            # 00000168
    lwc1    $f4, %lo(var_80912F80)($at) 
    sh      t6, 0x01C4(s0)             # 000001C4
    sub.s   $f0, $f18, $f4             
    abs.s   $f0, $f0                   
    swc1    $f0, 0x016C(s0)            # 0000016C
var_809111A4:
    lwc1    $f6, 0x0198(s0)            # 00000198
    lwc1    $f8, 0x0158(s0)            # 00000158
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    mul.s   $f10, $f6, $f8             
    addiu   a0, s0, 0x0140             # a0 = 00000140
    lui     a1, 0x4208                 # a1 = 42080000
    mfc1    a3, $f10                   
    jal     func_80064280              
    nop
    lwc1    $f18, 0x0198(s0)           # 00000198
    lwc1    $f4, 0x015C(s0)            # 0000015C
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    mul.s   $f6, $f18, $f4             
    addiu   a0, s0, 0x0144             # a0 = 00000144
    lui     a1, 0x428A                 # a1 = 428A0000
    mfc1    a3, $f6                    
    jal     func_80064280              
    nop
    lwc1    $f8, 0x0198(s0)            # 00000198
    lwc1    $f10, 0x0160(s0)           # 00000160
    lui     a1, 0xC54D                 # a1 = C54D0000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    mul.s   $f18, $f8, $f10            
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    ori     a1, a1, 0xA000             # a1 = C54DA000
    addiu   a0, s0, 0x0148             # a0 = 00000148
    mfc1    a3, $f18                   
    jal     func_80064280              
    nop
    lwc1    $f4, 0x0198(s0)            # 00000198
    lwc1    $f6, 0x0164(s0)            # 00000164
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    mul.s   $f8, $f4, $f6              
    addiu   a0, s0, 0x014C             # a0 = 0000014C
    lui     a1, 0xC308                 # a1 = C3080000
    mfc1    a3, $f8                    
    jal     func_80064280              
    nop
    lwc1    $f10, 0x0198(s0)           # 00000198
    lwc1    $f18, 0x0168(s0)           # 00000168
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    mul.s   $f4, $f10, $f18            
    addiu   a0, s0, 0x0150             # a0 = 00000150
    lui     a1, 0x4324                 # a1 = 43240000
    mfc1    a3, $f4                    
    jal     func_80064280              
    nop
    lwc1    $f6, 0x0198(s0)            # 00000198
    lwc1    $f8, 0x016C(s0)            # 0000016C
    lui     a1, 0xC553                 # a1 = C5530000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    mul.s   $f10, $f6, $f8             
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    ori     a1, a1, 0x4000             # a1 = C5534000
    addiu   a0, s0, 0x0154             # a0 = 00000154
    mfc1    a3, $f10                   
    jal     func_80064280              
    nop
    lui     a1, 0x3C23                 # a1 = 3C230000
    lui     a3, 0x3A83                 # a3 = 3A830000
    ori     a3, a3, 0x126F             # a3 = 3A83126F
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    addiu   a0, s0, 0x0198             # a0 = 00000198
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      v1, 0x01C4(s0)             # 000001C4
    addiu   $at, $zero, 0x00F5         # $at = 000000F5
    beq     v1, $at, lbl_809112CC      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v1, $at, lbl_80911314      
lbl_809112CC:
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xC9B8             # a1 = 0600C9B8
    addiu   a0, s0, 0x0240             # a0 = 00000240
    jal     func_8008D21C              
    lui     a2, 0xC100                 # a2 = C1000000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sb      t7, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x283D          # a1 = 0000283D
    lh      v1, 0x01C4(s0)             # 000001C4
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      a0, s0, $zero              # a0 = 00000000
    bnel    v1, $at, lbl_80911318      
    addiu   $at, $zero, 0x00C0         # $at = 000000C0
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38B2          # a1 = 000038B2
    lh      v1, 0x01C4(s0)             # 000001C4
lbl_80911314:
    addiu   $at, $zero, 0x00C0         # $at = 000000C0
lbl_80911318:
    bne     v1, $at, lbl_8091132C      
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x282C          # a1 = 0000282C
    lh      v1, 0x01C4(s0)             # 000001C4
lbl_8091132C:
    addiu   $at, $zero, 0x00D4         # $at = 000000D4
    bne     v1, $at, lbl_80911388      
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t8, s0, 0x0240             # t8 = 00000240
    sw      t8, 0x0044($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x282B          # a1 = 0000282B
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f18                  # $f18 = 5.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f4                   # $f4 = -10.00
    lui     a1, 0x0601                 # a1 = 06010000
    lui     a2, 0x3E99                 # a2 = 3E990000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0014($sp)            
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a1, a1, 0xD4A0             # a1 = 0600D4A0
    lw      a0, 0x0044($sp)            
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f18, 0x0010($sp)          
    jal     func_8008D17C              
    swc1    $f4, 0x0018($sp)           
    lh      v1, 0x01C4(s0)             # 000001C4
lbl_80911388:
    addiu   $at, $zero, 0x005A         # $at = 0000005A
    bne     v1, $at, lbl_809113BC      
    lw      t1, 0x006C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t1               
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    sb      t0, 0x0AE3($at)            # 00010AE3
    lw      t3, 0x006C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    addu    $at, $at, t3               
    sh      t2, 0x0AFA($at)            # 00010AFA
    lh      v1, 0x01C4(s0)             # 000001C4
lbl_809113BC:
    addiu   $at, $zero, 0x0064         # $at = 00000064
    bne     v1, $at, lbl_809113D0      
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    sb      t4, 0x013C(s0)             # 0000013C
    lh      v1, 0x01C4(s0)             # 000001C4
lbl_809113D0:
    addiu   $at, $zero, 0x003C         # $at = 0000003C
    bne     v1, $at, lbl_809113E4      
    addiu   t5, $zero, 0x0005          # t5 = 00000005
    sb      t5, 0x013C(s0)             # 0000013C
    lh      v1, 0x01C4(s0)             # 000001C4
lbl_809113E4:
    addiu   $at, $zero, 0x0082         # $at = 00000082
    bne     v1, $at, lbl_809113FC      
    lui     a0, 0x1050                 # a0 = 10500000
    jal     func_800CAA70              
    ori     a0, a0, 0x00FF             # a0 = 105000FF
    lh      v1, 0x01C4(s0)             # 000001C4
lbl_809113FC:
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bne     v1, $at, lbl_80911414      
    lw      t7, 0x005C($sp)            
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sh      t6, 0x019A(t7)             # 0000019A
    lh      v1, 0x01C4(s0)             # 000001C4
lbl_80911414:
    addiu   $at, $zero, 0x0023         # $at = 00000023
    bne     v1, $at, lbl_80911430      
    lui     a0, %hi(var_80912EF8)      # a0 = 80910000
    addiu   a0, a0, %lo(var_80912EF8)  # a0 = 80912EF8
    jal     func_80064780              
    addiu   a1, $zero, 0x38AB          # a1 = 000038AB
    lh      v1, 0x01C4(s0)             # 000001C4
lbl_80911430:
    addiu   $at, $zero, 0x0082         # $at = 00000082
    bne     v1, $at, lbl_80911458      
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lw      t9, 0x005C($sp)            
    lui     a0, %hi(var_80912EF8)      # a0 = 80910000
    addiu   a0, a0, %lo(var_80912EF8)  # a0 = 80912EF8
    addiu   a1, $zero, 0x39D6          # a1 = 000039D6
    jal     func_80064780              
    sh      t8, 0x019A(t9)             # 0000019A
    lh      v1, 0x01C4(s0)             # 000001C4
lbl_80911458:
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bnel    v1, $at, lbl_80911474      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    jal     func_800CAA70              
    addiu   a0, $zero, 0x001B          # a0 = 0000001B
    lh      v1, 0x01C4(s0)             # 000001C4
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80911474:
    bne     v1, $at, lbl_80911C0C      
    lui     $at, 0x4342                # $at = 43420000
    mtc1    $at, $f10                  # $f10 = 194.00
    lwc1    $f8, 0x0140(s0)            # 00000140
    lui     $at, 0xC1D0                # $at = C1D00000
    mtc1    $at, $f4                   # $f4 = -26.00
    sub.s   $f0, $f8, $f10             
    lwc1    $f18, 0x0144(s0)           # 00000144
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t0, $zero, 0x0007          # t0 = 00000007
    abs.s   $f0, $f0                   
    swc1    $f6, 0x0198(s0)            # 00000198
    swc1    $f0, 0x0158(s0)            # 00000158
    sub.s   $f0, $f18, $f4             
    sh      t0, 0x01BA(s0)             # 000001BA
    lui     $at, %hi(var_80912F84)     # $at = 80910000
    lwc1    $f6, 0x0148(s0)            # 00000148
    abs.s   $f0, $f0                   
    lwc1    $f18, 0x0024(s0)           # 00000024
    swc1    $f0, 0x015C(s0)            # 0000015C
    lwc1    $f8, %lo(var_80912F84)($at) 
    lui     $at, 0x428C                # $at = 428C0000
    lwc1    $f10, 0x014C(s0)           # 0000014C
    sub.s   $f0, $f6, $f8              
    mtc1    $at, $f6                   # $f6 = 70.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     $at, 0x41A0                # $at = 41A00000
    abs.s   $f0, $f0                   
    add.s   $f8, $f4, $f6              
    swc1    $f0, 0x0160(s0)            # 00000160
    lwc1    $f4, 0x0150(s0)            # 00000150
    sub.s   $f0, $f10, $f18            
    mtc1    $at, $f10                  # $f10 = 20.00
    lwc1    $f6, 0x0154(s0)            # 00000154
    addiu   t1, $zero, 0x0064          # t1 = 00000064
    sub.s   $f18, $f8, $f10            
    lwc1    $f8, 0x002C(s0)            # 0000002C
    addiu   t2, $zero, 0x0022          # t2 = 00000022
    abs.s   $f0, $f0                   
    sh      t1, 0x01C4(s0)             # 000001C4
    swc1    $f0, 0x0164(s0)            # 00000164
    sub.s   $f0, $f4, $f18             
    sh      t2, 0x01C6(s0)             # 000001C6
    abs.s   $f0, $f0                   
    swc1    $f0, 0x0168(s0)            # 00000168
    sub.s   $f0, $f6, $f8              
    abs.s   $f0, $f0                   
    beq     $zero, $zero, lbl_80911C0C 
    swc1    $f0, 0x016C(s0)            # 0000016C
var_80911538:
    lh      t3, 0x01C6(s0)             # 000001C6
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t3, $at, lbl_80911590      
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   t4, s0, 0x0240             # t4 = 00000240
    sw      t4, 0x0044($sp)            
    jal     func_8008A194              
    addiu   a0, a0, 0xD4A0             # a0 = 0600D4A0
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f18                  # $f18 = -3.00
    cvt.s.w $f4, $f10                  
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0014($sp)            
    addiu   a1, a1, 0xD4A0             # a1 = 0600D4A0
    lw      a0, 0x0044($sp)            
    swc1    $f4, 0x0010($sp)           
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f18, 0x0018($sp)          
lbl_80911590:
    lwc1    $f6, 0x0198(s0)            # 00000198
    lwc1    $f8, 0x0158(s0)            # 00000158
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mul.s   $f10, $f6, $f8             
    addiu   a0, s0, 0x0140             # a0 = 00000140
    lui     a1, 0x4342                 # a1 = 43420000
    mfc1    a3, $f10                   
    jal     func_80064280              
    nop
    lwc1    $f4, 0x0198(s0)            # 00000198
    lwc1    $f18, 0x015C(s0)           # 0000015C
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mul.s   $f6, $f4, $f18             
    addiu   a0, s0, 0x0144             # a0 = 00000144
    lui     a1, 0xC1D0                 # a1 = C1D00000
    mfc1    a3, $f6                    
    jal     func_80064280              
    nop
    lui     $at, %hi(var_80912F88)     # $at = 80910000
    lwc1    $f10, %lo(var_80912F88)($at) 
    lwc1    $f8, 0x019C(s0)            # 0000019C
    lwc1    $f18, 0x0198(s0)           # 00000198
    lwc1    $f6, 0x0160(s0)            # 00000160
    add.s   $f4, $f8, $f10             
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f8, $f18, $f6             
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mfc1    a1, $f4                    
    addiu   a0, s0, 0x0148             # a0 = 00000148
    mfc1    a3, $f8                    
    jal     func_80064280              
    nop
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lui     a1, 0xC2C8                 # a1 = C2C80000
    jal     func_80064280              
    lui     a3, 0x3F80                 # a3 = 3F800000
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lwc1    $f10, 0x0198(s0)           # 00000198
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mul.s   $f18, $f10, $f4            
    addiu   a0, s0, 0x014C             # a0 = 0000014C
    lw      a1, 0x0024(s0)             # 00000024
    mfc1    a3, $f18                   
    jal     func_80064280              
    nop
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f8                   # $f8 = 70.00
    lwc1    $f6, 0x0028(s0)            # 00000028
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    add.s   $f10, $f6, $f8             
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    lwc1    $f6, 0x0198(s0)            # 00000198
    sub.s   $f18, $f10, $f4            
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f10, $f6, $f8             
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mfc1    a1, $f18                   
    addiu   a0, s0, 0x0150             # a0 = 00000150
    mfc1    a3, $f10                   
    jal     func_80064280              
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    lwc1    $f4, 0x0198(s0)            # 00000198
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mul.s   $f6, $f4, $f18             
    addiu   a0, s0, 0x0154             # a0 = 00000154
    lw      a1, 0x002C(s0)             # 0000002C
    mfc1    a3, $f6                    
    jal     func_80064280              
    nop
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a1, 0x4270                 # a1 = 42700000
    jal     func_80064280              
    lui     a3, 0x4000                 # a3 = 40000000
    lh      a0, 0x01B0(s0)             # 000001B0
    addu    $at, a0, $zero             
    sll     a0, a0,  2                 
    subu    a0, a0, $at                
    sll     a0, a0,  4                 
    subu    a0, a0, $at                
    sll     a0, a0,  3                 
    subu    a0, a0, $at                
    sll     a0, a0,  2                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    add.s   $f10, $f0, $f0             
    lwc1    $f8, 0x0028(s0)            # 00000028
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    add.s   $f4, $f8, $f10             
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    mfc1    a1, $f2                    
    mfc1    a2, $f2                    
    swc1    $f4, 0x0028(s0)            # 00000028
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    jal     func_80064280              
    addiu   a0, s0, 0x0198             # a0 = 00000198
    lh      v1, 0x01C4(s0)             # 000001C4
    lw      a0, 0x006C($sp)            
    addiu   $at, $zero, 0x004B         # $at = 0000004B
    bne     v1, $at, lbl_809117B8      
    addiu   a1, a0, 0x1D4C             # a1 = 00001D4C
    lui     v0, 0x0600                 # v0 = 06000000
    addiu   v0, v0, 0x59A0             # v0 = 060059A0
    sll     t7, v0,  4                 
    srl     t8, t7, 28                 
    sll     t9, t8,  2                 
    lui     t0, 0x8012                 # t0 = 80120000
    addu    t0, t0, t9                 
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t0, 0x0C38(t0)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t1, v0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addiu   t2, $zero, 0x00B4          # t2 = 000000B4
    addiu   t3, $zero, 0x0080          # t3 = 00000080
    addiu   t4, $zero, 0x0028          # t4 = 00000028
    addu    a2, t0, t1                 
    addu    a2, a2, $at                
    sw      t4, 0x0018($sp)            
    sw      t3, 0x0014($sp)            
    sw      t2, 0x0010($sp)            
    jal     func_80020780              
    addiu   a3, $zero, 0x00A0          # a3 = 000000A0
    lh      v1, 0x01C4(s0)             # 000001C4
lbl_809117B8:
    bne     v1, $zero, lbl_80911C0C    
    addiu   t5, $zero, 0x0008          # t5 = 00000008
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    addiu   t7, $zero, 0x0017          # t7 = 00000017
    sh      t5, 0x01BA(s0)             # 000001BA
    sh      t6, 0x01C4(s0)             # 000001C4
    sh      t7, 0x01C6(s0)             # 000001C6
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   t8, s0, 0x0240             # t8 = 00000240
    swc1    $f18, 0x0198(s0)           # 00000198
    sw      t8, 0x0044($sp)            
    jal     func_8008A194              
    addiu   a0, a0, 0xB25C             # a0 = 0600B25C
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f10                  # $f10 = -4.00
    cvt.s.w $f8, $f6                   
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    sw      t9, 0x0014($sp)            
    addiu   a1, a1, 0xB25C             # a1 = 0600B25C
    lw      a0, 0x0044($sp)            
    swc1    $f8, 0x0010($sp)           
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f10, 0x0018($sp)          
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    sb      t0, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38B2          # a1 = 000038B2
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x283D          # a1 = 0000283D
    beq     $zero, $zero, lbl_80911C10 
    lh      a1, 0x01BC(s0)             # 000001BC
var_80911850:
    lh      t1, 0x01C6(s0)             # 000001C6
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     a0, 0x0601                 # a0 = 06010000
    bne     t1, $at, lbl_809118B0      
    addiu   a0, a0, 0xB71C             # a0 = 0600B71C
    addiu   t2, s0, 0x0240             # t2 = 00000240
    jal     func_8008A194              
    sw      t2, 0x0044($sp)            
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f6                   # $f6 = -3.00
    cvt.s.w $f18, $f4                  
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    sw      t3, 0x0014($sp)            
    addiu   a1, a1, 0xB71C             # a1 = 0600B71C
    lw      a0, 0x0044($sp)            
    swc1    $f18, 0x0010($sp)          
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
    addiu   t4, $zero, 0x000B          # t4 = 0000000B
    sb      t4, 0x013C(s0)             # 0000013C
lbl_809118B0:
    lh      t5, 0x01C4(s0)             # 000001C4
    addiu   $at, $zero, 0x00AA         # $at = 000000AA
    lw      a0, 0x006C($sp)            
    bne     t5, $at, lbl_809118D8      
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38A6          # a1 = 000038A6
lbl_809118D8:
    lui     $at, %hi(var_80912F8C)     # $at = 80910000
    lwc1    $f10, %lo(var_80912F8C)($at) 
    lwc1    $f8, 0x019C(s0)            # 0000019C
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f6                   # $f6 = 1.50
    lwc1    $f18, 0x0198(s0)           # 00000198
    add.s   $f4, $f8, $f10             
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f8, $f18, $f6             
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mfc1    a1, $f4                    
    addiu   a0, s0, 0x0148             # a0 = 00000148
    mfc1    a3, $f8                    
    jal     func_80064280              
    nop
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lui     a1, 0xC2C8                 # a1 = C2C80000
    jal     func_80064280              
    lui     a3, 0x3F80                 # a3 = 3F800000
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lwc1    $f10, 0x0198(s0)           # 00000198
    lui     a1, 0xC536                 # a1 = C5360000
    ori     a1, a1, 0x3800             # a1 = C5363800
    mul.s   $f18, $f10, $f4            
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lui     a2, 0x3F80                 # a2 = 3F800000
    mfc1    a3, $f18                   
    jal     func_80064280              
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    mfc1    a1, $f0                    
    mfc1    a2, $f0                    
    jal     func_80064280              
    addiu   a0, s0, 0x0198             # a0 = 00000198
    lui     $at, %hi(var_80912F90)     # $at = 80910000
    lwc1    $f8, %lo(var_80912F90)($at) 
    lwc1    $f6, 0x002C(s0)            # 0000002C
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f10                  # $f10 = 300.00
    sub.s   $f0, $f6, $f8              
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_80911A18               
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    lh      t6, 0x01B8(s0)             # 000001B8
    lui     $at, 0x4160                # $at = 41600000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    bne     t6, $zero, lbl_80911A14    
    or      a1, s0, $zero              # a1 = 00000000
    mtc1    $at, $f2                   # $f2 = 14.00
    sh      t7, 0x01B8(s0)             # 000001B8
    lui     $at, 0x4248                # $at = 42480000
    swc1    $f2, 0x0010($sp)           
    lwc1    $f4, 0x0028(s0)            # 00000028
    mtc1    $at, $f18                  # $f18 = 50.00
    lui     $at, %hi(var_80912F94)     # $at = 80910000
    lwc1    $f8, %lo(var_80912F94)($at) 
    add.s   $f6, $f4, $f18             
    sw      $zero, 0x001C($sp)         
    swc1    $f8, 0x0018($sp)           
    lw      a2, 0x006C($sp)            
    swc1    $f6, 0x0014($sp)           
    lh      t9, 0x00B6(s0)             # 000000B6
    addiu   t0, $zero, 0x0028          # t0 = 00000028
    sw      t0, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    addiu   a3, $zero, 0x006D          # a3 = 0000006D
    addiu   a0, a2, 0x1C24             # a0 = 3E4C1C24
    jal     func_800253F0              
    sw      t9, 0x0020($sp)            
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sb      t1, 0x013F(s0)             # 0000013F
lbl_80911A14:
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
lbl_80911A18:
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x014C             # a0 = 0000014C
    lw      a1, 0x0024(s0)             # 00000024
    jal     func_80064280              
    lui     a3, 0x4248                 # a3 = 42480000
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0154             # a0 = 00000154
    lw      a1, 0x002C(s0)             # 0000002C
    jal     func_80064280              
    lui     a3, 0x4248                 # a3 = 42480000
    lui     $at, %hi(var_80912F98)     # $at = 80910000
    lwc1    $f4, %lo(var_80912F98)($at) 
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    sub.s   $f0, $f10, $f4             
    lw      t2, 0x006C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    lui     a1, 0x0601                 # a1 = 06010000
    abs.s   $f0, $f0                   
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    c.lt.s  $f0, $f18                  
    addiu   t5, $zero, 0x0009          # t5 = 00000009
    addiu   a1, a1, 0xA0C8             # a1 = 0600A0C8
    addiu   a0, s0, 0x0240             # a0 = 00000240
    bc1f    lbl_80911C0C               
    addu    $at, $at, t2               
    sb      $zero, 0x0AE3($at)         # 00010AE3
    lw      t4, 0x006C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    lui     a2, 0xC040                 # a2 = C0400000
    addu    $at, $at, t4               
    sh      t3, 0x0AFA($at)            # 00010AFA
    jal     func_8008D328              
    sh      t5, 0x01BA(s0)             # 000001BA
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x004B          # t7 = 0000004B
    addiu   t8, $zero, 0x008C          # t8 = 0000008C
    sb      t6, 0x013C(s0)             # 0000013C
    sh      t7, 0x01C6(s0)             # 000001C6
    beq     $zero, $zero, lbl_80911C0C 
    sh      t8, 0x01C4(s0)             # 000001C4
var_80911AC4:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809127E0              
    lw      a1, 0x006C($sp)            
    lui     $at, %hi(var_80912F9C)     # $at = 80910000
    lwc1    $f8, %lo(var_80912F9C)($at) 
    lwc1    $f6, 0x019C(s0)            # 0000019C
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f18                  # $f18 = 1.50
    lwc1    $f4, 0x0198(s0)            # 00000198
    add.s   $f10, $f6, $f8             
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f6, $f4, $f18             
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mfc1    a1, $f10                   
    addiu   a0, s0, 0x0148             # a0 = 00000148
    mfc1    a3, $f6                    
    jal     func_80064280              
    nop
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lui     a1, 0xC2C8                 # a1 = C2C80000
    jal     func_80064280              
    lui     a3, 0x3F80                 # a3 = 3F800000
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f10                  # $f10 = 70.00
    lwc1    $f8, 0x0028(s0)            # 00000028
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    add.s   $f4, $f8, $f10             
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lwc1    $f8, 0x0198(s0)            # 00000198
    sub.s   $f6, $f4, $f18             
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f4, $f8, $f10             
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mfc1    a1, $f6                    
    addiu   a0, s0, 0x0150             # a0 = 00000150
    mfc1    a3, $f4                    
    jal     func_80064280              
    nop
    lh      t9, 0x01C6(s0)             # 000001C6
    lw      a0, 0x006C($sp)            
    bnel    t9, $zero, lbl_80911C10    
    lh      a1, 0x01BC(s0)             # 000001BC
    jal     func_8009D2F0              
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   v1, s0, 0x0140             # v1 = 00000140
    lw      t1, 0x0000(v1)             # 00000140
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t1, 0x005C(v0)             # 0000005C
    lw      t0, 0x0004(v1)             # 00000144
    sw      t0, 0x0060(v0)             # 00000060
    lw      t1, 0x0008(v1)             # 00000148
    sw      t1, 0x0064(v0)             # 00000064
    lw      t3, 0x0000(v1)             # 00000140
    sw      t3, 0x0074(v0)             # 00000074
    lw      t2, 0x0004(v1)             # 00000144
    sw      t2, 0x0078(v0)             # 00000078
    lw      t3, 0x0008(v1)             # 00000148
    sw      t3, 0x007C(v0)             # 0000007C
    lw      t5, 0x014C(s0)             # 0000014C
    sw      t5, 0x0050(v0)             # 00000050
    lw      t4, 0x0150(s0)             # 00000150
    sw      t4, 0x0054(v0)             # 00000054
    lw      t5, 0x0154(s0)             # 00000154
    sw      t5, 0x0058(v0)             # 00000058
    lh      a1, 0x01BC(s0)             # 000001BC
    jal     func_8009D718              
    lw      a0, 0x006C($sp)            
    sh      $zero, 0x01BC(s0)          # 000001BC
    lw      a0, 0x006C($sp)            
    jal     func_80052340              
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    lw      a0, 0x006C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     t7, %hi(func_809127E0)     # t7 = 80910000
    addiu   t7, t7, %lo(func_809127E0) # t7 = 809127E0
    sw      t7, 0x01EC(s0)             # 000001EC
lbl_80911C0C:
    lh      a1, 0x01BC(s0)             # 000001BC
lbl_80911C10:
    lw      a0, 0x006C($sp)            
    addiu   a2, s0, 0x014C             # a2 = 0000014C
    beql    a1, $zero, lbl_80911C2C    
    lw      $ra, 0x003C($sp)           
    jal     func_8009D328              
    addiu   a3, s0, 0x0140             # a3 = 00000140
    lw      $ra, 0x003C($sp)           
lbl_80911C2C:
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0068           # $sp = 00000000
    jr      $ra                        
    nop


func_80911C3C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    mtc1    $zero, $f14                # $f14 = 0.00
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x002C($sp)            
    sw      a2, 0x0030($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lui     t7, %hi(var_80912F04)      # t7 = 80910000
    addiu   t7, t7, %lo(var_80912F04)  # t7 = 80912F04
    lw      t9, 0x0000(t7)             # 80912F04
    addiu   t6, $sp, 0x001C            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 80912F08
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 80912F0C
    lui     a1, 0x0601                 # a1 = 06010000
    mfc1    a2, $f14                   
    sw      t8, 0x0004(t6)             # FFFFFFF8
    sw      t9, 0x0008(t6)             # FFFFFFFC
    sw      a3, 0x0028($sp)            
    addiu   a1, a1, 0xA0C8             # a1 = 0600A0C8
    jal     func_8008D328              
    addiu   a0, a3, 0x0240             # a0 = 00000240
    lui     $at, %hi(var_80912FA0)     # $at = 80910000
    lwc1    $f2, %lo(var_80912FA0)($at) 
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    lw      a3, 0x0028($sp)            
    lui     $at, %hi(var_80912FA4)     # $at = 80910000
    lui     t0, %hi(func_80911E88)     # t0 = 80910000
    lwc1    $f16, %lo(var_80912FA4)($at) 
    lw      a2, 0x002C($sp)            
    addiu   t0, t0, %lo(func_80911E88) # t0 = 80911E88
    sw      t0, 0x01EC(a3)             # 000001EC
    lh      t1, 0x0032($sp)            
    lui     a1, %hi(var_80912E90)      # a1 = 80910000
    addiu   a1, a1, %lo(var_80912E90)  # a1 = 80912E90
    sh      t1, 0x01B2(a3)             # 000001B2
    lh      a0, 0x01B2(a3)             # 000001B2
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $zero, $f14                # $f14 = 0.00
    sll     t2, a0,  1                 
    addu    t3, $sp, t2                
    lh      t3, 0x001C(t3)             # 0000001C
    sll     t4, a0,  4                 
    addu    v0, a1, t4                 
    sh      t3, 0x01B4(a3)             # 000001B4
    lwc1    $f4, 0x0000(v0)            # 00000000
    lh      t6, 0x01B4(a3)             # 000001B4
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    mul.s   $f6, $f4, $f2              
    mtc1    $at, $f4                   # $f4 = 120.00
    sll     t7, t6,  4                 
    addu    v1, a1, t7                 
    lui     $at, 0x3F80                # $at = 3F800000
    add.s   $f8, $f6, $f12             
    swc1    $f8, 0x0024(a3)            # 00000024
    lwc1    $f10, 0x0004(v0)           # 00000004
    add.s   $f6, $f10, $f4             
    swc1    $f6, 0x0028(a3)            # 00000028
    lwc1    $f8, 0x0008(v0)            # 00000008
    mul.s   $f10, $f8, $f2             
    sub.s   $f4, $f10, $f16            
    swc1    $f4, 0x002C(a3)            # 0000002C
    lh      t5, 0x000C(v0)             # 0000000C
    sh      t5, 0x0032(a3)             # 00000032
    lwc1    $f6, 0x0000(v1)            # 00000000
    mul.s   $f8, $f6, $f2              
    add.s   $f10, $f8, $f12            
    mtc1    $at, $f12                  # $f12 = 1.00
    lui     $at, 0x4000                # $at = 40000000
    swc1    $f10, 0x017C(a3)           # 0000017C
    lwc1    $f4, 0x0004(v1)            # 00000004
    swc1    $f4, 0x0180(a3)            # 00000180
    lwc1    $f6, 0x0008(v1)            # 00000008
    lwc1    $f4, 0x017C(a3)            # 0000017C
    mul.s   $f8, $f6, $f2              
    lwc1    $f6, 0x0024(a3)            # 00000024
    sub.s   $f0, $f4, $f6              
    sub.s   $f10, $f8, $f16            
    mtc1    $at, $f16                  # $f16 = 2.00
    lui     $at, %hi(var_80912FA8)     # $at = 80910000
    abs.s   $f0, $f0                   
    swc1    $f10, 0x0184(a3)           # 00000184
    mul.s   $f8, $f0, $f16             
    lwc1    $f18, %lo(var_80912FA8)($at) 
    lui     $at, %hi(var_80912FAC)     # $at = 80910000
    mul.s   $f2, $f8, $f18             
    c.lt.s  $f2, $f12                  
    swc1    $f2, 0x0188(a3)            # 00000188
    bc1fl   lbl_80911DAC               
    lwc1    $f10, 0x0184(a3)           # 00000184
    swc1    $f12, 0x0188(a3)           # 00000188
    lwc1    $f10, 0x0184(a3)           # 00000184
lbl_80911DAC:
    lwc1    $f4, 0x002C(a3)            # 0000002C
    sub.s   $f0, $f10, $f4             
    abs.s   $f0, $f0                   
    mul.s   $f6, $f0, $f16             
    nop
    mul.s   $f2, $f6, $f18             
    c.lt.s  $f2, $f12                  
    swc1    $f2, 0x018C(a3)            # 0000018C
    bc1f    lbl_80911DD8               
    nop
    swc1    $f12, 0x018C(a3)           # 0000018C
lbl_80911DD8:
    lwc1    $f0, %lo(var_80912FAC)($at) 
    sh      t8, 0x01C4(a3)             # 000001C4
    lui     $at, %hi(var_80912FB0)     # $at = 80910000
    swc1    $f0, 0x0050(a3)            # 00000050
    swc1    $f0, 0x0054(a3)            # 00000054
    lwc1    $f8, %lo(var_80912FB0)($at) 
    swc1    $f14, 0x0194(a3)           # 00000194
    lui     $at, 0x4F80                # $at = 4F800000
    swc1    $f8, 0x0058(a3)            # 00000058
    lbu     t9, 0x07AF(a2)             # 000007AF
    mtc1    t9, $f10                   # $f10 = 0.00
    bgez    t9, lbl_80911E18           
    cvt.s.w $f4, $f10                  
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f4, $f4, $f6              
lbl_80911E18:
    swc1    $f4, 0x01D8(a3)            # 000001D8
    lbu     t0, 0x07B0(a2)             # 000007B0
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t0, $f8                    # $f8 = 0.00
    bgez    t0, lbl_80911E3C           
    cvt.s.w $f10, $f8                  
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f10, $f10, $f6            
lbl_80911E3C:
    swc1    $f10, 0x01DC(a3)           # 000001DC
    lbu     t1, 0x07B1(a2)             # 000007B1
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t1, $f4                    # $f4 = 0.00
    bgez    t1, lbl_80911E60           
    cvt.s.w $f8, $f4                   
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f8, $f8, $f6              
lbl_80911E60:
    swc1    $f8, 0x01E0(a3)            # 000001E0
    swc1    $f14, 0x01E4(a3)           # 000001E4
    swc1    $f14, 0x01E8(a3)           # 000001E8
    sh      $zero, 0x01D0(a3)          # 000001D0
    sh      $zero, 0x01B6(a3)          # 000001B6
    sh      $zero, 0x01B8(a3)          # 000001B8
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80911E88:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      a1, 0x004C($sp)            
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t6, $at, lbl_80911EF4      
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x0050(s0)            # 00000050
    lwc1    $f8, 0x00E4(s0)            # 000000E4
    lwc1    $f16, 0x00E8(s0)           # 000000E8
    mul.s   $f0, $f4, $f6              
    lwc1    $f4, 0x00EC(s0)            # 000000EC
    lh      t7, 0x01B0(s0)             # 000001B0
    addiu   a0, s0, 0x0170             # a0 = 00000170
    andi    t8, t7, 0x0007             # t8 = 00000000
    div.s   $f10, $f8, $f0             
    div.s   $f18, $f16, $f0            
    swc1    $f10, 0x0170(s0)           # 00000170
    div.s   $f6, $f4, $f0              
    swc1    $f18, 0x0174(s0)           # 00000174
    bne     t8, $zero, lbl_80911EF4    
    swc1    $f6, 0x0178(s0)            # 00000178
    jal     func_80064780              
    addiu   a1, $zero, 0x2804          # a1 = 00002804
lbl_80911EF4:
    addiu   a0, s0, 0x0240             # a0 = 00000240
    jal     func_8008C9C0              
    sw      a0, 0x0044($sp)            
    lui     a1, 0x3C3C                 # a1 = 3C3C0000
    ori     a1, a1, 0x6A7E             # a1 = 3C3C6A7E
    addiu   a0, s0, 0x0050             # a0 = 00000050
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lw      a3, 0x0194(s0)             # 00000194
    lui     a1, 0x3951                 # a1 = 39510000
    lui     a3, 0x35C9                 # a3 = 35C90000
    ori     a3, a3, 0x539C             # a3 = 35C9539C
    ori     a1, a1, 0xB717             # a1 = 3951B717
    addiu   a0, s0, 0x0194             # a0 = 00000194
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a1, 0x4270                 # a1 = 42700000
    jal     func_80064280              
    lui     a3, 0x3F80                 # a3 = 3F800000
    lh      t9, 0x01C4(s0)             # 000001C4
    lwc1    $f8, 0x0050(s0)            # 00000050
    bne     t9, $zero, lbl_80912018    
    swc1    $f8, 0x0054(s0)            # 00000054
    lh      t0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t4, %hi(func_8091202C)     # t4 = 80910000
    beq     t0, $at, lbl_80911FA4      
    addiu   t4, t4, %lo(func_8091202C) # t4 = 8091202C
    lui     t2, %hi(func_809127E0)     # t2 = 80910000
    addiu   t1, $zero, 0x008C          # t1 = 0000008C
    addiu   t2, t2, %lo(func_809127E0) # t2 = 809127E0
    sh      t1, 0x01C4(s0)             # 000001C4
    sw      t2, 0x01EC(s0)             # 000001EC
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xA0C8             # a1 = 0600A0C8
    lw      a0, 0x0044($sp)            
    jal     func_8008D328              
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    addiu   t3, $zero, 0x8000          # t3 = FFFF8000
    beq     $zero, $zero, lbl_80912018 
    sh      t3, 0x01B6(s0)             # 000001B6
lbl_80911FA4:
    sw      t4, 0x01EC(s0)             # 000001EC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x283D          # a1 = 0000283D
    lwc1    $f10, 0x0024(s0)           # 00000024
    addiu   t5, $zero, 0x0028          # t5 = 00000028
    sh      t5, 0x01C4(s0)             # 000001C4
    lui     $at, 0x4248                # $at = 42480000
    swc1    $f10, 0x0010($sp)          
    lwc1    $f16, 0x0028(s0)           # 00000028
    mtc1    $at, $f18                  # $f18 = 50.00
    lw      a2, 0x004C($sp)            
    ori     $at, $zero, 0x8000         # $at = 00008000
    add.s   $f4, $f16, $f18            
    addiu   t9, $zero, 0x0027          # t9 = 00000027
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x006D          # a3 = 0000006D
    swc1    $f4, 0x0014($sp)           
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      $zero, 0x001C($sp)         
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    swc1    $f6, 0x0018($sp)           
    lh      t7, 0x00B6(s0)             # 000000B6
    sw      t9, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    addu    t8, t7, $at                
    jal     func_800253F0              
    sw      t8, 0x0020($sp)            
    sb      $zero, 0x013F(s0)          # 0000013F
lbl_80912018:
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_8091202C:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      a1, 0x005C($sp)            
    sb      $zero, 0x013D(s0)          # 0000013D
    addiu   a0, s0, 0x0240             # a0 = 00000240
    jal     func_8008C9C0              
    sw      a0, 0x0044($sp)            
    lh      t6, 0x01C4(s0)             # 000001C4
    lw      t0, 0x005C($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    beq     t6, $zero, lbl_80912104    
    lui     a1, 0x3C3C                 # a1 = 3C3C0000
    lui     a3, 0x3951                 # a3 = 39510000
    ori     a3, a3, 0xB717             # a3 = 3951B717
    ori     a1, a1, 0x6A7E             # a1 = 3C3C6A7E
    addiu   a0, s0, 0x0058             # a0 = 00000058
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      t7, 0x01C4(s0)             # 000001C4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    bne     t7, $at, lbl_809120AC      
    addiu   t9, $zero, 0x0032          # t9 = 00000032
    sb      t8, 0x013C(s0)             # 0000013C
    sh      t9, 0x01C6(s0)             # 000001C6
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xB25C             # a1 = 0600B25C
    lw      a0, 0x0044($sp)            
    jal     func_8008D21C              
    addiu   a2, $zero, 0x0000          # a2 = 00000000
lbl_809120AC:
    addiu   a0, s0, 0x01D8             # a0 = 000001D8
    lui     a1, 0x437F                 # a1 = 437F0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x4120                 # a3 = 41200000
    addiu   a0, s0, 0x01DC             # a0 = 000001DC
    lui     a1, 0x437F                 # a1 = 437F0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x4120                 # a3 = 41200000
    addiu   a0, s0, 0x01E0             # a0 = 000001E0
    lui     a1, 0x437F                 # a1 = 437F0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x4120                 # a3 = 41200000
    addiu   a0, s0, 0x01E4             # a0 = 000001E4
    lui     a1, 0xC270                 # a1 = C2700000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x40A0                 # a3 = 40A00000
    beq     $zero, $zero, lbl_80912310 
    lh      t2, 0x01CE(s0)             # 000001CE
lbl_80912104:
    lbu     t1, 0x07AF(t0)             # 000007AF
    addiu   a0, s0, 0x01D8             # a0 = 000001D8
    mtc1    t1, $f4                    # $f4 = 0.00
    bgez    t1, lbl_80912128           
    cvt.s.w $f4, $f4                   
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f4, $f4, $f6              
lbl_80912128:
    mfc1    a1, $f4                    
    jal     func_80064280              
    lui     a3, 0x4120                 # a3 = 41200000
    lw      t2, 0x005C($sp)            
    addiu   a0, s0, 0x01DC             # a0 = 000001DC
    lui     a2, 0x3F80                 # a2 = 3F800000
    lbu     t3, 0x07AF(t2)             # 000007AF
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t3, $f8                    # $f8 = 0.00
    bgez    t3, lbl_80912160           
    cvt.s.w $f8, $f8                   
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10             
lbl_80912160:
    mfc1    a1, $f8                    
    jal     func_80064280              
    lui     a3, 0x4120                 # a3 = 41200000
    lw      t4, 0x005C($sp)            
    addiu   a0, s0, 0x01E0             # a0 = 000001E0
    lui     a2, 0x3F80                 # a2 = 3F800000
    lbu     t5, 0x07AF(t4)             # 000007AF
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t5, $f16                   # $f16 = 0.00
    bgez    t5, lbl_80912198           
    cvt.s.w $f16, $f16                 
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f16, $f16, $f18           
lbl_80912198:
    mfc1    a1, $f16                   
    jal     func_80064280              
    lui     a3, 0x4120                 # a3 = 41200000
    addiu   a0, s0, 0x01E4             # a0 = 000001E4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x40A0                 # a3 = 40A00000
    lh      t6, 0x01C6(s0)             # 000001C6
    addiu   $at, $zero, 0x001D         # $at = 0000001D
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t6, $at, lbl_809121E4      
    lh      t7, 0x01CE(s0)             # 000001CE
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38A6          # a1 = 000038A6
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38B2          # a1 = 000038B2
    lh      t7, 0x01CE(s0)             # 000001CE
lbl_809121E4:
    bnel    t7, $zero, lbl_809122B4    
    lui     a1, 0x3C3C                 # a1 = 3C3C0000
    lh      v1, 0x01C6(s0)             # 000001C6
    addiu   $at, $zero, 0x0018         # $at = 00000018
    bnel    v1, $at, lbl_8091225C      
    addiu   $at, $zero, 0x002D         # $at = 0000002D
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    swc1    $f4, 0x0010($sp)           
    lwc1    $f6, 0x0028(s0)            # 00000028
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f16                  # $f16 = 25.00
    add.s   $f10, $f6, $f8             
    lw      a2, 0x005C($sp)            
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    or      a1, s0, $zero              # a1 = 00000000
    add.s   $f18, $f10, $f16           
    addiu   a3, $zero, 0x006D          # a3 = 0000006D
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    swc1    $f18, 0x0014($sp)          
    lwc1    $f4, 0x002C(s0)            # 0000002C
    sw      t9, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    jal     func_800253F0              
    swc1    $f4, 0x0018($sp)           
    lh      v1, 0x01C6(s0)             # 000001C6
    addiu   $at, $zero, 0x002D         # $at = 0000002D
lbl_8091225C:
    bne     v1, $at, lbl_80912278      
    lw      a0, 0x0044($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xA5D0             # a1 = 0600A5D0
    jal     func_8008D328              
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lh      v1, 0x01C6(s0)             # 000001C6
lbl_80912278:
    addiu   $at, $zero, 0x0026         # $at = 00000026
    bne     v1, $at, lbl_8091228C      
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    sb      t0, 0x013C(s0)             # 0000013C
    lh      v1, 0x01C6(s0)             # 000001C6
lbl_8091228C:
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bne     v1, $at, lbl_809122B0      
    lw      a0, 0x0044($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xB71C             # a1 = 0600B71C
    jal     func_8008D21C              
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    sb      t1, 0x013C(s0)             # 0000013C
lbl_809122B0:
    lui     a1, 0x3C3C                 # a1 = 3C3C0000
lbl_809122B4:
    lui     a3, 0x3B03                 # a3 = 3B030000
    ori     a3, a3, 0x126F             # a3 = 3B03126F
    ori     a1, a1, 0x6A7E             # a1 = 3C3C6A7E
    addiu   a0, s0, 0x0058             # a0 = 00000058
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lw      a1, 0x017C(s0)             # 0000017C
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lw      a3, 0x0188(s0)             # 00000188
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a1, 0x4270                 # a1 = 42700000
    jal     func_80064280              
    lui     a3, 0x3F80                 # a3 = 3F800000
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lw      a1, 0x0184(s0)             # 00000184
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lw      a3, 0x018C(s0)             # 0000018C
    lh      t2, 0x01CE(s0)             # 000001CE
lbl_80912310:
    addiu   $at, $zero, 0x0014         # $at = 00000014
    lui     t3, %hi(func_809124B0)     # t3 = 80910000
    bne     t2, $at, lbl_8091238C      
    addiu   t3, t3, %lo(func_809124B0) # t3 = 809124B0
    lui     a0, 0x0601                 # a0 = 06010000
    sw      t3, 0x01EC(s0)             # 000001EC
    sh      $zero, 0x01B8(s0)          # 000001B8
    jal     func_8008A194              
    addiu   a0, a0, 0xB71C             # a0 = 0600B71C
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f10                  # $f10 = -5.00
    cvt.s.w $f8, $f6                   
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    sw      t4, 0x0014($sp)            
    addiu   a1, a1, 0xB71C             # a1 = 0600B71C
    lw      a0, 0x0044($sp)            
    swc1    $f8, 0x0010($sp)           
    lui     a2, 0xBF80                 # a2 = BF800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f10, 0x0018($sp)          
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    addiu   t5, $zero, 0x000A          # t5 = 0000000A
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sh      t5, 0x01C4(s0)             # 000001C4
    sb      t6, 0x013C(s0)             # 0000013C
    beq     $zero, $zero, lbl_8091249C 
    swc1    $f16, 0x0190(s0)           # 00000190
lbl_8091238C:
    lwc1    $f18, 0x0024(s0)           # 00000024
    lwc1    $f4, 0x017C(s0)            # 0000017C
    lwc1    $f6, 0x002C(s0)            # 0000002C
    lwc1    $f8, 0x0184(s0)            # 00000184
    sub.s   $f2, $f18, $f4             
    lui     $at, 0x43AF                # $at = 43AF0000
    mtc1    $at, $f18                  # $f18 = 350.00
    sub.s   $f12, $f6, $f8             
    mul.s   $f10, $f2, $f2             
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f4                   # $f4 = 300.00
    mul.s   $f16, $f12, $f12           
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    add.s   $f0, $f10, $f16            
    sqrt.s  $f0, $f0                   
    c.lt.s  $f0, $f18                  
    mov.s   $f14, $f0                  
    bc1fl   lbl_809123E0               
    c.lt.s  $f0, $f4                   
    sb      t7, 0x013D(s0)             # 0000013D
    c.lt.s  $f0, $f4                   
lbl_809123E0:
    nop
    bc1fl   lbl_80912460               
    mtc1    $zero, $f0                 # $f0 = 0.00
    lh      t8, 0x01B8(s0)             # 000001B8
    lw      a2, 0x005C($sp)            
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    bne     t8, $zero, lbl_8091245C    
    lui     $at, 0x4248                # $at = 42480000
    lwc1    $f6, 0x017C(s0)            # 0000017C
    sh      t9, 0x01B8(s0)             # 000001B8
    mtc1    $at, $f10                  # $f10 = 50.00
    swc1    $f6, 0x0010($sp)           
    lwc1    $f8, 0x0028(s0)            # 00000028
    addiu   t1, $zero, 0x0028          # t1 = 00000028
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    add.s   $f16, $f8, $f10            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x006D          # a3 = 0000006D
    swc1    $f16, 0x0014($sp)          
    lwc1    $f18, 0x0184(s0)           # 00000184
    sw      $zero, 0x001C($sp)         
    swc1    $f18, 0x0018($sp)          
    lh      t0, 0x00B6(s0)             # 000000B6
    swc1    $f14, 0x004C($sp)          
    sw      t1, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    jal     func_800253F0              
    sw      t0, 0x0020($sp)            
    lwc1    $f14, 0x004C($sp)          
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sb      t2, 0x013F(s0)             # 0000013F
lbl_8091245C:
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80912460:
    lui     t4, %hi(func_809127E0)     # t4 = 80910000
    lui     a1, 0x0601                 # a1 = 06010000
    c.eq.s  $f14, $f0                  
    addiu   t3, $zero, 0x008C          # t3 = 0000008C
    addiu   t4, t4, %lo(func_809127E0) # t4 = 809127E0
    addiu   a1, a1, 0xA0C8             # a1 = 0600A0C8
    bc1fl   lbl_809124A0               
    lw      $ra, 0x003C($sp)           
    sh      t3, 0x01C4(s0)             # 000001C4
    sw      t4, 0x01EC(s0)             # 000001EC
    mfc1    a2, $f0                    
    jal     func_8008D328              
    lw      a0, 0x0044($sp)            
    addiu   t5, $zero, 0x0005          # t5 = 00000005
    sb      t5, 0x013C(s0)             # 0000013C
lbl_8091249C:
    lw      $ra, 0x003C($sp)           
lbl_809124A0:
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra                        
    nop


func_809124B0:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s0, 0x0040($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0044($sp)           
    sdc1    $f20, 0x0038($sp)          
    sw      a1, 0x0064($sp)            
    addiu   a0, s0, 0x0240             # a0 = 00000240
    jal     func_8008C9C0              
    sw      a0, 0x004C($sp)            
    lw      t6, 0x0064($sp)            
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    lbu     t7, 0x07AF(t6)             # 000007AF
    addiu   a0, s0, 0x01D8             # a0 = 000001D8
    mfc1    a2, $f20                   
    mtc1    t7, $f4                    # $f4 = 0.00
    bgez    t7, lbl_80912508           
    cvt.s.w $f4, $f4                   
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f4, $f4, $f6              
lbl_80912508:
    mfc1    a1, $f4                    
    jal     func_80064280              
    lui     a3, 0x4120                 # a3 = 41200000
    lw      t8, 0x0064($sp)            
    mfc1    a2, $f20                   
    addiu   a0, s0, 0x01DC             # a0 = 000001DC
    lbu     t9, 0x07AF(t8)             # 000007AF
    mtc1    t9, $f8                    # $f8 = 0.00
    bgez    t9, lbl_80912540           
    cvt.s.w $f8, $f8                   
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10             
lbl_80912540:
    mfc1    a1, $f8                    
    jal     func_80064280              
    lui     a3, 0x4120                 # a3 = 41200000
    lw      t0, 0x0064($sp)            
    mfc1    a2, $f20                   
    addiu   a0, s0, 0x01E0             # a0 = 000001E0
    lbu     t1, 0x07AF(t0)             # 000007AF
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t1, $f18                   # $f18 = 0.00
    bgez    t1, lbl_80912578           
    cvt.s.w $f18, $f18                 
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f18, $f18, $f4            
lbl_80912578:
    mfc1    a1, $f18                   
    jal     func_80064280              
    lui     a3, 0x4120                 # a3 = 41200000
    mfc1    a2, $f20                   
    addiu   a0, s0, 0x01E4             # a0 = 000001E4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_80064280              
    lui     a3, 0x40A0                 # a3 = 40A00000
    lui     a1, 0x3C3C                 # a1 = 3C3C0000
    mfc1    a2, $f20                   
    lui     a3, 0x3B03                 # a3 = 3B030000
    ori     a3, a3, 0x126F             # a3 = 3B03126F
    ori     a1, a1, 0x6A7E             # a1 = 3C3C6A7E
    jal     func_80064280              
    addiu   a0, s0, 0x0058             # a0 = 00000058
    lh      t2, 0x01C4(s0)             # 000001C4
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    addiu   a0, s0, 0x0190             # a0 = 00000190
    beq     t2, $zero, lbl_80912648    
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    mfc1    a1, $f20                   
    addiu   a0, s0, 0x0190             # a0 = 00000190
    jal     func_800642F0              
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    lh      t3, 0x01C4(s0)             # 000001C4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t3, $at, lbl_8091265C      
    lwc1    $f4, 0x0190(s0)            # 00000190
    lh      t4, 0x01B2(s0)             # 000001B2
    lui     $at, %hi(var_80912FB4)     # $at = 80910000
    lwc1    $f0, %lo(var_80912FB4)($at) 
    sh      t4, 0x01B4(s0)             # 000001B4
    lh      t5, 0x01B4(s0)             # 000001B4
    lui     t7, %hi(var_80912E90)      # t7 = 80910000
    addiu   t7, t7, %lo(var_80912E90)  # t7 = 80912E90
    sll     t6, t5,  4                 
    addu    v0, t6, t7                 
    lwc1    $f6, 0x0000(v0)            # 00000000
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    mul.s   $f8, $f6, $f0              
    lui     $at, %hi(var_80912FB8)     # $at = 80910000
    add.s   $f18, $f8, $f10            
    swc1    $f18, 0x017C(s0)           # 0000017C
    lwc1    $f4, 0x0004(v0)            # 00000004
    swc1    $f4, 0x0180(s0)            # 00000180
    lwc1    $f6, 0x0008(v0)            # 00000008
    lwc1    $f10, %lo(var_80912FB8)($at) 
    mul.s   $f8, $f6, $f0              
    sub.s   $f18, $f8, $f10            
    beq     $zero, $zero, lbl_80912658 
    swc1    $f18, 0x0184(s0)           # 00000184
lbl_80912648:
    mfc1    a1, $f20                   
    mfc1    a2, $f20                   
    jal     func_80064280              
    ori     a3, a3, 0xCCCD             # a3 = 0000CCCD
lbl_80912658:
    lwc1    $f4, 0x0190(s0)            # 00000190
lbl_8091265C:
    lwc1    $f6, 0x0188(s0)            # 00000188
    mfc1    a2, $f20                   
    addiu   a0, s0, 0x0024             # a0 = 00000024
    mul.s   $f8, $f4, $f6              
    lw      a1, 0x017C(s0)             # 0000017C
    mfc1    a3, $f8                    
    jal     func_80064280              
    nop
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mfc1    a3, $f20                   
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0028             # a0 = 00000028
    jal     func_80064280              
    lui     a1, 0x4270                 # a1 = 42700000
    lwc1    $f10, 0x0190(s0)           # 00000190
    lwc1    $f18, 0x018C(s0)           # 0000018C
    mfc1    a2, $f20                   
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    mul.s   $f4, $f10, $f18            
    lw      a1, 0x0184(s0)             # 00000184
    mfc1    a3, $f4                    
    jal     func_80064280              
    nop
    lwc1    $f14, 0x017C(s0)           # 0000017C
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f16, 0x0184(s0)           # 00000184
    lwc1    $f8, 0x002C(s0)            # 0000002C
    sub.s   $f2, $f6, $f14             
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f4                   # $f4 = 300.00
    sub.s   $f12, $f8, $f16            
    mul.s   $f10, $f2, $f2             
    nop
    mul.s   $f18, $f12, $f12           
    add.s   $f0, $f10, $f18            
    sqrt.s  $f20, $f0                  
    c.lt.s  $f20, $f4                  
    nop
    bc1f    lbl_8091275C               
    nop
    lh      t8, 0x01B8(s0)             # 000001B8
    lw      a2, 0x0064($sp)            
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    bne     t8, $zero, lbl_8091275C    
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    sh      t9, 0x01B8(s0)             # 000001B8
    swc1    $f14, 0x0010($sp)          
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    lwc1    $f6, 0x0028(s0)            # 00000028
    sw      $zero, 0x001C($sp)         
    swc1    $f16, 0x0018($sp)          
    add.s   $f10, $f6, $f8             
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   t2, $zero, 0x0028          # t2 = 00000028
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f10, 0x0014($sp)          
    lh      t0, 0x00B6(s0)             # 000000B6
    sw      t2, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    addu    t1, t0, $at                
    sw      t1, 0x0020($sp)            
    jal     func_800253F0              
    addiu   a3, $zero, 0x006D          # a3 = 0000006D
lbl_8091275C:
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     t4, %hi(func_809127E0)     # t4 = 80910000
    lui     a1, 0x0601                 # a1 = 06010000
    c.eq.s  $f20, $f0                  
    addiu   t3, $zero, 0x008C          # t3 = 0000008C
    addiu   t4, t4, %lo(func_809127E0) # t4 = 809127E0
    addiu   a1, a1, 0xA0C8             # a1 = 0600A0C8
    bc1fl   lbl_809127D0               
    lw      $ra, 0x0044($sp)           
    lw      v0, 0x0118(s0)             # 00000118
    sh      t3, 0x01C4(s0)             # 000001C4
    sw      t4, 0x01EC(s0)             # 000001EC
    mfc1    a2, $f0                    
    lw      a0, 0x004C($sp)            
    jal     func_8008D328              
    sw      v0, 0x0050($sp)            
    lw      v0, 0x0050($sp)            
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lbu     t5, 0x00AF(v0)             # 000000AF
    addiu   t8, $zero, 0x8000          # t8 = FFFF8000
    slti    $at, t5, 0x0019            
    bnel    $at, $zero, lbl_809127C8   
    sb      t7, 0x01B9(v0)             # 000001B9
    beq     $zero, $zero, lbl_809127C8 
    sb      t6, 0x013C(s0)             # 0000013C
    sb      t7, 0x01B9(v0)             # 000001B9
lbl_809127C8:
    sh      t8, 0x01B6(s0)             # 000001B6
    lw      $ra, 0x0044($sp)           
lbl_809127D0:
    ldc1    $f20, 0x0038($sp)          
    lw      s0, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_809127E0:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s1, 0x0040($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s0, 0x003C($sp)            
    sdc1    $f20, 0x0030($sp)          
    sw      a1, 0x004C($sp)            
    lh      s0, 0x01B6(s1)             # 000001B6
    addiu   a0, s1, 0x01D0             # a0 = 000001D0
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    beq     s0, $zero, lbl_8091281C    
    sll     a1, s0, 16                 
    sra     a1, a1, 16                 
    jal     func_80064624              
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
lbl_8091281C:
    lh      t6, 0x001C(s1)             # 0000001C
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    lui     $at, 0x42C8                # $at = 42C80000
    bne     s0, t6, lbl_80912878       
    nop
    lwc1    $f4, 0x0050(s1)            # 00000050
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f8, 0x00E4(s1)            # 000000E4
    lwc1    $f16, 0x00E8(s1)           # 000000E8
    mul.s   $f0, $f4, $f6              
    lwc1    $f4, 0x00EC(s1)            # 000000EC
    lh      t7, 0x01B0(s1)             # 000001B0
    addiu   a0, s1, 0x0170             # a0 = 00000170
    andi    t8, t7, 0x0007             # t8 = 00000000
    div.s   $f10, $f8, $f0             
    div.s   $f18, $f16, $f0            
    swc1    $f10, 0x0170(s1)           # 00000170
    div.s   $f6, $f4, $f0              
    swc1    $f18, 0x0174(s1)           # 00000174
    bne     t8, $zero, lbl_80912878    
    swc1    $f6, 0x0178(s1)            # 00000178
    jal     func_80064780              
    addiu   a1, $zero, 0x2804          # a1 = 00002804
lbl_80912878:
    jal     func_8008C9C0              
    addiu   a0, s1, 0x0240             # a0 = 00000240
    lui     $at, %hi(var_80912FBC)     # $at = 80910000
    lwc1    $f0, %lo(var_80912FBC)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    mfc1    a1, $f0                    
    mfc1    a3, $f0                    
    mfc1    a2, $f20                   
    jal     func_80064280              
    addiu   a0, s1, 0x0058             # a0 = 00000058
    lui     a1, 0x3B03                 # a1 = 3B030000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    lui     a3, 0x38D1                 # a3 = 38D10000
    ori     a3, a3, 0xB717             # a3 = 38D1B717
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    ori     a1, a1, 0x126F             # a1 = 3B03126F
    jal     func_80064280              
    addiu   a0, s1, 0x0050             # a0 = 00000050
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    mfc1    a3, $f20                   
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s1, 0x0028             # a0 = 00000028
    jal     func_80064280              
    lui     a1, 0x4348                 # a1 = 43480000
    lh      v0, 0x01C4(s1)             # 000001C4
    lwc1    $f8, 0x0050(s1)            # 00000050
    addiu   $at, $zero, 0x0050         # $at = 00000050
    bne     v0, $at, lbl_8091290C      
    swc1    $f8, 0x0054(s1)            # 00000054
    lh      t9, 0x001C(s1)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    bne     s0, t9, lbl_8091290C       
    nop
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38B0          # a1 = 000038B0
    lh      v0, 0x01C4(s1)             # 000001C4
lbl_8091290C:
    bnel    v0, $zero, lbl_80912A00    
    lw      $ra, 0x0044($sp)           
    lh      t0, 0x001C(s1)             # 0000001C
    lw      v0, 0x0118(s1)             # 00000118
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    beql    s0, t0, lbl_80912938       
    lbu     t1, 0x01B9(v0)             # 000001B9
    sb      v1, 0x013E(s1)             # 0000013E
    beq     $zero, $zero, lbl_809129FC 
    sb      v1, 0x01B6(v0)             # 000001B6
    lbu     t1, 0x01B9(v0)             # 000001B9
lbl_80912938:
    lui     t2, %hi(func_80912A14)     # t2 = 80910000
    addiu   t2, t2, %lo(func_80912A14) # t2 = 80912A14
    beq     t1, $zero, lbl_80912954    
    nop
    sw      t2, 0x01EC(s1)             # 000001EC
    beq     $zero, $zero, lbl_809129FC 
    sw      $zero, 0x0134(s1)          # 00000134
lbl_80912954:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80912FC0)     # $at = 80910000
    lwc1    $f20, %lo(var_80912FC0)($at) 
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x004C($sp)            
    mul.s   $f10, $f0, $f20            
    trunc.w.s $f16, $f10                 
    mfc1    v0, $f16                   
    nop
    sll     s0, v0, 16                 
    sll     a2, v0, 16                 
    sra     s0, s0, 16                 
    jal     func_80911C3C              
    sra     a2, a2, 16                 
lbl_80912990:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f18, $f0, $f20            
    trunc.w.s $f4, $f18                  
    mfc1    v0, $f4                    
    nop
    sll     t5, v0, 16                 
    sra     t6, t5, 16                 
    sll     v1, v0, 16                 
    beq     s0, t6, lbl_80912990       
    sra     v1, v1, 16                 
    lwc1    $f6, 0x0024(s1)            # 00000024
    lw      a2, 0x004C($sp)            
    addiu   t8, v1, 0x000A             # t8 = 0000000A
    swc1    $f6, 0x0010($sp)           
    lwc1    $f8, 0x0028(s1)            # 00000028
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x0052          # a3 = 00000052
    swc1    $f8, 0x0014($sp)           
    lwc1    $f10, 0x002C(s1)           # 0000002C
    sw      t8, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    jal     func_800253F0              
    swc1    $f10, 0x0018($sp)          
lbl_809129FC:
    lw      $ra, 0x0044($sp)           
lbl_80912A00:
    ldc1    $f20, 0x0030($sp)          
    lw      s0, 0x003C($sp)            
    lw      s1, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80912A14:
    sw      a1, 0x0004($sp)            
    sb      $zero, 0x013D(a0)          # 0000013D
    jr      $ra                        
    nop


func_80912A24:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lbu     t6, 0x013E(s0)             # 0000013E
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    beql    t6, $zero, lbl_80912A58    
    lh      t7, 0x01B0(s0)             # 000001B0
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80912BA8 
    lw      $ra, 0x001C($sp)           
    lh      t7, 0x01B0(s0)             # 000001B0
lbl_80912A58:
    sb      t9, 0x013D(s0)             # 0000013D
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x01B0(s0)             # 000001B0
    sll     t0, v0,  1                 
lbl_80912A6C:
    addu    v1, s0, t0                 
    lh      a0, 0x01C4(v1)             # 000001C4
    addiu   v0, v0, 0x0001             # v0 = 00000001
    andi    v0, v0, 0x00FF             # v0 = 00000001
    beq     a0, $zero, lbl_80912A8C    
    slti    $at, v0, 0x0005            
    addiu   t1, a0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x01C4(v1)             # 000001C4
lbl_80912A8C:
    bnel    $at, $zero, lbl_80912A6C   
    sll     t0, v0,  1                 
    lw      t9, 0x01EC(s0)             # 000001EC
    or      a0, s0, $zero              # a0 = 00000000
    jalr    $ra, t9                    
    nop
    lh      v0, 0x01CE(s0)             # 000001CE
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f6                   # $f6 = 70.00
    beq     v0, $zero, lbl_80912ABC    
    addiu   t2, v0, 0xFFFF             # t2 = FFFFFFFF
    sh      t2, 0x01CE(s0)             # 000001CE
lbl_80912ABC:
    lw      t3, 0x0028(s0)             # 00000028
    lh      a0, 0x01CE(s0)             # 000001CE
    lw      t4, 0x0024(s0)             # 00000024
    sw      t3, 0x003C(s0)             # 0000003C
    lwc1    $f4, 0x003C(s0)            # 0000003C
    addu    $at, a0, $zero             
    sll     a0, a0,  3                 
    add.s   $f8, $f4, $f6              
    addu    a0, a0, $at                
    sw      t4, 0x0038(s0)             # 00000038
    lw      t4, 0x002C(s0)             # 0000002C
    lh      t5, 0x0032(s0)             # 00000032
    sll     a0, a0, 12                 
    sll     a0, a0, 16                 
    swc1    $f8, 0x003C(s0)            # 0000003C
    sra     a0, a0, 16                 
    sw      t4, 0x0040(s0)             # 00000040
    jal     func_800636C4              # sins?
    sh      t5, 0x00B6(s0)             # 000000B6
    lh      v0, 0x01CE(s0)             # 000001CE
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     $at, 0x442F                # $at = 442F0000
    mtc1    $at, $f6                   # $f6 = 700.00
    cvt.s.w $f16, $f10                 
    sll     a0, v0,  3                 
    mul.s   $f8, $f0, $f6              
    subu    a0, a0, v0                 
    sll     a0, a0, 12                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    div.s   $f4, $f16, $f18            
    mul.s   $f10, $f8, $f4             
    jal     func_800636C4              # sins?
    swc1    $f10, 0x00BC(s0)           # 000000BC
    lh      t6, 0x01CE(s0)             # 000001CE
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    mtc1    t6, $f16                   # $f16 = 0.00
    lui     $at, %hi(var_80912FC4)     # $at = 80910000
    lwc1    $f4, %lo(var_80912FC4)($at) 
    cvt.s.w $f18, $f16                 
    mul.s   $f10, $f0, $f4             
    div.s   $f8, $f18, $f6             
    trunc.w.s $f16, $f10                 
    mfc1    t8, $f16                   
    nop
    sll     t0, t8, 16                 
    sra     t1, t0, 16                 
    mtc1    t1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f6, $f18                  
    mul.s   $f4, $f6, $f8              
    trunc.w.s $f10, $f4                  
    mfc1    t2, $f10                   
    nop
    sh      t2, 0x00B8(s0)             # 000000B8
    lw      $ra, 0x001C($sp)           
lbl_80912BA8:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80912BB8:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    sw      a2, 0x0008($sp)            
    jr      $ra                        
    nop


func_80912BCC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s1, 0x0028($sp)            
    sw      a1, 0x003C($sp)            
    lw      v0, 0x0118(s0)             # 00000118
    lw      t6, 0x003C($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    sw      v0, 0x0030($sp)            
    jal     func_8007E298              
    or      s1, a0, $zero              # s1 = 00000000
    lw      v0, 0x0030($sp)            
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lh      t7, 0x0190(v0)             # 00000190
    andi    t8, t7, 0x0004             # t8 = 00000000
    beql    t8, $zero, lbl_80912C50    
    cfc1    t2, $f31                   
    lbu     t9, 0x01B9(v0)             # 000001B9
    addiu   a2, $zero, 0x0032          # a2 = 00000032
    or      a3, $zero, $zero           # a3 = 00000000
    bne     t9, $zero, lbl_80912C4C    
    addiu   t0, $zero, 0x0384          # t0 = 00000384
    lw      a0, 0x02C0(s1)             # 000002C0
    addiu   t1, $zero, 0x044B          # t1 = 0000044B
    sw      t1, 0x0018($sp)            
    sw      t0, 0x0014($sp)            
    sw      $zero, 0x0010($sp)         
    jal     func_8007DC40              
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    beq     $zero, $zero, lbl_80912E20 
    sw      v0, 0x02C0(s1)             # 000002C0
lbl_80912C4C:
    cfc1    t2, $f31                   
lbl_80912C50:
    ctc1    a1, $f31                   
    lwc1    $f4, 0x01D8(s0)            # 000001D8
    lw      a0, 0x02C0(s1)             # 000002C0
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f6, $f4                   
    cfc1    a1, $f31                   
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    beql    a1, $zero, lbl_80912CC0    
    mfc1    a1, $f6                    
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sub.s   $f6, $f4, $f6              
    ctc1    a1, $f31                   
    nop
    cvt.w.s $f6, $f6                   
    cfc1    a1, $f31                   
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    bne     a1, $zero, lbl_80912CB4    
    nop
    mfc1    a1, $f6                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80912CCC 
    or      a1, a1, $at                # a1 = 80000000
lbl_80912CB4:
    beq     $zero, $zero, lbl_80912CCC 
    addiu   a1, $zero, 0xFFFF          # a1 = FFFFFFFF
    mfc1    a1, $f6                    
lbl_80912CC0:
    nop
    bltz    a1, lbl_80912CB4           
    nop
lbl_80912CCC:
    ctc1    t2, $f31                   
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lwc1    $f8, 0x01DC(s0)            # 000001DC
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t3, $f31                   
    ctc1    a2, $f31                   
    nop
    cvt.w.s $f10, $f8                  
    cfc1    a2, $f31                   
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    beql    a2, $zero, lbl_80912D48    
    mfc1    a2, $f10                   
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sub.s   $f10, $f8, $f10            
    ctc1    a2, $f31                   
    nop
    cvt.w.s $f10, $f10                 
    cfc1    a2, $f31                   
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    bne     a2, $zero, lbl_80912D3C    
    nop
    mfc1    a2, $f10                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80912D54 
    or      a2, a2, $at                # a2 = 80000000
lbl_80912D3C:
    beq     $zero, $zero, lbl_80912D54 
    addiu   a2, $zero, 0xFFFF          # a2 = FFFFFFFF
    mfc1    a2, $f10                   
lbl_80912D48:
    nop
    bltz    a2, lbl_80912D3C           
    nop
lbl_80912D54:
    ctc1    t3, $f31                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f16, 0x01E0(s0)           # 000001E0
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t4, $f31                   
    ctc1    a3, $f31                   
    nop
    cvt.w.s $f18, $f16                 
    cfc1    a3, $f31                   
    nop
    andi    a3, a3, 0x0078             # a3 = 00000000
    beql    a3, $zero, lbl_80912DD0    
    mfc1    a3, $f18                   
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sub.s   $f18, $f16, $f18           
    ctc1    a3, $f31                   
    nop
    cvt.w.s $f18, $f18                 
    cfc1    a3, $f31                   
    nop
    andi    a3, a3, 0x0078             # a3 = 00000000
    bne     a3, $zero, lbl_80912DC4    
    nop
    mfc1    a3, $f18                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80912DDC 
    or      a3, a3, $at                # a3 = 80000000
lbl_80912DC4:
    beq     $zero, $zero, lbl_80912DDC 
    addiu   a3, $zero, 0xFFFF          # a3 = FFFFFFFF
    mfc1    a3, $f18                   
lbl_80912DD0:
    nop
    bltz    a3, lbl_80912DC4           
    nop
lbl_80912DDC:
    sw      $zero, 0x0010($sp)         
    lwc1    $f4, 0x01E4(s0)            # 000001E4
    ctc1    t4, $f31                   
    nop
    trunc.w.s $f6, $f4                   
    mfc1    t6, $f6                    
    nop
    addiu   t7, t6, 0x03E3             # t7 = 000003E3
    sw      t7, 0x0014($sp)            
    lwc1    $f8, 0x01E8(s0)            # 000001E8
    trunc.w.s $f10, $f8                  
    mfc1    t9, $f10                   
    nop
    addiu   t0, t9, 0x03E8             # t0 = 000003E8
    jal     func_8007DC40              
    sw      t0, 0x0018($sp)            
    sw      v0, 0x02C0(s1)             # 000002C0
lbl_80912E20:
    lui     a3, %hi(func_80912BB8)     # a3 = 80910000
    addiu   t1, $zero, 0x0023          # t1 = 00000023
    sw      t1, 0x0010($sp)            
    addiu   a3, a3, %lo(func_80912BB8) # a3 = 80912BB8
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)            
    jal     func_8008E1D4              
    addiu   a2, s0, 0x01F4             # a2 = 000001F4
    lw      a0, 0x003C($sp)            
    jal     func_8009A574              
    lw      a1, 0x02C0(s1)             # 000002C0
    sw      v0, 0x02C0(s1)             # 000002C0
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    nop
    nop
    nop

.section .data

var_80912E70: .word 0x00670100, 0x00000010, 0x005A0000, 0x00000284
.word func_809108A0
.word func_809109A0
.word func_80912A24
.word func_80912BCC
var_80912E90: .word \
0x00000000, 0x42700000, 0xC39D8000, 0x00000000, \
0xC3820000, 0x42700000, 0xC3110000, 0x2AAA0000, \
0xC3820000, 0x42700000, 0x43250000, 0x55540000, \
0x00000000, 0x42700000, 0x439D8000, 0x7FFE0000, \
0x43820000, 0x42700000, 0x431B0000, 0xAAA80000, \
0x43820000, 0x42700000, 0xC31B0000, 0xD5520000
var_80912EF0: .word 0x8917001A, 0x30F804B0
var_80912EF8: .word 0x00000000, 0x00000000, 0x42480000
var_80912F04: .word 0x00030004, 0x00050000, 0x00010002

.section .rodata

var_80912F10: .word 0xC54F3000
var_80912F14: .word var_80910A98
.word var_80910B6C
.word var_80910CD8
.word var_80910DC4
.word var_80910F6C
.word var_809110D4
.word var_809111A4
.word var_80911538
.word var_80911850
.word var_80911AC4
.word lbl_80911C0C
.word lbl_80911C0C
.word lbl_80911C0C
.word lbl_80911C0C
.word lbl_80911C0C
.word var_80910AF4
var_80912F54: .word 0xC54F3000
var_80912F58: .word 0xC53B8000
var_80912F5C: .word 0xC53BF000
var_80912F60: .word 0x40BFAE14
var_80912F64: .word 0xC5458000
var_80912F68: .word 0xC5449000
var_80912F6C: .word 0xC53B8000
var_80912F70: .word 0xC53BF000
var_80912F74: .word 0xC5485000
var_80912F78: .word 0xC558E000
var_80912F7C: .word 0xC54DA000
var_80912F80: .word 0xC5534000
var_80912F84: .word 0xC5467000
var_80912F88: .word 0xC5467000
var_80912F8C: .word 0xC548F000
var_80912F90: .word 0xC5363800
var_80912F94: .word 0xC5363800
var_80912F98: .word 0xC5363800
var_80912F9C: .word 0xC548F000
var_80912FA0: .word 0x3FA66666
var_80912FA4: .word 0x454FD000
var_80912FA8: .word 0x3C23D70A
var_80912FAC: .word 0x3B03126F
var_80912FB0: .word 0x3A83126F
var_80912FB4: .word 0x3FA66666
var_80912FB8: .word 0x454FD000
var_80912FBC: .word 0x3A83126F
var_80912FC0: .word 0x40BFAE14
var_80912FC4: .word 0x44BB8000, 0x00000000, 0x00000000

