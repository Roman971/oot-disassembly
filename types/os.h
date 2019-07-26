#ifndef _OS_H_
#define _OS_H_

#include "ultra.h"

/************************* Thread ***************************/

#define OS_STATE_STOPPED        1
#define OS_STATE_RUNNABLE       2
#define OS_STATE_RUNNING        4
#define OS_STATE_WAITING        8

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

typedef struct __OSStackContext {
  /* 0x00 */ __OSStackContext*      next;     // Next stack
  /* 0x04 */ __OSStackContext*      prev;     // Previous stack
  /* 0x08 */ void*                  start;    // Stack start address
  /* 0x0C */ void*                  end;      // Stack end address
  /* 0x10 */ u32                    init;     // Stack initial value
  /* 0x14 */ u32                    unk_0x14;
  /* 0x18 */ char*                  thrname;  // Pointer to thread name
  /* 0x20 */
} __OSStackContext;

typedef struct __OSThreadContext {
  /* 0x0000 */  u64         at, v0, v1, a0, a1, a2, a3,
  /* 0x0038 */          t0, t1, t2, t3, t4, t5, t6, t7,
  /* 0x0078 */          s0, s1, s2, s3, s4, s5, s6, s7,
  /* 0x00B8 */          t8, t9, gp, sp, s8, ra, lo, hi;
  /* 0x00F8 */  u32     sr, pc, cause, badvaddr, rcp;
  /* 0x010C */  u32     fpcsr;
  /* 0x0120 */  union {
                  f32   fp32[32];
                  f64   fp64[16];
  /* 0x01D8 */  };
} __OSThreadContext;

typedef struct OSThread {
  /* 0x0000 */ OSThread*            next;     // Next thread in queue
  /* 0x0004 */ OSPri                priority; // Thread priority
  /* 0x0008 */ OSThread**           queue;    // Queue the thread is on
  /* 0x000C */ OSThread*            tlnext;
  /* 0x0010 */ u16                  state;    // Thread state (OS_STATE_*)
  /* 0x0012 */ u16                  flags;    // Flags for rmon
  /* 0x0014 */ OSId                 id;       // ID for debugging
  /* 0x0018 */ s32                  fp;
  /* 0x001C */ __OSThreadContext    context;
  /* 0x01F4 */
} OSThread;

/************************* Message **************************/

#define OS_NUM_EVENTS           15  // Number of valid events

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

#define OS_MESG_NOBLOCK         0
#define OS_MESG_BLOCK           1

typedef u32     OSEvent;
typedef void*   OSMesg;

