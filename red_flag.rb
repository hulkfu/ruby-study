def event(name)
  puts "ALERT: #{name}" if yield
end

event("o") {}
