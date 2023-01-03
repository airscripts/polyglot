type
  CharSet = set[char]

var chars: CharSet = {}
chars = {'a'..'z'}
echo chars

chars.incl('0')
echo chars

chars = chars - {'a'}
echo chars

if chars.contains('0'):
  echo "It contains zero."

echo chars.card()