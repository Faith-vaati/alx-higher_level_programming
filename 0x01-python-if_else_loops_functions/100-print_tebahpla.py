#!/usr/bin/python3
# 100-print_tebahpla.py

""""Print the alphabet in reverse order alternating upper- and lower-case."""
j = 0
for v in range(ord('z'), ord('a') - 1, -1):
    print("{}".format(chr(v - j)), end="")
    j = 32 if j == 0 else 0

