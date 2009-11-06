/*
 * livenessInfo.h
 *
 *  Created on: Oct 8, 2009
 *      Author: yogesh
 */

#ifndef LIVENESSINFO_H_
#define LIVENESSINFO_H_

#include "bitset.h"
#include <vector>
#include "globals.h"

class livenessInfo
{
	int noRegisters;
	int memorySize;
	int minMemory;
	bitset use;
	bitset def;
	bitset liveIn;
	bitset liveOut;
	bool canBeEliminated;
	bool last;
	int defRegister;

	typedef std::vector<livenessInfo*> SuccesorVector;
	SuccesorVector successor;
	livenessInfo(livenessInfo&);

public:
	livenessInfo(int noOfRegsister, int memSize, int minMem);
	~livenessInfo();
	void setUseRegisters(int regNo1, int regNo2=NO_REGISTER, int reg3=NO_REGISTER);
	void setDefRegister(int regNo);
	void setUseMemory(int memory);
	void setDefMemory(int memory);
	void set$DefRegister();
	void set$UseRegister();
	void setLastInstruction();
	void addSuccessor(livenessInfo&);
	void setCanBeEliminated(bool yesNo) { canBeEliminated=yesNo; }
	int getCanBeEliminated() {return canBeEliminated;}
	void print();
	// returns true if liveness has changed
	bool calculateLiveliness();
	bool isDeadCode();
};

#endif /* LIVENESSINFO_H_ */
