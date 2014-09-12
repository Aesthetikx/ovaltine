cryptography
============

Simple cryptography utilities in ruby

```ruby
require 'cryptography'
```

###Playfair Cipher

```ruby
pf = Cryptography::Playfair.new("passcode")

puts pf
# [ p  a  s  c  o ]
# [ d  e  b  f  g ]
# [ h  ij  k  l  m ]
# [ n  q  r  t  u ]
# [ v  w  x  y  z ]

ciphertext = pf.encode "The last Metroid is in captivity. The galaxy is at peace..."
# => "nlfijsculfqushekahqoscnhwlqcyijdeoijcyzkacqadsobw"

passcode = pf.decode ciphertext
# => "thelastmetroidisincaptivitythegalaxyisatpeacex"
```

###Frequency Analysis

Helpful methods mixed into String

```ruby
# Sample text
text = "Jerry was a race car driver".downcase.gsub(/\s/,'')
```

Find the letter frequency of a text:
```ruby
text.letter_frequency
# => {"j"=>1, "e"=>3, "r"=>6, "y"=>1, "w"=>1, "a"=>4, "s"=>1, ...
```

Find the three most frequent digrams:
```ruby
text.digram_frequency.sort_by { |digram, frequency| frequency}.reverse.take(3)
# => [["er", 2], ["ar", 2], ["ra", 1]]
```

Other available methods:
```ruby
text.trigram_frequency
text.ngram_frequency(8)
```
