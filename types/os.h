#ifndef _OS_H_
#define _OS_H_

#include "ultra.h"

/************************* Thread ***************************/

// Thread states
#define OS_STATE_STOPPED        1
#define OS_STATE_RUNNABLE       2
#define OS_STATE_RUNNING        4
#define OS_STATE_WAITING        8

// Thread priority values
#define OS_PRIORITY_IDLE        0
#define OS_PRIORITY_APPMAX      127
#define OS_PRIORITY_SIMGR       140
#define OS_PRIORITY_PIMGR       150
#define OS_PRIORITY_RMONSPIN    200
#define OS_PRIORITY_RMON        250
#define OS_PRIORITY_VIMGR       254
#define OS_PRIORITY_MAX         255

typedef s32 OSPri; // Priority Value
typedef s32 OSId;  // Debugging ID

typedef struct {
  /* 0x00 */ __OSStackContext*      next;     // Next stack
  /* 0x04 */ __OSStackContext*      prev;     // Previous stack
  /* 0x08 */ void*                  start;    // Stack start address
  /* 0x0C */ void*                  end;      // Stack end address
  /* 0x10 */ u32                    init;     // Stack initial value
  /* 0x14 */ u32                    unk_0x14;
  /* 0x18 */ char*                  thrname;  // Pointer to thread name
  /* 0x20 */
} __OSStackContext;

typedef struct {
  /* 0x0000 */  u64         at, v0, v1, a0, a1, a2, a3,
  /* 0x0038 */          t0, t1, t2, t3, t4, t5, t6, t7,
  /* 0x0078 */          s0, s1, s2, s3, s4, s5, s6, s7,
  /* 0x00B8 */          t8, t9, gp, sp, s8, ra, lo, hi;
  /* 0x00F8 */  u32     sr, pc, cause, badvaddr, rcp;
  /* 0x010C */  u32     fpcsr;
  /* 0x0110 */  union {
                  f32   fp32[32];
                  f64   fp64[16];
  /* 0x0190 */  };
} __OSThreadContext;

typedef struct {
  /* 0x0000 */ OSThread*            next;     // Next thread in queue
  /* 0x0004 */ OSPri                priority; // Thread priority
  /* 0x0008 */ OSThread**           queue;    // Queue the thread is on
  /* 0x000C */ OSThread*            tlnext;
  /* 0x0010 */ u16                  state;    // Thread state (OS_STATE_*)
  /* 0x0012 */ u16                  flags;    // Flags for rmon
  /* 0x0014 */ OSId                 id;       // ID for debugging
  /* 0x0018 */ s32                  fp;
  /* 0x0020 */ __OSThreadContext    context;
  /* 0x01B0 */
} OSThread;

/************************* Message **************************/

#define OS_NUM_EVENTS           15  // Number of valid events

// Events associated to messages
#define OS_EVENT_SW1            0   // System software interrupt 1 asserted
#define OS_EVENT_SW2            1   // System software interrupt 2 asserted
#define OS_EVENT_CART           2   // Peripheral has generated an interrupt
#define OS_EVENT_COUNTER        3   // Internal counter reached terminal count
#define OS_EVENT_SP             4   // RCP SP interrupt: Task Done/Task Yield
#define OS_EVENT_SI             5   // RCP SI interrupt: controller input available
#define OS_EVENT_AI             6   // RCP AI interrupt: audio buffer swap
#define OS_EVENT_VI             7   // RCP VI interrupt: vertical retrace
#define OS_EVENT_PI             8   // RCP PI interrupt: ROM to RAM DMA done
#define OS_EVENT_DP             9   // RCP DP interrupt: RDP processing done
#define OS_EVENT_CPU_BREAK      10  // CPU (R4300) has hit a breakpoint
#define OS_EVENT_SP_BREAK       11  // RCP SP interrupt: RCP has hit a breakpoint
#define OS_EVENT_FAULT          12  // N64 CPU has faulted
#define OS_EVENT_THREADSTATUS   13  // Thread created or destroyed
#define OS_EVENT_PRENMI         14  // NMI requested

