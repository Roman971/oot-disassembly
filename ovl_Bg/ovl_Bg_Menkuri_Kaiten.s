.section .text
func_8090B000:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lui     a1, %hi(var_8090B150)      # a1 = 80910000
    sw      $zero, 0x001C($sp)         
    addiu   a1, a1, %lo(var_8090B150)  # a1 = 8090B150
    jal     func_80063F7C              
    lw      a0, 0x0028($sp)            
    lw      a0, 0x0028($sp)            
    jal     func_80035260              
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x42D8             # a0 = 060042D8
    jal     func_80033EF4              
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFF4
    lw      a0, 0x002C($sp)            
    lw      a2, 0x0028($sp)            
    lw      a3, 0x001C($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      t6, 0x0028($sp)            
    sw      v0, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_8090B068:
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


func_8090B09C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8002049C              
    lh      a1, 0x001C(s0)             # 0000001C
    bnel    v0, $zero, lbl_8090B0EC    
    lw      $ra, 0x001C($sp)           
    jal     func_80035388              
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_8090B0E8    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002313C              
    addiu   a1, $zero, 0x2024          # a1 = 00002024
    lh      t6, 0x00B6(s0)             # 000000B6
    addiu   t7, t6, 0x0080             # t7 = 00000080
    sh      t7, 0x00B6(s0)             # 000000B6
lbl_8090B0E8:
    lw      $ra, 0x001C($sp)           
lbl_8090B0EC:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8090B0FC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x38D0             # a1 = 060038D0
    jal     func_80028048              
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_8090B130: .word 0x00610100, 0x00000030, 0x004D0000, 0x00000154
.word func_8090B000
.word func_8090B068
.word func_8090B09C
.word func_8090B0FC
var_8090B150: .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

.section .rodata


