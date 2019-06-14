#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B71920:
    sw      a1, 0x0004($sp)            
    lw      t7, 0x0024(a0)             # 00000024
    lw      t6, 0x0028(a0)             # 00000028
    lui     t8, %hi(func_80B71960)     # t8 = 80B70000
    sw      t7, 0x0154(a0)             # 00000154
    lw      t7, 0x002C(a0)             # 0000002C
    addiu   t8, t8, %lo(func_80B71960) # t8 = 80B71960
    sw      t8, 0x013C(a0)             # 0000013C
    sw      t6, 0x0158(a0)             # 00000158
    sw      t7, 0x015C(a0)             # 0000015C
    jr      $ra                        
    nop


func_80B71950:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80B71960:
    lw      v0, 0x1C54(a1)             # 00001C54
    lui     t7, %hi(func_80B719A4)     # t7 = 80B70000
    addiu   v1, $zero, 0x014B          # v1 = 0000014B
    beq     v0, $zero, lbl_80B71998    
    addiu   t7, t7, %lo(func_80B719A4) # t7 = 80B719A4
    lh      t6, 0x0000(v0)             # 00000000
lbl_80B71978:
    beq     v1, t6, lbl_80B71988       
    nop
    beq     $zero, $zero, lbl_80B71990 
    lw      v0, 0x0124(v0)             # 00000124
lbl_80B71988:
    beq     $zero, $zero, lbl_80B71998 
    sw      v0, 0x0150(a0)             # 00000150
lbl_80B71990:
    bnel    v0, $zero, lbl_80B71978    
    lh      t6, 0x0000(v0)             # 00000000
lbl_80B71998:
    sw      t7, 0x013C(a0)             # 0000013C
    jr      $ra                        
    nop


func_80B719A4:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lui     t7, %hi(var_80B71D80)      # t7 = 80B70000
    addiu   t7, t7, %lo(var_80B71D80)  # t7 = 80B71D80
    lw      t9, 0x0000(t7)             # 80B71D80
    addiu   t6, $sp, 0x004C            # t6 = FFFFFFEC
    lw      t8, 0x0004(t7)             # 80B71D84
    sw      t9, 0x0000(t6)             # FFFFFFEC
    lw      t9, 0x0008(t7)             # 80B71D88
    lui     t1, %hi(var_80B71D8C)      # t1 = 80B70000
    addiu   t1, t1, %lo(var_80B71D8C)  # t1 = 80B71D8C
    sw      t8, 0x0004(t6)             # FFFFFFF0
    sw      t9, 0x0008(t6)             # FFFFFFF4
    lw      t3, 0x0000(t1)             # 80B71D8C
    addiu   t0, $sp, 0x0040            # t0 = FFFFFFE0
    lw      t2, 0x0004(t1)             # 80B71D90
    sw      t3, 0x0000(t0)             # FFFFFFE0
    lw      t3, 0x0008(t1)             # 80B71D94
    sw      t2, 0x0004(t0)             # FFFFFFE4
    sw      t3, 0x0008(t0)             # FFFFFFE8
    lw      a2, 0x0150(s0)             # 00000150
    lbu     t4, 0x0248(a2)             # 00000248
    beql    t4, $zero, lbl_80B71BB0    
    lw      $ra, 0x0024($sp)           
    lw      t5, 0x0790(a1)             # 00000790
    addiu   $at, $zero, 0x0015         # $at = 00000015
    lh      t6, 0x0142(t5)             # 00000142
    bnel    t6, $at, lbl_80B71BB0      
    lw      $ra, 0x0024($sp)           
    lw      v0, 0x1C4C(a1)             # 00001C4C
    lui     $at, 0x4220                # $at = 42200000
    addiu   a0, $zero, 0x00DA          # a0 = 000000DA
    beq     v0, $zero, lbl_80B71BAC    
    lui     v1, 0x8012                 # v1 = 80120000
    mtc1    $at, $f16                  # $f16 = 40.00
    addiu   v1, v1, 0xBA00             # v1 = 8011BA00
lbl_80B71A3C:
    beq     v0, s0, lbl_80B71A50       
    nop
    lh      t7, 0x0000(v0)             # 00000000
    beql    a0, t7, lbl_80B71A5C       
    lwc1    $f4, 0x0024(v0)            # 00000024
