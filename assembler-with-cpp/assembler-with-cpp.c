#include <stdio.h>

extern int foo ();

int main (int argc, char *argv[])
{
  int r = foo ();
  printf ("foo: %d\n", r);
  return 0;
}
