# multi-line version
full_name = Proc.new do |first, last|
	first + " " + last
end

p full_name["John", "Smith"]