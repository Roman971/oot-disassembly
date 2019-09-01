#ifndef _Z64_H_
#define _Z64_H_

#include "ultra.h"
#include "os.h"

typedef struct {
  /* 0x00 */ u32            vrom_addr;  // VROM address (source)
  /* 0x04 */ void*          dram_addr;  // DRAM address (destination)
  /* 0x08 */ u32            size;       // File Transfer size
  /* 0x0C */ char*          filename;   // Filename for debugging
  /* 0x10 */ s32            line;       // Line for debugging
  /* 0x14 */ s32            unk_0x14;
  /* 0x18 */ OSMesgQueue*   notify_mq;  // Message queue for the notification message
  /* 0x1C */ OSMesg         notify_msg; // Completion notification message
  /* 0x20 */
} z_getfile;

#endif
