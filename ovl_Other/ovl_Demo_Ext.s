#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A71F10:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80A71F20:
    lui     $at, 0x43C8                ## $at = 43C80000
    lui     v0, 0x8012                 ## v0 = 80120000
    mtc1    $at, $f0                   ## $f0 = 400.00
    addiu   v0, v0, 0xBA00             ## v0 = 8011BA00
    sw      a1, 0x0004($sp)            
    addiu   t6, $zero, 0x0019          ## t6 = 00000019
    addiu   t7, $zero, 0x0028          ## t7 = 00000028
    addiu   t8, $zero, 0x0005          ## t8 = 00000005
    addiu   t9, $zero, 0x001E          ## t9 = 0000001E
    sh      t6, 0x0148(a0)             ## 00000148
    sh      t7, 0x014A(a0)             ## 0000014A
    sh      t8, 0x014C(a0)             ## 0000014C
    sh      t9, 0x014E(a0)             ## 0000014E
    lw      t0, 0x0000(v0)             ## 8011BA00
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f18                  ## $f18 = 100.00
    lh      t1, 0x148C(t0)             ## 0000148C
    addiu   t2, t1, 0x00FF             ## t2 = 000000FF
    sw      t2, 0x0160(a0)             ## 00000160
    lw      t3, 0x0000(v0)             ## 8011BA00
    lh      t4, 0x1494(t3)             ## 00001494
    addiu   t5, t4, 0x00FF             ## t5 = 000000FF
    sw      t5, 0x0164(a0)             ## 00000164
    lw      t6, 0x0000(v0)             ## 8011BA00
    lh      t7, 0x147A(t6)             ## 00001493
    mtc1    t7, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    add.s   $f8, $f6, $f0              
    swc1    $f8, 0x0168(a0)            ## 00000168
    lw      t8, 0x0000(v0)             ## 8011BA00
    lh      t9, 0x147C(t8)             ## 00001481
    mtc1    t9, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x016C(a0)            ## 0000016C
    lw      t0, 0x0000(v0)             ## 8011BA00
    lh      t1, 0x147E(t0)             ## 0000147E
    mtc1    t1, $f6                    ## $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    add.s   $f10, $f8, $f0             
    swc1    $f10, 0x0170(a0)           ## 00000170
    jr      $ra                        
    nop


func_80A71FD8:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    lui     t6, 0x8012                 ## t6 = 80120000
    lw      t6, -0x4600(t6)            ## 8011BA00
    lui     $at, 0x4220                ## $at = 42200000
    mtc1    $at, $f8                   ## $f8 = 40.00
    lh      t7, 0x149A(t6)             ## 8012149A
    lui     $at, 0x4170                ## $at = 41700000
    mtc1    $at, $f16                  ## $f16 = 15.00
    mtc1    t7, $f4                    ## $f4 = 0.00
    lw      t8, 0x0020($sp)            
    lui     a3, 0x8010                 ## a3 = 80100000
    cvt.s.w $f6, $f4                   
    lwc1    $f4, 0x015C(t8)            ## 0000015C
    lui     t9, 0x8010                 ## t9 = 80100000
    addiu   a3, a3, 0x43A0             ## a3 = 801043A0
    addiu   t9, t9, 0x43A8             ## t9 = 801043A8
    addiu   a0, $zero, 0x2040          ## a0 = 00002040
    add.s   $f10, $f6, $f8             
    addiu   a2, $zero, 0x0004          ## a2 = 00000004
    addiu   a1, t8, 0x00E4             ## a1 = 000000E4
    sub.s   $f18, $f10, $f16           
    c.le.s  $f4, $f18                  
    nop
    bc1fl   lbl_80A72054               
    lw      $ra, 0x001C($sp)           
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    sw      t9, 0x0014($sp)            
    lw      $ra, 0x001C($sp)           
lbl_80A72054:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A72060:
    lbu     t6, 0x1D6C(a0)             ## 00001D6C
    sll     t7, a1,  2                 
    addu    t8, a0, t7                 
    beql    t6, $zero, lbl_80A72080    
    or      v0, $zero, $zero           ## v0 = 00000000
    jr      $ra                        
    lw      v0, 0x1D8C(t8)             ## 00001D8C
lbl_80A7207C:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80A72080:
    jr      $ra                        
    nop


func_80A72088:
    sw      $zero, 0x013C(a0)          ## 0000013C
    sw      $zero, 0x0140(a0)          ## 00000140
    jr      $ra                        
    nop