// Flags to turn blocking on/off when sending/receiving messages
#define OS_MESG_NOBLOCK         0
#define OS_MESG_BLOCK           1

typedef u32     OSEvent;
typedef void*   OSMesg;

typedef struct {
  /* 0x00 */ OSThread*      mtqueue;    // Queue to store threads blocked on empty mailboxes (receive)
  /* 0x04 */ OSThread*      fullqueue;  // Queue to store threads blocked on full mailboxes (send)
  /* 0x08 */ s32            validCount; // Number of valid messages
  /* 0x0C */ s32            first;      // Points to first valid message
  /* 0x10 */ s32            msgCount;   // Total Number of messages
  /* 0x14 */ OSMesg*        msg;        // Points to message buffer array
  /* 0x18 */
} OSMesgQueue;

/************************* Time *****************************/

#define OS_CLOCK_RATE       62500000
#define OS_CPU_COUNTER      46875000

typedef u64 OSTime;

typedef struct {
  /* 0x00 */ OSTimer*       next;     // Points to next timer in list
  /* 0x04 */ OSTimer*       prev;     // Points to previous timer in list
  /* 0x08 */ OSTime         interval; // Interval duration set by user
  /* 0x10 */ OSTime         value;    // Time remaining before timer fires
  /* 0x18 */ OSMesgQueue*   mq;       // Message Queue to put the firing message on
  /* 0x1C */ OSMesg         msg;      // Message to send when the timer fires
  /* 0x20 */
} OSTimer;

/************************ Exception *************************/

// Flags for debugging purposes
#define OS_FLAG_CPU_BREAK   1  // Flag for break exception
#define OS_FLAG_FAULT       2  // Flag for CPU fault

// Interrupt masks
#define OS_IM_NONE          0x00000001  // No interrupt enabled
#define OS_IM_SW1           0x00000501  // System software interrupt 1
#define OS_IM_SW2           0x00000601  // System software interrupt 2
#define OS_IM_CART          0x00000C01  // Peripheral interrupt
#define OS_IM_PRENMI        0x00001401  // Pre-NMI interrupt
#define OS_IM_RDBWRITE      0x00002401  // RDB Write interrupt
#define OS_IM_RDBREAD       0x00004401  // RDB Read interrupt
#define OS_IM_COUNTER       0x00008401  // Internal counter interrupt
#define OS_IM_CPU           0x0000FF01  // CPU interrupt
#define OS_IM_SP            0x00010401  // RCP Signal Processor (SP) interrupt
#define OS_IM_SI            0x00020401  // RCP Serial Interface (SI) interrupt
#define OS_IM_AI            0x00040401  // RCP Audio Interface (AI) interrupt
#define OS_IM_VI            0x00080401  // RCP Video Interface (VI) interrupt
#define OS_IM_PI            0x00100401  // RCP Parallel Interface (PI) interrupt
#define OS_IM_DP            0x00200401  // RCP Display Processor (DP) interrupt
#define OS_IM_ALL           0x003FFF01  // All interrupts enabled
#define RCP_IMASK           0x003F0000
#define RCP_IMASKSHIFT      16

typedef u32 OSIntMask; // Interrupt Mask
typedef u32 OSHWIntr;

/************************* System ***************************/

// Values for osTvType (TV type)
#define OS_TV_PAL                   0
#define OS_TV_NTSC                  1
#define OS_TV_MPAL                  2

// Size of buffer that retains contents after NMI
#define OS_APP_NMI_BUFSIZE          64

/********************** Video Interface **********************/

