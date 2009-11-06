/*
 * globals.h
 *
 *  Created on: Oct 9, 2009
 *      Author: yogesh
 */

#ifndef GLOBALS_H_
#define GLOBALS_H_

#define VERBOSE

#ifdef VERBOSE
#define PRINTF(...) printf(__VA_ARGS__)
#else
#define PRINTF( ...)
#endif

#define R0 0
#define R4 4
#define R5 5
#define R6 6
#define R7 7
#define NO_REGISTER -1
#define REGS_MINSIZE 7
#define MEM_MINSIZE 3
#define LIVEOUT_MEM 3
#endif /* GLOBALS_H_ */
