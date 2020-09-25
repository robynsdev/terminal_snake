def get_name
  puts
  puts "What is your name?"
  name = gets
  system("clear")

  puts "Hi, #{name}"
  puts "Controls are w - up, a - left, s - down, d - right"
  puts "Press 'e' to start"
  puts "Press 'q' to quit"
end