// Video Interface mode types
#define OS_VI_NTSC_LPN1             0
#define OS_VI_NTSC_LPF1             1
#define OS_VI_NTSC_LAN1             2
#define OS_VI_NTSC_LAF1             3
#define OS_VI_NTSC_LPN2             4
#define OS_VI_NTSC_LPF2             5
#define OS_VI_NTSC_LAN2             6
#define OS_VI_NTSC_LAF2             7
#define OS_VI_NTSC_HPN1             8
#define OS_VI_NTSC_HPF1             9
#define OS_VI_NTSC_HAN1             10
#define OS_VI_NTSC_HAF1             11
#define OS_VI_NTSC_HPN2             12
#define OS_VI_NTSC_HPF2             13

#define OS_VI_PAL_LPN1              14
#define OS_VI_PAL_LPF1              15
#define OS_VI_PAL_LAN1              16
#define OS_VI_PAL_LAF1              17
#define OS_VI_PAL_LPN2              18
#define OS_VI_PAL_LPF2              19
#define OS_VI_PAL_LAN2              20
#define OS_VI_PAL_LAF2              21
#define OS_VI_PAL_HPN1              22
#define OS_VI_PAL_HPF1              23
#define OS_VI_PAL_HAN1              24
#define OS_VI_PAL_HAF1              25
#define OS_VI_PAL_HPN2              26
#define OS_VI_PAL_HPF2              27

#define OS_VI_MPAL_LPN1             28
#define OS_VI_MPAL_LPF1             29
#define OS_VI_MPAL_LAN1             30
#define OS_VI_MPAL_LAF1             31
#define OS_VI_MPAL_LPN2             32
#define OS_VI_MPAL_LPF2             33
#define OS_VI_MPAL_LAN2             34
#define OS_VI_MPAL_LAF2             35
#define OS_VI_MPAL_HPN1             36
#define OS_VI_MPAL_HPF1             37
#define OS_VI_MPAL_HAN1             38
#define OS_VI_MPAL_HAF1             39
#define OS_VI_MPAL_HPN2             40
#define OS_VI_MPAL_HPF2             41

#define OS_VI_FPAL_LPN1             42
#define OS_VI_FPAL_LPF1             43
#define OS_VI_FPAL_LAN1             44
#define OS_VI_FPAL_LAF1             45
#define OS_VI_FPAL_LPN2             46
#define OS_VI_FPAL_LPF2             47
#define OS_VI_FPAL_LAN2             48
#define OS_VI_FPAL_LAF2             49
#define OS_VI_FPAL_HPN1             50
#define OS_VI_FPAL_HPF1             51
#define OS_VI_FPAL_HAN1             52
#define OS_VI_FPAL_HAF1             53
#define OS_VI_FPAL_HPN2             54
#define OS_VI_FPAL_HPF2             55

// Video Interface special features
#define OS_VI_GAMMA_ON              0x0001
#define OS_VI_GAMMA_OFF             0x0002
#define OS_VI_GAMMA_DITHER_ON       0x0004
#define OS_VI_GAMMA_DITHER_OFF      0x0008
#define OS_VI_DIVOT_ON              0x0010
#define OS_VI_DIVOT_OFF             0x0020
#define OS_VI_DITHER_FILTER_ON      0x0040
#define OS_VI_DITHER_FILTER_OFF     0x0080

// Video Interface mode attribute bits
#define OS_VI_BIT_NONINTERLACE      0x0001
#define OS_VI_BIT_INTERLACE         0x0002
#define OS_VI_BIT_NORMALINTERLACE   0x0004
#define OS_VI_BIT_DEFLICKINTERLACE  0x0008
#define OS_VI_BIT_ANTIALIAS         0x0010
#define OS_VI_BIT_POINTSAMPLE       0x0020
#define OS_VI_BIT_16PIXEL           0x0040
#define OS_VI_BIT_32PIXEL           0x0080
#define OS_VI_BIT_LORES             0x0100
#define OS_VI_BIT_HIRES             0x0200
#define OS_VI_BIT_NTSC              0x0400
#define OS_VI_BIT_PAL               0x0800

