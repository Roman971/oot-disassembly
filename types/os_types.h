#ifndef _OS_TYPES_H_
#define _OS_TYPES_H_

#include "ultra_types.h"

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

#define OS_EVENT_SW1            0   // CPU SW1 interrupt
#define OS_EVENT_SW2            1   // CPU SW2 interrupt
#define OS_EVENT_CART           2   // Cartridge interrupt
#define OS_EVENT_COUNTER        3   // CPU timer interrupt
#define OS_EVENT_SP             4   // RCP Signal Processor (SP) interrupt
#define OS_EVENT_SI             5   // RCP Serial Interface (SI) interrupt
#define OS_EVENT_AI             6   // RCP Audio Interface (AI) interrupt
#define OS_EVENT_VI             7   // RCP Video Interface (VI) interrupt
#define OS_EVENT_PI             8   // RCP Parallel Interface (PI) interrupt
#define OS_EVENT_DP             9   // RCP Display Processor (DP) interrupt
#define OS_EVENT_CPU_BREAK      10  // CPU breakpoint
#define OS_EVENT_SP_BREAK       11  // SP breakpoint
#define OS_EVENT_FAULT          12  // CPU fault event
#define OS_EVENT_THREADSTATUS   13  // CPU thread status
#define OS_EVENT_PRENMI         14  // Pre NMI interrupt

#define OS_MESG_NOBLOCK         0
#define OS_MESG_BLOCK           1

typedef u32     OSEvent;
typedef void*   OSMesg;

typedef struct OSMesgQueue {
  /* 0x00 */ OSThread*    mtqueue;    // Queue to store threads blocked on empty mailboxes (receive)
  /* 0x04 */ OSThread*    fullqueue;  // Queue to store threads blocked on full mailboxes (send)
  /* 0x08 */ s32          validCount; // Number of valid messages
  /* 0x0C */ s32          first;      // Points to first valid message
  /* 0x10 */ s32          msgCount;   // Total Number of messages
  /* 0x14 */ OSMesg*      msg;        // Points to message buffer array
  /* 0x18 */
} OSMesgQueue;

/************************* Time *****************************/

#define OS_CLOCK_RATE       62500000
#define OS_CPU_COUNTER      (OS_CLOCK_RATE*3/4)

typedef u64 OSTime;

typedef struct OSTimer {
  /* 0x00 */ OSTimer*     next;     // Points to next timer in list
  /* 0x04 */ OSTimer*     prev;     // Points to previous timer in list
  /* 0x08 */ OSTime       interval; // Interval duration set by user
  /* 0x10 */ OSTime       value;    // Time remaining before timer fires
  /* 0x18 */ OSMesgQueue* mq;       // Message Queue to put the firing message on
  /* 0x1C */ OSMesg       msg;      // Message to send when the timer fires
  /* 0x20 */
} OSTimer;

/************************ Exception *************************/

#define OS_FLAG_CPU_BREAK   1  // Flag for break exception
#define OS_FLAG_FAULT       2  // Flag for CPU fault

#define OS_IM_NONE          0x00000001  // No interrupt enabled
#define OS_IM_SW1           0x00000501  // CPU software interrupt 1
#define OS_IM_SW2           0x00000601  // CPU software interrupt 2
#define OS_IM_CART          0x00000C01  // Cartridge interrupt
#define OS_IM_PRENMI        0x00001401  // Pre-NMI interrupt
#define OS_IM_RDBWRITE      0x00002401  // RDB Write interrupt
#define OS_IM_RDBREAD       0x00004401  // RDB Read interrupt
#define OS_IM_COUNTER       0x00008401  // CPU timer interrupt
#define OS_IM_CPU           0x0000ff01  // CPU interrupt
#define OS_IM_SP            0x00010401  // RCP Signal Processor (SP) interrupt
#define OS_IM_SI            0x00020401  // RCP Serial Interface (SI) interrupt
#define OS_IM_AI            0x00040401  // RCP Audio Interface (AI) interrupt
#define OS_IM_VI            0x00080401  // RCP Video Interface (VI) interrupt
#define OS_IM_PI            0x00100401  // RCP Parallel Interface (PI) interrupt
#define OS_IM_DP            0x00200401  // RCP Display Processor (DP) interrupt
#define OS_IM_ALL           0x003FFF01  // All interrupts enabled
#define RCP_IMASK           0x003f0000
#define RCP_IMASKSHIFT      16

typedef u32 OSIntMask; // Interrupt Mask
typedef u32 OSHWIntr;

#endif
