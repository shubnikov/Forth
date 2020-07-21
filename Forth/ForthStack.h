#pragma once

template <typename Type> class Stack
{
public:
	Stack() 
		: place  (nullptr)
		, bottom (nullptr)
		, pointer(nullptr)
	{}

	~Stack()
	{
		if (place != nullptr)
			delete[] place;
	}

public:	
	bool init(unsigned _maxSize, unsigned _pad = 100)
	{
		maxSize = _maxSize;
		place = new Type[maxSize + _pad];
		clear();
	}
	void clear()
	{
		pointer = place + maxSize;
	}
	int size() const
	{
		return int(bottom - pointer);
	}
	unsigned max_size() const
	{
		return maxSize;
	}
	void push(Type t)
	{
		*--pointer = t;
	}
	Type pop()
	{
		return *pointer++;
	}

private:
	unsigned maxSize;
	Type *place, *bottom, *pointer;
};

