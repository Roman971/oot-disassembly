#ifndef _RCP_H_
#define _RCP_H_

#include "ultra.h"

/******************** PIF Physical Memory *******************/

#define PIF_ROM_START               0x1FC00000
#define PIF_ROM_END                 0x1FC007BF
#define PIF_RAM_START               0x1FC007C0
#define PIF_RAM_END                 0x1FC007FF

/********************* Signal Processor *********************/

#define SP_MEM_ADDR_REG             0xA4040000
#define SP_DRAM_ADDR_REG            0xA4040004
#define SP_RD_LEN_REG               0xA4040008
#define SP_WR_LEN_REG               0xA404000C
#define SP_STATUS_REG               0xA4040010
#define SP_DMA_FULL_REG             0xA4040014
#define SP_DMA_BUSY_REG             0xA4040018
#define SP_SEMAPHORE_REG            0xA404001C

#define SP_PC_REG                   0xA4080000

#define SP_DMA_DMEM                 0x0000
#define SP_DMA_IMEM                 0x1000

// Values to clear/set bit in status reg (SP_STATUS_REG - write)
#define SP_CLR_HALT                 0x00000001  // Bit  0: clear halt
#define SP_SET_HALT                 0x00000002  // Bit  1: set halt
#define SP_CLR_BROKE                0x00000004  // Bit  2: clear broke
#define SP_CLR_INTR                 0x00000008  // Bit  3: clear intr
#define SP_SET_INTR                 0x00000010  // Bit  4: set intr
#define SP_CLR_SSTEP                0x00000020  // Bit  5: clear sstep
#define SP_SET_SSTEP                0x00000040  // Bit  6: set sstep
#define SP_CLR_INTR_BREAK           0x00000080  // Bit  7: clear intr on break
#define SP_SET_INTR_BREAK           0x00000100  // Bit  8: set intr on break
#define SP_CLR_SIG0                 0x00000200  // Bit  9: clear signal 0
#define SP_SET_SIG0                 0x00000400  // Bit 10: set signal 0
#define SP_CLR_SIG1                 0x00000800  // Bit 11: clear signal 1
#define SP_SET_SIG1                 0x00001000  // Bit 12: set signal 1
#define SP_CLR_SIG2                 0x00002000  // Bit 13: clear signal 2
#define SP_SET_SIG2                 0x00004000  // Bit 14: set signal 2
#define SP_CLR_SIG3                 0x00008000  // Bit 15: clear signal 3
#define SP_SET_SIG3                 0x00010000  // Bit 16: set signal 3
#define SP_CLR_SIG4                 0x00020000  // Bit 17: clear signal 4
#define SP_SET_SIG4                 0x00040000  // Bit 18: set signal 4
#define SP_CLR_SIG5                 0x00080000  // Bit 19: clear signal 5
#define SP_SET_SIG5                 0x00100000  // Bit 20: set signal 5
#define SP_CLR_SIG6                 0x00200000  // Bit 21: clear signal 6
#define SP_SET_SIG6                 0x00400000  // Bit 22: set signal 6
#define SP_CLR_SIG7                 0x00800000  // Bit 23: clear signal 7
#define SP_SET_SIG7                 0x01000000  // Bit 24: set signal 7

// Patterns to interpret status reg (SP_STATUS_REG - read)
#define SP_STATUS_HALT              0x0001  // Bit  0: halt
#define SP_STATUS_BROKE             0x0002  // Bit  1: broke
#define SP_STATUS_DMA_BUSY          0x0004  // Bit  2: dma busy
#define SP_STATUS_DMA_FULL          0x0008  // Bit  3: dma full
#define SP_STATUS_IO_FULL           0x0010  // Bit  4: io full
#define SP_STATUS_SSTEP             0x0020  // Bit  5: single step
#define SP_STATUS_INTR_BREAK        0x0040  // Bit  6: interrupt on break
#define SP_STATUS_SIG0              0x0080  // Bit  7: signal 0 set
#define SP_STATUS_SIG1              0x0100  // Bit  8: signal 1 set
#define SP_STATUS_SIG2              0x0200  // Bit  9: signal 2 set
#define SP_STATUS_SIG3              0x0400  // Bit 10: signal 3 set
#define SP_STATUS_SIG4              0x0800  // Bit 11: signal 4 set
#define SP_STATUS_SIG5              0x1000  // Bit 12: signal 5 set
#define SP_STATUS_SIG6              0x2000  // Bit 13: signal 6 set
#define SP_STATUS_SIG7              0x4000  // Bit 14: signal 7 set

