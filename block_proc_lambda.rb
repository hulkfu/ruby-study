def f1
  yield
end

def f2(&p)
  p.call
end

def f3(p)
  p.call
end

f1 { puts "f1" }

f2 { puts "f2" }

f3(proc{ puts "f3"} )
f3(Proc.new{puts "f3"})
f3(lambda{puts "f3"})
f3(-> {puts "f3"})

def f4(&p)
  puts p.class
  puts p.inspect
  p.call
end

f4 {}