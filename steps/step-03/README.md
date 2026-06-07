# Step 03 - Running Your Own Kernel!

Wow! you found a template for an operating system project! (e.g. `resources/`)

1. Looks like the `resources/Makefile` is missing a couple of values, fill them!

> [!NOTE]
> Explain each section in the `resource/script.ld` file.

> [!NOTE]
> What does `. = 0x80010000` mean? what is this magic number? (hint: malta)

> [!NOTE]
> Explain each line in the file `entrypoint.S`, what does it do?

2. Copy the files under `resources/` into the root folder and compile the project using

```bash
make all
```

3. Run it with qemu (to exit use `Ctrl-A` and then `X`)

```bash
./run.sh
```
