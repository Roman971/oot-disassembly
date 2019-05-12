#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A79A70:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0034($sp)            
	sw      $zero, 0x0024($sp)         
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80035260              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lui     a1, %hi(var_80A79FE0)      ## a1 = 80A80000
	addiu   a1, a1, %lo(var_80A79FE0)  ## a1 = 80A79FE0
	jal     func_80063F7C              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     t6, 0x8012                 ## t6 = 80120000
	lw      t6, -0x5A2C(t6)            ## 8011A5D4
	bne     t6, $zero, lbl_80A79AFC    
	nop
	lh      t7, 0x001C(s0)             ## 0000001C
	lui     a0, 0x0600                 ## a0 = 06000000
	addiu   a1, $sp, 0x0024            ## a1 = FFFFFFF4
	bne     t7, $zero, lbl_80A79ADC    
	addiu   a0, a0, 0x38FC             ## a0 = 060038FC
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_80033EF4              
	addiu   a0, a0, 0x2590             ## a0 = 06002590
	beq     $zero, $zero, lbl_80A79AE8 
	lw      a0, 0x0034($sp)            
lbl_80A79ADC:
	jal     func_80033EF4              
	addiu   a1, $sp, 0x0024            ## a1 = FFFFFFF4
	lw      a0, 0x0034($sp)            
lbl_80A79AE8:
	or      a2, s0, $zero              ## a2 = 00000000
	lw      a3, 0x0024($sp)            
	jal     func_800313A4              ## DynaPolyInfo_setActor
	addiu   a1, a0, 0x0810             ## a1 = 00000810
	sw      v0, 0x013C(s0)             ## 0000013C
lbl_80A79AFC:
	lui     t8, %hi(func_80A79B50)     ## t8 = 80A80000
	addiu   t8, t8, %lo(func_80A79B50) ## t8 = 80A79B50
	sw      t8, 0x0154(s0)             ## 00000154
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A79B1C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	or      a3, a1, $zero              ## a3 = 00000000
	lw      t6, 0x0018($sp)            
	or      a0, a3, $zero              ## a0 = 00000000
	addiu   a1, a3, 0x0810             ## a1 = 00000810
	jal     func_80031638              ## DynaPolyInfo_delReserve
	lw      a2, 0x013C(t6)             ## 0000013C
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A79B50:
	sw      a0, 0x0000($sp)            
	sw      a1, 0x0004($sp)            
	jr      $ra                        
	nop


func_80A79B60:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lw      t9, 0x0154(a0)             ## 00000154
	jalr    $ra, t9                    
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A79B84:
	addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
	sw      s2, 0x003C($sp)            
	or      s2, a1, $zero              ## s2 = 00000000
	sw      $ra, 0x0044($sp)           
	sw      s3, 0x0040($sp)            
	sw      s1, 0x0038($sp)            
	sw      s0, 0x0034($sp)            
	sw      a0, 0x0098($sp)            
	lui     t6, 0x8012                 ## t6 = 80120000
	lw      t6, -0x5A2C(t6)            ## 8011A5D4
	lw      a2, 0x0000(s2)             ## 00000000
	lui     s3, 0x0001                 ## s3 = 00010000
	addu    s3, s3, s2                 
	lw      s3, 0x1DE4(s3)             ## 00011DE4
	bne     t6, $zero, lbl_80A79C50    
	or      s1, a2, $zero              ## s1 = 00000000
	jal     func_8007E298              
	or      a0, a2, $zero              ## a0 = 00000000
	lw      v0, 0x02C0(s1)             ## 000002C0
	lui     t8, 0xDA38                 ## t8 = DA380000
	ori     t8, t8, 0x0003             ## t8 = DA380003
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s1)             ## 000002C0
	sw      t8, 0x0000(v0)             ## 00000000
	lw      a0, 0x0000(s2)             ## 00000000
	jal     func_800AB900              
	or      s0, v0, $zero              ## s0 = 00000000
	sw      v0, 0x0004(s0)             ## 00000004
	lw      t9, 0x0098($sp)            
	lui     t3, 0xDE00                 ## t3 = DE000000
	lui     t6, 0xDE00                 ## t6 = DE000000
	lh      t1, 0x001C(t9)             ## 0000001C
	bnel    t1, $zero, lbl_80A79C34    
	lw      v0, 0x02C0(s1)             ## 000002C0
	lw      v0, 0x02C0(s1)             ## 000002C0
	lui     t4, 0x0600                 ## t4 = 06000000
	addiu   t4, t4, 0x1CF0             ## t4 = 06001CF0
	addiu   t2, v0, 0x0008             ## t2 = 00000008
	sw      t2, 0x02C0(s1)             ## 000002C0
	sw      t4, 0x0004(v0)             ## 00000004
	sw      t3, 0x0000(v0)             ## 00000000
	beq     $zero, $zero, lbl_80A79C50 
	lw      a2, 0x0000(s2)             ## 00000000
	lw      v0, 0x02C0(s1)             ## 000002C0
