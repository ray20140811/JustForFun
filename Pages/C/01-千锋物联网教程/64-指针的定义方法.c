# include <stdio.h>

int main()
{
  int a = 100, b = 200;
  int *p_1, *p_2 = &b;
  p_1 = &a;
  printf("%d\n", a);
  printf("%d\n", *p_1);
  printf("%d\n", b);
  printf("%d\n", *p_2);
  
  return 0;
}