typedef struct {
  /* 0x00 */ u32            ctrl;
  /* 0x04 */ u32            width;
  /* 0x08 */ u32            burst;
  /* 0x0C */ u32            vSync;
  /* 0x10 */ u32            hSync;
  /* 0x14 */ u32            leap;
  /* 0x18 */ u32            hStart;
  /* 0x1C */ u32            xScale;
  /* 0x20 */ u32            vCurrent;
  /* 0x24 */
} OSViCommonRegs;

typedef struct {
  /* 0x00 */ u32            origin;
  /* 0x04 */ u32            yScale;
  /* 0x08 */ u32            vStart;
  /* 0x0C */ u32            vBurst;
  /* 0x10 */ u32            vIntr;
  /* 0x14 */
} OSViFieldRegs;

typedef struct {
  /* 0x00 */ u8             type;       // Mode type
  /* 0x04 */ OSViCommonRegs comRegs;    // Common registers for both fields
  /* 0x28 */ OSViFieldRegs  fldRegs[2]; // Registers for Field 1  & 2
  /* 0x50 */
} OSViMode;

typedef struct {
  /* 0x00 */ u16            flags;
  /* 0x02 */ u16            retraceCount;
  /* 0x04 */ void*          framebuffer;
  /* 0x08 */ OSViMode*      curMode;
  /* 0x0C */ u32            features;
  /* 0x10 */ OSMesgQueue*   mq;
  /* 0x14 */ OSMesg*        msg;
  /* 0x18 */ u32            unk18;
  /* 0x1C */ u32            unk1C;
  /* 0x20 */ u32            xScale;
  /* 0x24 */ f32            yScaleCoeff;
  /* 0x28 */ u16            unk28;
  /* 0x2A */
  /* 0x2C */ u32            yScale;
  /* 0x30 */
} __OSViContext;

/******************** Peripheral Interface ********************/

// Device types
#define DEVICE_TYPE_CART        0  // ROM Cartridge
#define DEVICE_TYPE_BULK        1  // ROM Bulk
#define DEVICE_TYPE_64DD        2  // N64 Disk Drive
#define DEVICE_TYPE_SRAM        3  // SRAM
#define DEVICE_TYPE_INIT        7  // Initial value

// Flags to indicate the direction of data transfer
#define OS_READ                 0  // Flag for device -> RDRAM transfer
#define OS_WRITE                1  // Flag for device <- RDRAM transfer
#define OS_OTHERS               2

// I/O message types
#define OS_MESG_TYPE_LOOPBACK   10
#define OS_MESG_TYPE_DMAREAD    11
#define OS_MESG_TYPE_DMAWRITE   12
#define OS_MESG_TYPE_VRETRACE   13
#define OS_MESG_TYPE_COUNTER    14
#define OS_MESG_TYPE_EDMAREAD   15
#define OS_MESG_TYPE_EDMAWRITE  16

// I/O message priority values
#define OS_MESG_PRI_NORMAL      0
#define OS_MESG_PRI_HIGH        1

// PI/EPI domains
#define PI_DOMAIN1              0
#define PI_DOMAIN2              1

typedef struct {
  /* 0x00 */ u32            errStatus;      // Error Status
  /* 0x04 */ void*          dramAddr;       // RDRAM buffer address (DMA)
  /* 0x08 */ void*          C2Addr;         // C2 buffer address
  /* 0x0C */ u32            sectorSize;     // Size of transfering sector
  /* 0x10 */ u32            C1ErrNum;       // Number of C1 errors
  /* 0x14 */ u32            C1ErrSector[4]; // Error Sectors
  /* 0x24 */
} __OSBlockInfo;

typedef struct {
  /* 0x00 */ u32            cmdType;      // Command Type
  /* 0x04 */ u16            transferMode; // Transfer Mode (block, track, or sector?)
  /* 0x06 */ u16            blockNum;     // Which block is transfering
  /* 0x08 */ s32            sectorNum;    // Which sector is transfering
  /* 0x0C */ u32            devAddr;      // Device buffer address
  /* 0x10 */ u32            bmCtlShadow;
  /* 0x14 */ u32            seqCtlShadow;
  /* 0x18 */ __OSBlockInfo  block[2];     // Block transfer info
  /* 0x60 */
} __OSTranxInfo;