lbl_80A79C34:
	lui     t7, 0x0600                 ## t7 = 06000000
	addiu   t7, t7, 0x3210             ## t7 = 06003210
	addiu   t5, v0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s1)             ## 000002C0
	sw      t7, 0x0004(v0)             ## 00000004
	sw      t6, 0x0000(v0)             ## 00000000
	lw      a2, 0x0000(s2)             ## 00000000
lbl_80A79C50:
	jal     func_8007E2C0              
	or      a0, a2, $zero              ## a0 = 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t9, 0xDA38                 ## t9 = DA380000
	ori     t9, t9, 0x0003             ## t9 = DA380003
	addiu   t8, s0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s1)             ## 000002D0
	sw      t9, 0x0000(s0)             ## 00000000
	lw      a0, 0x0000(s2)             ## 00000000
	jal     func_800AB900              
	sw      s0, 0x0078($sp)            
	lw      v1, 0x0078($sp)            
	lui     t2, 0xDB06                 ## t2 = DB060000
	ori     t2, t2, 0x0020             ## t2 = DB060020
	sw      v0, 0x0004(v1)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	subu    a2, $zero, s3              
	andi    a3, s3, 0x007F             ## a3 = 00000000
	addiu   t1, s0, 0x0008             ## t1 = 00000008
	sw      t1, 0x02D0(s1)             ## 000002D0
	sw      t2, 0x0000(s0)             ## 00000000
	lw      a0, 0x0000(s2)             ## 00000000
	andi    a2, a2, 0x007F             ## a2 = 00000000
	addiu   t3, $zero, 0x0020          ## t3 = 00000020
	addiu   t4, $zero, 0x0020          ## t4 = 00000020
	addiu   t5, $zero, 0x0001          ## t5 = 00000001
	addiu   t6, $zero, 0x0020          ## t6 = 00000020
	addiu   t7, $zero, 0x0020          ## t7 = 00000020
	sw      t7, 0x0028($sp)            
	sw      t6, 0x0024($sp)            
	sw      t5, 0x0018($sp)            
	sw      t4, 0x0014($sp)            
	sw      t3, 0x0010($sp)            
	sw      a2, 0x004C($sp)            
	sw      a3, 0x0048($sp)            
	sw      a3, 0x0020($sp)            
	sw      a3, 0x001C($sp)            
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_8007EB84              
	sw      s0, 0x0074($sp)            
	lw      t0, 0x0074($sp)            
	lw      a3, 0x004C($sp)            
	lui     t8, 0x8012                 ## t8 = 80120000
	sw      v0, 0x0004(t0)             ## 00000004
	lw      t8, -0x5A2C(t8)            ## 8011A5D4
	lw      t4, 0x0098($sp)            
	beql    t8, $zero, lbl_80A79F4C    
	lh      t5, 0x001C(t4)             ## 0000001C
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t1, 0xFB00                 ## t1 = FB000000
	addiu   t2, $zero, 0xFF80          ## t2 = FFFFFF80
	addiu   t9, s0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s1)             ## 000002D0
	sw      t2, 0x0004(s0)             ## 00000004
	sw      t1, 0x0000(s0)             ## 00000000
	lw      t3, 0x0098($sp)            
	lui     t6, 0xDB06                 ## t6 = DB060000
	ori     t6, t6, 0x0024             ## t6 = DB060024
	lh      t4, 0x001C(t3)             ## 0000001C
	or      a1, $zero, $zero           ## a1 = 00000000
	or      a2, $zero, $zero           ## a2 = 00000000
	bne     t4, $zero, lbl_80A79E5C    
	addiu   t7, $zero, 0x0020          ## t7 = 00000020
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t6, 0xDB06                 ## t6 = DB060000
	ori     t6, t6, 0x0024             ## t6 = DB060024
	addiu   t5, s0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s1)             ## 000002D0
	sw      t6, 0x0000(s0)             ## 00000000
	lw      a0, 0x0000(s2)             ## 00000000
	subu    $at, $zero, s3             
	sll     a3, $at,  2                
	lw      t1, 0x0048($sp)            
	subu    a3, a3, $at                
	andi    a3, a3, 0x00FF             ## a3 = 00000000
	addiu   t7, $zero, 0x0040          ## t7 = 00000040
	addiu   t8, $zero, 0x0040          ## t8 = 00000040
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	addiu   t2, $zero, 0x0040          ## t2 = 00000040
	addiu   t3, $zero, 0x0040          ## t3 = 00000040
	sw      t3, 0x0028($sp)            
	sw      t2, 0x0024($sp)            
	sw      t9, 0x0018($sp)            
	sw      t8, 0x0014($sp)            
	sw      t7, 0x0010($sp)            
	sw      a3, 0x0020($sp)            
	lw      a2, 0x004C($sp)            
	or      a1, $zero, $zero           ## a1 = 00000000
	sw      s0, 0x006C($sp)            
	jal     func_8007EB84              
	sw      t1, 0x001C($sp)            
	lw      v1, 0x006C($sp)            
	lui     t5, 0xDB06                 ## t5 = DB060000
	ori     t5, t5, 0x0028             ## t5 = DB060028
	sw      v0, 0x0004(v1)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	sll     a3, s3,  2                 
	subu    a3, a3, s3                 
	addiu   t4, s0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02D0(s1)             ## 000002D0
	sw      t5, 0x0000(s0)             ## 00000000
	lw      a0, 0x0000(s2)             ## 00000000
	andi    a3, a3, 0x01FF             ## a3 = 00000000
	addiu   t6, $zero, 0x0020          ## t6 = 00000020
	addiu   t7, $zero, 0x0080          ## t7 = 00000080
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	addiu   t9, $zero, 0x0020          ## t9 = 00000020
	addiu   t1, $zero, 0x0080          ## t1 = 00000080
	sw      t1, 0x0028($sp)            
	sw      t9, 0x0024($sp)            
	sw      t8, 0x0018($sp)            
	sw      t7, 0x0014($sp)            
	sw      t6, 0x0010($sp)            
	sw      a3, 0x0020($sp)            
	sw      $zero, 0x001C($sp)         
	or      a1, $zero, $zero           ## a1 = 00000000
	or      a2, $zero, $zero           ## a2 = 00000000
	jal     func_8007EB84              
	sw      s0, 0x0068($sp)            
	lw      t0, 0x0068($sp)            
	lui     t3, 0xDE00                 ## t3 = DE000000
	sw      v0, 0x0004(t0)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t4, 0x0600                 ## t4 = 06000000
	addiu   t4, t4, 0x0460             ## t4 = 06000460
	addiu   t2, s0, 0x0008             ## t2 = 00000008
	sw      t2, 0x02D0(s1)             ## 000002D0
	sw      t4, 0x0004(s0)             ## 00000004
	sw      t3, 0x0000(s0)             ## 00000000
	beq     $zero, $zero, lbl_80A79FA0 
	lw      $ra, 0x0044($sp)           
