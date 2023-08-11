#!/usr/bin/python3
# 101-remove_char_at.py


def remove_char_at(str, b):
    """Create a copy of the string without the character at position b."""
    if b < 0:
        return (str)
    return (str[:b] + str[b+1:])

