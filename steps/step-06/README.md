# Step 06 - Exception Handling

Install an exception vector that transfers control to a handler in your kernel. Your handler should:

1. Read the Cause register.
2. Extract the exception code (`ExcCode`).
3. Read the EPC register.
4. Translate the exception code into a human-readable name.
5. Print the exception information to the serial console.
6. Halt execution in an infinite loop.

Example output:

```text
========================================
Kernel Exception
========================================

Exception: Syscall
Code: 8
EPC: 0x80010234
```