lbl_80A79E5C:
	lw      s0, 0x02D0(s1)             ## 000002D0
	addiu   t8, $zero, 0x0020          ## t8 = 00000020
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	addiu   t5, s0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s1)             ## 000002D0
	sw      t6, 0x0000(s0)             ## 00000000
	lw      a0, 0x0000(s2)             ## 00000000
	addiu   t1, $zero, 0x0020          ## t1 = 00000020
	addiu   t2, $zero, 0x0020          ## t2 = 00000020
	sw      t2, 0x0028($sp)            
	sw      t1, 0x0024($sp)            
	sw      $zero, 0x0048($sp)         
	sw      a3, 0x0020($sp)            
	sw      $zero, 0x001C($sp)         
	sw      t9, 0x0018($sp)            
	sw      t8, 0x0014($sp)            
	sw      t7, 0x0010($sp)            
	jal     func_8007EB84              
	sw      s0, 0x0060($sp)            
	lw      v1, 0x0060($sp)            
	lw      a2, 0x0048($sp)            
	lui     t4, 0xDB06                 ## t4 = DB060000
	sw      v0, 0x0004(v1)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	ori     t4, t4, 0x0028             ## t4 = DB060028
	sll     a3, s3,  2                 
	addiu   t3, s0, 0x0008             ## t3 = 00000008
	sw      t3, 0x02D0(s1)             ## 000002D0
	sw      t4, 0x0000(s0)             ## 00000000
	lw      a0, 0x0000(s2)             ## 00000000
	subu    a3, a3, s3                 
	andi    a3, a3, 0x01FF             ## a3 = 00000000
	addiu   t5, $zero, 0x0020          ## t5 = 00000020
	addiu   t6, $zero, 0x0080          ## t6 = 00000080
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	addiu   t8, $zero, 0x0020          ## t8 = 00000020
	addiu   t9, $zero, 0x0080          ## t9 = 00000080
	sw      t9, 0x0028($sp)            
	sw      t8, 0x0024($sp)            
	sw      t7, 0x0018($sp)            
	sw      t6, 0x0014($sp)            
	sw      t5, 0x0010($sp)            
	sw      a3, 0x0020($sp)            
	sw      a2, 0x001C($sp)            
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_8007EB84              
	sw      s0, 0x005C($sp)            
	lw      t0, 0x005C($sp)            
	lui     t2, 0xDE00                 ## t2 = DE000000
	sw      v0, 0x0004(t0)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t3, 0x0600                 ## t3 = 06000000
	addiu   t3, t3, 0x0BE0             ## t3 = 06000BE0
	addiu   t1, s0, 0x0008             ## t1 = 00000008
	sw      t1, 0x02D0(s1)             ## 000002D0
	sw      t3, 0x0004(s0)             ## 00000004
	sw      t2, 0x0000(s0)             ## 00000000
	beq     $zero, $zero, lbl_80A79FA0 
	lw      $ra, 0x0044($sp)           
	lh      t5, 0x001C(t4)             ## 0000001C
