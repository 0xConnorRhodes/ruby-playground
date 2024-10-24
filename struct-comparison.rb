Person = Struct.new(:name, :age)

a = Person.new("John", 21)

b = Person.new("John", 21)

puts a == b