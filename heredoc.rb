name = "Alice"
age = 30

message = <<~MARKDOWN
  # title
  ## text
  Hello, my name is #{name}.
  I am #{age} years old.
  Nice to meet you!
MARKDOWN

puts message