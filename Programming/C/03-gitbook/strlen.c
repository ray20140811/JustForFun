#include <stdio.h>
#include <string.h>

int main()
{
  char str[50];
  int len;

  //strcpy(str, "This is gitbook.net");
  strcpy(str, "1");

  len = strlen(str);
  printf("Length of |%s| is |%d|", str, len);

  return(0);
}
