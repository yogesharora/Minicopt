/*
 * bitset.cpp
 *
 *  Created on: Oct 8, 2009
 *      Author: yogesh
 */
#include "bitset.h"
#include "string.h"
#include "stdio.h"
#include "globals.h"

bitset::bitset(int len) :
	length(len)
{
	bits = new char[length];
	memset(bits, BIT_OFF, length);
}

bitset::bitset(const bitset &source)
{
	bits = new char[source.length];
	length = source.length;
	memcpy(bits, source.bits, length);
}

bitset::~bitset()
{
	delete[] bits;
}

bitset& bitset::operator=(const bitset &lhs)
{
	if (this != &lhs) //avoid self copy
	{
		// assume that number of bits will be the same
		memcpy(bits, lhs.bits, length);
	}
	return *this;
}

bitset& bitset::operator&=(const bitset &lhs)
{
	for (int i = 0; i < length; i++)
	{
		bits[i] &= lhs.bits[i];
	}
	return *this;
}

bitset& bitset::operator|=(const bitset &lhs)
{
	for (int i = 0; i < length; i++)
	{
		bits[i] |= lhs.bits[i];
	}
	return *this;
}

bitset& bitset::operator-=(const bitset &lhs)
{
	for (int i = 0; i < length; i++)
	{
		bits[i] &= ~lhs.bits[i];
	}
	return *this;
}

bitset bitset::operator&(const bitset &lhs)
{
	bitset res(*this);
	res &= lhs;
	return res;
}

bitset bitset::operator|(const bitset &lhs)
{
	bitset res(*this);
	res |= lhs;
	return res;
}

bitset bitset::operator-(const bitset &lhs)
{
	bitset res(*this);
	res -= lhs;
	return res;
}

char& bitset::operator[](int index)
{
	return bits[index];
}

void bitset::print(const char* formatString, int start, int end, int min)
{
	for (int i = start; i < end; i++)
	{
		if(bits[i])
		{
			PRINTF(formatString, min+i-start);
		}
	}
}

bool bitset::operator==(const bitset &lhs)
{
	for (int i = 0; i < length; i++)
	{
		if (bits[i] != lhs.bits[i])
			return false;
	}
	return true;
}
