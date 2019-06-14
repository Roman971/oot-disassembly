#include <mips.h>
.set noreorder
.set noat

.section .text
func_8099FD90:
    addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
    sw      s4, 0x0044($sp)            
    sw      s3, 0x0040($sp)            
    or      s3, a0, $zero              ## s3 = 00000000
    or      s4, a1, $zero              ## s4 = 00000000
    sw      $ra, 0x0054($sp)           
    sw      s7, 0x0050($sp)            
    sw      s6, 0x004C($sp)            
    sw      s5, 0x0048($sp)            
    sw      s2, 0x003C($sp)            
    sw      s1, 0x0038($sp)            
    sw      s0, 0x0034($sp)            
    lui     $at, 0x430C                ## $at = 430C0000
    mtc1    $at, $f4                   ## $f4 = 140.00
    lui     $at, 0x437F                ## $at = 437F0000
    mtc1    $at, $f8                   ## $f8 = 255.00
    mtc1    $zero, $f6                 ## $f6 = 0.00
    addiu   s7, s4, 0x1C24             ## s7 = 00001C24
    addiu   t6, $zero, 0xC000          ## t6 = FFFFC000
    sw      t6, 0x0020($sp)            
    or      a0, s7, $zero              ## a0 = 00001C24
    or      a1, s3, $zero              ## a1 = 00000000
    or      a2, s4, $zero              ## a2 = 00000000
    addiu   a3, $zero, 0x00C1          ## a3 = 000000C1
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0028($sp)         
    swc1    $f4, 0x0010($sp)           
    swc1    $f8, 0x0018($sp)           
    jal     func_800253F0              
    swc1    $f6, 0x0014($sp)           
    bne     v0, $zero, lbl_8099FE24    
    sw      v0, 0x01BC(s3)             ## 000001BC
    jal     func_80020EB4              
    or      a0, s3, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_8099FECC 
    lw      $ra, 0x0054($sp)           
lbl_8099FE24:
    lui     s0, %hi(var_809A0910)      ## s0 = 809A0000
    lui     s5, %hi(var_809A08FC)      ## s5 = 809A0000
    addiu   s5, s5, %lo(var_809A08FC)  ## s5 = 809A08FC
    addiu   s0, s0, %lo(var_809A0910)  ## s0 = 809A0910
    or      s1, $zero, $zero           ## s1 = 00000000
    or      s2, s3, $zero              ## s2 = 00000000
    addiu   s6, $zero, 0x000A          ## s6 = 0000000A
lbl_8099FE40:
    lwc1    $f10, 0x0000(s0)           ## 809A0910
    lwc1    $f16, 0x0004(s0)           ## 809A0914
    lwc1    $f18, 0x0008(s0)           ## 809A0918
    addiu   t7, $zero, 0x0004          ## t7 = 00000004
    sw      t7, 0x0028($sp)            
    or      a0, s7, $zero              ## a0 = 00001C24
    or      a1, s3, $zero              ## a1 = 00000000
    or      a2, s4, $zero              ## a2 = 00000000
    addiu   a3, $zero, 0x0131          ## a3 = 00000131
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0024($sp)         
    swc1    $f10, 0x0010($sp)          
    swc1    $f16, 0x0014($sp)          
    jal     func_800253F0              
    swc1    $f18, 0x0018($sp)          
    bne     v0, $zero, lbl_8099FE98    
    sw      v0, 0x018C(s2)             ## 0000018C
    jal     func_80020EB4              
    or      a0, s3, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_8099FECC 
    lw      $ra, 0x0054($sp)           
lbl_8099FE98:
    sll     t8, s1,  1                 
    addu    t9, s5, t8                 
    lh      t0, 0x0000(t9)             ## 00000000
    lw      t1, 0x018C(s2)             ## 0000018C
    addiu   s1, s1, 0x0001             ## s1 = 00000001
    addiu   s0, s0, 0x000C             ## s0 = 809A091C
    addiu   s2, s2, 0x0004             ## s2 = 00000004
    bne     s1, s6, lbl_8099FE40       
    sh      t0, 0x0140(t1)             ## 00000140
    lui     t2, %hi(func_8099FF04)     ## t2 = 809A0000
    addiu   t2, t2, %lo(func_8099FF04) ## t2 = 8099FF04
    sw      t2, 0x013C(s3)             ## 0000013C
    lw      $ra, 0x0054($sp)           