func_80A72098:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    or      a0, a3, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x0005          ## a1 = 00000005
    jal     func_80A72060              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_80A72108    
    lw      a2, 0x0018($sp)            
    lw      t6, 0x000C(v0)             ## 0000000C
    mtc1    t6, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0024(a2)            ## 00000024
    lw      t7, 0x0010(v0)             ## 00000010
    mtc1    t7, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0028(a2)           ## 00000028
    lw      t8, 0x0014(v0)             ## 00000014
    mtc1    t8, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x002C(a2)           ## 0000002C
    lh      v1, 0x0008(v0)             ## 00000008
    sh      v1, 0x00B6(a2)             ## 000000B6
    sh      v1, 0x0032(a2)             ## 00000032
lbl_80A72108:
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    sw      v0, 0x013C(a2)             ## 0000013C
    sw      v0, 0x0140(a2)             ## 00000140
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A72124:
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    sw      t6, 0x013C(a0)             ## 0000013C
    sw      t7, 0x0140(a0)             ## 00000140
    jr      $ra                        
    nop


func_80A7213C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f6                   ## $f6 = 1.00
    lwc1    $f4, 0x015C(a0)            ## 0000015C
    lui     t6, 0x8012                 ## t6 = 80120000
    lui     $at, 0x4220                ## $at = 42200000
    add.s   $f8, $f4, $f6              
    mtc1    $at, $f4                   ## $f4 = 40.00
    swc1    $f8, 0x015C(a0)            ## 0000015C
    lw      t6, -0x4600(t6)            ## 8011BA00
    lwc1    $f10, 0x015C(a0)           ## 0000015C
    lh      t7, 0x149A(t6)             ## 8012149A
    mtc1    t7, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    add.s   $f6, $f18, $f4             
    c.le.s  $f6, $f10                  
    nop
    bc1fl   lbl_80A7219C               
    lw      $ra, 0x0014($sp)           
    jal     func_80020EB4              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A7219C:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A721A8:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_80A72060              
    addiu   a1, $zero, 0x0005          ## a1 = 00000005
    beql    v0, $zero, lbl_80A72244    
    lw      $ra, 0x001C($sp)           
    lhu     a2, 0x0000(v0)             ## 00000000
    lw      v1, 0x0144(s0)             ## 00000144
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    beql    a2, v1, lbl_80A72244       
    lw      $ra, 0x001C($sp)           
    beq     a2, $at, lbl_80A7220C      
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    beq     a2, $at, lbl_80A7221C      
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    beq     a2, $at, lbl_80A72230      
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A72240 
    sw      a2, 0x0144(s0)             ## 00000144
lbl_80A7220C:
    jal     func_80A72088              
    sw      a2, 0x0020($sp)            
    beq     $zero, $zero, lbl_80A7223C 
    lw      a2, 0x0020($sp)            
lbl_80A7221C:
    lw      a1, 0x002C($sp)            
    jal     func_80A72098              
    sw      a2, 0x0020($sp)            
    beq     $zero, $zero, lbl_80A7223C 
    lw      a2, 0x0020($sp)            
lbl_80A72230:
    jal     func_80A72124              
    sw      a2, 0x0020($sp)            
    lw      a2, 0x0020($sp)            
lbl_80A7223C:
    sw      a2, 0x0144(s0)             ## 00000144
lbl_80A72240:
    lw      $ra, 0x001C($sp)           
lbl_80A72244:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A72254:
    addiu   v0, $zero, 0x0003          ## v0 = 00000003
    addiu   v1, a0, 0x0156             ## v1 = 00000156
    addiu   a1, a0, 0x014E             ## a1 = 0000014E
lbl_80A72260:
    lh      t6, 0x0000(v1)             ## 00000156
    lh      t7, 0x0000(a1)             ## 0000014E
    addiu   v0, v0, 0xFFFF             ## v0 = 00000002
    addiu   v1, v1, 0xFFFE             ## v1 = 00000154
    addu    t8, t6, t7                 
    addiu   a1, a1, 0xFFFE             ## a1 = 0000014C
    bne     v0, $zero, lbl_80A72260    
    sh      t8, 0x0002(v1)             ## 00000156
    lui     t0, 0x8012                 ## t0 = 80120000
    lw      t0, -0x4600(t0)            ## 8011BA00
    lh      t9, 0x0158(a0)             ## 00000158
    lh      t1, 0x1498(t0)             ## 80121498
    addiu   t4, t1, 0x03E8             ## t4 = 000003E8
    addu    t5, t9, t4                 
    sh      t5, 0x0158(a0)             ## 00000158
    jr      $ra                        
    nop


