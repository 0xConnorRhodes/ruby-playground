string = "The quick 12 brown foxes jumped over the 10 lazy dogs"

puts string.to_enum(:scan, /\d+/).map { Regexp.last_match }