lbl_80A79F4C:
	lui     t7, 0xDE00                 ## t7 = DE000000
	lui     t1, 0xDE00                 ## t1 = DE000000
	bnel    t5, $zero, lbl_80A79F84    
	lw      s0, 0x02D0(s1)             ## 000002D0
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t8, 0x0600                 ## t8 = 06000000
	addiu   t8, t8, 0x1F68             ## t8 = 06001F68
	addiu   t6, s0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s1)             ## 000002D0
	sw      t8, 0x0004(s0)             ## 00000004
	sw      t7, 0x0000(s0)             ## 00000000
	beq     $zero, $zero, lbl_80A79FA0 
	lw      $ra, 0x0044($sp)           
	lw      s0, 0x02D0(s1)             ## 000002D0
lbl_80A79F84:
	lui     t2, 0x0600                 ## t2 = 06000000
	addiu   t2, t2, 0x32D8             ## t2 = 060032D8
	addiu   t9, s0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s1)             ## 000002D0
	sw      t2, 0x0004(s0)             ## 00000004
	sw      t1, 0x0000(s0)             ## 00000000
	lw      $ra, 0x0044($sp)           
lbl_80A79FA0:
	lw      s0, 0x0034($sp)            
	lw      s1, 0x0038($sp)            
	lw      s2, 0x003C($sp)            
	lw      s3, 0x0040($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0098           ## $sp = 00000000
	nop
	nop

.section .data

var_80A79FC0: .word 0x01200100, 0x00000030, 0x01130000, 0x00000158
.word func_80A79A70
.word func_80A79B1C
.word func_80A79B60
.word func_80A79B84
var_80A79FE0: .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

.section .rodata