lbl_80B71A50:
    beq     $zero, $zero, lbl_80B71BA4 
    lw      v0, 0x0124(v0)             # 00000124
    lwc1    $f4, 0x0024(v0)            # 00000024
lbl_80B71A5C:
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0028(v0)            # 00000028
    lwc1    $f10, 0x0028(s0)           # 00000028
    sub.s   $f2, $f4, $f6              
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lwc1    $f18, 0x002C(v0)           # 0000002C
    sub.s   $f12, $f8, $f10            
    abs.s   $f0, $f2                   
    sub.s   $f14, $f18, $f4            
    c.lt.s  $f0, $f16                  
    nop
    bc1tl   lbl_80B71AA4               
    abs.s   $f0, $f12                  
    lw      t8, 0x0000(v1)             # 8011BA00
    lh      t9, 0x12D8(t8)             # 000012D8
    beql    t9, $zero, lbl_80B71BA4    
    lw      v0, 0x0124(v0)             # 00000124
    abs.s   $f0, $f12                  
lbl_80B71AA4:
    c.lt.s  $f0, $f16                  
    nop
    bc1tl   lbl_80B71AC8               
    abs.s   $f0, $f14                  
    lw      t0, 0x0000(v1)             # 8011BA00
    lh      t1, 0x12D8(t0)             # 000012B8
    beql    t1, $zero, lbl_80B71BA4    
    lw      v0, 0x0124(v0)             # 00000124
    abs.s   $f0, $f14                  
lbl_80B71AC8:
    c.lt.s  $f0, $f16                  
    nop
    bc1tl   lbl_80B71AEC               
    lh      t5, 0x001C(s0)             # 0000001C
    lw      t2, 0x0000(v1)             # 8011BA00
    lh      t3, 0x12D8(t2)             # 000012D8
    beql    t3, $zero, lbl_80B71BA4    
    lw      v0, 0x0124(v0)             # 00000124
    lh      t5, 0x001C(s0)             # 0000001C
lbl_80B71AEC:
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sll     t6, t5,  1                 
    addu    t7, a2, t6                 
    sh      t4, 0x022E(t7)             # 80B71FAE
    sh      t8, 0x0140(v0)             # 00000140
    sw      a1, 0x0064($sp)            
    jal     func_800646F0              
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    addiu   t9, $zero, 0x003C          # t9 = 0000003C
    sh      t9, 0x0140(s0)             # 00000140
    addiu   t0, $zero, 0x00C8          # t0 = 000000C8
    addiu   t1, $zero, 0x0028          # t1 = 00000028
    sw      t1, 0x0014($sp)            
    sw      t0, 0x0010($sp)            
    lw      a0, 0x0064($sp)            
    addiu   a1, s0, 0x0144             # a1 = 00000144
    addiu   a2, $sp, 0x0040            # a2 = FFFFFFE0
    jal     func_8001C97C              
    addiu   a3, $sp, 0x004C            # a3 = FFFFFFEC
    lw      v0, 0x0064($sp)            
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lh      t2, 0x07A0(v0)             # 000007A0
    sll     t3, t2,  2                 
    addu    t5, v0, t3                 
    jal     func_8007D85C              
    lw      a0, 0x0790(t5)             # 00000790
    sll     a0, v0, 16                 
    sh      v0, 0x0032($sp)            
    sra     a0, a0, 16                 
    jal     func_8007D668              
    addiu   a1, $zero, 0x7FFF          # a1 = 00007FFF
    lh      a0, 0x0032($sp)            
    addiu   a1, $zero, 0x0064          # a1 = 00000064
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007D738              
    sw      $zero, 0x0010($sp)         
    lh      a0, 0x0032($sp)            
    jal     func_8007D6B0              
    addiu   a1, $zero, 0x0064          # a1 = 00000064
    lui     t6, %hi(func_80B71BC0)     # t6 = 80B70000
    addiu   t6, t6, %lo(func_80B71BC0) # t6 = 80B71BC0
    beq     $zero, $zero, lbl_80B71BAC 
    sw      t6, 0x013C(s0)             # 0000013C
    lw      v0, 0x0124(v0)             # 00000124
lbl_80B71BA4:
    bne     v0, $zero, lbl_80B71A3C    
    nop
lbl_80B71BAC:
    lw      $ra, 0x0024($sp)           
lbl_80B71BB0:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra                        
    nop


