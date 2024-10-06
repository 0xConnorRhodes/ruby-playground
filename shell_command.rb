# def hello_world
# 	`echo 'hello world'`
# end

# puts hello_world

cmd = %x(
  echo 'hello world'
  echo 'line 2'
  echo 'line 3'
)

puts cmd