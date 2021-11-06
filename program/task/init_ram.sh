#!/bin/sh

hexdump -n 64 -e '1/4 "%08x" 1 "\n"' /dev/urandom >> ./ram.hex