// Usage of SIG bits
#define SP_CLR_YIELD                SP_CLR_SIG0
#define SP_SET_YIELD                SP_SET_SIG0
#define SP_STATUS_YIELD             SP_STATUS_SIG0
#define SP_CLR_YIELDED              SP_CLR_SIG1
#define SP_SET_YIELDED              SP_SET_SIG1
#define SP_STATUS_YIELDED           SP_STATUS_SIG1
#define SP_CLR_TASKDONE             SP_CLR_SIG2
#define SP_SET_TASKDONE             SP_SET_SIG2
#define SP_STATUS_TASKDONE          SP_STATUS_SIG2
#define SP_CLR_RSPSIGNAL            SP_CLR_SIG3
#define SP_SET_RSPSIGNAL            SP_SET_SIG3
#define SP_STATUS_RSPSIGNAL         SP_STATUS_SIG3
#define SP_CLR_CPUSIGNAL            SP_CLR_SIG4
#define SP_SET_CPUSIGNAL            SP_SET_SIG4
#define SP_STATUS_CPUSIGNAL         SP_STATUS_SIG4

/******************** Display Processor *********************/

#define DPC_START_REG               0xA4100000
#define DPC_END_REG                 0xA4100004
#define DPC_CURRENT_REG             0xA4100008
#define DPC_STATUS_REG              0xA410000C
#define DPC_CLOCK_REG               0xA4100010
#define DPC_BUFBUSY_REG             0xA4100014
#define DPC_PIPEBUSY_REG            0xA4100018
#define DPC_TMEM_REG                0xA410001C

// Values to clear/set bit in status reg (DPC_STATUS_REG - write)
#define DPC_CLR_XBUS_DMEM_DMA       0x0001  // Bit 0: clear xbus_dmem_dma
#define DPC_SET_XBUS_DMEM_DMA       0x0002  // Bit 1: set xbus_dmem_dma
#define DPC_CLR_FREEZE              0x0004  // Bit 2: clear freeze
#define DPC_SET_FREEZE              0x0008  // Bit 3: set freeze
#define DPC_CLR_FLUSH               0x0010  // Bit 4: clear flush
#define DPC_SET_FLUSH               0x0020  // Bit 5: set flush
#define DPC_CLR_TMEM_CTR            0x0040  // Bit 6: clear tmem ctr
#define DPC_CLR_PIPE_CTR            0x0080  // Bit 7: clear pipe ctr
#define DPC_CLR_CMD_CTR             0x0100  // Bit 8: clear cmd ctr
#define DPC_CLR_CLOCK_CTR           0x0200  // Bit 9: clear clock ctr

// Patterns to interpret status reg (DPC_STATUS_REG - read)
#define DPC_STATUS_XBUS_DMEM_DMA    0x0001  // Bit  0: xbus_dmem_dma
#define DPC_STATUS_FREEZE           0x0002  // Bit  1: freeze
#define DPC_STATUS_FLUSH            0x0004  // Bit  2: flush
#define DPC_STATUS_START_GCLK       0x0008  // Bit  3: start gclk
#define DPC_STATUS_TMEM_BUSY        0x0010  // Bit  4: tmem busy
#define DPC_STATUS_PIPE_BUSY        0x0020  // Bit  5: pipe busy
#define DPC_STATUS_CMD_BUSY         0x0040  // Bit  6: cmd busy
#define DPC_STATUS_CBUF_READY       0x0080  // Bit  7: cbuf ready
#define DPC_STATUS_DMA_BUSY         0x0100  // Bit  8: dma busy
#define DPC_STATUS_END_VALID        0x0200  // Bit  9: end valid
#define DPC_STATUS_START_VALID      0x0400  // Bit 10: start valid

/********************** MIPS Interface **********************/

#define MI_INIT_MODE_REG            0xA4300000
#define MI_MODE_REG                 MI_INIT_MODE_REG
#define MI_VERSION_REG              0xA4300004
#define MI_NOOP_REG                 MI_VERSION_REG
#define MI_INTR_REG                 0xA4300008
#define MI_INTR_MASK_REG            0xA430000C

// Values to clear/set bit in mode reg (MI_MODE_REG - write)
#define MI_CLR_INIT                 0x0080  // Bit  7: clear init mode
#define MI_SET_INIT                 0x0100  // Bit  8: set init mode
#define MI_CLR_EBUS                 0x0200  // Bit  9: clear ebus test
#define MI_SET_EBUS                 0x0400  // Bit 10: set ebus test mode
#define MI_CLR_DP_INTR              0x0800  // Bit 11: clear dp interrupt
#define MI_CLR_RDRAM                0x1000  // Bit 12: clear RDRAM reg
#define MI_SET_RDRAM                0x2000  // Bit 13: set RDRAM reg mode