func_80A722A4:
    lui     a1, 0x8012                 ## a1 = 80120000
    mtc1    $zero, $f12                ## $f12 = 0.00
    addiu   a1, a1, 0xBA00             ## a1 = 8011BA00
    lw      v1, 0x0000(a1)             ## 8011BA00
    lui     $at, 0x4220                ## $at = 42200000
    mtc1    $at, $f8                   ## $f8 = 40.00
    lh      t6, 0x149A(v1)             ## 0000149A
    lwc1    $f10, 0x015C(a0)           ## 0000015C
    mtc1    t6, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    add.s   $f2, $f6, $f8              
    sub.s   $f16, $f2, $f10            
    div.s   $f0, $f16, $f2             
    c.lt.s  $f0, $f12                  
    nop
    bc1fl   lbl_80A722F4               
    lh      t7, 0x148C(v1)             ## 0000148C
    mov.s   $f0, $f12                  
    lh      t7, 0x148C(v1)             ## 0000148C
lbl_80A722F4:
    lui     $at, 0x43C8                ## $at = 43C80000
    mtc1    $at, $f2                   ## $f2 = 400.00
    addiu   t8, t7, 0x00FF             ## t8 = 000000FF
    mtc1    t8, $f18                   ## $f18 = 0.00
    lui     $at, 0x4F80                ## $at = 4F800000
    bgez    t8, lbl_80A7231C           
    cvt.s.w $f4, $f18                  
    mtc1    $at, $f6                   ## $f6 = 4294967000.00
    nop
    add.s   $f4, $f4, $f6              
lbl_80A7231C:
    mul.s   $f8, $f4, $f0              
    lui     $at, 0x4F80                ## $at = 4F800000
    trunc.w.s $f10, $f8                  
    mfc1    t0, $f10                   
    nop
    sw      t0, 0x0160(a0)             ## 00000160
    lw      t1, 0x0000(a1)             ## 8011BA00
    lh      t2, 0x1494(t1)             ## 00001494
    addiu   t3, t2, 0x00FF             ## t3 = 000000FF
    mtc1    t3, $f16                   ## $f16 = 0.00
    bgez    t3, lbl_80A72358           
    cvt.s.w $f18, $f16                 
    mtc1    $at, $f6                   ## $f6 = 4294967000.00
    nop
    add.s   $f18, $f18, $f6            
lbl_80A72358:
    mul.s   $f4, $f18, $f0             
    addiu   v0, a0, 0x0168             ## v0 = 00000168
    lui     $at, 0x42C8                ## $at = 42C80000
    trunc.w.s $f8, $f4                   
    mfc1    t5, $f8                    
    nop
    sw      t5, 0x0164(a0)             ## 00000164
    lw      t6, 0x0000(a1)             ## 8011BA00
    lh      t7, 0x147A(t6)             ## 0000147A
    mtc1    t7, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    mtc1    $at, $f10                  ## $f10 = 100.00
    add.s   $f6, $f16, $f2             
    mul.s   $f18, $f6, $f0             
    swc1    $f18, 0x0000(v0)           ## 00000168
    lw      t8, 0x0000(a1)             ## 8011BA00
    lh      t9, 0x147C(t8)             ## 0000157B
    mtc1    t9, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f8, $f4                   
    add.s   $f16, $f8, $f10            
    mul.s   $f6, $f16, $f0             
    swc1    $f6, 0x0004(v0)            ## 0000016C
    lw      t0, 0x0000(a1)             ## 8011BA00
    lh      t1, 0x147E(t0)             ## 0000147E
    mtc1    t1, $f18                   ## $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    add.s   $f8, $f4, $f2              
    mul.s   $f10, $f8, $f0             
    swc1    $f10, 0x0008(v0)           ## 00000170
    jr      $ra                        
    nop


func_80A723E0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_80A721A8              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A72400:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80A71FD8              
    lw      a0, 0x0018($sp)            
    jal     func_80A72254              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80A721A8              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A7243C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80A71FD8              
    lw      a0, 0x0018($sp)            
    jal     func_80A72254              
    lw      a0, 0x0018($sp)            
    jal     func_80A722A4              
    lw      a0, 0x0018($sp)            
    jal     func_80A7213C              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A7247C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x013C(a0)             ## 0000013C
    bltz    v0, lbl_80A724B4           
    slti    $at, v0, 0x0003            
    beq     $at, $zero, lbl_80A724B4   
    sll     t6, v0,  2                 
    lui     v1, %hi(var_80A72790)      ## v1 = 80A70000
    addu    v1, v1, t6                 
    lw      v1, %lo(var_80A72790)(v1)  
    beql    v1, $zero, lbl_80A724B8    
    lw      $ra, 0x0014($sp)           
    jalr    $ra, v1                    
    nop
