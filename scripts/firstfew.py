#!/usr/bin/env python3

from math import ceil
from sys import stdin as stdin
from re import fullmatch

def first_few(word):
  # Where to cut from, "knife"
  knife = ceil(len(word) / 2)
  return (word[:knife], word[knife:])

def start_end(word):
  if len(word) == 1:
    return (word[0])
  return (word[0], word[1:-1], word[-1])

# How to cut
cut = first_few

for line in stdin:
  for word in line.split(' '):
    if fullmatch('[a-zA-Z]+', word) is None:
      print(word, end=' ')
      continue
    for i, part in enumerate(cut(word)):
      if i % 2 == 0:
        esc_code = '\x1b[0m'
      else:
        esc_code = '\x1b[90m'
      print(f'{esc_code}{part}\x1b[0m', end='')
    print(' ', end='')
