def interval num, &hey
  loop do
    sleep(num)
    hey.call
  end
end

interval 2 do 
  puts "hey there" 
end