lbl_8099FECC:
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    lw      s2, 0x003C($sp)            
    lw      s3, 0x0040($sp)            
    lw      s4, 0x0044($sp)            
    lw      s5, 0x0048($sp)            
    lw      s6, 0x004C($sp)            
    lw      s7, 0x0050($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           ## $sp = 00000000


func_8099FEF4:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_8099FF04:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lh      t7, 0x0144(a3)             ## 00000144
    lw      t6, 0x001C($sp)            
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bne     t7, $at, lbl_809A0004      
    lw      v0, 0x1C44(t6)             ## 00001C44
    lui     $at, 0xC140                ## $at = C1400000
    mtc1    $at, $f4                   ## $f4 = -12.00
    lui     $at, 0x41A0                ## $at = 41A00000
    addiu   t8, $zero, 0x7F03          ## t8 = 00007F03
    sh      $zero, 0x00B8(v0)          ## 000000B8
    mtc1    $at, $f6                   ## $f6 = 20.00
    lh      v1, 0x00B8(v0)             ## 000000B8
    sh      t8, 0x00B6(v0)             ## 000000B6
    lh      a2, 0x00B6(v0)             ## 000000B6
    lui     $at, 0x4336                ## $at = 43360000
    mtc1    $at, $f8                   ## $f8 = 182.00
    swc1    $f4, 0x0024(v0)            ## 00000024
    swc1    $f6, 0x0028(v0)            ## 00000028
    sh      v1, 0x0034(v0)             ## 00000034
    sh      v1, 0x00B4(v0)             ## 000000B4
    sh      v1, 0x0030(v0)             ## 00000030
    sh      a2, 0x0032(v0)             ## 00000032
    sh      a2, 0x082C(v0)             ## 0000082C
    swc1    $f8, 0x002C(v0)            ## 0000002C
    sw      a3, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_80079A04              
    addiu   a1, $zero, 0x000F          ## a1 = 0000000F
    lw      a3, 0x0018($sp)            
    lui     t6, %hi(func_809A0014)     ## t6 = 809A0000
    or      v0, $zero, $zero           ## v0 = 00000000
    sh      $zero, 0x0146(a3)          ## 00000146
    lh      t9, 0x0146(a3)             ## 00000146
    addiu   t6, t6, %lo(func_809A0014) ## t6 = 809A0014
    or      v1, a3, $zero              ## v1 = 00000000
    sh      t9, 0x0148(a3)             ## 00000148
lbl_8099FFA4:
    addiu   v0, v0, 0x0001             ## v0 = 00000001
    slti    $at, v0, 0x0006            
    addiu   v1, v1, 0x0002             ## v1 = 00000002
    bne     $at, $zero, lbl_8099FFA4   
    sh      $zero, 0x0148(v1)          ## 0000014A
    lw      t0, 0x018C(a3)             ## 0000018C
    addiu   v0, $zero, 0x0002          ## v0 = 00000002
    addiu   v1, a3, 0x0008             ## v1 = 00000008
    sh      $zero, 0x014C(t0)          ## 0000014C
    lw      t1, 0x0190(a3)             ## 00000190
    addiu   a0, $zero, 0x000A          ## a0 = 0000000A
    sh      $zero, 0x014C(t1)          ## 0000014C
lbl_8099FFD4:
    lw      t2, 0x018C(v1)             ## 00000194
    addiu   v0, v0, 0x0004             ## v0 = 00000006
    addiu   v1, v1, 0x0010             ## v1 = 00000018
    sh      $zero, 0x014C(t2)          ## 0000014C
    lw      t3, 0x0180(v1)             ## 00000198
    sh      $zero, 0x014C(t3)          ## 0000014C
    lw      t4, 0x0184(v1)             ## 0000019C
    sh      $zero, 0x014C(t4)          ## 0000014C
    lw      t5, 0x0188(v1)             ## 000001A0
    bne     v0, a0, lbl_8099FFD4       
    sh      $zero, 0x014C(t5)          ## 0000014C
    sw      t6, 0x013C(a3)             ## 0000013C
lbl_809A0004:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_809A0014:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sdc1    $f20, 0x0018($sp)          
    lh      t6, 0x0142(s0)             ## 00000142
    lw      a2, 0x1C44(a1)             ## 00001C44
    lui     t7, 0x8012                 ## t7 = 80120000
    bnel    t6, $zero, lbl_809A0180    
    lw      $ra, 0x0024($sp)           
    lw      t7, -0x5A2C(t7)            ## 8011A5D4
    or      a1, $zero, $zero           ## a1 = 00000000
    or      v0, $zero, $zero           ## v0 = 00000000
    bne     t7, $zero, lbl_809A0110    
    or      v1, s0, $zero              ## v1 = 00000000
lbl_809A0050:
    lh      t8, 0x014A(v1)             ## 0000014A
    addiu   v0, v0, 0x0002             ## v0 = 00000002
    slti    $at, v0, 0x000C            
    beq     t8, $zero, lbl_809A0068    
    nop
    addiu   a1, a1, 0x0001             ## a1 = 00000001
lbl_809A0068:
    bne     $at, $zero, lbl_809A0050   
    addiu   v1, v1, 0x0002             ## v1 = 00000002
    slti    $at, a1, 0x0006            
    bne     $at, $zero, lbl_809A0098   
    addiu   t9, $zero, 0x000A          ## t9 = 0000000A
    lui     t1, %hi(func_809A06B4)     ## t1 = 809A0000
    sh      t9, 0x0110(a2)             ## 00000110
    addiu   t0, $zero, 0x0002          ## t0 = 00000002
    addiu   t1, t1, %lo(func_809A06B4) ## t1 = 809A06B4
    sh      t0, 0x0144(s0)             ## 00000144
    beq     $zero, $zero, lbl_809A017C 
    sw      t1, 0x013C(s0)             ## 0000013C
lbl_809A0098:
    lui     $at, %hi(var_809A09A0)     ## $at = 809A0000
    lwc1    $f20, %lo(var_809A09A0)($at) 
    jal     func_80026D64              
    mov.s   $f12, $f20                 
    trunc.w.s $f4, $f0                   
    mfc1    v0, $f4                    
    nop
    sll     t3, v0,  1                 
    addu    v1, s0, t3                 
    lh      t4, 0x014A(v1)             ## 0000014A
    beql    t4, $zero, lbl_809A00FC    
    addiu   t0, v0, 0x0001             ## t0 = 00000001
lbl_809A00C8:
    jal     func_80026D64              
    mov.s   $f12, $f20                 
    trunc.w.s $f6, $f0                   
    mfc1    v0, $f6                    
    nop
    sll     t6, v0,  1                 
    addu    t7, s0, t6                 
    lh      t8, 0x014A(t7)             ## 0000014A
    bne     t8, $zero, lbl_809A00C8    
    nop
    sll     t9, v0,  1                 
    addu    v1, s0, t9                 
    addiu   t0, v0, 0x0001             ## t0 = 00000001
lbl_809A00FC:
    sh      t0, 0x0148(s0)             ## 00000148
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    sh      t1, 0x014A(v1)             ## 0000014A
    beq     $zero, $zero, lbl_809A014C 
    lh      a0, 0x0148(s0)             ## 00000148
lbl_809A0110:
    lh      t2, 0x0148(s0)             ## 00000148
    lui     t6, %hi(func_809A06B4)     ## t6 = 809A0000
    addiu   t4, $zero, 0x000A          ## t4 = 0000000A
    addiu   t3, t2, 0x0001             ## t3 = 00000001
    sh      t3, 0x0148(s0)             ## 00000148
    lh      a0, 0x0148(s0)             ## 00000148
    addiu   t5, $zero, 0x0002          ## t5 = 00000002
    addiu   t6, t6, %lo(func_809A06B4) ## t6 = 809A06B4
    slti    $at, a0, 0x0007            
    bnel    $at, $zero, lbl_809A0150   
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    sh      t4, 0x0110(a2)             ## 00000110
    sh      t5, 0x0144(s0)             ## 00000144
    beq     $zero, $zero, lbl_809A017C 
    sw      t6, 0x013C(s0)             ## 0000013C
lbl_809A014C:
    addiu   $at, $zero, 0x0001         ## $at = 00000001
lbl_809A0150:
    bne     a0, $at, lbl_809A0164      
    addiu   t8, $zero, 0x001E          ## t8 = 0000001E
    addiu   t7, $zero, 0x0032          ## t7 = 00000032
    beq     $zero, $zero, lbl_809A0168 
    sh      t7, 0x0140(s0)             ## 00000140
lbl_809A0164:
    sh      t8, 0x0140(s0)             ## 00000140
lbl_809A0168:
    jal     func_800646F0              
    addiu   a0, $zero, 0x482C          ## a0 = 0000482C
    lui     t9, %hi(func_809A0190)     ## t9 = 809A0000
    addiu   t9, t9, %lo(func_809A0190) ## t9 = 809A0190
    sw      t9, 0x013C(s0)             ## 0000013C
lbl_809A017C:
    lw      $ra, 0x0024($sp)           
lbl_809A0180:
    ldc1    $f20, 0x0018($sp)          
    lw      s0, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_809A0190:
    addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
    sw      s7, 0x0054($sp)            
    sw      s6, 0x0050($sp)            
    addiu   s6, $sp, 0x0080            ## s6 = FFFFFFF0
    or      s7, a0, $zero              ## s7 = 00000000
    sw      $ra, 0x005C($sp)           
    sw      s8, 0x0058($sp)            
    sw      s5, 0x004C($sp)            
    sw      s4, 0x0048($sp)            
    sw      s3, 0x0044($sp)            
    sw      s2, 0x0040($sp)            
    sw      s1, 0x003C($sp)            
    sw      s0, 0x0038($sp)            
    or      a2, a1, $zero              ## a2 = 00000000
    lui     t6, %hi(var_809A0988)      ## t6 = 809A0000
    addiu   t6, t6, %lo(var_809A0988)  ## t6 = 809A0988
    lw      t8, 0x0000(t6)             ## 809A0988
    lw      v0, 0x1C44(a2)             ## 00001C44
    lui     t9, 0x0001                 ## t9 = 00010000
    sw      t8, 0x0000(s6)             ## FFFFFFF0
    lw      t7, 0x0004(t6)             ## 809A098C
    addu    t9, t9, a2                 
    addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
    sw      t7, 0x0004(s6)             ## FFFFFFF4
    lw      t8, 0x0008(t6)             ## 809A0990
    or      s5, $zero, $zero           ## s5 = 00000000
    or      s1, $zero, $zero           ## s1 = 00000000
    sw      t8, 0x0008(s6)             ## FFFFFFF8
    lb      t9, 0x1E5C(t9)             ## 00011E5C
    or      s4, s7, $zero              ## s4 = 00000000
    addiu   s2, s7, 0x015C             ## s2 = 0000015C
    bne     t9, $at, lbl_809A0234      
    addiu   s3, s7, 0x0174             ## s3 = 00000174
    addiu   t0, $zero, 0x000A          ## t0 = 0000000A
    lui     t1, %hi(func_809A06B4)     ## t1 = 809A0000
    addiu   s8, $zero, 0x0002          ## s8 = 00000002
    sh      t0, 0x0110(v0)             ## 00000110
    addiu   t1, t1, %lo(func_809A06B4) ## t1 = 809A06B4
    sh      s8, 0x0144(s7)             ## 00000144
    beq     $zero, $zero, lbl_809A05E0 
    sw      t1, 0x013C(s7)             ## 0000013C
lbl_809A0234:
    lh      t2, 0x0140(s7)             ## 00000140
    or      s0, s7, $zero              ## s0 = 00000000
    bnel    t2, $zero, lbl_809A05E4    
    lw      $ra, 0x005C($sp)           
    sw      a2, 0x0094($sp)            
lbl_809A0248:
    or      a0, s2, $zero              ## a0 = 0000015C
    jal     func_80063CAC              ## Vec3f_Copy
    or      a1, s6, $zero              ## a1 = FFFFFFF0
    or      a0, s3, $zero              ## a0 = 00000174
    jal     func_80063CAC              ## Vec3f_Copy
    or      a1, s6, $zero              ## a1 = FFFFFFF0
    addiu   s1, s1, 0x000C             ## s1 = 0000000C
    slti    $at, s1, 0x0018            
    addiu   s2, s2, 0x000C             ## s2 = 00000168
    addiu   s3, s3, 0x000C             ## s3 = 00000180
    addiu   s0, s0, 0x0004             ## s0 = 00000004
    bne     $at, $zero, lbl_809A0248   
    sw      $zero, 0x01B0(s0)          ## 000001B4
    lh      s1, 0x0148(s7)             ## 00000148
    addiu   s8, $zero, 0x0002          ## s8 = 00000002
    sh      s8, 0x015A(s7)             ## 0000015A
    addiu   s1, s1, 0xFFFF             ## s1 = 0000000B
    sltiu   $at, s1, 0x0006            
    sw      $zero, 0x01C4(s7)          ## 000001C4
    beq     $at, $zero, lbl_809A0468   
    sw      $zero, 0x01C0(s7)          ## 000001C0
    sll     t3, s1,  2                 
    lui     $at, %hi(var_809A09A4)     ## $at = 809A0000
    addu    $at, $at, t3               
    lw      t3, %lo(var_809A09A4)($at) 
    jr      t3                         
    nop
var_809A02B4:
    lui     a1, %hi(var_809A0800)      ## a1 = 809A0000
    addiu   a1, a1, %lo(var_809A0800)  ## a1 = 809A0800
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a0, s7, 0x015C             ## a0 = 0000015C
    lui     a1, %hi(var_809A0878)      ## a1 = 809A0000
    addiu   a1, a1, %lo(var_809A0878)  ## a1 = 809A0878
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a0, s7, 0x0174             ## a0 = 00000174
    lw      t4, 0x018C(s7)             ## 0000018C
    addiu   s6, $zero, 0x0001          ## s6 = 00000001
    sh      s6, 0x015A(s7)             ## 0000015A
    beq     $zero, $zero, lbl_809A0468 
    sw      t4, 0x01C0(s7)             ## 000001C0
var_809A02E8:
    lui     a1, %hi(var_809A080C)      ## a1 = 809A0000
    addiu   a1, a1, %lo(var_809A080C)  ## a1 = 809A080C
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a0, s7, 0x015C             ## a0 = 0000015C
    lui     a1, %hi(var_809A0818)      ## a1 = 809A0000
    addiu   a1, a1, %lo(var_809A0818)  ## a1 = 809A0818
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a0, s7, 0x0168             ## a0 = 00000168
    lui     a1, %hi(var_809A0884)      ## a1 = 809A0000
    addiu   a1, a1, %lo(var_809A0884)  ## a1 = 809A0884
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a0, s7, 0x0174             ## a0 = 00000174
    lui     a1, %hi(var_809A0890)      ## a1 = 809A0000
    addiu   a1, a1, %lo(var_809A0890)  ## a1 = 809A0890
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a0, s7, 0x0180             ## a0 = 00000180
    lw      t5, 0x0190(s7)             ## 00000190
    lw      t6, 0x0194(s7)             ## 00000194
    sw      t5, 0x01C0(s7)             ## 000001C0
    beq     $zero, $zero, lbl_809A0468 
    sw      t6, 0x01C4(s7)             ## 000001C4
var_809A033C:
    lui     a1, %hi(var_809A0824)      ## a1 = 809A0000
    addiu   a1, a1, %lo(var_809A0824)  ## a1 = 809A0824
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a0, s7, 0x015C             ## a0 = 0000015C
    lui     a1, %hi(var_809A089C)      ## a1 = 809A0000
    addiu   a1, a1, %lo(var_809A089C)  ## a1 = 809A089C
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a0, s7, 0x0174             ## a0 = 00000174
    lw      t7, 0x0198(s7)             ## 00000198
    addiu   s6, $zero, 0x0001          ## s6 = 00000001
    sh      s6, 0x015A(s7)             ## 0000015A
    beq     $zero, $zero, lbl_809A0468 
    sw      t7, 0x01C0(s7)             ## 000001C0
var_809A0370:
    lui     a1, %hi(var_809A0830)      ## a1 = 809A0000
    addiu   a1, a1, %lo(var_809A0830)  ## a1 = 809A0830
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a0, s7, 0x015C             ## a0 = 0000015C
    lui     a1, %hi(var_809A083C)      ## a1 = 809A0000
    addiu   a1, a1, %lo(var_809A083C)  ## a1 = 809A083C
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a0, s7, 0x0168             ## a0 = 00000168
    lui     a1, %hi(var_809A08A8)      ## a1 = 809A0000
    addiu   a1, a1, %lo(var_809A08A8)  ## a1 = 809A08A8
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a0, s7, 0x0174             ## a0 = 00000174
    lui     a1, %hi(var_809A08B4)      ## a1 = 809A0000
    addiu   a1, a1, %lo(var_809A08B4)  ## a1 = 809A08B4
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a0, s7, 0x0180             ## a0 = 00000180
    lw      t8, 0x019C(s7)             ## 0000019C
    lw      t9, 0x01A0(s7)             ## 000001A0
    sw      t8, 0x01C0(s7)             ## 000001C0
    beq     $zero, $zero, lbl_809A0468 
    sw      t9, 0x01C4(s7)             ## 000001C4
var_809A03C4:
    lui     a1, %hi(var_809A0848)      ## a1 = 809A0000
    addiu   a1, a1, %lo(var_809A0848)  ## a1 = 809A0848
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a0, s7, 0x015C             ## a0 = 0000015C
    lui     a1, %hi(var_809A0854)      ## a1 = 809A0000
    addiu   a1, a1, %lo(var_809A0854)  ## a1 = 809A0854
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a0, s7, 0x0168             ## a0 = 00000168
    lui     a1, %hi(var_809A08C0)      ## a1 = 809A0000
    addiu   a1, a1, %lo(var_809A08C0)  ## a1 = 809A08C0
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a0, s7, 0x0174             ## a0 = 00000174
    lui     a1, %hi(var_809A08CC)      ## a1 = 809A0000
    addiu   a1, a1, %lo(var_809A08CC)  ## a1 = 809A08CC
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a0, s7, 0x0180             ## a0 = 00000180
    lw      t0, 0x01A4(s7)             ## 000001A4
    lw      t1, 0x01A8(s7)             ## 000001A8
    sw      t0, 0x01C0(s7)             ## 000001C0
    beq     $zero, $zero, lbl_809A0468 
    sw      t1, 0x01C4(s7)             ## 000001C4
var_809A0418:
    lui     a1, %hi(var_809A0860)      ## a1 = 809A0000
    addiu   a1, a1, %lo(var_809A0860)  ## a1 = 809A0860
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a0, s7, 0x015C             ## a0 = 0000015C
    lui     a1, %hi(var_809A086C)      ## a1 = 809A0000
    addiu   a1, a1, %lo(var_809A086C)  ## a1 = 809A086C
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a0, s7, 0x0168             ## a0 = 00000168
    lui     a1, %hi(var_809A08D8)      ## a1 = 809A0000
    addiu   a1, a1, %lo(var_809A08D8)  ## a1 = 809A08D8
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a0, s7, 0x0174             ## a0 = 00000174
    lui     a1, %hi(var_809A08E4)      ## a1 = 809A0000
    addiu   a1, a1, %lo(var_809A08E4)  ## a1 = 809A08E4
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a0, s7, 0x0180             ## a0 = 00000180
    lw      t2, 0x01AC(s7)             ## 000001AC
    lw      t3, 0x01B0(s7)             ## 000001B0
    sw      t2, 0x01C0(s7)             ## 000001C0
    sw      t3, 0x01C4(s7)             ## 000001C4
lbl_809A0468:
    lh      t4, 0x015A(s7)             ## 0000015A
    addiu   s6, $zero, 0x0001          ## s6 = 00000001
    or      s5, $zero, $zero           ## s5 = 00000000
    blez    t4, lbl_809A05C8           
    lw      a2, 0x0094($sp)            
    addiu   a0, a2, 0x1C24             ## a0 = 00001C24
    sw      a0, 0x0070($sp)            
    or      s4, s7, $zero              ## s4 = 00000000
    or      s0, s7, $zero              ## s0 = 00000000
    addiu   s3, $zero, 0x0005          ## s3 = 00000005
    addiu   s2, $zero, 0x0004          ## s2 = 00000004
lbl_809A0494:
    lwc1    $f4, 0x015C(s4)            ## 0000015C
    addiu   t5, $zero, 0x303F          ## t5 = 0000303F
    lw      a0, 0x0070($sp)            
    swc1    $f4, 0x0010($sp)           
    lwc1    $f6, 0x0160(s4)            ## 00000160
    lw      a2, 0x0094($sp)            
    or      a1, s7, $zero              ## a1 = 00000000
    swc1    $f6, 0x0014($sp)           
    lwc1    $f8, 0x0164(s4)            ## 00000164
    sw      t5, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    addiu   a3, $zero, 0x0117          ## a3 = 00000117
    jal     func_800253F0              
    swc1    $f8, 0x0018($sp)           
    bne     v0, $zero, lbl_809A04EC    
    sw      v0, 0x01B4(s0)             ## 000001B4
    jal     func_80020EB4              
    or      a0, s7, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_809A05E4 
    lw      $ra, 0x005C($sp)           
lbl_809A04EC:
    lw      t6, 0x01B4(s0)             ## 000001B4
    sll     t7, s1,  1                 
    lui     t8, %hi(var_809A08F0)      ## t8 = 809A0000
    sh      s5, 0x0150(t6)             ## 00000150
    addu    t8, t8, t7                 
    lh      t8, %lo(var_809A08F0)(t8)  
    lw      t9, 0x01B4(s0)             ## 000001B4
    addiu   a1, s4, 0x0174             ## a1 = 00000174
    sh      t8, 0x0148(t9)             ## 00000148
    lw      a0, 0x01B4(s0)             ## 000001B4
    jal     func_80063CAC              ## Vec3f_Copy
    addiu   a0, a0, 0x015C             ## a0 = 0000015C
    beq     s1, s6, lbl_809A0544       
    nop
    beq     s1, s8, lbl_809A055C       
    lui     $at, 0x4170                ## $at = 41700000
    beq     s1, s2, lbl_809A0584       
    lui     $at, 0xC0A0                ## $at = C0A00000
    beq     s1, s3, lbl_809A059C       
    lui     $at, 0x40E0                ## $at = 40E00000
    beq     $zero, $zero, lbl_809A05B4 
    lh      t9, 0x015A(s7)             ## 0000015A
lbl_809A0544:
    bnel    s5, s6, lbl_809A05B4       
    lh      t9, 0x015A(s7)             ## 0000015A
    lw      t1, 0x01B4(s0)             ## 000001B4
    addiu   t0, $zero, 0x003C          ## t0 = 0000003C
    beq     $zero, $zero, lbl_809A05B0 
    sh      t0, 0x0152(t1)             ## 00000152
lbl_809A055C:
    mtc1    $at, $f10                  ## $f10 = 7.00
    lw      t2, 0x01B4(s0)             ## 000001B4
    lui     $at, 0xBF80                ## $at = BF800000
    mtc1    $at, $f16                  ## $f16 = -1.00
    swc1    $f10, 0x0060(t2)           ## 00000060
    lw      t3, 0x01B4(s0)             ## 000001B4
    swc1    $f16, 0x006C(t3)           ## 0000006C
    lw      t4, 0x01B4(s0)             ## 000001B4
    beq     $zero, $zero, lbl_809A05B0 
    sh      s8, 0x0156(t4)             ## 00000156
lbl_809A0584:
    mtc1    $at, $f18                  ## $f18 = -1.00
    lw      t5, 0x01B4(s0)             ## 000001B4
    swc1    $f18, 0x005C(t5)           ## 0000005C
    lw      t6, 0x01B4(s0)             ## 000001B4
    beq     $zero, $zero, lbl_809A05B0 
    sh      s2, 0x0156(t6)             ## 00000156
lbl_809A059C:
    mtc1    $at, $f4                   ## $f4 = -1.00
    lw      t7, 0x01B4(s0)             ## 000001B4
    swc1    $f4, 0x005C(t7)            ## 0000005C
    lw      t8, 0x01B4(s0)             ## 000001B4
    sh      s3, 0x0156(t8)             ## 00000156
lbl_809A05B0:
    lh      t9, 0x015A(s7)             ## 0000015A
lbl_809A05B4:
    addiu   s5, s5, 0x0001             ## s5 = 00000001
    addiu   s4, s4, 0x000C             ## s4 = 0000000C
    slt     $at, s5, t9                
    bne     $at, $zero, lbl_809A0494   
    addiu   s0, s0, 0x0004             ## s0 = 00000004
lbl_809A05C8:
    sh      $zero, 0x0158(s7)          ## 00000158
    lh      t0, 0x0158(s7)             ## 00000158
    lui     t1, %hi(func_809A0610)     ## t1 = 809A0000
    addiu   t1, t1, %lo(func_809A0610) ## t1 = 809A0610
    sw      t1, 0x013C(s7)             ## 0000013C
    sh      t0, 0x0156(s7)             ## 00000156
lbl_809A05E0:
    lw      $ra, 0x005C($sp)           
lbl_809A05E4:
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    lw      s3, 0x0044($sp)            
    lw      s4, 0x0048($sp)            
    lw      s5, 0x004C($sp)            
    lw      s6, 0x0050($sp)            
    lw      s7, 0x0054($sp)            
    lw      s8, 0x0058($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0090           ## $sp = 00000000


func_809A0610:
    lui     t6, 0x0001                 ## t6 = 00010000
    addu    t6, t6, a1                 
    lb      t6, 0x1E5C(t6)             ## 00011E5C
    addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
    lw      v0, 0x1C44(a1)             ## 00001C44
    bne     t6, $at, lbl_809A064C      
    or      v1, $zero, $zero           ## v1 = 00000000
    addiu   t7, $zero, 0x000A          ## t7 = 0000000A
    lui     t8, %hi(func_809A06B4)     ## t8 = 809A0000
    addiu   a3, $zero, 0x0002          ## a3 = 00000002
    sh      t7, 0x0110(v0)             ## 00000110
    addiu   t8, t8, %lo(func_809A06B4) ## t8 = 809A06B4
    sh      a3, 0x0144(a0)             ## 00000144
    jr      $ra                        
    sw      t8, 0x013C(a0)             ## 0000013C
lbl_809A064C:
    or      v0, $zero, $zero           ## v0 = 00000000
    or      a1, a0, $zero              ## a1 = 00000000
    addiu   t0, $zero, 0x0001          ## t0 = 00000001
    addiu   a3, $zero, 0x0002          ## a3 = 00000002
lbl_809A065C:
    lh      a2, 0x0156(a1)             ## 00000156
    beql    a2, $zero, lbl_809A068C    
    addiu   v0, v0, 0x0001             ## v0 = 00000001
    bne     a3, a2, lbl_809A0680       
    addiu   v1, v1, 0x0001             ## v1 = 00000001
    sll     t9, v0,  2                 
    addu    t1, a0, t9                 
    lw      t2, 0x01C0(t1)             ## 000001C0
    sh      t0, 0x014C(t2)             ## 0000014C
lbl_809A0680:
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    addiu   v0, v0, 0x0001             ## v0 = 00000002
lbl_809A068C:
    bne     v0, a3, lbl_809A065C       
    addiu   a1, a1, 0x0002             ## a1 = 00000002
    lh      t3, 0x015A(a0)             ## 0000015A
    lui     t4, %hi(func_809A0014)     ## t4 = 809A0000
    addiu   t4, t4, %lo(func_809A0014) ## t4 = 809A0014
    bne     v1, t3, lbl_809A06AC       
    nop
    sw      t4, 0x013C(a0)             ## 0000013C
lbl_809A06AC:
    jr      $ra                        
    nop


func_809A06B4:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s3, 0x0020($sp)            
    or      s3, a0, $zero              ## s3 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s2, 0x001C($sp)            
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    sw      a1, 0x002C($sp)            
    or      s0, $zero, $zero           ## s0 = 00000000
    or      s1, s3, $zero              ## s1 = 00000000
    addiu   s2, $zero, 0x0002          ## s2 = 00000002
lbl_809A06E0:
    lh      t6, 0x0156(s1)             ## 00000156
    sll     t7, s0,  2                 
    addu    t8, s3, t7                 
    bnel    t6, $zero, lbl_809A070C    
    addiu   s0, s0, 0x0001             ## s0 = 00000001
    lw      a0, 0x01B4(t8)             ## 000001B4
    beql    a0, $zero, lbl_809A070C    
    addiu   s0, s0, 0x0001             ## s0 = 00000002
    jal     func_80020EB4              
    nop
    addiu   s0, s0, 0x0001             ## s0 = 00000003
lbl_809A070C:
    bne     s0, s2, lbl_809A06E0       
    addiu   s1, s1, 0x0002             ## s1 = 00000002
    lui     t9, %hi(func_809A073C)     ## t9 = 809A0000
    addiu   t9, t9, %lo(func_809A073C) ## t9 = 809A073C
    sw      t9, 0x013C(s3)             ## 0000013C
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    lw      s2, 0x001C($sp)            
    lw      s3, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_809A073C:
    lw      v0, 0x1C44(a1)             ## 00001C44
    addiu   t6, $zero, 0x000A          ## t6 = 0000000A
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    sh      t6, 0x0110(v0)             ## 00000110
    lh      v1, 0x0144(a0)             ## 00000144
    lui     t7, %hi(func_8099FF04)     ## t7 = 809A0000
    addiu   t7, t7, %lo(func_8099FF04) ## t7 = 8099FF04
    bne     v1, $at, lbl_809A076C      
    lui     t8, %hi(func_8099FF04)     ## t8 = 809A0000
    sh      $zero, 0x0144(a0)          ## 00000144
    lh      v1, 0x0144(a0)             ## 00000144
    sw      t7, 0x013C(a0)             ## 0000013C
lbl_809A076C:
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bne     v1, $at, lbl_809A0780      
    addiu   t8, t8, %lo(func_8099FF04) ## t8 = 8099FF04
    sh      $zero, 0x0144(a0)          ## 00000144
    sw      t8, 0x013C(a0)             ## 0000013C
lbl_809A0780:
    jr      $ra                        
    nop


func_809A0788:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      t9, 0x013C(a0)             ## 0000013C
    jalr    $ra, t9                    
    nop
    lw      a0, 0x0018($sp)            
    lh      v0, 0x0140(a0)             ## 00000140
    beq     v0, $zero, lbl_809A07B4    
    addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
    sh      t6, 0x0140(a0)             ## 00000140
lbl_809A07B4:
    lh      v0, 0x0142(a0)             ## 00000142
    beq     v0, $zero, lbl_809A07C4    
    addiu   t7, v0, 0xFFFF             ## t7 = FFFFFFFF
    sh      t7, 0x0142(a0)             ## 00000142
lbl_809A07C4:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_809A07E0: .word 0x00C00600, 0x00000010, 0x00010000, 0x000001C8
.word func_8099FD90
.word func_8099FEF4
.word func_809A0788
.word 0x00000000
var_809A0800: .word 0x00000000, 0xC1200000, 0xC3870000
var_809A080C: .word 0xC35C0000, 0x42840000, 0xC3A00000
var_809A0818: .word 0x43820000, 0x42840000, 0xC3A00000
var_809A0824: .word 0x00000000, 0xC1200000, 0xC3870000
var_809A0830: .word 0xC35C0000, 0x42840000, 0xC3A00000
var_809A083C: .word 0x43820000, 0x42840000, 0xC3A00000
var_809A0848: .word 0x43820000, 0x42C80000, 0xC3A00000
var_809A0854: .word 0x43B40000, 0x42C80000, 0xC3A00000
var_809A0860: .word 0xC3660000, 0x42BC0000, 0xC3B40000
var_809A086C: .word 0xC3C80000, 0x42BC0000, 0xC3B40000
var_809A0878: .word 0x00000000, 0x42540000, 0xC3870000
var_809A0884: .word 0xC2700000, 0x427C0000, 0xC3A00000
var_809A0890: .word 0x42700000, 0x427C0000, 0xC3A00000
var_809A089C: .word 0x00000000, 0x00000000, 0x00000000
var_809A08A8: .word 0xC2700000, 0x427C0000, 0xC3A00000
var_809A08B4: .word 0x42700000, 0x427C0000, 0xC3A00000
var_809A08C0: .word 0xC3660000, 0x00000000, 0x00000000
var_809A08CC: .word 0xC3660000, 0x00000000, 0x00000000
var_809A08D8: .word 0x43820000, 0x00000000, 0x00000000
var_809A08E4: .word 0x43820000, 0x00000000, 0x00000000
var_809A08F0: .word 0x00000001, 0x00000001, 0x00020002
var_809A08FC: .word \
0x00000001, 0x00010000, 0x00010001, 0x00040004, \
0x00040004
var_809A0910: .word \
0xC2200000, 0x00000000, 0xC2B40000, 0xC1A00000, \
0x00000000, 0xC2B40000, 0x00000000, 0x00000000, \
0xC2B40000, 0x41A00000, 0x00000000, 0xC2B40000, \
0x42200000, 0x00000000, 0xC2B40000, 0xC2200000, \
0x00000000, 0xC2700000, 0xC1A00000, 0x00000000, \
0xC2700000, 0x00000000, 0x00000000, 0xC2700000, \
0x41A00000, 0x00000000, 0xC2700000, 0x42200000, \
0x00000000, 0xC2700000
var_809A0988: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_809A09A0: .word 0x40BFAE14
var_809A09A4: .word var_809A02B4
.word var_809A02E8
.word var_809A033C
.word var_809A0370
.word var_809A03C4
.word var_809A0418
.word 0x00000000

