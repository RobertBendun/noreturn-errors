#include <stdlib.h>
#include <stdio.h>

#define error(msg) \
	do { \
		fprintf(stderr, __FILE__ ":%d: error: %s\n", __LINE__, msg); \
		exit(EXIT_FAILURE); \
	} while(0)

int main()
{
	error("main was not implemented yet");
}
