#!/bin/bash

KERNEL="build/kernel.elf"

qemu-system-mipsel \
	-M malta \
	-kernel $KERNEL \
	-nographic
