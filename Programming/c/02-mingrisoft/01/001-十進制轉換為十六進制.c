#include <stdio.h>

int main()
{
  int i;
  printf("please input one number(十進制):\n");
  scanf("%d", &i);
  printf("轉換為十六進制後的數字為%x\n", i);
  return 0;
}
