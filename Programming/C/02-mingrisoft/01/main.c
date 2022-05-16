#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

char *strupr(char *str) {
  char *origin = str;
  for(; *str!='\0'; str++) {
    *str = toupper(*str);
  }
  return origin;
}

int main()
{
  long t1;
  int i, n, t, t3;
  char a[100] = "";
  printf("please input a number string:\n");
  //gets(a);
  fgets(a, 100, stdin);
  strupr(a);
  t3 = strlen(a);
  if(t3 > 1 && a[t3-1] == '\n') {
    a[t3-1] = '\0';
    t3= strlen(a);
  }
  t1 = 0;
  printf("please input n(2or8or16):\n");
  scanf("%d", &n);
  for(i=0; i<t3; i++) {
    if(a[i] - '0' >= n && a[i] <'A' || a[i] - 'A' + 10 >= n) {
      printf("data error!!");
      exit(0);
    }
    if(a[i] >= '0' && a[i] <= '9')
      t = a[i] - '0';
    else if (n >= 11 && (a[i] >= 'A' && a[i] <= 'A' + n - 10))
      t = a[i] - 'A' + 10;
    t1 = t1 * n + t;
  }
  printf("the decimal is %d\n", t1);

  printf("\n");
  return 0;
}
