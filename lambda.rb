full_name = lambda { |first, last| first + " " + last }

# call method 1
p full_name["John", "Smith"]

# call method 2
p full_name.call("John", "Smith")


full_name = ->(first, last) { first + " " + last }

p full_name["John", "Smith"]