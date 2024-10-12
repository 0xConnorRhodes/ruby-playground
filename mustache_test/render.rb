require 'mustache'

class GreetingTemplate < Mustache
  self.template_file = File.join(File.dirname(__FILE__), 'template.mustache')
end

data = {
  name: 'Alice',
  place: 'Wonderland'
}

output = GreetingTemplate.render(data)
puts output
