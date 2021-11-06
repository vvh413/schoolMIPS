#!/bin/bash

rm -f ../../board/program/program.hex
rm -f ../../board/program/ram.hex

cp ./program.hex ../../board/program
cp ./ram.hex ../../board/program
