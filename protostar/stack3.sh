#!/usr/bin/env bash

# Buffer overflow to change code execution path. Overflow a function
# pointer with the address of a different function. The original function
# pointer gets invoked and our new code is executed

# This exercise required a bit more work with gdb or objdump etc to
# get the address of the other function in the binary we wanted to call


