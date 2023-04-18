#ifdef __ASSEMBLER__
#  include <assembler-with-cpp/foo.h>
#else
#  error not assembler-with-cpp
#endif

.text

.global foo
foo:
  movq $FOO_RESULT, %rax
  ret

#ifdef __ELF__
.section .note.GNU-stack, "", @progbits
#endif
