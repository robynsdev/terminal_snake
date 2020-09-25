now = Time.now
counter = 0.1
loop do
  if Time.now < now + counter
    next
  else
    puts "counting another #{counter} ..."
  end
  counter += 0.3
  break if counter > 30
end


# 🟣