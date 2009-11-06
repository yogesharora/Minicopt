/*
 * bitset
 *
 *  Created on: Oct 8, 2009
 *      Author: yogesh
 */

#ifndef BITSET_H
#define BITSET_H

#define BIT_ON 1
#define BIT_OFF 0

class bitset
{
	char* bits;
	int length;

public:
	bitset(int length);
	bitset(const bitset &bit);
	~bitset();
	bitset& operator=(const bitset &lhs);
	bitset& operator&=(const bitset &lhs);
	bitset& operator|=(const bitset &lhs);
	bitset& operator-=(const bitset &lhs);
	bitset operator&(const bitset &lhs);
	bitset operator|(const bitset &lhs);
	bitset operator-(const bitset &lhs);
	bool operator==(const bitset &lhs);
	char& operator[](int index);
	void print(const char* prefix, int start, int end, int min=0);
};

#endif /* BITSET_ */
