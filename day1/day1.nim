import strutils

var
  input: string
  freq: int = 0

while stdin.readLine(input):
  freq += parseInt(input)

echo freq