// Patterns to interpret mode reg (MI_MODE_REG - read)
#define MI_MODE_INIT                0x0080  // Bit  7: init mode
#define MI_MODE_EBUS                0x0100  // Bit  8: ebus test mode
#define MI_MODE_RDRAM               0x0200  // Bit  9: RDRAM reg mode

// Values to check for interrupt setting (MI_INTR_REG)
#define MI_INTR_SP                  0x01    // Bit 0: SP interrupt
#define MI_INTR_SI                  0x02    // Bit 1: SI interrupt
#define MI_INTR_AI                  0x04    // Bit 2: AI interrupt
#define MI_INTR_VI                  0x08    // Bit 3: VI interrupt
#define MI_INTR_PI                  0x10    // Bit 4: PI interrupt
#define MI_INTR_DP                  0x20    // Bit 5: DP interrupt

// Values to clear/set various interrupt bit mask (MI_INTR_MASK_REG - write)
#define MI_INTR_MASK_CLR_SP         0x0001  // Bit  0: clear SP mask
#define MI_INTR_MASK_SET_SP         0x0002  // Bit  1: set SP mask
#define MI_INTR_MASK_CLR_SI         0x0004  // Bit  2: clear SI mask
#define MI_INTR_MASK_SET_SI         0x0008  // Bit  3: set SI mask
#define MI_INTR_MASK_CLR_AI         0x0010  // Bit  4: clear AI mask
#define MI_INTR_MASK_SET_AI         0x0020  // Bit  5: set AI mask
#define MI_INTR_MASK_CLR_VI         0x0040  // Bit  6: clear VI mask
#define MI_INTR_MASK_SET_VI         0x0080  // Bit  7: set VI mask
#define MI_INTR_MASK_CLR_PI         0x0100  // Bit  8: clear PI mask
#define MI_INTR_MASK_SET_PI         0x0200  // Bit  9: set PI mask
#define MI_INTR_MASK_CLR_DP         0x0400  // Bit 10: clear DP mask
#define MI_INTR_MASK_SET_DP         0x0800  // Bit 11: set DP mask

// Values to check for interrupt mask setting (MI_INTR_MASK_REG - read)
#define MI_INTR_MASK_SP             0x01    // Bit 0: SP interrupt mask
#define MI_INTR_MASK_SI             0x02    // Bit 1: SI interrupt mask
#define MI_INTR_MASK_AI             0x04    // Bit 2: AI interrupt mask
#define MI_INTR_MASK_VI             0x08    // Bit 3: VI interrupt mask
#define MI_INTR_MASK_PI             0x10    // Bit 4: PI interrupt mask
#define MI_INTR_MASK_DP             0x20    // Bit 5: DP interrupt mask

/********************* Video Interface **********************/

#define VI_STATUS_REG               0xA4400000
#define VI_CONTROL_REG              VI_STATUS_REG
#define VI_ORIGIN_REG               0xA4400004
#define VI_DRAM_ADDR_REG            VI_ORIGIN_REG
#define VI_WIDTH_REG                0xA4400008
#define VI_H_WIDTH_REG              VI_WIDTH_REG
#define VI_INTR_REG                 0xA440000C
#define VI_V_INTR_REG               VI_INTR_REG
#define VI_CURRENT_REG              0xA4400010
#define VI_V_CURRENT_LINE_REG       VI_CURRENT_REG
#define VI_BURST_REG                0xA4400014
#define VI_TIMING_REG               VI_BURST_REG
#define VI_V_SYNC_REG               0xA4400018
#define VI_H_SYNC_REG               0xA440001C
#define VI_LEAP_REG                 0xA4400020
#define VI_H_SYNC_LEAP_REG          VI_LEAP_REG
#define VI_H_START_REG              0xA4400024
#define VI_H_VIDEO_REG              VI_H_START_REG
#define VI_V_START_REG              0xA4400028
#define VI_V_VIDEO_REG              VI_V_START_REG
#define VI_V_BURST_REG              0xA440002C
#define VI_X_SCALE_REG              0xA4400030
#define VI_Y_SCALE_REG              0xA4400034

