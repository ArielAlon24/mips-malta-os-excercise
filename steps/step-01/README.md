# Step 01 - Setup

First, we need to install the required dependencies.

### (1) A MIPS Toolchain

```bash
sudo apt install gcc-mipsel-linux-gnu binutils-mipsel-linux-gnu
```

> [!NOTE]
> What is a cross-compiler, and why can't we use the system compiler directly?

> [!NOTE]
> What does the `mipsel` part of `gcc-mipsel-linux-gnu` mean?

> [!NOTE]
> What is the difference between the compiler (`gcc`) and the binary utilities package (`binutils`)?

---

### (2) QEMU

```bash
sudo apt install qemu-system-mips qemu-user
```

> [!NOTE]
> What is QEMU, and what is the difference between `qemu-system-mips` and `qemu-user` (e.g. `qemu-mips`)?
