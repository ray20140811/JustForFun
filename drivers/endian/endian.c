#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{
	unsigned char buf[4];
	int n = 0x12345678;

	memcpy(buf, &n, sizeof(n));
	if(buf[0] == 0x78 && buf[1] == 0x56 && buf[2] == 0x34 && buf[3] == 0x12)
	{
		printf("Little Endian\n");
		printf("%02x %02x %2x %02x\n", buf[0], buf[1], buf[2], buf[3]);
	}
	else if(buf[0] == 0x12 && buf[1] == 0x34 && buf[2] == 0x56 && buf[3] == 0x78)
	{
		printf("Big Endian\n");
		printf("%02x %02x %2x %02x\n", buf[0], buf[1], buf[2], buf[3]);
	}
	else
	{
		printf("Unknown Endian\n");
	}


	return 0;
}
