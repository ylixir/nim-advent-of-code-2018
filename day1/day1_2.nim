import strutils
import tables

var
  input: string
  freq: int = 0
  seen = {0:true}.toTable
  diffs: seq[int] = @[]

while stdin.readLine(input):
  diffs.add(parseInt(input))

block outer:
  while true:
    for i in diffs:
      freq += i
      if seen.hasKey(freq):
        break outer
      seen[freq] = true

echo freq