lbl_80A724B4:
    lw      $ra, 0x0014($sp)           
lbl_80A724B8:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A724C4:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80A724D4:
    addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
    sw      s1, 0x0038($sp)            
    or      s1, a0, $zero              ## s1 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s0, 0x0034($sp)            
    lw      s0, 0x0000(a1)             ## 00000000
    lw      v0, 0x02C4(s0)             ## 000002C4
    addiu   v0, v0, 0xFFC0             ## v0 = FFFFFFC0
    sw      v0, 0x02C4(s0)             ## 000002C4
    jal     func_800AA6EC              
    sw      v0, 0x0040($sp)            
    addiu   v0, s1, 0x0168             ## v0 = 00000168
    lwc1    $f12, 0x0000(v0)           ## 00000168
    lwc1    $f14, 0x0004(v0)           ## 0000016C
    lw      a2, 0x0008(v0)             ## 00000170
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    lui     v0, 0x8012                 ## v0 = 80120000
    lw      v0, -0x4600(v0)            ## 8011BA00
    lh      a1, 0x0158(s1)             ## 00000158
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    lh      a0, 0x1474(v0)             ## 80121474
    lh      a2, 0x1478(v0)             ## 80121478
    addiu   a0, a0, 0x4000             ## a0 = 00004000
    sll     a0, a0, 16                 
    jal     func_800AAF00              
    sra     a0, a0, 16                 
    lui     v0, 0x8012                 ## v0 = 80120000
    lw      v0, -0x4600(v0)            ## 8011BA00
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    lh      t8, 0x1484(v0)             ## 80121484
    lh      t6, 0x1480(v0)             ## 80121480
    lh      t7, 0x1482(v0)             ## 80121482
    mtc1    t8, $f8                    ## $f8 = 0.00
    mtc1    t6, $f4                    ## $f4 = 0.00
    mtc1    t7, $f6                    ## $f6 = 0.00
    cvt.s.w $f8, $f8                   
    cvt.s.w $f12, $f4                  
    mfc1    a2, $f8                    
    jal     func_800AA7F4              
    cvt.s.w $f14, $f6                  
    jal     func_800AB8D8              
    lw      a0, 0x0040($sp)            
    jal     func_800AA724              
    nop
    jal     func_8007E2C0              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     t4, 0x8012                 ## t4 = 80120000
    addiu   t4, t4, 0xBA00             ## t4 = 8011BA00
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     $at, 0xFA00                ## $at = FA000000
    addiu   t0, s1, 0x0150             ## t0 = 00000150
    addiu   t9, v1, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(s0)             ## 000002D0
    lw      t5, 0x0000(t4)             ## 8011BA00
    lh      t6, 0x1496(t5)             ## 00001496
    addiu   t7, t6, 0x0080             ## t7 = 00000080
    andi    t8, t7, 0x00FF             ## t8 = 00000080
    or      t9, t8, $at                ## t9 = FA000080
    sw      t9, 0x0000(v1)             ## 00000000
    lw      v0, 0x0000(t4)             ## 8011BA00
    lh      t5, 0x148A(v0)             ## 0000148A
    lh      t9, 0x1486(v0)             ## 00001486
    addiu   t6, t5, 0x008C             ## t6 = 0000008C
    andi    t7, t6, 0x00FF             ## t7 = 0000008C
    lh      t5, 0x1488(v0)             ## 00001488
    sll     t8, t7,  8                 
    addiu   t6, t9, 0x008C             ## t6 = FA00010C
    sll     t7, t6, 24                 
    or      t9, t8, t7                 ## t9 = 0000008C
    addiu   t6, t5, 0x0050             ## t6 = 00000050
    andi    t8, t6, 0x00FF             ## t8 = 00000050
    lw      t6, 0x0160(s1)             ## 00000160
    sll     t7, t8, 16                 
    or      t5, t9, t7                 ## t5 = 0000008C
    andi    t8, t6, 0x00FF             ## t8 = 00000050
    or      t9, t5, t8                 ## t9 = 000000DC
    sw      t9, 0x0004(v1)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t6, 0xFB00                 ## t6 = FB000000
    addiu   t7, v1, 0x0008             ## t7 = 00000008
    sw      t7, 0x02D0(s0)             ## 000002D0
    sw      t6, 0x0000(v1)             ## 00000000
    lw      v0, 0x0000(t4)             ## 8011BA00
    lh      t5, 0x1492(v0)             ## 00001492
    lh      t6, 0x148E(v0)             ## 0000148E
    addiu   t8, t5, 0x005F             ## t8 = 000000EB
    andi    t9, t8, 0x00FF             ## t9 = 000000EB
    lh      t5, 0x1490(v0)             ## 00001490
    sll     t7, t9,  8                 
    addiu   t8, t6, 0x005A             ## t8 = FB00005A
    sll     t9, t8, 24                 
    or      t6, t7, t9                 ## t6 = 000000EB
    addiu   t8, t5, 0x0032             ## t8 = 000000BE
    andi    t7, t8, 0x00FF             ## t7 = 000000BE
    lw      t8, 0x0164(s1)             ## 00000164
    sll     t9, t7, 16                 
    or      t5, t6, t9                 ## t5 = 000000EB
    andi    t7, t8, 0x00FF             ## t7 = 000000BE
    or      t6, t5, t7                 ## t6 = 000000FF
    sw      t6, 0x0004(v1)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t8, 0xDB06                 ## t8 = DB060000
    ori     t8, t8, 0x0020             ## t8 = DB060020
    addiu   t9, v1, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(s0)             ## 000002D0
    sw      t8, 0x0000(v1)             ## 00000000
    lh      a3, 0x0002(t0)             ## 00000152
    lh      a2, 0x0000(t0)             ## 00000150
    addiu   t5, $zero, 0x0040          ## t5 = 00000040
    addiu   t7, $zero, 0x0040          ## t7 = 00000040
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    sw      t6, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t5, 0x0010($sp)            
    lh      t9, 0x0004(t0)             ## 00000154
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, $zero, $zero           ## a1 = 00000000
    sw      t9, 0x001C($sp)            
    lh      t8, 0x0006(t0)             ## 00000156
    sw      t7, 0x0028($sp)            
    sw      t5, 0x0024($sp)            
    sw      v1, 0x0050($sp)            
    jal     func_8007EB84              
    sw      t8, 0x0020($sp)            
    lw      t3, 0x0050($sp)            
    lui     t7, 0xDE00                 ## t7 = DE000000
    sw      v0, 0x0004(t3)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t9, 0xDA38                 ## t9 = DA380000
    ori     t9, t9, 0x0002             ## t9 = DA380002
    addiu   t6, v1, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(s0)             ## 000002D0
    sw      t9, 0x0000(v1)             ## 00000000
    lw      t8, 0x0040($sp)            
    sw      t8, 0x0004(v1)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t6, 0x0601                 ## t6 = 06010000
    addiu   t6, t6, 0xE6A0             ## t6 = 0600E6A0
    addiu   t5, v1, 0x0008             ## t5 = 00000008
    sw      t5, 0x02D0(s0)             ## 000002D0
    sw      t6, 0x0004(v1)             ## 00000004
    sw      t7, 0x0000(v1)             ## 00000000
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t8, 0xD838                 ## t8 = D8380000
    ori     t8, t8, 0x0002             ## t8 = D8380002
    addiu   t9, v1, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(s0)             ## 000002D0
    addiu   t5, $zero, 0x0040          ## t5 = 00000040
    sw      t5, 0x0004(v1)             ## 00000004
    sw      t8, 0x0000(v1)             ## 00000000
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0078           ## $sp = 00000000


func_80A72744:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x0140(a0)             ## 00000140
    bltz    v0, lbl_80A7277C           
    slti    $at, v0, 0x0002            
    beq     $at, $zero, lbl_80A7277C   
    sll     t6, v0,  2                 
    lui     v1, %hi(var_80A7279C)      ## v1 = 80A70000
    addu    v1, v1, t6                 
    lw      v1, %lo(var_80A7279C)(v1)  
    beql    v1, $zero, lbl_80A72780    
    lw      $ra, 0x0014($sp)           
    jalr    $ra, v1                    
    nop
lbl_80A7277C:
    lw      $ra, 0x0014($sp)           
lbl_80A72780:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_80A72790: .word func_80A723E0
.word func_80A72400
.word func_80A7243C
var_80A7279C: .word func_80A724C4
.word func_80A724D4
var_80A727A4: .word 0x01180400, 0x00000010, 0x005A0000, 0x00000174
.word func_80A71F20
.word func_80A71F10
.word func_80A7247C
.word func_80A72744
.word 0x00000000, 0x00000000, 0x00000000

.section .rodata