// Patterns to interpret VI_CONTROL_REG
#define VI_CTRL_TYPE_16             0x00002     // Bit [1:0] pixel size: 16 bit
#define VI_CTRL_TYPE_32             0x00003     // Bit [1:0] pixel size: 32 bit
#define VI_CTRL_GAMMA_DITHER_ON     0x00004     // Bit 2: gamma-dither mode
#define VI_CTRL_GAMMA_ON            0x00008     // Bit 3: gamma mode
#define VI_CTRL_DIVOT_ON            0x00010     // Bit 4: divot mode
#define VI_CTRL_SERRATE_ON          0x00040     // Bit 6: serrate mode
#define VI_CTRL_ANTIALIAS_MASK      0x00300     // Bit [9:8] anti-alias mode
#define VI_CTRL_DITHER_FILTER_ON    0x10000     // Bit 16: dither-filter mode

#define VI_NTSC_CLOCK               48681812    // Hz = 48.681812 MHz (0x02E6D354)

/********************* Audio Interface **********************/

#define AI_DRAM_ADDR_REG            0xA4500000
#define AI_LEN_REG                  0xA4500004
#define AI_CONTROL_REG              0xA4500008
#define AI_STATUS_REG               0xA450000C
#define AI_DACRATE_REG              0xA4500010
#define AI_BITRATE_REG              0xA4500014

#define AI_CONTROL_DMA_ON           0x01
#define AI_CONTROL_DMA_OFF          0x00

#define AI_STATUS_FIFO_FULL         0x80000000
#define AI_STATUS_DMA_BUSY          0x40000000

#define AI_MAX_DAC_RATE             16384
#define AI_MIN_DAC_RATE             132

#define AI_MAX_BIT_RATE             16
#define AI_MIN_BIT_RATE             2

#define AI_NTSC_MAX_FREQ            368000  // 368 KHz
#define AI_NTSC_MIN_FREQ            3000    //   3 KHz ~ 2971 Hz

/******************** Peripheral Interface ********************/

#define PI_DRAM_ADDR_REG            0xA4600000
#define PI_CART_ADDR_REG            0xA4600004
#define PI_RD_LEN_REG               0xA4600008
#define PI_WR_LEN_REG               0xA460000C
#define PI_STATUS_REG               0xA4600010
#define PI_BSD_DOM1_LAT_REG         0xA4600014
#define PI_BSD_DOM1_PWD_REG         0xA4600018
#define PI_BSD_DOM1_PGS_REG         0xA460001C
#define PI_BSD_DOM1_RLS_REG         0xA4600020
#define PI_BSD_DOM2_LAT_REG         0xA4600024
#define PI_BSD_DOM2_PWD_REG         0xA4600028
#define PI_BSD_DOM2_PGS_REG         0xA460002C
#define PI_BSD_DOM2_RLS_REG         0xA4600030

#define PI_DOMAIN1_REG              PI_BSD_DOM1_LAT_REG
#define PI_DOMAIN2_REG              PI_BSD_DOM2_LAT_REG

#define PI_DOM_LAT_OFS              0x00
#define PI_DOM_PWD_OFS              0x04
#define PI_DOM_PGS_OFS              0x08
#define PI_DOM_RLS_OFS              0x0C

// Patterns to interpret status reg (PI_STATUS_REG - read)
#define PI_STATUS_ERROR             0x04
#define PI_STATUS_IO_BUSY           0x02
#define PI_STATUS_DMA_BUSY          0x01

// Values to clear interrupt/reset PIC (PI_STATUS_REG - write)
#define PI_STATUS_RESET             0x01
#define PI_SET_RESET                PI_STATUS_RESET
#define PI_STATUS_CLR_INTR          0x02
#define PI_CLR_INTR                 PI_STATUS_CLR_INTR

#define PI_DMA_BUFFER_SIZE          128

#define PI_DOM1_ADDR1               0x06000000
#define PI_DOM1_ADDR2               0x10000000
#define PI_DOM1_ADDR3               0x1FD00000
#define PI_DOM2_ADDR1               0x05000000
#define PI_DOM2_ADDR2               0x08000000

/********************* Serial Interface *********************/

#define SI_DRAM_ADDR_REG            0xA4800000
#define SI_PIF_ADDR_RD64B_REG       0xA4800004
#define SI_PIF_ADDR_WR64B_REG       0xA4800010
#define SI_STATUS_REG               0xA4800018

// Patterns to interpret status reg (SI_STATUS_REG - read)
#define SI_STATUS_DMA_BUSY          0x0001  // DMA in progress
#define SI_STATUS_RD_BUSY           0x0002  // IO access in progress
#define SI_STATUS_DMA_ERROR         0x0008  // overlapping DMA request
#define SI_STATUS_INTERRUPT         0x1000  // interrupt

#endif