typedef struct OSMesgQueue {
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

typedef struct OSTimer {
  /* 0x00 */ OSTimer*       next;     // Points to next timer in list
  /* 0x04 */ OSTimer*       prev;     // Points to previous timer in list
  /* 0x08 */ OSTime         interval; // Interval duration set by user
  /* 0x10 */ OSTime         value;    // Time remaining before timer fires
  /* 0x18 */ OSMesgQueue*   mq;       // Message Queue to put the firing message on
  /* 0x1C */ OSMesg         msg;      // Message to send when the timer fires
  /* 0x20 */
} OSTimer;

/************************ Exception *************************/

#define OS_FLAG_CPU_BREAK   1  // Flag for break exception
#define OS_FLAG_FAULT       2  // Flag for CPU fault

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

/******************** Peripheral Interface ********************/

#define DEVICE_TYPE_CART        0  // ROM Cartridge
#define DEVICE_TYPE_BULK        1  // ROM Bulk
#define DEVICE_TYPE_64DD        2  // N64 Disk Drive
#define DEVICE_TYPE_SRAM        3  // SRAM
#define DEVICE_TYPE_INIT        7  // Initial value

#define OS_READ                 0  // Flag for device -> RDRAM transfer
#define OS_WRITE                1  // Flag for device <- RDRAM transfer
#define OS_OTHERS               2

#define OS_MESG_TYPE_LOOPBACK   10
#define OS_MESG_TYPE_DMAREAD    11
#define OS_MESG_TYPE_DMAWRITE   12
#define OS_MESG_TYPE_VRETRACE   13
#define OS_MESG_TYPE_COUNTER    14
#define OS_MESG_TYPE_EDMAREAD   15
#define OS_MESG_TYPE_EDMAWRITE  16

#define OS_MESG_PRI_NORMAL      0
#define OS_MESG_PRI_HIGH        1

#define PI_DOMAIN1              0
#define PI_DOMAIN2              1

typedef struct __OSBlockInfo {
  /* 0x00 */ u32            errStatus;      // Error Status
  /* 0x04 */ void*          dramAddr;       // RDRAM buffer address (DMA)
  /* 0x08 */ void*          C2Addr;         // C2 buffer address
  /* 0x0C */ u32            sectorSize;     // Size of transfering sector
  /* 0x10 */ u32            C1ErrNum;       // Number of C1 errors
  /* 0x14 */ u32            C1ErrSector[4]; // Error Sectors
  /* 0x18 */
} __OSBlockInfo;

typedef struct __OSTranxInfo {
  /* 0x00 */ u32            cmdType;      // Command Type
  /* 0x04 */ u16            transferMode; // Transfer Mode (block, track, or sector?)
  /* 0x06 */ u16            blockNum;     // Which block is transfering
  /* 0x08 */ s32            sectorNum;    // Which sector is transfering
  /* 0x0C */ u32            devAddr;      // Device buffer address
  /* 0x10 */ u32            bmCtlShadow;
  /* 0x14 */ u32            seqCtlShadow;
  /* 0x18 */ __OSBlockInfo  block[2];     // Block transfer info
  /* 0x30 */
} __OSTranxInfo;

typedef struct OSPiHandle {
  /* 0x00 */ OSPiHandle*    next;         // Points to next handle in the table
  /* 0x04 */ u8             type;         // Device Type (DEVICE_TYPE_*)
  /* 0x05 */ u8             latency;      // Domain latency
  /* 0x06 */ u8             pageSize;     // Domain page size
  /* 0x07 */ u8             relDuration;  // Domain release duration
  /* 0x08 */ u8             pulse;        // Domain pulse width
  /* 0x09 */ u8             domain;       // Which Domain (PI_DOMAIN*)
  /* 0x10 */ u32            baseAddress;  // Domain address
  /* 0x14 */ u32            speed;
  /* 0x18 */ __OSTranxInfo  transferInfo; // Transfer Info
  /* 0x48 */
} OSPiHandle;

typedef struct OSPiInfo {
  /* 0x00 */ u8             type;
  /* 0x01 */ u32            address;
  /* 0x05 */
} OSPiInfo;

typedef struct OSIoMesgHdr {
  /* 0x00 */ u16            type;     // Message type (OS_MESG_TYPE_*)
  /* 0x02 */ u8             pri;      // Message priority (OS_MESG_PRI_*)
  /* 0x03 */ u8             status;   // Return status
  /* 0x04 */ OSMesgQueue*   retQueue; // Return message queue to notify I/O completion
  /* 0x08 */
} OSIoMesgHdr;

typedef struct OSIoMesg {
  /* 0x00 */ OSIoMesgHdr    hdr;      // Message header
  /* 0x08 */ void*          dramAddr; // RDRAM buffer address (DMA)
  /* 0x0C */ u32            devAddr;  // Device buffer address (DMA)
  /* 0x10 */ u32            size;     // DMA transfer size in bytes
  /* 0x14 */ OSPiHandle*    piHandle; // PI device handle
  /* 0x18 */
} OSIoMesg;

typedef struct OSDevMgr {
  /* 0x00 */ s32            active;   // Status flag
  /* 0x04 */ OSThread*      thread;   // Calling thread
  /* 0x08 */ OSMesgQueue*   cmdQueue; // Command queue
  /* 0x0C */ OSMesgQueue*   evtQueue; // Event queue
  /* 0x10 */ OSMesgQueue*   acsQueue; // Access queue
  /* 0x14 */ s32            (*dma)(s32, u32, void*, u32);
  /* 0x18 */ s32            (*edma)(OSPiHandle*, s32, u32, void*, u32);
  /* 0x1C */
} OSDevMgr;

#endif
