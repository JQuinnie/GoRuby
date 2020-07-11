puts 'Hello, Ruby programmer!'
puts 'Can you tell me your name?'

dev_name = gets.chomp

def say_hello(name)
  puts "Hi #{name}! Hope you have fun programming in Ruby!"
  puts "Your lucky number is #{name.length}."
end

say_hello dev_name
