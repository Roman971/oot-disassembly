.section .text
func_809CAC90:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a1, %hi(var_809CAE10)      # a1 = 809D0000
    sw      $zero, 0x0024($sp)         
    addiu   a1, a1, %lo(var_809CAE10)  # a1 = 809CAE10
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x74EC             # a0 = 060074EC
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      a0, 0x0034($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lui     t6, %hi(func_809CAD40)     # t6 = 809D0000
    addiu   t6, t6, %lo(func_809CAD40) # t6 = 809CAD40
    sw      v0, 0x013C(s0)             # 0000013C
    sw      t6, 0x0154(s0)             # 00000154
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_809CAD0C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809CAD40:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x1C44(a3)             # 00001C44
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, a3, $zero              # a0 = 00000000
    lb      t7, 0x013F(t6)             # 0000013F
    addiu   a1, a3, 0x0810             # a1 = 00000810
    bne     t7, $at, lbl_809CAD88      
    nop
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_800314D8              
    lw      a2, 0x013C(s0)             # 0000013C
    beq     $zero, $zero, lbl_809CAD94 
    or      a0, s0, $zero              # a0 = 00000000
lbl_809CAD88:
    jal     func_80031530              
    lw      a2, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
lbl_809CAD94:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x20CD          # a1 = 000020CD
    lh      t8, 0x00B6(s0)             # 000000B6
    addiu   t9, t8, 0x01C0             # t9 = 000001C0
    sh      t9, 0x00B6(s0)             # 000000B6
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_809CADB8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809CADDC:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop
    nop

.section .data

var_809CADF0: .word 0x00D40600, 0x00000000, 0x00590000, 0x00000158
.word func_809CAC90
.word func_809CAD0C
.word func_809CADB8
.word func_809CADDC
var_809CAE10: .word 0xB0F803E8, 0xB0FC03E8, 0x48500064, 0x00000000

.section .rodata