typedef struct {
  /* 0x00 */ OSPiHandle*    next;         // Points to next handle in the table
  /* 0x04 */ u8             type;         // Device Type (DEVICE_TYPE_*)
  /* 0x05 */ u8             latency;      // Domain latency
  /* 0x06 */ u8             pageSize;     // Domain page size
  /* 0x07 */ u8             relDuration;  // Domain release duration
  /* 0x08 */ u8             pulse;        // Domain pulse width
  /* 0x09 */ u8             domain;       // Which Domain (PI_DOMAIN*)
  /* 0x0C */ u32            baseAddress;  // Domain address
  /* 0x10 */ u32            speed;
  /* 0x14 */ __OSTranxInfo  transferInfo; // Transfer Info
  /* 0x74 */
} OSPiHandle;

typedef struct {
  /* 0x00 */ u8             type;
  /* 0x04 */ u32            address;
  /* 0x08 */
} OSPiInfo;

typedef struct {
  /* 0x00 */ u16            type;     // Message type (OS_MESG_TYPE_*)
  /* 0x02 */ u8             pri;      // Message priority (OS_MESG_PRI_*)
  /* 0x03 */ u8             status;   // Return status
  /* 0x04 */ OSMesgQueue*   retQueue; // Return message queue to notify I/O completion
  /* 0x08 */
} OSIoMesgHdr;

typedef struct {
  /* 0x00 */ OSIoMesgHdr    hdr;      // Message header
  /* 0x08 */ void*          dramAddr; // RDRAM buffer address (DMA)
  /* 0x0C */ u32            devAddr;  // Device buffer address (DMA)
  /* 0x10 */ u32            size;     // DMA transfer size in bytes
  /* 0x14 */ OSPiHandle*    piHandle; // PI device handle
  /* 0x18 */
} OSIoMesg;

typedef struct {
  /* 0x00 */ s32            active;   // Status flag
  /* 0x04 */ OSThread*      thread;   // Associated thread
  /* 0x08 */ OSMesgQueue*   cmdQueue; // Command queue
  /* 0x0C */ OSMesgQueue*   evtQueue; // Event queue
  /* 0x10 */ OSMesgQueue*   acsQueue; // Access queue
  /* 0x14 */ s32            (*dma)(s32, u32, void*, u32);
  /* 0x18 */ s32            (*edma)(OSPiHandle*, s32, u32, void*, u32);
  /* 0x1C */
} OSDevMgr;

/************************ Controller ************************/

// Number of controllers
#define MAXCONTROLLERS              4

// Controller types
#define CONT_ABSOLUTE               0x0001
#define CONT_RELATIVE               0x0002
#define CONT_JOYPORT                0x0004
#define CONT_EEPROM                 0x8000
#define CONT_EEP16K                 0x4000
#define CONT_TYPE_MASK              0x1f07
#define CONT_TYPE_NORMAL            0x0005
#define CONT_TYPE_MOUSE             0x0002
#define CONT_TYPE_VOICE             0x0100

// Controller status values
#define CONT_CARD_ON                0x01
#define CONT_CARD_PULL              0x02
#define CONT_ADDR_CRC_ER            0x04
#define CONT_EEPROM_BUSY            0x80

// Buttons
#define CONT_A                      0x8000
#define CONT_B                      0x4000
#define CONT_G                      0x2000
#define CONT_START                  0x1000
#define CONT_UP                     0x0800
#define CONT_DOWN                   0x0400
#define CONT_LEFT                   0x0200
#define CONT_RIGHT                  0x0100
#define CONT_L                      0x0020
#define CONT_R                      0x0010
#define CONT_E                      0x0008
#define CONT_D                      0x0004
#define CONT_C                      0x0002
#define CONT_F                      0x0001

