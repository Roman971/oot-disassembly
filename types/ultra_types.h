#ifndef _ULTRA_TYPES_H_
#define _ULTRA_TYPES_H_

typedef unsigned char                u8;   // Unsigned  8-bit
typedef unsigned short               u16;  // Unsigned 16-bit
typedef unsigned long                u32;  // Unsigned 32-bit
typedef unsigned long long           u64;  // Unsigned 64-bit

typedef signed char                  s8;   // Signed  8-bit
typedef short                        s16;  // Signed 16-bit
typedef long                         s32;  // Signed 32-bit
typedef long long                    s64;  // Signed 64-bit

typedef volatile unsigned char       vu8;  // Unsigned  8-bit
typedef volatile unsigned short      vu16; // Unsigned 16-bit
typedef volatile unsigned long       vu32; // Unsigned 32-bit
typedef volatile unsigned long long  vu64; // Unsigned 64-bit

typedef volatile signed char         vs8;  // Signed  8-bit
typedef volatile short               vs16; // Signed 16-bit
typedef volatile long                vs32; // Signed 32-bit
typedef volatile long long           vs64; // Signed 64-bit

typedef float                        f32;  // Single precision floating point
typedef double                       f64;  // Double precision floating point

typedef u32     size_t;

#define NULL    0
#define TRUE    1
#define FALSE   0

#endif