func_80B71BC0:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x0064($sp)            
    lui     t7, %hi(var_80B71D98)      # t7 = 80B70000
    addiu   t7, t7, %lo(var_80B71D98)  # t7 = 80B71D98
    lw      t9, 0x0000(t7)             # 80B71D98
    addiu   t6, $sp, 0x0050            # t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             # 80B71D9C
    sw      t9, 0x0000(t6)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 80B71DA0
    lui     t1, %hi(var_80B71DA4)      # t1 = 80B70000
    addiu   t1, t1, %lo(var_80B71DA4)  # t1 = 80B71DA4
    sw      t8, 0x0004(t6)             # FFFFFFF4
    sw      t9, 0x0008(t6)             # FFFFFFF8
    lw      t3, 0x0000(t1)             # 80B71DA4
    addiu   t0, $sp, 0x0044            # t0 = FFFFFFE4
    lw      t2, 0x0004(t1)             # 80B71DA8
    sw      t3, 0x0000(t0)             # FFFFFFE4
    lw      t3, 0x0008(t1)             # 80B71DAC
    sw      t2, 0x0004(t0)             # FFFFFFE8
    lui     t5, 0x0001                 # t5 = 00010000
    sw      t3, 0x0008(t0)             # FFFFFFEC
    lw      t4, 0x0064($sp)            
    lui     $at, 0x4396                # $at = 43960000
    addu    t5, t5, t4                 
    lw      t5, 0x1DE4(t5)             # 00011DE4
    andi    t6, t5, 0x0001             # t6 = 00000000
    bnel    t6, $zero, lbl_80B71CE8    
    lh      t4, 0x0140(s0)             # 00000140
    mtc1    $at, $f12                  # $f12 = 300.00
    jal     func_80026D90              
    nop
    lwc1    $f4, 0x0144(s0)            # 00000144
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f12                  # $f12 = 300.00
    add.s   $f6, $f0, $f4              
    jal     func_80026D90              
    swc1    $f6, 0x0038($sp)           
    lwc1    $f8, 0x0148(s0)            # 00000148
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    add.s   $f10, $f0, $f8             
    lw      a0, 0x0064($sp)            
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFD8
    addiu   a2, $sp, 0x0044            # a2 = FFFFFFE4
    swc1    $f10, 0x003C($sp)          
    lwc1    $f16, 0x014C(s0)           # 0000014C
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    addiu   a3, $sp, 0x0050            # a3 = FFFFFFF0
    jal     func_8001C97C              
    swc1    $f16, 0x0040($sp)          
    addiu   t9, $zero, 0x0032          # t9 = 00000032
    addiu   t0, $zero, 0x000F          # t0 = 0000000F
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    sw      t3, 0x0020($sp)            
    sw      t2, 0x001C($sp)            
    sw      t1, 0x0018($sp)            
    sw      t0, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    lw      a0, 0x0064($sp)            
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFD8
    lui     a2, 0x4120                 # a2 = 41200000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8001D29C              
    sw      $zero, 0x0024($sp)         
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x180E          # a1 = 0000180E
    lh      t4, 0x0140(s0)             # 00000140
lbl_80B71CE8:
    bnel    t4, $zero, lbl_80B71D1C    
    lw      $ra, 0x0034($sp)           
    lw      v0, 0x0118(s0)             # 00000118
    beq     v0, $zero, lbl_80B71D10    
    nop
    lw      t5, 0x0130(v0)             # 00000130
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    beq     t5, $zero, lbl_80B71D10    
    nop
    sh      t6, 0x0170(v0)             # 00000170
lbl_80B71D10:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0034($sp)           
lbl_80B71D1C:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra                        
    nop


func_80B71D2C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      v0, 0x0140(a0)             # 00000140
    beq     v0, $zero, lbl_80B71D44    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0140(a0)             # 00000140
lbl_80B71D44:
    lw      t9, 0x013C(a0)             # 0000013C
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_80B71D60: .word 0x01BE0600, 0x00000010, 0x00010000, 0x00000160
.word func_80B71920
.word func_80B71950
.word func_80B71D2C
.word 0x00000000
var_80B71D80: .word 0x00000000, 0x3DCCCCCD, 0x00000000
var_80B71D8C: .word 0x00000000, 0x00000000, 0x00000000
var_80B71D98: .word 0x00000000, 0x3DCCCCCD, 0x00000000
var_80B71DA4: .word 0x00000000, 0x00000000, 0x00000000

.section .rodata