// Nintendo's official button names
#define A_BUTTON                    CONT_A
#define B_BUTTON                    CONT_B
#define L_TRIG                      CONT_L
#define R_TRIG                      CONT_R
#define Z_TRIG                      CONT_G
#define START_BUTTON                CONT_START
#define U_JPAD                      CONT_UP
#define L_JPAD                      CONT_LEFT
#define R_JPAD                      CONT_RIGHT
#define D_JPAD                      CONT_DOWN
#define U_CBUTTONS                  CONT_E
#define L_CBUTTONS                  CONT_C
#define R_CBUTTONS                  CONT_F
#define D_CBUTTONS                  CONT_D

// Controller errors
#define CONT_OVERRUN_ERROR          0x4
#define CONT_NO_RESPONSE_ERROR      0x8

// Controller error numbers
#define CONT_ERR_NO_CONTROLLER      PFS_ERR_NOPACK      // 1
#define CONT_ERR_CONTRFAIL          CONT_OVERRUN_ERROR  // 4
#define CONT_ERR_INVALID            PFS_ERR_INVALID     // 5
#define CONT_ERR_DEVICE             PFS_ERR_DEVICE      // 11
#define CONT_ERR_NOT_READY          12
#define CONT_ERR_VOICE_MEMORY       13
#define CONT_ERR_VOICE_WORD         14
#define CONT_ERR_VOICE_NO_RESPONSE  15

typedef struct {
  /* 0x00 */ u16     type;
  /* 0x02 */ u8      status;
  /* 0x03 */ u8      errno;
  /* 0x04 */
} OSContStatus;

typedef struct {
  /* 0x00 */ u16     button;
  /* 0x02 */ s8      stick_x;
  /* 0x03 */ s8      stick_y;
  /* 0x04 */ u8      errno;
  /* 0x08 */
} OSContPad;

typedef struct {
  /* 0x00 */ void*   address;        // Ram pad Address (11 bits)
  /* 0x04 */ u8      databuffer[32];
  /* 0x24 */ u8      addressCrc;     // CRC code for address
  /* 0x25 */ u8      dataCrc;        // CRC code for data
  /* 0x26 */ u8      errno;
  /* 0x28 */
} OSContRamIo;

/************************** Task ****************************/

// Task flags field
#define OS_TASK_YIELDED       0x0001
#define OS_TASK_DP_WAIT       0x0002
#define OS_TASK_LOADABLE      0x0004
#define OS_TASK_SP_ONLY       0x0008
#define OS_TASK_USR0          0x0010
#define OS_TASK_USR1          0x0020
#define OS_TASK_USR2          0x0040
#define OS_TASK_USR3          0x0080

// Size of Yield buffer
#define OS_YIELD_DATA_SIZE    0xC00
#define OS_YIELD_AUDIO_SIZE   0x400

typedef u32 OSYieldResult;

typedef struct {
  /* 0x00 */ u32  type;
  /* 0x04 */ u32  flags;

  /* 0x08 */ u64* ucode_boot;
  /* 0x0C */ u32  ucode_boot_size;

  /* 0x10 */ u64* ucode;
  /* 0x14 */ u32  ucode_size;

  /* 0x18 */ u64* ucode_data;
  /* 0x1C */ u32  ucode_data_size;

  /* 0x20 */ u64* dram_stack;
  /* 0x24 */ u32  dram_stack_size;

  /* 0x28 */ u64* output_buff;
  /* 0x2C */ u64* output_buff_size;

  /* 0x30 */ u64* data_ptr;
  /* 0x34 */ u32  data_size;

  /* 0x38 */ u64* yield_data_ptr;
  /* 0x3C */ u32  yield_data_size;

  /* 0x40 */ s64  force_structure_alignment;
  /* 0x48 */
} OSTask;

#endif
