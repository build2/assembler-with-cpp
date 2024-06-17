#ifndef __ASSEMBLER__
#  error not assembler-with-cpp
#endif

/* Decorate the name with a leading underscore where required.  */
#if defined(__APPLE__)
#  define CDECL(n) _##n
#else
#  define CDECL(n) n
#endif

#include <assembler-with-cpp/foo.h>

.text

.global CDECL(foo)
CDECL(foo):
  movq $FOO_RESULT, %rax
  ret

#ifdef __ELF__
.section .note.GNU-stack, "", @progbits
#endif
